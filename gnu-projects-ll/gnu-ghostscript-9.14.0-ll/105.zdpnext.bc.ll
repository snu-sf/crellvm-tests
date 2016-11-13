; ModuleID = './zdpnext.bc'
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
%struct.gs_composite_alpha_params_s = type { i32, float }
%struct.alpha_composite_state_s = type { %struct.gs_composite_alpha_params_s, %struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s* }
%struct.gs_composite_s = type opaque
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
%struct.gs_image2_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, %struct.gs_state_s*, float, float, float, float, %struct.gx_path_s*, i32 }
%struct.obj_header_s = type opaque
%struct.igstate_obj_s = type { %struct.ref_s }

@.str = private unnamed_addr constant [14 x i8] c"0currentalpha\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"1setalpha\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1.alphaimage\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"8composite\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"5compositerect\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"8dissolve\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"5.sizeimagebox\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"0.sizeimageparams\00", align 1
@zdpnext_op_defs = constant [9 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentalpha }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetalpha }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zalphaimage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcomposite }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcompositerect }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdissolve }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsizeimagebox }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsizeimageparams }, %struct.op_def zeroinitializer], align 16
@st_igstate_obj = external constant %struct.gs_memory_struct_type_s, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"composite_image\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"end_composite(gs_composite_t)\00", align 1
@zsizeimageparams.sizes = internal constant [6 x i16] [i16 1, i16 2, i16 4, i16 8, i16 12, i16 16], align 2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentalpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call float @gs_currentalpha(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetalpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %alpha = alloca double, align 8
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
  %3 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %alpha) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %9 = load double, double* %alpha, align 8, !tbaa !25
  %call2 = call i32 @gs_setalpha(%struct.gs_state_s* %8, double %9) #4
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zalphaimage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @image1_setup(%struct.gs_context_state_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcomposite(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %params = alloca %struct.gs_composite_alpha_params_s, align 4
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
  %3 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !29
  %cmp2 = icmp ugt i64 %9, 12
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %11 = load i64, i64* %intval7, align 8, !tbaa !29
  %conv8 = trunc i64 %11 to i32
  %op9 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  store i32 %conv8, i32* %op9, align 4, !tbaa !30
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call10 = call i32 @composite_image(%struct.gs_context_state_s* %12, %struct.gs_composite_alpha_params_s* %params) #4
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %13 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zcompositerect(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dest_rect = alloca [4 x double], align 16
  %cstate = alloca %struct.alpha_composite_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rect = alloca %struct.gs_rect_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [4 x double]* %dest_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.alpha_composite_state_s* %cstate to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %dest_rect, i32 0, i32 0
  %call = call i32 @xywh_param(%struct.ref_s* %add.ptr, double* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %11 to i32
  %cmp1 = icmp eq i32 %conv, 11
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %12) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %14 = load i64, i64* %intval, align 8, !tbaa !29
  %cmp6 = icmp ugt i64 %14, 13
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %16 = load i64, i64* %intval11, align 8, !tbaa !29
  %conv12 = trunc i64 %16 to i32
  %params = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %cstate, i32 0, i32 0
  %op13 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  store i32 %conv12, i32* %op13, align 4, !tbaa !32
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call14 = call i32 @begin_composite(%struct.gs_context_state_s* %17, %struct.alpha_composite_state_s* %cstate) #4
  store i32 %call14, i32* %code, align 4, !tbaa !27
  %18 = load i32, i32* %code, align 4, !tbaa !27
  %cmp15 = icmp slt i32 %18, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.end
  %20 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %20) #1
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %dest_rect, i32 0, i64 0
  %21 = load double, double* %arrayidx19, align 8, !tbaa !25
  %p20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p20, i32 0, i32 0
  store double %21, double* %x, align 8, !tbaa !34
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %dest_rect, i32 0, i64 2
  %22 = load double, double* %arrayidx21, align 8, !tbaa !25
  %add = fadd double %21, %22
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %add, double* %x22, align 8, !tbaa !37
  %arrayidx23 = getelementptr inbounds [4 x double], [4 x double]* %dest_rect, i32 0, i64 1
  %23 = load double, double* %arrayidx23, align 8, !tbaa !25
  %p24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p24, i32 0, i32 1
  store double %23, double* %y, align 8, !tbaa !38
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %dest_rect, i32 0, i64 3
  %24 = load double, double* %arrayidx25, align 8, !tbaa !25
  %add26 = fadd double %23, %24
  %q27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q27, i32 0, i32 1
  store double %add26, double* %y28, align 8, !tbaa !39
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call29 = call i32 @gs_rectfill(%struct.gs_state_s* %26, %struct.gs_rect_s* %rect, i32 1) #4
  store i32 %call29, i32* %code, align 4, !tbaa !27
  %27 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %27) #1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @end_composite(%struct.gs_context_state_s* %28, %struct.alpha_composite_state_s* %cstate) #4
  %29 = load i32, i32* %code, align 4, !tbaa !27
  %cmp30 = icmp sge i32 %29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.18
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !5
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -5
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p35, align 8, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end.18
  %32 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.17, %if.then.8, %if.then.3, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.alpha_composite_state_s* %cstate to i8*
  call void @llvm.lifetime.end(i64 32, i8* %34) #1
  %35 = bitcast [4 x double]* %dest_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zdissolve(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %params = alloca %struct.gs_composite_alpha_params_s, align 4
  %delta = alloca double, align 8
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
  %3 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %6, double* %delta) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load double, double* %delta, align 8, !tbaa !25
  %cmp1 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load double, double* %delta, align 8, !tbaa !25
  %cmp2 = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %lor.lhs.false
  %op5 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  store i32 14, i32* %op5, align 4, !tbaa !30
  %11 = load double, double* %delta, align 8, !tbaa !25
  %conv = fptrunc double %11 to float
  %delta6 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 1
  store float %conv, float* %delta6, align 4, !tbaa !40
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @composite_image(%struct.gs_context_state_s* %12, %struct.gs_composite_alpha_params_s* %params) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast double* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsizeimagebox(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %srect = alloca %struct.gs_rect_s, align 8
  %drect = alloca %struct.gs_rect_s, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
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
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_rect_s* %srect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast %struct.gs_rect_s* %drect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx1, align 1, !tbaa !28
  %conv = zext i8 %15 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -4
  %call4 = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -3
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %18 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx8, align 1, !tbaa !28
  %conv9 = zext i8 %19 to i32
  %cmp10 = icmp eq i32 %conv9, 11
  br i1 %cmp10, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  %call14 = call i32 @check_type_failed(%struct.ref_s* %arrayidx13) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %22 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx19, align 1, !tbaa !28
  %conv20 = zext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 11
  br i1 %cmp21, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.15
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %call25 = call i32 @check_type_failed(%struct.ref_s* %arrayidx24) #4
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.15
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %26 = bitcast i16* %type_attrs29 to i8*
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx30, align 1, !tbaa !28
  %conv31 = zext i8 %27 to i32
  %cmp32 = icmp eq i32 %conv31, 11
  br i1 %cmp32, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %if.end.26
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %call36 = call i32 @check_type_failed(%struct.ref_s* %arrayidx35) #4
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.26
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx38, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %30 = load i64, i64* %intval, align 8, !tbaa !29
  %conv39 = sitofp i64 %30 to double
  %p40 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p40, i32 0, i32 0
  store double %conv39, double* %x, align 8, !tbaa !34
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  %32 = load i64, i64* %intval43, align 8, !tbaa !29
  %conv44 = sitofp i64 %32 to double
  %p45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p45, i32 0, i32 1
  store double %conv44, double* %y, align 8, !tbaa !38
  %p46 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 0
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p46, i32 0, i32 0
  %33 = load double, double* %x47, align 8, !tbaa !34
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %35 = load i64, i64* %intval50, align 8, !tbaa !29
  %conv51 = sitofp i64 %35 to double
  %add = fadd double %33, %conv51
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 1
  %x52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %add, double* %x52, align 8, !tbaa !37
  %p53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p53, i32 0, i32 1
  %36 = load double, double* %y54, align 8, !tbaa !38
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx55, i32 0, i32 1
  %intval57 = bitcast %union.v* %value56 to i64*
  %38 = load i64, i64* %intval57, align 8, !tbaa !29
  %conv58 = sitofp i64 %38 to double
  %add59 = fadd double %36, %conv58
  %q60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %srect, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q60, i32 0, i32 1
  store double %add59, double* %y61, align 8, !tbaa !39
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 0
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs62, align 8, !tbaa !21
  %call63 = call i32 @gs_currentmatrix(%struct.gs_state_s* %40, %struct.gs_matrix_s* %mat) #4
  %call64 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %srect, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %drect) #4
  %p65 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %drect, i32 0, i32 0
  %x66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p65, i32 0, i32 0
  %41 = load double, double* %x66, align 8, !tbaa !34
  %call67 = call double @floor(double %41) #5
  %conv68 = fptosi double %call67 to i32
  %p69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p69, i32 0, i32 0
  store i32 %conv68, i32* %x70, align 4, !tbaa !41
  %p71 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %drect, i32 0, i32 0
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p71, i32 0, i32 1
  %42 = load double, double* %y72, align 8, !tbaa !38
  %call73 = call double @floor(double %42) #5
  %conv74 = fptosi double %call73 to i32
  %p75 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y76 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p75, i32 0, i32 1
  store i32 %conv74, i32* %y76, align 4, !tbaa !44
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %drect, i32 0, i32 1
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 0
  %43 = load double, double* %x78, align 8, !tbaa !37
  %call79 = call double @ceil(double %43) #5
  %conv80 = fptosi double %call79 to i32
  %q81 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x82 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q81, i32 0, i32 0
  store i32 %conv80, i32* %x82, align 4, !tbaa !45
  %q83 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %drect, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q83, i32 0, i32 1
  %44 = load double, double* %y84, align 8, !tbaa !39
  %call85 = call double @ceil(double %44) #5
  %conv86 = fptosi double %call85 to i32
  %q87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q87, i32 0, i32 1
  store i32 %conv86, i32* %y88, align 4, !tbaa !46
  %p89 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x90 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p89, i32 0, i32 0
  %q91 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x92 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q91, i32 0, i32 0
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width, align 4, !tbaa !47
  call void @box_confine(i32* %x90, i32* %x92, i32 %46) #4
  %p93 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y94 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p93, i32 0, i32 1
  %q95 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y96 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q95, i32 0, i32 1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height, align 4, !tbaa !58
  call void @box_confine(i32* %y94, i32* %y96, i32 %48) #4
  %q97 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q97, i32 0, i32 0
  %49 = load i32, i32* %x98, align 4, !tbaa !45
  %p99 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p99, i32 0, i32 0
  %50 = load i32, i32* %x100, align 4, !tbaa !41
  %sub = sub nsw i32 %49, %50
  store i32 %sub, i32* %w, align 4, !tbaa !27
  %q101 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y102 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q101, i32 0, i32 1
  %51 = load i32, i32* %y102, align 4, !tbaa !46
  %p103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p103, i32 0, i32 1
  %52 = load i32, i32* %y104, align 4, !tbaa !44
  %sub105 = sub nsw i32 %51, %52
  store i32 %sub105, i32* %h, align 4, !tbaa !27
  %p106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p106, i32 0, i32 0
  %53 = load i32, i32* %x107, align 4, !tbaa !41
  %conv108 = sitofp i32 %53 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %54 = load float, float* %tx, align 4, !tbaa !59
  %sub109 = fsub float %54, %conv108
  store float %sub109, float* %tx, align 4, !tbaa !59
  %p110 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y111 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p110, i32 0, i32 1
  %55 = load i32, i32* %y111, align 4, !tbaa !44
  %conv112 = sitofp i32 %55 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %56 = load float, float* %ty, align 4, !tbaa !61
  %sub113 = fsub float %56, %conv112
  store float %sub113, float* %ty, align 4, !tbaa !61
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %call114 = call i32 @write_matrix_in(%struct.ref_s* %57, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory, %struct.gs_ref_memory_s* null) #4
  store i32 %call114, i32* %code, align 4, !tbaa !27
  %59 = load i32, i32* %code, align 4, !tbaa !27
  %cmp115 = icmp slt i32 %59, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.37
  %60 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %if.end.37
  %p119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p119, i32 0, i32 0
  %61 = load i32, i32* %x120, align 4, !tbaa !41
  %conv121 = sext i32 %61 to i64
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -4
  %value122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval123 = bitcast %union.v* %value122 to i64*
  store i64 %conv121, i64* %intval123, align 8, !tbaa !29
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -4
  %tas125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr124, i32 0, i32 0
  %type_attrs126 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas125, i32 0, i32 0
  store i16 2816, i16* %type_attrs126, align 2, !tbaa !24
  %p127 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y128 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p127, i32 0, i32 1
  %64 = load i32, i32* %y128, align 4, !tbaa !44
  %conv129 = sext i32 %64 to i64
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -3
  %value131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr130, i32 0, i32 1
  %intval132 = bitcast %union.v* %value131 to i64*
  store i64 %conv129, i64* %intval132, align 8, !tbaa !29
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -3
  %tas134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr133, i32 0, i32 0
  %type_attrs135 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas134, i32 0, i32 0
  store i16 2816, i16* %type_attrs135, align 2, !tbaa !24
  %67 = load i32, i32* %w, align 4, !tbaa !27
  %conv136 = sext i32 %67 to i64
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -2
  %value138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr137, i32 0, i32 1
  %intval139 = bitcast %union.v* %value138 to i64*
  store i64 %conv136, i64* %intval139, align 8, !tbaa !29
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -2
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr140, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  store i16 2816, i16* %type_attrs142, align 2, !tbaa !24
  %70 = load i32, i32* %h, align 4, !tbaa !27
  %conv143 = sext i32 %70 to i64
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -1
  %value145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr144, i32 0, i32 1
  %intval146 = bitcast %union.v* %value145 to i64*
  store i64 %conv143, i64* %intval146, align 8, !tbaa !29
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr147, i32 0, i32 0
  %type_attrs149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 0
  store i16 2816, i16* %type_attrs149, align 2, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.117, %if.then.34, %if.then.23, %if.then.12, %if.then
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #1
  %77 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %77) #1
  %78 = bitcast %struct.gs_rect_s* %drect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %78) #1
  %79 = bitcast %struct.gs_rect_s* %srect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %79) #1
  %80 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @zsizeimageparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %ncomp = alloca i32, align 4
  %bps = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %max_value = alloca i16, align 2
  %i = alloca i32, align 4
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
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %8 = load i32, i32* %num_components, align 4, !tbaa !62
  store i32 %8, i32* %ncomp, align 4, !tbaa !27
  %9 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 3, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %14, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call8 = call i32 @device_is_true_color(%struct.gx_device_s* %16) #4
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %do.end
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 3
  %18 = load i16, i16* %depth, align 2, !tbaa !63
  %conv = zext i16 %18 to i32
  %19 = load i32, i32* %ncomp, align 4, !tbaa !27
  %div = sdiv i32 %conv, %19
  store i32 %div, i32* %bps, align 4, !tbaa !27
  br label %if.end.40

if.else.11:                                       ; preds = %do.end
  %20 = bitcast i16* %max_value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %num_components13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 1
  %22 = load i32, i32* %num_components13, align 4, !tbaa !62
  %cmp14 = icmp eq i32 %22, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.11
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 5
  %24 = load i32, i32* %max_gray, align 4, !tbaa !64
  br label %cond.end.28

cond.false:                                       ; preds = %if.else.11
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %max_gray18 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 5
  %26 = load i32, i32* %max_gray18, align 4, !tbaa !64
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info19, i32 0, i32 6
  %28 = load i32, i32* %max_color, align 4, !tbaa !65
  %cmp20 = icmp ugt i32 %26, %28
  br i1 %cmp20, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.false
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %max_gray24 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info23, i32 0, i32 5
  %30 = load i32, i32* %max_gray24, align 4, !tbaa !64
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 11
  %max_color27 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info26, i32 0, i32 6
  %32 = load i32, i32* %max_color27, align 4, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.22
  %cond = phi i32 [ %30, %cond.true.22 ], [ %32, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i32 [ %24, %cond.true ], [ %cond, %cond.end ]
  %conv30 = trunc i32 %cond29 to i16
  store i16 %conv30, i16* %max_value, align 2, !tbaa !66
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.28
  %34 = load i16, i16* %max_value, align 2, !tbaa !66
  %conv31 = zext i16 %34 to i64
  %35 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [6 x i16], [6 x i16]* @zsizeimageparams.sizes, i32 0, i64 %idxprom
  %36 = load i16, i16* %arrayidx, align 2, !tbaa !66
  %conv32 = zext i16 %36 to i32
  %sh_prom = zext i32 %conv32 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %cmp33 = icmp ule i64 %conv31, %sub
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.cond
  br label %for.end

if.end.36:                                        ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %37 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %if.then.35
  %38 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [6 x i16], [6 x i16]* @zsizeimageparams.sizes, i32 0, i64 %idxprom37
  %39 = load i16, i16* %arrayidx38, align 2, !tbaa !66
  %conv39 = zext i16 %39 to i32
  store i32 %conv39, i32* %bps, align 4, !tbaa !27
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i16* %max_value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %if.then.9
  %42 = load i32, i32* %bps, align 4, !tbaa !27
  %conv41 = sext i32 %42 to i64
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr42, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv41, i64* %intval, align 8, !tbaa !29
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr43, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !24
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %boolval = bitcast %union.v* %value45 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !66
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 256, i16* %type_attrs48, align 2, !tbaa !24
  %47 = load i32, i32* %ncomp, align 4, !tbaa !27
  %conv49 = sext i32 %47 to i64
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %intval51 = bitcast %union.v* %value50 to i64*
  store i64 %conv49, i64* %intval51, align 8, !tbaa !29
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  store i16 2816, i16* %type_attrs53, align 2, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then
  %50 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare float @gs_currentalpha(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_setalpha(%struct.gs_state_s*, double) #2

declare i32 @image1_setup(%struct.gs_context_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @composite_image(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_composite_alpha_params_s* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %params.addr = alloca %struct.gs_composite_alpha_params_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cstate = alloca %struct.alpha_composite_state_s, align 8
  %image = alloca %struct.gs_image2_s, align 8
  %src_rect = alloca [4 x double], align 16
  %dest_pt = alloca [2 x double], align 16
  %save_ctm = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_composite_alpha_params_s* %params, %struct.gs_composite_alpha_params_s** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.alpha_composite_state_s* %cstate to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.gs_image2_s* %image to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [4 x double]* %src_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast [2 x double]* %dest_pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -4
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %src_rect, i32 0, i32 0
  %call = call i32 @xywh_param(%struct.ref_s* %add.ptr, double* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %params1 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %cstate, i32 0, i32 0
  %10 = load %struct.gs_composite_alpha_params_s*, %struct.gs_composite_alpha_params_s** %params.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_composite_alpha_params_s* %params1 to i8*
  %12 = bitcast %struct.gs_composite_alpha_params_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 4, i1 false), !tbaa.struct !67
  call void @gs_image2_t_init(%struct.gs_image2_s* %image) #4
  %13 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %arraydecay3 = getelementptr inbounds [2 x double], [2 x double]* %dest_pt, i32 0, i32 0
  %call4 = call i32 @num_params(%struct.ref_s* %add.ptr2, i32 2, double* %arraydecay3) #4
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %18 to i32
  %cmp7 = icmp eq i32 %conv, 14
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %DataSource = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 2
  store %struct.gs_state_s* %20, %struct.gs_state_s** %DataSource, align 8, !tbaa !68
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %22 = load i16, i16* %type_attrs12, align 2, !tbaa !24
  %conv13 = zext i16 %22 to i32
  %and = and i32 %conv13, 15872
  %cmp14 = icmp eq i32 %and, 2048
  br i1 %cmp14, label %land.lhs.true, label %if.then.22

land.lhs.true:                                    ; preds = %if.else
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !70
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %26 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !71
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !70
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %32 = bitcast %struct.obj_header_s* %31 to i8*
  %call19 = call %struct.gs_memory_struct_type_s* %26(%struct.gs_memory_s* %29, i8* %32) #4
  %cmp20 = icmp eq %struct.gs_memory_struct_type_s* %call19, @st_igstate_obj
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true, %if.else
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -3
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #4
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -3
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %35 = load i16, i16* %type_attrs28, align 2, !tbaa !24
  %conv29 = zext i16 %35 to i32
  %and30 = and i32 %conv29, 32
  %tobool = icmp ne i32 %and30, 0
  br i1 %tobool, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.32
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 1
  %pstruct35 = bitcast %union.v* %value34 to %struct.obj_header_s**
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct35, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %38, i32 0, i32 0
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct37 = bitcast %union.v* %value36 to %struct.obj_header_s**
  %39 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct37, align 8, !tbaa !1
  %40 = bitcast %struct.obj_header_s* %39 to %struct.gs_state_s*
  %DataSource38 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 2
  store %struct.gs_state_s* %40, %struct.gs_state_s** %DataSource38, align 8, !tbaa !68
  br label %if.end.39

if.end.39:                                        ; preds = %do.end, %if.then.9
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %src_rect, i32 0, i64 0
  %41 = load double, double* %arrayidx40, align 8, !tbaa !25
  %conv41 = fptrunc double %41 to float
  %XOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 3
  store float %conv41, float* %XOrigin, align 4, !tbaa !74
  %arrayidx42 = getelementptr inbounds [4 x double], [4 x double]* %src_rect, i32 0, i64 1
  %42 = load double, double* %arrayidx42, align 8, !tbaa !25
  %conv43 = fptrunc double %42 to float
  %YOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 4
  store float %conv43, float* %YOrigin, align 4, !tbaa !75
  %arrayidx44 = getelementptr inbounds [4 x double], [4 x double]* %src_rect, i32 0, i64 2
  %43 = load double, double* %arrayidx44, align 8, !tbaa !25
  %conv45 = fptrunc double %43 to float
  %Width = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 5
  store float %conv45, float* %Width, align 4, !tbaa !76
  %arrayidx46 = getelementptr inbounds [4 x double], [4 x double]* %src_rect, i32 0, i64 3
  %44 = load double, double* %arrayidx46, align 8, !tbaa !25
  %conv47 = fptrunc double %44 to float
  %Height = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 6
  store float %conv47, float* %Height, align 4, !tbaa !77
  %PixelCopy = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 8
  store i32 1, i32* %PixelCopy, align 4, !tbaa !78
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 0
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs48, align 8, !tbaa !21
  %call49 = call i32 @gs_currentmatrix(%struct.gs_state_s* %46, %struct.gs_matrix_s* %save_ctm) #4
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs50, align 8, !tbaa !21
  %arrayidx51 = getelementptr inbounds [2 x double], [2 x double]* %dest_pt, i32 0, i64 0
  %49 = load double, double* %arrayidx51, align 8, !tbaa !25
  %arrayidx52 = getelementptr inbounds [2 x double], [2 x double]* %dest_pt, i32 0, i64 1
  %50 = load double, double* %arrayidx52, align 8, !tbaa !25
  %call53 = call i32 @gs_translate(%struct.gs_state_s* %48, double %49, double %50) #4
  %ImageMatrix = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix) #4
  %DataSource54 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 2
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %DataSource54, align 8, !tbaa !68
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 0
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs55, align 8, !tbaa !21
  %cmp56 = icmp eq %struct.gs_state_s* %51, %53
  br i1 %cmp56, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.end.39
  %arrayidx59 = getelementptr inbounds [2 x double], [2 x double]* %dest_pt, i32 0, i64 0
  %54 = load double, double* %arrayidx59, align 8, !tbaa !25
  %XOrigin60 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 3
  %55 = load float, float* %XOrigin60, align 4, !tbaa !74
  %conv61 = fpext float %55 to double
  %sub = fsub double %conv61, %54
  %conv62 = fptrunc double %sub to float
  store float %conv62, float* %XOrigin60, align 4, !tbaa !74
  %arrayidx63 = getelementptr inbounds [2 x double], [2 x double]* %dest_pt, i32 0, i64 1
  %56 = load double, double* %arrayidx63, align 8, !tbaa !25
  %YOrigin64 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 4
  %57 = load float, float* %YOrigin64, align 4, !tbaa !75
  %conv65 = fpext float %57 to double
  %sub66 = fsub double %conv65, %56
  %conv67 = fptrunc double %sub66 to float
  store float %conv67, float* %YOrigin64, align 4, !tbaa !75
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.58, %if.end.39
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call69 = call i32 @begin_composite(%struct.gs_context_state_s* %58, %struct.alpha_composite_state_s* %cstate) #4
  store i32 %call69, i32* %code, align 4, !tbaa !27
  %59 = load i32, i32* %code, align 4, !tbaa !27
  %cmp70 = icmp sge i32 %59, 0
  br i1 %cmp70, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %if.end.68
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %61 = bitcast %struct.gs_image2_s* %image to %struct.gs_image_common_s*
  %call73 = call i32 @process_non_source_image(%struct.gs_context_state_s* %60, %struct.gs_image_common_s* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #4
  store i32 %call73, i32* %code, align 4, !tbaa !27
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @end_composite(%struct.gs_context_state_s* %62, %struct.alpha_composite_state_s* %cstate) #4
  %63 = load i32, i32* %code, align 4, !tbaa !27
  %cmp74 = icmp sge i32 %63, 0
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.then.72
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack78 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack77, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack78, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p79, align 8, !tbaa !5
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -8
  store %struct.ref_s* %add.ptr80, %struct.ref_s** %p79, align 8, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.then.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.68
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 0
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs83, align 8, !tbaa !21
  %call84 = call i32 @gs_setmatrix(%struct.gs_state_s* %67, %struct.gs_matrix_s* %save_ctm) #4
  %68 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.then.31, %if.then.22, %if.then
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %70) #1
  %71 = bitcast [2 x double]* %dest_pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %72 = bitcast [4 x double]* %src_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %72) #1
  %73 = bitcast %struct.gs_image2_s* %image to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #1
  %74 = bitcast %struct.alpha_composite_state_s* %cstate to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #1
  %75 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @xywh_param(%struct.ref_s* %op, double* %rect) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %rect.addr = alloca double*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store double* %rect, double** %rect.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %2 = load double*, double** %rect.addr, align 8, !tbaa !1
  %call = call i32 @num_params(%struct.ref_s* %1, i32 4, double* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %3 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %5, i64 2
  %6 = load double, double* %arrayidx, align 8, !tbaa !25
  %cmp1 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %7 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 2
  %8 = load double, double* %arrayidx3, align 8, !tbaa !25
  %9 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 0
  %10 = load double, double* %arrayidx4, align 8, !tbaa !25
  %add = fadd double %10, %8
  store double %add, double* %arrayidx4, align 8, !tbaa !25
  %11 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 2
  %12 = load double, double* %arrayidx5, align 8, !tbaa !25
  %sub = fsub double -0.000000e+00, %12
  %13 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %13, i64 2
  store double %sub, double* %arrayidx6, align 8, !tbaa !25
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  %14 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 3
  %15 = load double, double* %arrayidx8, align 8, !tbaa !25
  %cmp9 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %16 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 3
  %17 = load double, double* %arrayidx11, align 8, !tbaa !25
  %18 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %18, i64 1
  %19 = load double, double* %arrayidx12, align 8, !tbaa !25
  %add13 = fadd double %19, %17
  store double %add13, double* %arrayidx12, align 8, !tbaa !25
  %20 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %20, i64 3
  %21 = load double, double* %arrayidx14, align 8, !tbaa !25
  %sub15 = fsub double -0.000000e+00, %21
  %22 = load double*, double** %rect.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %22, i64 3
  store double %sub15, double* %arrayidx16, align 8, !tbaa !25
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end.7
  %23 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_image2_t_init(%struct.gs_image2_s*) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_translate(%struct.gs_state_s*, double, double) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @begin_composite(%struct.gs_context_state_s* %i_ctx_p, %struct.alpha_composite_state_s* %pcp) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcp.addr = alloca %struct.alpha_composite_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.alpha_composite_state_s* %pcp, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %pcte = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %4, i32 0, i32 1
  %5 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !70
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call1 = call i32 @gs_create_composite_alpha(%struct.gs_composite_s** %pcte, %struct.gs_composite_alpha_params_s* %params, %struct.gs_memory_s* %8) #4
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %9 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %12 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %12, i32 0, i32 2
  store %struct.gx_device_s* %11, %struct.gx_device_s** %cdev, align 8, !tbaa !79
  %13 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %13, i32 0, i32 3
  store %struct.gx_device_s* %11, %struct.gx_device_s** %orig_dev, align 8, !tbaa !80
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 40
  %15 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !81
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %17 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %cdev2 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %17, i32 0, i32 2
  %18 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %pcte3 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %18, i32 0, i32 1
  %19 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte3, align 8, !tbaa !82
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8, !tbaa !21
  %22 = bitcast %struct.gs_state_s* %21 to %struct.gs_imager_state_s*
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current6 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current6, align 8, !tbaa !70
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %call7 = call i32 %15(%struct.gx_device_s* %16, %struct.gx_device_s** %cdev2, %struct.gs_composite_s* %19, %struct.gs_imager_state_s* %22, %struct.gs_memory_s* %25, %struct.gx_device_s* null) #4
  store i32 %call7, i32* %code, align 4, !tbaa !27
  %26 = load i32, i32* %code, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %26, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %28 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  call void @end_composite(%struct.gs_context_state_s* %27, %struct.alpha_composite_state_s* %28) #4
  %29 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 0
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !21
  %32 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %cdev12 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %32, i32 0, i32 2
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev12, align 8, !tbaa !79
  %call13 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %31, %struct.gx_device_s* %33) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @process_non_source_image(%struct.gs_context_state_s*, %struct.gs_image_common_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @end_composite(%struct.gs_context_state_s* %i_ctx_p, %struct.alpha_composite_state_s* %pcp) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcp.addr = alloca %struct.alpha_composite_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.alpha_composite_state_s* %pcp, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %0 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %cdev = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %0, i32 0, i32 2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !79
  %2 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %orig_dev = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %2, i32 0, i32 3
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev, align 8, !tbaa !80
  %cmp = icmp ne %struct.gx_device_s* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %cdev1 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %4, i32 0, i32 2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev1, align 8, !tbaa !79
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %5) #4
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %8 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %orig_dev2 = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %8, i32 0, i32 3
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev2, align 8, !tbaa !80
  %call3 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %7, %struct.gx_device_s* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !70
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current5, align 8, !tbaa !70
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %17 = load %struct.alpha_composite_state_s*, %struct.alpha_composite_state_s** %pcp.addr, align 8, !tbaa !1
  %pcte = getelementptr inbounds %struct.alpha_composite_state_s, %struct.alpha_composite_state_s* %17, i32 0, i32 1
  %18 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte, align 8, !tbaa !82
  %19 = bitcast %struct.gs_composite_s* %18 to i8*
  call void %13(%struct.gs_memory_s* %16, i8* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #4
  ret void
}

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @gs_create_composite_alpha(%struct.gs_composite_s**, %struct.gs_composite_alpha_params_s*, %struct.gs_memory_s*) #2

declare i32 @gs_setdevice_no_init(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

declare i32 @gs_rectfill(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal void @box_confine(i32* %pp, i32* %pq, i32 %wh) #0 {
entry:
  %pp.addr = alloca i32*, align 8
  %pq.addr = alloca i32*, align 8
  %wh.addr = alloca i32, align 4
  store i32* %pp, i32** %pp.addr, align 8, !tbaa !1
  store i32* %pq, i32** %pq.addr, align 8, !tbaa !1
  store i32 %wh, i32* %wh.addr, align 4, !tbaa !27
  %0 = load i32*, i32** %pq.addr, align 8, !tbaa !1
  %1 = load i32, i32* %0, align 4, !tbaa !27
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %pq.addr, align 8, !tbaa !1
  store i32 0, i32* %2, align 4, !tbaa !27
  %3 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  store i32 0, i32* %3, align 4, !tbaa !27
  br label %if.end.10

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !27
  %6 = load i32, i32* %wh.addr, align 4, !tbaa !27
  %cmp1 = icmp sge i32 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %7 = load i32, i32* %wh.addr, align 4, !tbaa !27
  %8 = load i32*, i32** %pq.addr, align 8, !tbaa !1
  store i32 %7, i32* %8, align 4, !tbaa !27
  %9 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  store i32 %7, i32* %9, align 4, !tbaa !27
  br label %if.end.9

if.else.3:                                        ; preds = %if.else
  %10 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else.3
  %12 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  store i32 0, i32* %12, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else.3
  %13 = load i32*, i32** %pq.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !27
  %15 = load i32, i32* %wh.addr, align 4, !tbaa !27
  %cmp6 = icmp sgt i32 %14, %15
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load i32, i32* %wh.addr, align 4, !tbaa !27
  %17 = load i32*, i32** %pq.addr, align 8, !tbaa !1
  store i32 %16, i32* %17, align 4, !tbaa !27
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  ret void
}

declare i32 @write_matrix_in(%struct.ref_s*, %struct.gs_matrix_s*, %struct.gs_dual_memory_s*, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @device_is_true_color(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ncomp = alloca i32, align 4
  %depth = alloca i32, align 4
  %i = alloca i32, align 4
  %max_v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca [3 x i16], align 2
  %gs = alloca i32, align 4
  %rs = alloca i32, align 4
  %red = alloca [3 x i16], align 2
  %green = alloca [3 x i16], align 2
  %blue = alloca [3 x i16], align 2
  %ys = alloca i32, align 4
  %ms = alloca i32, align 4
  %cs = alloca i32, align 4
  %cyan = alloca [4 x i16], align 2
  %magenta = alloca [4 x i16], align 2
  %yellow = alloca [4 x i16], align 2
  %black = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !62
  store i32 %2, i32* %ncomp, align 4, !tbaa !27
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %5 = load i16, i16* %depth2, align 2, !tbaa !63
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !27
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %max_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ncomp, align 4, !tbaa !27
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 5
  %10 = load i32, i32* %max_gray, align 4, !tbaa !64
  store i32 %10, i32* %max_v, align 4, !tbaa !27
  %11 = load i32, i32* %max_v, align 4, !tbaa !27
  %12 = load i32, i32* %depth, align 4, !tbaa !27
  %shl = shl i32 1, %12
  %sub = sub nsw i32 %shl, 1
  %cmp = icmp ne i32 %11, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !27
  %14 = load i32, i32* %max_v, align 4, !tbaa !27
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast [3 x i16]* %v to i8*
  call void @llvm.lifetime.start(i64 6, i8* %15) #1
  %16 = load i32, i32* %i, align 4, !tbaa !27
  %conv7 = sext i32 %16 to i64
  %mul = mul i64 65535, %conv7
  %17 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv8 = sext i32 %17 to i64
  %div = udiv i64 %mul, %conv8
  %conv9 = trunc i64 %div to i16
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %v, i32 0, i64 2
  store i16 %conv9, i16* %arrayidx, align 2, !tbaa !66
  %arrayidx10 = getelementptr inbounds [3 x i16], [3 x i16]* %v, i32 0, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !66
  %arrayidx11 = getelementptr inbounds [3 x i16], [3 x i16]* %v, i32 0, i64 0
  store i16 %conv9, i16* %arrayidx11, align 2, !tbaa !66
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %19 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !84
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %v, i32 0, i32 0
  %call = call i64 %19(%struct.gx_device_s* %20, i16* %arraydecay) #4
  %21 = load i32, i32* %i, align 4, !tbaa !27
  %conv12 = sext i32 %21 to i64
  %cmp13 = icmp ne i64 %call, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %22 = bitcast [3 x i16]* %v to i8*
  call void @llvm.lifetime.end(i64 6, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.202 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

sw.bb.17:                                         ; preds = %entry
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 6
  %25 = load i32, i32* %max_color, align 4, !tbaa !65
  store i32 %25, i32* %max_v, align 4, !tbaa !27
  %26 = load i32, i32* %depth, align 4, !tbaa !27
  %rem = srem i32 %26, 3
  %cmp19 = icmp ne i32 %rem, 0
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.17
  %27 = load i32, i32* %max_v, align 4, !tbaa !27
  %28 = load i32, i32* %depth, align 4, !tbaa !27
  %div21 = sdiv i32 %28, 3
  %shl22 = shl i32 1, %div21
  %sub23 = sub nsw i32 %shl22, 1
  %cmp24 = icmp ne i32 %27, %sub23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %sw.bb.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.27:                                        ; preds = %lor.lhs.false
  %29 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %depth, align 4, !tbaa !27
  %div28 = sdiv i32 %30, 3
  store i32 %div28, i32* %gs, align 4, !tbaa !27
  %31 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %gs, align 4, !tbaa !27
  %mul29 = mul nsw i32 %32, 2
  store i32 %mul29, i32* %rs, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.90, %if.end.27
  %33 = load i32, i32* %i, align 4, !tbaa !27
  %34 = load i32, i32* %max_v, align 4, !tbaa !27
  %cmp31 = icmp sle i32 %33, %34
  br i1 %cmp31, label %for.body.33, label %for.end.92

for.body.33:                                      ; preds = %for.cond.30
  %35 = bitcast [3 x i16]* %red to i8*
  call void @llvm.lifetime.start(i64 6, i8* %35) #1
  %36 = bitcast [3 x i16]* %green to i8*
  call void @llvm.lifetime.start(i64 6, i8* %36) #1
  %37 = bitcast [3 x i16]* %blue to i8*
  call void @llvm.lifetime.start(i64 6, i8* %37) #1
  %38 = load i32, i32* %i, align 4, !tbaa !27
  %conv34 = sext i32 %38 to i64
  %mul35 = mul i64 65535, %conv34
  %39 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv36 = sext i32 %39 to i64
  %div37 = udiv i64 %mul35, %conv36
  %conv38 = trunc i64 %div37 to i16
  %arrayidx39 = getelementptr inbounds [3 x i16], [3 x i16]* %red, i32 0, i64 0
  store i16 %conv38, i16* %arrayidx39, align 2, !tbaa !66
  %arrayidx40 = getelementptr inbounds [3 x i16], [3 x i16]* %red, i32 0, i64 1
  store i16 0, i16* %arrayidx40, align 2, !tbaa !66
  %arrayidx41 = getelementptr inbounds [3 x i16], [3 x i16]* %red, i32 0, i64 2
  store i16 0, i16* %arrayidx41, align 2, !tbaa !66
  %arrayidx42 = getelementptr inbounds [3 x i16], [3 x i16]* %green, i32 0, i64 0
  store i16 0, i16* %arrayidx42, align 2, !tbaa !66
  %40 = load i32, i32* %i, align 4, !tbaa !27
  %conv43 = sext i32 %40 to i64
  %mul44 = mul i64 65535, %conv43
  %41 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv45 = sext i32 %41 to i64
  %div46 = udiv i64 %mul44, %conv45
  %conv47 = trunc i64 %div46 to i16
  %arrayidx48 = getelementptr inbounds [3 x i16], [3 x i16]* %green, i32 0, i64 1
  store i16 %conv47, i16* %arrayidx48, align 2, !tbaa !66
  %arrayidx49 = getelementptr inbounds [3 x i16], [3 x i16]* %green, i32 0, i64 2
  store i16 0, i16* %arrayidx49, align 2, !tbaa !66
  %arrayidx50 = getelementptr inbounds [3 x i16], [3 x i16]* %blue, i32 0, i64 0
  store i16 0, i16* %arrayidx50, align 2, !tbaa !66
  %arrayidx51 = getelementptr inbounds [3 x i16], [3 x i16]* %blue, i32 0, i64 1
  store i16 0, i16* %arrayidx51, align 2, !tbaa !66
  %42 = load i32, i32* %i, align 4, !tbaa !27
  %conv52 = sext i32 %42 to i64
  %mul53 = mul i64 65535, %conv52
  %43 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv54 = sext i32 %43 to i64
  %div55 = udiv i64 %mul53, %conv54
  %conv56 = trunc i64 %div55 to i16
  %arrayidx57 = getelementptr inbounds [3 x i16], [3 x i16]* %blue, i32 0, i64 2
  store i16 %conv56, i16* %arrayidx57, align 2, !tbaa !66
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 42
  %map_rgb_color59 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs58, i32 0, i32 5
  %45 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color59, align 8, !tbaa !84
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay60 = getelementptr inbounds [3 x i16], [3 x i16]* %red, i32 0, i32 0
  %call61 = call i64 %45(%struct.gx_device_s* %46, i16* %arraydecay60) #4
  %47 = load i32, i32* %i, align 4, !tbaa !27
  %48 = load i32, i32* %rs, align 4, !tbaa !27
  %shl62 = shl i32 %47, %48
  %conv63 = sext i32 %shl62 to i64
  %cmp64 = icmp ne i64 %call61, %conv63
  br i1 %cmp64, label %if.then.83, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %for.body.33
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 42
  %map_rgb_color68 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs67, i32 0, i32 5
  %50 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color68, align 8, !tbaa !84
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay69 = getelementptr inbounds [3 x i16], [3 x i16]* %green, i32 0, i32 0
  %call70 = call i64 %50(%struct.gx_device_s* %51, i16* %arraydecay69) #4
  %52 = load i32, i32* %i, align 4, !tbaa !27
  %53 = load i32, i32* %gs, align 4, !tbaa !27
  %shl71 = shl i32 %52, %53
  %conv72 = sext i32 %shl71 to i64
  %cmp73 = icmp ne i64 %call70, %conv72
  br i1 %cmp73, label %if.then.83, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.66
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 42
  %map_rgb_color77 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs76, i32 0, i32 5
  %55 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color77, align 8, !tbaa !84
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay78 = getelementptr inbounds [3 x i16], [3 x i16]* %blue, i32 0, i32 0
  %call79 = call i64 %55(%struct.gx_device_s* %56, i16* %arraydecay78) #4
  %57 = load i32, i32* %i, align 4, !tbaa !27
  %conv80 = sext i32 %57 to i64
  %cmp81 = icmp ne i64 %call79, %conv80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.75, %lor.lhs.false.66, %for.body.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.84:                                        ; preds = %lor.lhs.false.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %if.end.84, %if.then.83
  %58 = bitcast [3 x i16]* %blue to i8*
  call void @llvm.lifetime.end(i64 6, i8* %58) #1
  %59 = bitcast [3 x i16]* %green to i8*
  call void @llvm.lifetime.end(i64 6, i8* %59) #1
  %60 = bitcast [3 x i16]* %red to i8*
  call void @llvm.lifetime.end(i64 6, i8* %60) #1
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.93 [
    i32 0, label %cleanup.cont.89
  ]

cleanup.cont.89:                                  ; preds = %cleanup.85
  br label %for.inc.90

for.inc.90:                                       ; preds = %cleanup.cont.89
  %61 = load i32, i32* %i, align 4, !tbaa !27
  %inc91 = add nsw i32 %61, 1
  store i32 %inc91, i32* %i, align 4, !tbaa !27
  br label %for.cond.30

for.end.92:                                       ; preds = %for.cond.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %for.end.92, %cleanup.85
  %62 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %cleanup.dest.95 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.95, label %cleanup.202 [
    i32 0, label %cleanup.cont.96
  ]

cleanup.cont.96:                                  ; preds = %cleanup.93
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

sw.bb.97:                                         ; preds = %entry
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 11
  %max_color99 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info98, i32 0, i32 6
  %65 = load i32, i32* %max_color99, align 4, !tbaa !65
  store i32 %65, i32* %max_v, align 4, !tbaa !27
  %66 = load i32, i32* %depth, align 4, !tbaa !27
  %and = and i32 %66, 3
  %cmp100 = icmp ne i32 %and, 0
  br i1 %cmp100, label %if.then.108, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %sw.bb.97
  %67 = load i32, i32* %max_v, align 4, !tbaa !27
  %68 = load i32, i32* %depth, align 4, !tbaa !27
  %div103 = sdiv i32 %68, 4
  %shl104 = shl i32 1, %div103
  %sub105 = sub nsw i32 %shl104, 1
  %cmp106 = icmp ne i32 %67, %sub105
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false.102, %sw.bb.97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.109:                                       ; preds = %lor.lhs.false.102
  %69 = bitcast i32* %ys to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %depth, align 4, !tbaa !27
  %div110 = sdiv i32 %70, 4
  store i32 %div110, i32* %ys, align 4, !tbaa !27
  %71 = bitcast i32* %ms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %ys, align 4, !tbaa !27
  %mul111 = mul nsw i32 %72, 2
  store i32 %mul111, i32* %ms, align 4, !tbaa !27
  %73 = bitcast i32* %cs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i32, i32* %ys, align 4, !tbaa !27
  %mul112 = mul nsw i32 %74, 3
  store i32 %mul112, i32* %cs, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.194, %if.end.109
  %75 = load i32, i32* %i, align 4, !tbaa !27
  %76 = load i32, i32* %max_v, align 4, !tbaa !27
  %cmp114 = icmp sle i32 %75, %76
  br i1 %cmp114, label %for.body.116, label %for.end.196

for.body.116:                                     ; preds = %for.cond.113
  %77 = bitcast [4 x i16]* %cyan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = bitcast [4 x i16]* %magenta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = bitcast [4 x i16]* %yellow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = bitcast [4 x i16]* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load i32, i32* %i, align 4, !tbaa !27
  %conv117 = sext i32 %81 to i64
  %mul118 = mul i64 65535, %conv117
  %82 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv119 = sext i32 %82 to i64
  %div120 = udiv i64 %mul118, %conv119
  %conv121 = trunc i64 %div120 to i16
  %arrayidx122 = getelementptr inbounds [4 x i16], [4 x i16]* %cyan, i32 0, i64 0
  store i16 %conv121, i16* %arrayidx122, align 2, !tbaa !66
  %arrayidx123 = getelementptr inbounds [4 x i16], [4 x i16]* %cyan, i32 0, i64 3
  store i16 0, i16* %arrayidx123, align 2, !tbaa !66
  %arrayidx124 = getelementptr inbounds [4 x i16], [4 x i16]* %cyan, i32 0, i64 2
  store i16 0, i16* %arrayidx124, align 2, !tbaa !66
  %arrayidx125 = getelementptr inbounds [4 x i16], [4 x i16]* %cyan, i32 0, i64 1
  store i16 0, i16* %arrayidx125, align 2, !tbaa !66
  %83 = load i32, i32* %i, align 4, !tbaa !27
  %conv126 = sext i32 %83 to i64
  %mul127 = mul i64 65535, %conv126
  %84 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv128 = sext i32 %84 to i64
  %div129 = udiv i64 %mul127, %conv128
  %conv130 = trunc i64 %div129 to i16
  %arrayidx131 = getelementptr inbounds [4 x i16], [4 x i16]* %magenta, i32 0, i64 1
  store i16 %conv130, i16* %arrayidx131, align 2, !tbaa !66
  %arrayidx132 = getelementptr inbounds [4 x i16], [4 x i16]* %magenta, i32 0, i64 3
  store i16 0, i16* %arrayidx132, align 2, !tbaa !66
  %arrayidx133 = getelementptr inbounds [4 x i16], [4 x i16]* %magenta, i32 0, i64 2
  store i16 0, i16* %arrayidx133, align 2, !tbaa !66
  %arrayidx134 = getelementptr inbounds [4 x i16], [4 x i16]* %magenta, i32 0, i64 0
  store i16 0, i16* %arrayidx134, align 2, !tbaa !66
  %85 = load i32, i32* %i, align 4, !tbaa !27
  %conv135 = sext i32 %85 to i64
  %mul136 = mul i64 65535, %conv135
  %86 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv137 = sext i32 %86 to i64
  %div138 = udiv i64 %mul136, %conv137
  %conv139 = trunc i64 %div138 to i16
  %arrayidx140 = getelementptr inbounds [4 x i16], [4 x i16]* %yellow, i32 0, i64 2
  store i16 %conv139, i16* %arrayidx140, align 2, !tbaa !66
  %arrayidx141 = getelementptr inbounds [4 x i16], [4 x i16]* %yellow, i32 0, i64 3
  store i16 0, i16* %arrayidx141, align 2, !tbaa !66
  %arrayidx142 = getelementptr inbounds [4 x i16], [4 x i16]* %yellow, i32 0, i64 1
  store i16 0, i16* %arrayidx142, align 2, !tbaa !66
  %arrayidx143 = getelementptr inbounds [4 x i16], [4 x i16]* %yellow, i32 0, i64 0
  store i16 0, i16* %arrayidx143, align 2, !tbaa !66
  %87 = load i32, i32* %i, align 4, !tbaa !27
  %conv144 = sext i32 %87 to i64
  %mul145 = mul i64 65535, %conv144
  %88 = load i32, i32* %max_v, align 4, !tbaa !27
  %conv146 = sext i32 %88 to i64
  %div147 = udiv i64 %mul145, %conv146
  %conv148 = trunc i64 %div147 to i16
  %arrayidx149 = getelementptr inbounds [4 x i16], [4 x i16]* %black, i32 0, i64 3
  store i16 %conv148, i16* %arrayidx149, align 2, !tbaa !66
  %arrayidx150 = getelementptr inbounds [4 x i16], [4 x i16]* %black, i32 0, i64 2
  store i16 0, i16* %arrayidx150, align 2, !tbaa !66
  %arrayidx151 = getelementptr inbounds [4 x i16], [4 x i16]* %black, i32 0, i64 1
  store i16 0, i16* %arrayidx151, align 2, !tbaa !66
  %arrayidx152 = getelementptr inbounds [4 x i16], [4 x i16]* %black, i32 0, i64 0
  store i16 0, i16* %arrayidx152, align 2, !tbaa !66
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs153, i32 0, i32 15
  %90 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !85
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay154 = getelementptr inbounds [4 x i16], [4 x i16]* %cyan, i32 0, i32 0
  %call155 = call i64 %90(%struct.gx_device_s* %91, i16* %arraydecay154) #4
  %92 = load i32, i32* %i, align 4, !tbaa !27
  %93 = load i32, i32* %cs, align 4, !tbaa !27
  %shl156 = shl i32 %92, %93
  %conv157 = sext i32 %shl156 to i64
  %cmp158 = icmp ne i64 %call155, %conv157
  br i1 %cmp158, label %if.then.186, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %for.body.116
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs161 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 42
  %map_cmyk_color162 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs161, i32 0, i32 15
  %95 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color162, align 8, !tbaa !85
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay163 = getelementptr inbounds [4 x i16], [4 x i16]* %magenta, i32 0, i32 0
  %call164 = call i64 %95(%struct.gx_device_s* %96, i16* %arraydecay163) #4
  %97 = load i32, i32* %i, align 4, !tbaa !27
  %98 = load i32, i32* %ms, align 4, !tbaa !27
  %shl165 = shl i32 %97, %98
  %conv166 = sext i32 %shl165 to i64
  %cmp167 = icmp ne i64 %call164, %conv166
  br i1 %cmp167, label %if.then.186, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %lor.lhs.false.160
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs170 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 42
  %map_cmyk_color171 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs170, i32 0, i32 15
  %100 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color171, align 8, !tbaa !85
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay172 = getelementptr inbounds [4 x i16], [4 x i16]* %yellow, i32 0, i32 0
  %call173 = call i64 %100(%struct.gx_device_s* %101, i16* %arraydecay172) #4
  %102 = load i32, i32* %i, align 4, !tbaa !27
  %103 = load i32, i32* %ys, align 4, !tbaa !27
  %shl174 = shl i32 %102, %103
  %conv175 = sext i32 %shl174 to i64
  %cmp176 = icmp ne i64 %call173, %conv175
  br i1 %cmp176, label %if.then.186, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %lor.lhs.false.169
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs179 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %104, i32 0, i32 42
  %map_cmyk_color180 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs179, i32 0, i32 15
  %105 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color180, align 8, !tbaa !85
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay181 = getelementptr inbounds [4 x i16], [4 x i16]* %black, i32 0, i32 0
  %call182 = call i64 %105(%struct.gx_device_s* %106, i16* %arraydecay181) #4
  %107 = load i32, i32* %i, align 4, !tbaa !27
  %conv183 = sext i32 %107 to i64
  %cmp184 = icmp ne i64 %call182, %conv183
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %lor.lhs.false.178, %lor.lhs.false.169, %lor.lhs.false.160, %for.body.116
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.187:                                       ; preds = %lor.lhs.false.178
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.188

cleanup.188:                                      ; preds = %if.end.187, %if.then.186
  %108 = bitcast [4 x i16]* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast [4 x i16]* %yellow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast [4 x i16]* %magenta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast [4 x i16]* %cyan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %cleanup.dest.192 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.192, label %cleanup.197 [
    i32 0, label %cleanup.cont.193
  ]

cleanup.cont.193:                                 ; preds = %cleanup.188
  br label %for.inc.194

for.inc.194:                                      ; preds = %cleanup.cont.193
  %112 = load i32, i32* %i, align 4, !tbaa !27
  %inc195 = add nsw i32 %112, 1
  store i32 %inc195, i32* %i, align 4, !tbaa !27
  br label %for.cond.113

for.end.196:                                      ; preds = %for.cond.113
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.197

cleanup.197:                                      ; preds = %for.end.196, %cleanup.188
  %113 = bitcast i32* %cs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %ms to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %ys to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %cleanup.dest.200 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.200, label %cleanup.202 [
    i32 0, label %cleanup.cont.201
  ]

cleanup.cont.201:                                 ; preds = %cleanup.197
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

cleanup.202:                                      ; preds = %sw.default, %cleanup.cont.201, %cleanup.197, %if.then.108, %cleanup.cont.96, %cleanup.93, %if.then.26, %for.end, %cleanup, %if.then
  %116 = bitcast i32* %max_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readnone }

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
!19 = !{!6, !2, i64 640}
!20 = !{!6, !9, i64 688}
!21 = !{!6, !2, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !3, i64 0}
!24 = !{!10, !12, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !3, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!31, !3, i64 0}
!31 = !{!"gs_composite_alpha_params_s", !3, i64 0, !23, i64 4}
!32 = !{!33, !3, i64 0}
!33 = !{!"alpha_composite_state_s", !31, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!34 = !{!35, !26, i64 0}
!35 = !{!"gs_rect_s", !36, i64 0, !36, i64 16}
!36 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!37 = !{!35, !26, i64 16}
!38 = !{!35, !26, i64 8}
!39 = !{!35, !26, i64 24}
!40 = !{!31, !23, i64 4}
!41 = !{!42, !9, i64 0}
!42 = !{!"gs_int_rect_s", !43, i64 0, !43, i64 8}
!43 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!44 = !{!42, !9, i64 4}
!45 = !{!42, !9, i64 8}
!46 = !{!42, !9, i64 12}
!47 = !{!48, !9, i64 832}
!48 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !49, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !50, i64 96, !52, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !53, i64 984, !9, i64 1052, !9, i64 1056, !54, i64 1064, !2, i64 1104, !3, i64 1112, !56, i64 1120, !57, i64 1144}
!49 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!50 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !51, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !9, i64 712}
!51 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!52 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!53 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!54 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !55, i64 16, !9, i64 32, !3, i64 36}
!55 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !13, i64 8}
!56 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!58 = !{!48, !9, i64 836}
!59 = !{!60, !23, i64 16}
!60 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!61 = !{!60, !23, i64 20}
!62 = !{!48, !9, i64 100}
!63 = !{!48, !12, i64 108}
!64 = !{!48, !9, i64 112}
!65 = !{!48, !9, i64 116}
!66 = !{!12, !12, i64 0}
!67 = !{i64 0, i64 4, !28, i64 4, i64 4, !22}
!68 = !{!69, !2, i64 32}
!69 = !{!"gs_image2_s", !2, i64 0, !60, i64 8, !2, i64 32, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !2, i64 56, !9, i64 64}
!70 = !{!6, !2, i64 8}
!71 = !{!72, !2, i64 128}
!72 = !{!"gs_memory_s", !2, i64 0, !73, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!73 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!74 = !{!69, !23, i64 40}
!75 = !{!69, !23, i64 44}
!76 = !{!69, !23, i64 48}
!77 = !{!69, !23, i64 52}
!78 = !{!69, !9, i64 64}
!79 = !{!33, !2, i64 16}
!80 = !{!33, !2, i64 24}
!81 = !{!48, !2, i64 1464}
!82 = !{!33, !2, i64 8}
!83 = !{!72, !2, i64 24}
!84 = !{!48, !2, i64 1184}
!85 = !{!48, !2, i64 1264}
