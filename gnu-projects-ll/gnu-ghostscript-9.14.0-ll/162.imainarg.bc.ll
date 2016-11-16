; ModuleID = './imainarg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
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
%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.display_callback_s = type opaque
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.2 }
%union.anon.2 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.arg_list_s = type { i32, %struct._IO_FILE* (i8*, i8*)*, i8*, i32 (%struct._IO_FILE*, i8**)*, %struct.gs_memory_s*, i8**, i32, i32, [2054 x i8], [10 x %struct.arg_source_s] }
%struct.arg_source_s = type { i32, %union._u }
%union._u = type { %struct._su }
%struct._su = type { i32, i32, i8*, %struct.gs_memory_s*, i8* }
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
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
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
%struct.gx_clist_state_s = type opaque
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
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.gs_malloc_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_malloc_block_s*, i64, i64, i64, %struct.gx_monitor_s* }
%struct.gs_malloc_block_s = type opaque
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"GS_LIB\00", align 1
@gs_lib_default_path = external constant i8*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"GS_OPTIONS\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unknown switch %s - ignoring\0A\00", align 1
@gs_debug = external global [128 x i8], align 16
@.str.9 = private unnamed_addr constant [44 x i8] c"%% Init started, instance 0x%p, with args: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"print normal flush\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%% Init done, instance 0x%p, with args: \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"systemdict /start get exec\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-dNOPAUSE\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c".runstdin\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"debug=\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"saved-pages=\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"   Only one --saved-pages=... command allowed before processing input\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"   --saved-pages not supported by the '%s' device.\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"saved-pages-test\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Usage: gs ... -%c file.ps arg1 ... argn\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"userdict/ARGUMENTS[\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"]put\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c".runfile\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"-A may only be followed by -\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"-B must be followed by - or size between 1 and %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c".runstring\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"-E may only be followed by -\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"-F requires a file name\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%ldx%ld\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"-g must be followed by <width>x<height>\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"DEVICEWIDTH\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"DEVICEHEIGHT\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"FIXEDMEDIA\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"-K<numK> must have 1 <= numK <= %ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"NOPAUSE\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"BATCH\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Only -P or -P- is allowed.\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%fx%f\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"-r must be followed by <res> or <xres>x<yres>\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"DEVICEXRESOLUTION\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"DEVICEYRESOLUTION\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"FIXEDRESOLUTION\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Usage: -dNAME, -dNAME=TOKEN, -sNAME=STRING\00", align 1
@.str.53 = private unnamed_addr constant [74 x i8] c"Invalid value for option -d%s, -dNAME= must be followed by a valid token\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.57 = private unnamed_addr constant [71 x i8] c"Invalid value for option -d%s, use -sNAME= to define string constants\0A\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"./psi/imainarg.c\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@vd_flags = external global [0 x i8], align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"-u requires a name to undefine.\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"\8E\03abc\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"== flush\0A\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"runarg\00", align 1
@esc_strcat.hex = internal constant i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), align 8
@.str.65 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"%stdout\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%stderr\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@gs_product = external constant i8*, align 8
@gs_version = external constant i64, align 8
@.str.70 = private unnamed_addr constant [20 x i8] c" (%d-%02d-%02d)\0A%s\0A\00", align 1
@gs_revisiondate = external constant i64, align 8
@gs_copyright = external constant i8*, align 8
@gp_fmode_rb = external constant [0 x i8], align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Unable to open %s for reading\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Unrecoverable error, exit code %d\0A\00", align 1
@gx_io_device_table_count = external constant i32, align 4
@gx_io_device_table = external constant [0 x %struct.gx_io_device_s*], align 8
@.str.73 = private unnamed_addr constant [6 x i8] c"%rom%\00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"Initialization files are compiled into the executable.\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@help_usage1 = internal constant [262 x i8] c"Usage: gs [switches] [file1.ps file2.ps ...]\0AMost frequently used switches: (you can use # in place of =)\0A -dNOPAUSE           no pause after page   | -q       `quiet', fewer messages\0A -g<width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution\0A\00", align 16
@help_usage2 = internal constant [218 x i8] c" -sDEVICE=<devname>  select device         | -dBATCH  exit after last file\0A -sOutputFile=<file> select output file: - for stdout, |command for pipe,\0A                                         embed %d or %ld for page #\0A\00", align 16
@help_emulators = internal constant [15 x i8] c"Input formats:\00", align 1
@gs_emulators = external constant [0 x i8], align 1
@.str.76 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@help_default_device = internal constant [23 x i8] c"Default output device:\00", align 16
@.str.77 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@help_devices = internal constant [19 x i8] c"Available devices:\00", align 16
@.str.78 = private unnamed_addr constant [14 x i8] c"print_devices\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@help_paths = internal constant [13 x i8] c"Search path:\00", align 1
@gp_file_name_list_separator = external constant i8, align 1
@.str.80 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@help_fontconfig = internal constant [63 x i8] c"Ghostscript is also using fontconfig to search for font files\0A\00", align 16
@.str.82 = private unnamed_addr constant [8 x i8] c"Use.htm\00", align 1
@gs_doc_directory = external constant i8*, align 8
@help_trailer = internal constant [78 x i8] c"For more information, see %s.\0APlease report bugs to bug-ghostscript@gnu.org.\0A\00", align 16

; Function Attrs: nounwind uwtable
define i32 @gs_main_init_with_args(%struct.gs_main_instance_s* %minst, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arg = alloca i8*, align 8
  %args = alloca %struct.arg_list_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %len = alloca i32, align 4
  %code1 = alloca i32, align 4
  %path = alloca i8*, align 8
  %i = alloca i32, align 4
  %helping = alloca i32, align 4
  %len46 = alloca i32, align 4
  %code47 = alloca i32, align 4
  %opts = alloca i8*, align 8
  %i91 = alloca i32, align 4
  %pdev = alloca %struct.gx_device_s*, align 8
  %i147 = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !5
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  %0 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.arg_list_s* %args to i8*
  call void @llvm.lifetime.start(i64 2512, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %4 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_main_instance_s* %5 to i8*
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %get_codepoint = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %7, i32 0, i32 12
  %8 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint, align 8, !tbaa !7
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  call void @arg_init(%struct.arg_list_s* %args, i8** %3, i32 %4, %struct._IO_FILE* (i8*, i8*)* @gs_main_arg_fopen, i8* %6, i32 (%struct._IO_FILE*, i8**)* %8, %struct.gs_memory_s* %10) #6
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_init0(%struct.gs_main_instance_s* %11, %struct._IO_FILE* null, %struct._IO_FILE* null, %struct._IO_FILE* null, i32 25) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end:                                           ; preds = %entry
  %14 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %len, align 4, !tbaa !5
  %15 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %call2 = call i32 @gp_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null, i32* %len) #6
  store i32 %call2, i32* %code1, align 4, !tbaa !5
  %16 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %17 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap5, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %21 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap6 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap6, align 8, !tbaa !14
  %23 = load i32, i32* %len, align 4, !tbaa !5
  %call7 = call i8* %20(%struct.gs_memory_s* %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call7, i8** %path, align 8, !tbaa !1
  %24 = load i8*, i8** %path, align 8, !tbaa !1
  %call8 = call i32 @gp_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %24, i32* %len) #6
  %25 = load i8*, i8** %path, align 8, !tbaa !1
  %26 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %26, i32 0, i32 8
  %env = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 2
  store i8* %25, i8** %env, align 8, !tbaa !18
  %27 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %28 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i8*, i8** @gs_lib_default_path, align 8, !tbaa !1
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path10 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 8
  %final = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path10, i32 0, i32 3
  store i8* %30, i8** %final, align 8, !tbaa !19
  %32 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call11 = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %32) #6
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %33, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.14:                                        ; preds = %if.end.9
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %helping to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %helping, align 4, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %37, %38
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call16 = call i32 @arg_strcmp(%struct.arg_list_s* %args, i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %for.body
  store i32 0, i32* %helping, align 4, !tbaa !5
  br label %for.end

if.else:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %42 to i64
  %43 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8*, i8** %43, i64 %idxprom18
  %44 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %call20 = call i32 @arg_strcmp(%struct.arg_list_s* %args, i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %if.else
  %45 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_help(%struct.gs_main_instance_s* %45) #6
  store i32 1, i32* %helping, align 4, !tbaa !5
  br label %if.end.40

if.else.23:                                       ; preds = %if.else
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8*, i8** %47, i64 %idxprom24
  %48 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  %call26 = call i32 @arg_strcmp(%struct.arg_list_s* %args, i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.30, label %if.then.28

if.then.28:                                       ; preds = %if.else.23
  %49 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap29 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %49, i32 0, i32 0
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap29, align 8, !tbaa !14
  call void @gs_debug_flags_list(%struct.gs_memory_s* %50) #6
  store i32 1, i32* %helping, align 4, !tbaa !5
  br label %if.end.39

if.else.30:                                       ; preds = %if.else.23
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %51 to i64
  %52 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8*, i8** %52, i64 %idxprom31
  %53 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %call33 = call i32 @arg_strcmp(%struct.arg_list_s* %args, i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.38, label %if.then.35

if.then.35:                                       ; preds = %if.else.30
  %54 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_version(%struct.gs_main_instance_s* %54) #6
  %55 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap36 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %55, i32 0, i32 0
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap36, align 8, !tbaa !14
  %call37 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 1, i32* %helping, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.else.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.22
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %for.cond
  %58 = load i32, i32* %helping, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %58, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end
  store i32 -110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43
  %59 = bitcast i32* %helping to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.168 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %61 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_start = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %61, i32 0, i32 7
  store i32 1, i32* %run_start, align 4, !tbaa !20
  %62 = bitcast i32* %len46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 0, i32* %len46, align 4, !tbaa !5
  %63 = bitcast i32* %code47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %call48 = call i32 @gp_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null, i32* %len46) #6
  store i32 %call48, i32* %code47, align 4, !tbaa !5
  %64 = load i32, i32* %code47, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %64, 0
  br i1 %cmp49, label %if.then.50, label %if.end.65

if.then.50:                                       ; preds = %cleanup.cont
  %65 = bitcast i8** %opts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap51 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %66, i32 0, i32 0
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap51, align 8, !tbaa !14
  %procs52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %alloc_bytes53 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs52, i32 0, i32 7
  %68 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes53, align 8, !tbaa !15
  %69 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap54 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %69, i32 0, i32 0
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap54, align 8, !tbaa !14
  %71 = load i32, i32* %len46, align 4, !tbaa !5
  %call55 = call i8* %68(%struct.gs_memory_s* %70, i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %call55, i8** %opts, align 8, !tbaa !1
  %72 = load i8*, i8** %opts, align 8, !tbaa !1
  %call56 = call i32 @gp_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %72, i32* %len46) #6
  %73 = load i8*, i8** %opts, align 8, !tbaa !1
  %74 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap57 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %74, i32 0, i32 0
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap57, align 8, !tbaa !14
  %call58 = call i32 @arg_push_decoded_memory_string(%struct.arg_list_s* %args, i8* %73, i32 0, i32 1, %struct.gs_memory_s* %75) #6
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.50
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.61:                                        ; preds = %if.then.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %if.then.60
  %76 = bitcast i8** %opts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.66 [
    i32 0, label %cleanup.cont.64
  ]

cleanup.cont.64:                                  ; preds = %cleanup.62
  br label %if.end.65

if.end.65:                                        ; preds = %cleanup.cont.64, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.65, %cleanup.62
  %77 = bitcast i32* %code47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %len46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest.68 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.68, label %cleanup.168 [
    i32 0, label %cleanup.cont.69
  ]

cleanup.cont.69:                                  ; preds = %cleanup.66
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %cleanup.cont.69
  %79 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap70 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %79, i32 0, i32 0
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap70, align 8, !tbaa !14
  %call71 = call i8* @arg_next(%struct.arg_list_s* %args, i32* %code, %struct.gs_memory_s* %80) #6
  store i8* %call71, i8** %arg, align 8, !tbaa !1
  %cmp72 = icmp ne i8* %call71, null
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load i8*, i8** %arg, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !21
  %conv = sext i8 %82 to i32
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %83 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %84 = load i8*, i8** %arg, align 8, !tbaa !1
  %call73 = call i32 @swproc(%struct.gs_main_instance_s* %83, i8* %84, %struct.arg_list_s* %args) #6
  store i32 %call73, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %85, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb
  %86 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.77:                                        ; preds = %sw.bb
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %87, 0
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.77
  %88 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap81 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %88, i32 0, i32 0
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap81, align 8, !tbaa !14
  %90 = load i8*, i8** %arg, align 8, !tbaa !1
  %call82 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %90) #6
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.77
  %91 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !21
  %conv84 = sext i8 %91 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %land.lhs.true, label %if.end.107

land.lhs.true:                                    ; preds = %if.end.83
  %92 = load i8*, i8** %arg, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx86, align 1, !tbaa !21
  %conv87 = sext i8 %93 to i32
  %cmp88 = icmp eq i32 %conv87, 90
  br i1 %cmp88, label %if.then.90, label %if.end.107

if.then.90:                                       ; preds = %land.lhs.true
  %94 = bitcast i32* %i91 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap92 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %95, i32 0, i32 0
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap92, align 8, !tbaa !14
  %97 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call93 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), %struct.gs_main_instance_s* %97) #6
  store i32 1, i32* %i91, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.102, %if.then.90
  %98 = load i32, i32* %i91, align 4, !tbaa !5
  %99 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %98, %99
  br i1 %cmp95, label %for.body.97, label %for.end.104

for.body.97:                                      ; preds = %for.cond.94
  %100 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap98 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %100, i32 0, i32 0
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap98, align 8, !tbaa !14
  %102 = load i32, i32* %i91, align 4, !tbaa !5
  %idxprom99 = sext i32 %102 to i64
  %103 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8*, i8** %103, i64 %idxprom99
  %104 = load i8*, i8** %arrayidx100, align 8, !tbaa !1
  %call101 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %104) #6
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.97
  %105 = load i32, i32* %i91, align 4, !tbaa !5
  %inc103 = add nsw i32 %105, 1
  store i32 %inc103, i32* %i91, align 4, !tbaa !5
  br label %for.cond.94

for.end.104:                                      ; preds = %for.cond.94
  %106 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap105 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %106, i32 0, i32 0
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap105, align 8, !tbaa !14
  %call106 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %108 = bitcast i32* %i91 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.104, %land.lhs.true, %if.end.83
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %109 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %110 = load i8*, i8** %arg, align 8, !tbaa !1
  %call108 = call i32 @argproc(%struct.gs_main_instance_s* %109, i8* %110) #6
  store i32 %call108, i32* %code, align 4, !tbaa !5
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %111, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %sw.default
  %112 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.112:                                       ; preds = %sw.default
  %113 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %113, i32 0, i32 16
  %114 = load i32, i32* %saved_pages_test_mode, align 4, !tbaa !22
  %tobool113 = icmp ne i32 %114, 0
  br i1 %tobool113, label %if.then.114, label %if.end.135

if.then.114:                                      ; preds = %if.end.112
  %115 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %116, i32 0, i32 14
  %117 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !23
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %117, i32 0, i32 0
  %118 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call115 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %118) #6
  store %struct.gx_device_s* %call115, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_s* %119 to %struct.gx_device_printer_s*
  %call116 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 18) #6
  store i32 %call116, i32* %code, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.114
  %121 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.120:                                       ; preds = %if.then.114
  %122 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp sgt i32 %122, 0
  br i1 %cmp121, label %if.then.123, label %if.end.131

if.then.123:                                      ; preds = %if.end.120
  %123 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p124 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %123, i32 0, i32 14
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p124, align 8, !tbaa !23
  %pgs125 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 0
  %125 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs125, align 8, !tbaa !24
  %call126 = call i32 @gs_erasepage(%struct.gs_state_s* %125) #6
  store i32 %call126, i32* %code, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.123
  %126 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.130:                                       ; preds = %if.then.123
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.120
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %if.end.131, %if.then.129, %if.then.119
  %127 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %cleanup.dest.133 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.133, label %cleanup.168 [
    i32 0, label %cleanup.cont.134
  ]

cleanup.cont.134:                                 ; preds = %cleanup.132
  br label %if.end.135

if.end.135:                                       ; preds = %cleanup.cont.134, %if.end.112
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.135, %if.end.107
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp136 = icmp slt i32 %128, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %while.end
  %129 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.139:                                       ; preds = %while.end
  %130 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call140 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %130) #6
  store i32 %call140, i32* %code, align 4, !tbaa !5
  %131 = load i32, i32* %code, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %131, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.139
  %132 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.144:                                       ; preds = %if.end.139
  %133 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !21
  %tobool145 = icmp ne i8 %133, 0
  br i1 %tobool145, label %if.then.146, label %if.end.163

if.then.146:                                      ; preds = %if.end.144
  %134 = bitcast i32* %i147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  %135 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap148 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %135, i32 0, i32 0
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap148, align 8, !tbaa !14
  %137 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call149 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), %struct.gs_main_instance_s* %137) #6
  store i32 1, i32* %i147, align 4, !tbaa !5
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.158, %if.then.146
  %138 = load i32, i32* %i147, align 4, !tbaa !5
  %139 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %138, %139
  br i1 %cmp151, label %for.body.153, label %for.end.160

for.body.153:                                     ; preds = %for.cond.150
  %140 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap154 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %140, i32 0, i32 0
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap154, align 8, !tbaa !14
  %142 = load i32, i32* %i147, align 4, !tbaa !5
  %idxprom155 = sext i32 %142 to i64
  %143 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8*, i8** %143, i64 %idxprom155
  %144 = load i8*, i8** %arrayidx156, align 8, !tbaa !1
  %call157 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %144) #6
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.153
  %145 = load i32, i32* %i147, align 4, !tbaa !5
  %inc159 = add nsw i32 %145, 1
  store i32 %inc159, i32* %i147, align 4, !tbaa !5
  br label %for.cond.150

for.end.160:                                      ; preds = %for.cond.150
  %146 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap161 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %146, i32 0, i32 0
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap161, align 8, !tbaa !14
  %call162 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %148 = bitcast i32* %i147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  br label %if.end.163

if.end.163:                                       ; preds = %for.end.160, %if.end.144
  %149 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_start164 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %149, i32 0, i32 7
  %150 = load i32, i32* %run_start164, align 4, !tbaa !20
  %tobool165 = icmp ne i32 %150, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %if.end.163
  store i32 -101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.167:                                       ; preds = %if.end.163
  %151 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

cleanup.168:                                      ; preds = %if.end.167, %if.then.166, %if.then.143, %if.then.138, %cleanup.132, %if.then.111, %if.then.76, %cleanup.66, %cleanup, %if.then.13, %if.then
  %152 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast %struct.arg_list_s* %args to i8*
  call void @llvm.lifetime.end(i64 2512, i8* %153) #1
  %154 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = load i32, i32* %retval
  ret i32 %155
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @arg_init(%struct.arg_list_s*, i8**, i32, %struct._IO_FILE* (i8*, i8*)*, i8*, i32 (%struct._IO_FILE*, i8**)*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @gs_main_arg_fopen(i8* %fname, i8* %vminst) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %vminst.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %vminst, i8** %vminst.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %vminst.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.gs_main_instance_s*
  %call = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %1) #6
  %2 = load i8*, i8** %vminst.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.gs_main_instance_s*
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %vminst.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_main_instance_s*
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call1 = call %struct._IO_FILE* @lib_fopen(%struct.gs_file_path_s* %lib_path, %struct.gs_memory_s* %6, i8* %7) #6
  ret %struct._IO_FILE* %call1
}

declare i32 @gs_main_init0(%struct.gs_main_instance_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32) #2

declare i32 @gp_getenv(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s*) #2

declare i32 @arg_strcmp(%struct.arg_list_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @print_help(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i = alloca i32, align 4
  %have_rom_device = alloca i32, align 4
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %dname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %have_rom_device to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %have_rom_device, align 4, !tbaa !5
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_revision(%struct.gs_main_instance_s* %2) #6
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_usage(%struct.gs_main_instance_s* %3) #6
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_emulators(%struct.gs_main_instance_s* %4) #6
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_devices(%struct.gs_main_instance_s* %5) #6
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_paths(%struct.gs_main_instance_s* %6) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.gx_io_device_s*], [0 x %struct.gx_io_device_s*]* @gx_io_device_table, i32 0, i64 %idxprom
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx, align 8, !tbaa !1
  store %struct.gx_io_device_s* %11, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %12 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %dname1 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %dname1, align 8, !tbaa !33
  store i8* %14, i8** %dname, align 8, !tbaa !1
  %15 = load i8*, i8** %dname, align 8, !tbaa !1
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load i8*, i8** %dname, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %16) #7
  %cmp2 = icmp eq i64 %call, 5
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %17 = load i8*, i8** %dname, align 8, !tbaa !1
  %call4 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %17, i64 5) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  store i32 1, i32* %have_rom_device, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %21 = load i32, i32* %have_rom_device, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.end
  %22 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %22, i32 0, i32 0
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call9 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0)) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.end
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_help_trailer(%struct.gs_main_instance_s* %24) #6
  %25 = bitcast i32* %have_rom_device to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @gs_debug_flags_list(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @print_version(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %2 = load i64, i64* @gs_version, align 8, !tbaa !36
  call void @printf_program_ident(%struct.gs_memory_s* %1, i8* null, i64 %2) #6
  ret void
}

declare i32 @outprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @arg_push_decoded_memory_string(%struct.arg_list_s*, i8*, i32, i32, %struct.gs_memory_s*) #2

declare i8* @arg_next(%struct.arg_list_s*, i32*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @swproc(%struct.gs_main_instance_s* %minst, i8* %arg, %struct.arg_list_s* %pal) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %arg.addr = alloca i8*, align 8
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %sw = alloca i8, align 1
  %vtrue = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdev = alloca %struct.gx_device_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %__s1_len101 = alloca i64, align 8
  %__s2_len103 = alloca i64, align 8
  %tmp104 = alloca i32, align 4
  %__s1111 = alloca i8*, align 8
  %__result113 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %pdev164 = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %__s1_len215 = alloca i64, align 8
  %__s2_len217 = alloca i64, align 8
  %tmp218 = alloca i32, align 4
  %__s1225 = alloca i8*, align 8
  %__result227 = alloca i32, align 4
  %tmp265 = alloca i32, align 4
  %psarg = alloca i8*, align 8
  %bsize = alloca i32, align 4
  %ats = alloca i32, align 4
  %p = alloca i8*, align 8
  %pdev448 = alloca %struct.gx_device_s*, align 8
  %bsize462 = alloca i32, align 4
  %pdev475 = alloca %struct.gx_device_s*, align 8
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %value506 = alloca %struct.ref_s, align 8
  %path = alloca i8*, align 8
  %msize = alloca i64, align 8
  %rawheap = alloca %struct.gs_malloc_memory_s*, align 8
  %msize587 = alloca i32, align 4
  %nsize = alloca i32, align 4
  %adef = alloca i8*, align 8
  %str = alloca i8*, align 8
  %value599 = alloca %struct.ref_s, align 8
  %len = alloca i32, align 4
  %__s1_len649 = alloca i64, align 8
  %__s2_len651 = alloca i64, align 8
  %tmp652 = alloca i32, align 4
  %__s1659 = alloca i8*, align 8
  %__result661 = alloca i32, align 4
  %tmp699 = alloca i32, align 4
  %__s1_len708 = alloca i64, align 8
  %__s2_len710 = alloca i64, align 8
  %tmp711 = alloca i32, align 4
  %__s1718 = alloca i8*, align 8
  %__result720 = alloca i32, align 4
  %tmp758 = alloca i32, align 4
  %xres = alloca float, align 4
  %yres = alloca float, align 4
  %value783 = alloca %struct.ref_s, align 8
  %adef815 = alloca i8*, align 8
  %eqp = alloca i8*, align 8
  %isd = alloca i32, align 4
  %value827 = alloca %struct.ref_s, align 8
  %code867 = alloca i32, align 4
  %i_ctx_p869 = alloca %struct.gs_context_state_s*, align 8
  %space = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %suffix = alloca i8, align 1
  %astream = alloca %struct.stream_s, align 8
  %state = alloca %struct.scanner_state_s, align 8
  %nsref = alloca %struct.ref_s, align 8
  %__s1_len946 = alloca i64, align 8
  %__s2_len948 = alloca i64, align 8
  %tmp949 = alloca i32, align 4
  %__s1956 = alloca i8*, align 8
  %__result960 = alloca i32, align 4
  %tmp998 = alloca i32, align 4
  %__s1_len1025 = alloca i64, align 8
  %__s2_len1027 = alloca i64, align 8
  %tmp1028 = alloca i32, align 4
  %__s11035 = alloca i8*, align 8
  %__result1039 = alloca i32, align 4
  %tmp1077 = alloca i32, align 4
  %__s1_len1106 = alloca i64, align 8
  %__s2_len1108 = alloca i64, align 8
  %tmp1109 = alloca i32, align 4
  %__s11116 = alloca i8*, align 8
  %__result1120 = alloca i32, align 4
  %tmp1158 = alloca i32, align 4
  %len1197 = alloca i32, align 4
  %str1201 = alloca i8*, align 8
  %xec = alloca i32, align 4
  %xeo = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %sw) #1
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !21
  store i8 %1, i8* %sw, align 1, !tbaa !21
  %2 = bitcast %struct.ref_s* %vtrue to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vtrue, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !37
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vtrue, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !38
  %4 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %arg.addr, align 8, !tbaa !1
  %5 = load i8, i8* %sw, align 1, !tbaa !21
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 95, label %sw.bb.1
    i32 45, label %sw.bb.34
    i32 43, label %sw.bb.281
    i32 64, label %sw.bb.282
    i32 65, label %sw.bb.334
    i32 66, label %sw.bb.341
    i32 99, label %sw.bb.365
    i32 69, label %sw.bb.426
    i32 102, label %sw.bb.434
    i32 70, label %sw.bb.455
    i32 103, label %sw.bb.502
    i32 104, label %sw.bb.536
    i32 63, label %sw.bb.536
    i32 73, label %sw.bb.537
    i32 75, label %sw.bb.566
    i32 77, label %sw.bb.585
    i32 78, label %sw.bb.590
    i32 111, label %sw.bb.595
    i32 80, label %sw.bb.647
    i32 113, label %sw.bb.771
    i32 114, label %sw.bb.779
    i32 68, label %sw.bb.813
    i32 100, label %sw.bb.813
    i32 83, label %sw.bb.813
    i32 115, label %sw.bb.813
    i32 84, label %sw.bb.1246
    i32 117, label %sw.bb.1247
    i32 118, label %sw.bb.1259
    i32 88, label %sw.bb.1260
    i32 90, label %sw.bb.1276
  ]

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.bb:                                            ; preds = %entry
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !39
  %stdin_is_interactive = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 7
  store i32 1, i32* %stdin_is_interactive, align 4, !tbaa !40
  br label %run_stdin

sw.bb.1:                                          ; preds = %entry
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap2 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap2, align 8, !tbaa !14
  %gs_lib_ctx3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx3, align 8, !tbaa !39
  %stdin_is_interactive4 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 7
  store i32 0, i32* %stdin_is_interactive4, align 4, !tbaa !40
  br label %run_stdin

run_stdin:                                        ; preds = %sw.bb.1, %sw.bb
  %12 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_start = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %12, i32 0, i32 7
  store i32 0, i32* %run_start, align 4, !tbaa !20
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %14 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %call = call i32 @swproc(%struct.gs_main_instance_s* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct.arg_list_s* %14) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %run_stdin
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end:                                           ; preds = %run_stdin
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %17) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.8:                                         ; preds = %if.end
  %20 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call9 = call i32 @run_string(%struct.gs_main_instance_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 2) #6
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %21, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.13:                                        ; preds = %if.end.8
  %23 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %23, i32 0, i32 16
  %24 = load i32, i32* %saved_pages_test_mode, align 4, !tbaa !22
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then.15, label %if.end.33

if.then.15:                                       ; preds = %if.end.13
  %25 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %26, i32 0, i32 14
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !23
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !24
  %call16 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %28) #6
  store %struct.gx_device_s* %call16, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_printer_s*
  %call17 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 18) #6
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.15
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %32, 0
  br i1 %cmp22, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end.21
  %33 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p25 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %33, i32 0, i32 14
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p25, align 8, !tbaa !23
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 0
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !24
  %call27 = call i32 @gs_erasepage(%struct.gs_state_s* %35) #6
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.24
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.then.20
  %37 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1278 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %if.end.13
  br label %sw.epilog.1277

sw.bb.34:                                         ; preds = %entry
  %call35 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp36 = icmp ult i64 %call35, 6
  br i1 %cmp36, label %cond.true, label %cond.false.82

cond.true:                                        ; preds = %sw.bb.34
  %38 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %call38 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #7
  store i64 %call38, i64* %__s2_len, align 8, !tbaa !36
  %40 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp39 = icmp ult i64 %40, 4
  br i1 %cmp39, label %cond.true.41, label %cond.false

cond.true.41:                                     ; preds = %land.lhs.true
  %41 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %42, i8** %__s1, align 8, !tbaa !1
  %43 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx44, align 1, !tbaa !21
  %conv45 = zext i8 %45 to i32
  %46 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !21
  %conv46 = zext i8 %46 to i32
  %sub = sub nsw i32 %conv45, %conv46
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %47 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp47 = icmp ugt i64 %47, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.79

land.lhs.true.49:                                 ; preds = %cond.true.41
  %48 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %48, 0
  br i1 %cmp50, label %if.then.52, label %if.end.79

if.then.52:                                       ; preds = %land.lhs.true.49
  %49 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx53, align 1, !tbaa !21
  %conv54 = zext i8 %50 to i32
  %51 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !21
  %conv55 = zext i8 %51 to i32
  %sub56 = sub nsw i32 %conv54, %conv55
  store i32 %sub56, i32* %__result, align 4, !tbaa !5
  %52 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp57 = icmp ugt i64 %52, 1
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.78

land.lhs.true.59:                                 ; preds = %if.then.52
  %53 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %53, 0
  br i1 %cmp60, label %if.then.62, label %if.end.78

if.then.62:                                       ; preds = %land.lhs.true.59
  %54 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx63, align 1, !tbaa !21
  %conv64 = zext i8 %55 to i32
  %56 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !21
  %conv65 = zext i8 %56 to i32
  %sub66 = sub nsw i32 %conv64, %conv65
  store i32 %sub66, i32* %__result, align 4, !tbaa !5
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp67 = icmp ugt i64 %57, 2
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.77

land.lhs.true.69:                                 ; preds = %if.then.62
  %58 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %58, 0
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %land.lhs.true.69
  %59 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %59, i64 3
  %60 = load i8, i8* %arrayidx73, align 1, !tbaa !21
  %conv74 = zext i8 %60 to i32
  %61 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !21
  %conv75 = zext i8 %61 to i32
  %sub76 = sub nsw i32 %conv74, %conv75
  store i32 %sub76, i32* %__result, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %land.lhs.true.69, %if.then.62
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.59, %if.then.52
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.49, %cond.true.41
  %62 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %62, i32* %tmp80, !tbaa !5
  %63 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i32, i32* %tmp80, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %66 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call81 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.79
  %cond = phi i32 [ %65, %if.end.79 ], [ %call81, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %67 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %tmp, !tbaa !5
  br label %cond.end.84

cond.false.82:                                    ; preds = %sw.bb.34
  %70 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call83 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64 6) #7
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.end
  %cond85 = phi i32 [ %69, %cond.end ], [ %call83, %cond.false.82 ]
  %cmp86 = icmp eq i32 %cond85, 0
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %cond.end.84
  %71 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap89 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %71, i32 0, i32 0
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap89, align 8, !tbaa !14
  %73 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %add.ptr90 = getelementptr inbounds i8, i8* %73, i64 6
  %call91 = call i32 @gs_debug_flags_parse(%struct.gs_memory_s* %72, i8* %add.ptr90) #6
  store i32 %call91, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %74, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.88
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.95:                                        ; preds = %if.then.88
  br label %sw.epilog.1277

if.else:                                          ; preds = %cond.end.84
  %call96 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp97 = icmp ult i64 %call96, 12
  br i1 %cmp97, label %cond.true.99, label %cond.false.156

cond.true.99:                                     ; preds = %if.else
  %76 = bitcast i64* %__s1_len101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = bitcast i64* %__s2_len103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.105, label %cond.false.152

land.lhs.true.105:                                ; preds = %cond.true.99
  %call106 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #7
  store i64 %call106, i64* %__s2_len103, align 8, !tbaa !36
  %78 = load i64, i64* %__s2_len103, align 8, !tbaa !36
  %cmp107 = icmp ult i64 %78, 4
  br i1 %cmp107, label %cond.true.109, label %cond.false.152

cond.true.109:                                    ; preds = %land.lhs.true.105
  %79 = bitcast i8** %__s1111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %80, i8** %__s1111, align 8, !tbaa !1
  %81 = bitcast i32* %__result113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i8*, i8** %__s1111, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx114, align 1, !tbaa !21
  %conv115 = zext i8 %83 to i32
  %84 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !21
  %conv116 = zext i8 %84 to i32
  %sub117 = sub nsw i32 %conv115, %conv116
  store i32 %sub117, i32* %__result113, align 4, !tbaa !5
  %85 = load i64, i64* %__s2_len103, align 8, !tbaa !36
  %cmp118 = icmp ugt i64 %85, 0
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.150

land.lhs.true.120:                                ; preds = %cond.true.109
  %86 = load i32, i32* %__result113, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %86, 0
  br i1 %cmp121, label %if.then.123, label %if.end.150

if.then.123:                                      ; preds = %land.lhs.true.120
  %87 = load i8*, i8** %__s1111, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx124, align 1, !tbaa !21
  %conv125 = zext i8 %88 to i32
  %89 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !21
  %conv126 = zext i8 %89 to i32
  %sub127 = sub nsw i32 %conv125, %conv126
  store i32 %sub127, i32* %__result113, align 4, !tbaa !5
  %90 = load i64, i64* %__s2_len103, align 8, !tbaa !36
  %cmp128 = icmp ugt i64 %90, 1
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.149

land.lhs.true.130:                                ; preds = %if.then.123
  %91 = load i32, i32* %__result113, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %91, 0
  br i1 %cmp131, label %if.then.133, label %if.end.149

if.then.133:                                      ; preds = %land.lhs.true.130
  %92 = load i8*, i8** %__s1111, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %92, i64 2
  %93 = load i8, i8* %arrayidx134, align 1, !tbaa !21
  %conv135 = zext i8 %93 to i32
  %94 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !21
  %conv136 = zext i8 %94 to i32
  %sub137 = sub nsw i32 %conv135, %conv136
  store i32 %sub137, i32* %__result113, align 4, !tbaa !5
  %95 = load i64, i64* %__s2_len103, align 8, !tbaa !36
  %cmp138 = icmp ugt i64 %95, 2
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.148

land.lhs.true.140:                                ; preds = %if.then.133
  %96 = load i32, i32* %__result113, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %96, 0
  br i1 %cmp141, label %if.then.143, label %if.end.148

if.then.143:                                      ; preds = %land.lhs.true.140
  %97 = load i8*, i8** %__s1111, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %97, i64 3
  %98 = load i8, i8* %arrayidx144, align 1, !tbaa !21
  %conv145 = zext i8 %98 to i32
  %99 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !21
  %conv146 = zext i8 %99 to i32
  %sub147 = sub nsw i32 %conv145, %conv146
  store i32 %sub147, i32* %__result113, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.143, %land.lhs.true.140, %if.then.133
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %land.lhs.true.130, %if.then.123
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.120, %cond.true.109
  %100 = load i32, i32* %__result113, align 4, !tbaa !5
  store i32 %100, i32* %tmp151, !tbaa !5
  %101 = bitcast i32* %__result113 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i8** %__s1111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %tmp151, !tbaa !5
  br label %cond.end.154

cond.false.152:                                   ; preds = %land.lhs.true.105, %cond.true.99
  %104 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call153 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #8
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %if.end.150
  %cond155 = phi i32 [ %103, %if.end.150 ], [ %call153, %cond.false.152 ]
  store i32 %cond155, i32* %tmp104, !tbaa !5
  %105 = bitcast i64* %__s2_len103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i64* %__s1_len101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load i32, i32* %tmp104, !tbaa !5
  br label %cond.end.158

cond.false.156:                                   ; preds = %if.else
  %108 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call157 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i64 12) #7
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.end.154
  %cond159 = phi i32 [ %107, %cond.end.154 ], [ %call157, %cond.false.156 ]
  %cmp160 = icmp eq i32 %cond159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.209

if.then.162:                                      ; preds = %cond.end.158
  %109 = bitcast %struct.gx_device_s** %pdev164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %111, i32 0, i32 4
  %112 = load i32, i32* %init_done, align 4, !tbaa !42
  %cmp166 = icmp slt i32 %112, 2
  br i1 %cmp166, label %if.then.168, label %if.else.178

if.then.168:                                      ; preds = %if.then.162
  %113 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_initial_arg = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %113, i32 0, i32 15
  %114 = load i8*, i8** %saved_pages_initial_arg, align 8, !tbaa !43
  %cmp169 = icmp eq i8* %114, null
  br i1 %cmp169, label %if.then.171, label %if.else.174

if.then.171:                                      ; preds = %if.then.168
  %115 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %add.ptr172 = getelementptr inbounds i8, i8* %115, i64 12
  %116 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_initial_arg173 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %116, i32 0, i32 15
  store i8* %add.ptr172, i8** %saved_pages_initial_arg173, align 8, !tbaa !43
  br label %if.end.177

if.else.174:                                      ; preds = %if.then.168
  %117 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap175 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %117, i32 0, i32 0
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap175, align 8, !tbaa !14
  %call176 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %118, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i32 0, i32 0)) #6
  %119 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  call void @arg_finit(%struct.arg_list_s* %119) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.177:                                       ; preds = %if.then.171
  br label %if.end.205

if.else.178:                                      ; preds = %if.then.162
  %120 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p179 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %120, i32 0, i32 14
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p179, align 8, !tbaa !23
  %pgs180 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 0
  %122 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs180, align 8, !tbaa !24
  %call181 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %122) #6
  store %struct.gx_device_s* %call181, %struct.gx_device_s** %pdev164, align 8, !tbaa !1
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev164, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %124 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !44
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev164, align 8, !tbaa !1
  %call182 = call i32 %124(%struct.gx_device_s* %125, i32 16, i8* null, i32 0) #6
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %if.else.178
  %126 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap186 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %126, i32 0, i32 0
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap186, align 8, !tbaa !14
  %128 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev164, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %128, i32 0, i32 2
  %129 = load i8*, i8** %dname, align 8, !tbaa !55
  %call187 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i8* %129) #6
  %130 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  call void @arg_finit(%struct.arg_list_s* %130) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.188:                                       ; preds = %if.else.178
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev164, align 8, !tbaa !1
  %132 = bitcast %struct.gx_device_s* %131 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %132, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %133 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %134 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %add.ptr189 = getelementptr inbounds i8, i8* %134, i64 12
  %135 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i8, i8* %135, i64 12
  %call191 = call i64 @strlen(i8* %add.ptr190) #7
  %conv192 = trunc i64 %call191 to i32
  %call193 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %133, i8* %add.ptr189, i32 %conv192) #6
  store i32 %call193, i32* %code, align 4, !tbaa !5
  %136 = load i32, i32* %code, align 4, !tbaa !5
  %cmp194 = icmp sgt i32 %136, 0
  br i1 %cmp194, label %if.then.196, label %if.end.204

if.then.196:                                      ; preds = %if.end.188
  %137 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p197 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %137, i32 0, i32 14
  %138 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p197, align 8, !tbaa !23
  %pgs198 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %138, i32 0, i32 0
  %139 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs198, align 8, !tbaa !24
  %call199 = call i32 @gs_erasepage(%struct.gs_state_s* %139) #6
  store i32 %call199, i32* %code, align 4, !tbaa !5
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.then.196
  %140 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.203:                                       ; preds = %if.then.196
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.188
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.177
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %if.end.205, %if.then.202, %if.then.185, %if.else.174
  %141 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast %struct.gx_device_s** %pdev164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %cleanup.dest.208 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.208, label %cleanup.1278 [
    i32 2, label %sw.epilog.1277
  ]

if.else.209:                                      ; preds = %cond.end.158
  %call210 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #7
  %cmp211 = icmp ult i64 %call210, 16
  br i1 %cmp211, label %cond.true.213, label %cond.false.270

cond.true.213:                                    ; preds = %if.else.209
  %143 = bitcast i64* %__s1_len215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = bitcast i64* %__s2_len217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.21 to i64)), i64 1), label %land.lhs.true.219, label %cond.false.266

land.lhs.true.219:                                ; preds = %cond.true.213
  %call220 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #7
  store i64 %call220, i64* %__s2_len217, align 8, !tbaa !36
  %145 = load i64, i64* %__s2_len217, align 8, !tbaa !36
  %cmp221 = icmp ult i64 %145, 4
  br i1 %cmp221, label %cond.true.223, label %cond.false.266

cond.true.223:                                    ; preds = %land.lhs.true.219
  %146 = bitcast i8** %__s1225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  %147 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %147, i8** %__s1225, align 8, !tbaa !1
  %148 = bitcast i32* %__result227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = load i8*, i8** %__s1225, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx228, align 1, !tbaa !21
  %conv229 = zext i8 %150 to i32
  %151 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), align 1, !tbaa !21
  %conv230 = zext i8 %151 to i32
  %sub231 = sub nsw i32 %conv229, %conv230
  store i32 %sub231, i32* %__result227, align 4, !tbaa !5
  %152 = load i64, i64* %__s2_len217, align 8, !tbaa !36
  %cmp232 = icmp ugt i64 %152, 0
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.264

land.lhs.true.234:                                ; preds = %cond.true.223
  %153 = load i32, i32* %__result227, align 4, !tbaa !5
  %cmp235 = icmp eq i32 %153, 0
  br i1 %cmp235, label %if.then.237, label %if.end.264

if.then.237:                                      ; preds = %land.lhs.true.234
  %154 = load i8*, i8** %__s1225, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i8, i8* %arrayidx238, align 1, !tbaa !21
  %conv239 = zext i8 %155 to i32
  %156 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i64 1), align 1, !tbaa !21
  %conv240 = zext i8 %156 to i32
  %sub241 = sub nsw i32 %conv239, %conv240
  store i32 %sub241, i32* %__result227, align 4, !tbaa !5
  %157 = load i64, i64* %__s2_len217, align 8, !tbaa !36
  %cmp242 = icmp ugt i64 %157, 1
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.263

land.lhs.true.244:                                ; preds = %if.then.237
  %158 = load i32, i32* %__result227, align 4, !tbaa !5
  %cmp245 = icmp eq i32 %158, 0
  br i1 %cmp245, label %if.then.247, label %if.end.263

if.then.247:                                      ; preds = %land.lhs.true.244
  %159 = load i8*, i8** %__s1225, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %159, i64 2
  %160 = load i8, i8* %arrayidx248, align 1, !tbaa !21
  %conv249 = zext i8 %160 to i32
  %161 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i64 2), align 1, !tbaa !21
  %conv250 = zext i8 %161 to i32
  %sub251 = sub nsw i32 %conv249, %conv250
  store i32 %sub251, i32* %__result227, align 4, !tbaa !5
  %162 = load i64, i64* %__s2_len217, align 8, !tbaa !36
  %cmp252 = icmp ugt i64 %162, 2
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.262

land.lhs.true.254:                                ; preds = %if.then.247
  %163 = load i32, i32* %__result227, align 4, !tbaa !5
  %cmp255 = icmp eq i32 %163, 0
  br i1 %cmp255, label %if.then.257, label %if.end.262

if.then.257:                                      ; preds = %land.lhs.true.254
  %164 = load i8*, i8** %__s1225, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %164, i64 3
  %165 = load i8, i8* %arrayidx258, align 1, !tbaa !21
  %conv259 = zext i8 %165 to i32
  %166 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i64 3), align 1, !tbaa !21
  %conv260 = zext i8 %166 to i32
  %sub261 = sub nsw i32 %conv259, %conv260
  store i32 %sub261, i32* %__result227, align 4, !tbaa !5
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.257, %land.lhs.true.254, %if.then.247
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %land.lhs.true.244, %if.then.237
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %land.lhs.true.234, %cond.true.223
  %167 = load i32, i32* %__result227, align 4, !tbaa !5
  store i32 %167, i32* %tmp265, !tbaa !5
  %168 = bitcast i32* %__result227 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i8** %__s1225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = load i32, i32* %tmp265, !tbaa !5
  br label %cond.end.268

cond.false.266:                                   ; preds = %land.lhs.true.219, %cond.true.213
  %171 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call267 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #8
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.266, %if.end.264
  %cond269 = phi i32 [ %170, %if.end.264 ], [ %call267, %cond.false.266 ]
  store i32 %cond269, i32* %tmp218, !tbaa !5
  %172 = bitcast i64* %__s2_len217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i64* %__s1_len215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = load i32, i32* %tmp218, !tbaa !5
  br label %cond.end.272

cond.false.270:                                   ; preds = %if.else.209
  %175 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call271 = call i32 @strncmp(i8* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i64 16) #7
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.270, %cond.end.268
  %cond273 = phi i32 [ %174, %cond.end.268 ], [ %call271, %cond.false.270 ]
  %cmp274 = icmp eq i32 %cond273, 0
  br i1 %cmp274, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %cond.end.272
  %176 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode277 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %176, i32 0, i32 16
  store i32 1, i32* %saved_pages_test_mode277, align 4, !tbaa !22
  br label %sw.epilog.1277

if.end.278:                                       ; preds = %cond.end.272
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279
  br label %sw.bb.281

sw.bb.281:                                        ; preds = %entry, %if.end.280
  %177 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %177, i32 0, i32 0
  store i32 0, i32* %expand_ats, align 4, !tbaa !56
  br label %sw.bb.282

sw.bb.282:                                        ; preds = %entry, %sw.bb.281
  %178 = bitcast i8** %psarg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  %179 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %180 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap284 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %180, i32 0, i32 0
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap284, align 8, !tbaa !14
  %call285 = call i8* @arg_next(%struct.arg_list_s* %179, i32* %code, %struct.gs_memory_s* %181) #6
  store i8* %call285, i8** %psarg, align 8, !tbaa !1
  %182 = load i32, i32* %code, align 4, !tbaa !5
  %cmp286 = icmp slt i32 %182, 0
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %sw.bb.282
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.289:                                       ; preds = %sw.bb.282
  %183 = load i8*, i8** %psarg, align 8, !tbaa !1
  %cmp290 = icmp eq i8* %183, null
  br i1 %cmp290, label %if.then.292, label %if.end.296

if.then.292:                                      ; preds = %if.end.289
  %184 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap293 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %184, i32 0, i32 0
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap293, align 8, !tbaa !14
  %186 = load i8, i8* %sw, align 1, !tbaa !21
  %conv294 = sext i8 %186 to i32
  %call295 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 %conv294) #6
  %187 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  call void @arg_finit(%struct.arg_list_s* %187) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.296:                                       ; preds = %if.end.289
  %188 = load i8*, i8** %psarg, align 8, !tbaa !1
  %189 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap297 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %189, i32 0, i32 0
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap297, align 8, !tbaa !14
  %call298 = call i8* @arg_copy(i8* %188, %struct.gs_memory_s* %190) #6
  store i8* %call298, i8** %psarg, align 8, !tbaa !1
  %191 = load i8*, i8** %psarg, align 8, !tbaa !1
  %cmp299 = icmp eq i8* %191, null
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %if.end.296
  store i32 -100, i32* %code, align 4, !tbaa !5
  br label %if.end.304

if.else.302:                                      ; preds = %if.end.296
  %192 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call303 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %192) #6
  store i32 %call303, i32* %code, align 4, !tbaa !5
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.302, %if.then.301
  %193 = load i32, i32* %code, align 4, !tbaa !5
  %cmp305 = icmp sge i32 %193, 0
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %if.end.304
  %194 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call308 = call i32 @run_string(%struct.gs_main_instance_s* %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0) #6
  store i32 %call308, i32* %code, align 4, !tbaa !5
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.307, %if.end.304
  %195 = load i32, i32* %code, align 4, !tbaa !5
  %cmp310 = icmp sge i32 %195, 0
  br i1 %cmp310, label %if.then.312, label %if.end.322

if.then.312:                                      ; preds = %if.end.309
  br label %while.cond

while.cond:                                       ; preds = %if.end.321, %if.then.312
  %196 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %197 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap313 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %197, i32 0, i32 0
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap313, align 8, !tbaa !14
  %call314 = call i8* @arg_next(%struct.arg_list_s* %196, i32* %code, %struct.gs_memory_s* %198) #6
  store i8* %call314, i8** %arg.addr, align 8, !tbaa !1
  %cmp315 = icmp ne i8* %call314, null
  br i1 %cmp315, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %199 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %200 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call317 = call i32 @runarg(%struct.gs_main_instance_s* %199, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* %200, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 1) #6
  store i32 %call317, i32* %code, align 4, !tbaa !5
  %201 = load i32, i32* %code, align 4, !tbaa !5
  %cmp318 = icmp slt i32 %201, 0
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %while.body
  br label %while.end

if.end.321:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.320, %while.cond
  br label %if.end.322

if.end.322:                                       ; preds = %while.end, %if.end.309
  %202 = load i32, i32* %code, align 4, !tbaa !5
  %cmp323 = icmp sge i32 %202, 0
  br i1 %cmp323, label %if.then.325, label %if.end.327

if.then.325:                                      ; preds = %if.end.322
  %203 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %204 = load i8*, i8** %psarg, align 8, !tbaa !1
  %call326 = call i32 @runarg(%struct.gs_main_instance_s* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 3) #6
  store i32 %call326, i32* %code, align 4, !tbaa !5
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.end.322
  %205 = load i8*, i8** %psarg, align 8, !tbaa !1
  %206 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap328 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %206, i32 0, i32 0
  %207 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap328, align 8, !tbaa !14
  call void @arg_free(i8* %205, %struct.gs_memory_s* %207) #6
  %208 = load i32, i32* %code, align 4, !tbaa !5
  %cmp329 = icmp sge i32 %208, 0
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %if.end.327
  store i32 -101, i32* %code, align 4, !tbaa !5
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.331, %if.end.327
  %209 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.333

cleanup.333:                                      ; preds = %if.end.332, %if.then.292, %if.then.288
  %210 = bitcast i8** %psarg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  br label %cleanup.1278

sw.bb.334:                                        ; preds = %entry
  %211 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %212 = load i8, i8* %211, align 1, !tbaa !21
  %conv335 = sext i8 %212 to i32
  switch i32 %conv335, label %sw.default.338 [
    i32 0, label %sw.bb.336
    i32 45, label %sw.bb.337
  ]

sw.bb.336:                                        ; preds = %sw.bb.334
  store i8 1, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 64), align 1, !tbaa !21
  br label %sw.epilog

sw.bb.337:                                        ; preds = %sw.bb.334
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 64), align 1, !tbaa !21
  br label %sw.epilog

sw.default.338:                                   ; preds = %sw.bb.334
  %213 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap339 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %213, i32 0, i32 0
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap339, align 8, !tbaa !14
  %call340 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.epilog:                                        ; preds = %sw.bb.337, %sw.bb.336
  br label %sw.epilog.1277

sw.bb.341:                                        ; preds = %entry
  %215 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %216 = load i8, i8* %215, align 1, !tbaa !21
  %conv342 = sext i8 %216 to i32
  %cmp343 = icmp eq i32 %conv342, 45
  br i1 %cmp343, label %if.then.345, label %if.else.346

if.then.345:                                      ; preds = %sw.bb.341
  %217 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %217, i32 0, i32 3
  store i32 0, i32* %run_buffer_size, align 4, !tbaa !58
  br label %if.end.364

if.else.346:                                      ; preds = %sw.bb.341
  %218 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call348 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32* %bsize) #8
  %cmp349 = icmp ne i32 %call348, 1
  br i1 %cmp349, label %if.then.356, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.346
  %220 = load i32, i32* %bsize, align 4, !tbaa !5
  %cmp351 = icmp ule i32 %220, 0
  br i1 %cmp351, label %if.then.356, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false
  %221 = load i32, i32* %bsize, align 4, !tbaa !5
  %cmp354 = icmp ugt i32 %221, 1024
  br i1 %cmp354, label %if.then.356, label %if.end.359

if.then.356:                                      ; preds = %lor.lhs.false.353, %lor.lhs.false, %if.else.346
  %222 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap357 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %222, i32 0, i32 0
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap357, align 8, !tbaa !14
  %call358 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %223, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i32 0, i32 0), i32 1024) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.361

if.end.359:                                       ; preds = %lor.lhs.false.353
  %224 = load i32, i32* %bsize, align 4, !tbaa !5
  %225 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size360 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %225, i32 0, i32 3
  store i32 %224, i32* %run_buffer_size360, align 4, !tbaa !58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.361

cleanup.361:                                      ; preds = %if.end.359, %if.then.356
  %226 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %cleanup.dest.362 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.362, label %cleanup.1278 [
    i32 0, label %cleanup.cont.363
  ]

cleanup.cont.363:                                 ; preds = %cleanup.361
  br label %if.end.364

if.end.364:                                       ; preds = %cleanup.cont.363, %if.then.345
  br label %sw.epilog.1277

sw.bb.365:                                        ; preds = %entry
  %227 = bitcast i32* %ats to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats367 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %228, i32 0, i32 0
  %229 = load i32, i32* %expand_ats367, align 4, !tbaa !56
  store i32 %229, i32* %ats, align 4, !tbaa !5
  %230 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call368 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %230) #6
  store i32 %call368, i32* %code, align 4, !tbaa !5
  %231 = load i32, i32* %code, align 4, !tbaa !5
  %cmp369 = icmp slt i32 %231, 0
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %sw.bb.365
  %232 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %232, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.372:                                       ; preds = %sw.bb.365
  %233 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats373 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %233, i32 0, i32 0
  store i32 0, i32* %expand_ats373, align 4, !tbaa !56
  br label %while.cond.374

while.cond.374:                                   ; preds = %if.end.402, %if.end.372
  %234 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %235 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap375 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %235, i32 0, i32 0
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap375, align 8, !tbaa !14
  %call376 = call i8* @arg_next(%struct.arg_list_s* %234, i32* %code, %struct.gs_memory_s* %236) #6
  store i8* %call376, i8** %arg.addr, align 8, !tbaa !1
  %cmp377 = icmp ne i8* %call376, null
  br i1 %cmp377, label %while.body.379, label %while.end.403

while.body.379:                                   ; preds = %while.cond.374
  %237 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds i8, i8* %237, i64 0
  %238 = load i8, i8* %arrayidx380, align 1, !tbaa !21
  %conv381 = sext i8 %238 to i32
  %cmp382 = icmp eq i32 %conv381, 64
  br i1 %cmp382, label %if.then.396, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %while.body.379
  %239 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx385 = getelementptr inbounds i8, i8* %239, i64 0
  %240 = load i8, i8* %arrayidx385, align 1, !tbaa !21
  %conv386 = sext i8 %240 to i32
  %cmp387 = icmp eq i32 %conv386, 45
  br i1 %cmp387, label %land.lhs.true.389, label %if.end.397

land.lhs.true.389:                                ; preds = %lor.lhs.false.384
  %241 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds i8, i8* %241, i64 1
  %242 = load i8, i8* %arrayidx390, align 1, !tbaa !21
  %conv391 = zext i8 %242 to i32
  %idxprom = sext i32 %conv391 to i64
  %call392 = call i16** @__ctype_b_loc() #9
  %243 = load i16*, i16** %call392, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds i16, i16* %243, i64 %idxprom
  %244 = load i16, i16* %arrayidx393, align 2, !tbaa !37
  %conv394 = zext i16 %244 to i32
  %and = and i32 %conv394, 2048
  %tobool395 = icmp ne i32 %and, 0
  br i1 %tobool395, label %if.end.397, label %if.then.396

if.then.396:                                      ; preds = %land.lhs.true.389, %while.body.379
  br label %while.end.403

if.end.397:                                       ; preds = %land.lhs.true.389, %lor.lhs.false.384
  %245 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %246 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call398 = call i32 @runarg(%struct.gs_main_instance_s* %245, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 4) #6
  store i32 %call398, i32* %code, align 4, !tbaa !5
  %247 = load i32, i32* %code, align 4, !tbaa !5
  %cmp399 = icmp slt i32 %247, 0
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.end.397
  %248 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.402:                                       ; preds = %if.end.397
  br label %while.cond.374

while.end.403:                                    ; preds = %if.then.396, %while.cond.374
  %249 = load i32, i32* %code, align 4, !tbaa !5
  %cmp404 = icmp slt i32 %249, 0
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %while.end.403
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.424

if.end.407:                                       ; preds = %while.end.403
  %250 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %cmp408 = icmp ne i8* %250, null
  br i1 %cmp408, label %if.then.410, label %if.end.422

if.then.410:                                      ; preds = %if.end.407
  %251 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %253 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap412 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %253, i32 0, i32 0
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap412, align 8, !tbaa !14
  %call413 = call i8* @arg_copy(i8* %252, %struct.gs_memory_s* %254) #6
  store i8* %call413, i8** %p, align 8, !tbaa !1
  %255 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp414 = icmp eq i8* %255, null
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.then.410
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.419

if.end.417:                                       ; preds = %if.then.410
  %256 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %257 = load i8*, i8** %p, align 8, !tbaa !1
  %call418 = call i32 @arg_push_memory_string(%struct.arg_list_s* %256, i8* %257, i32 1, %struct.gs_memory_s* null) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.419

cleanup.419:                                      ; preds = %if.end.417, %if.then.416
  %258 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %cleanup.dest.420 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.420, label %cleanup.424 [
    i32 0, label %cleanup.cont.421
  ]

cleanup.cont.421:                                 ; preds = %cleanup.419
  br label %if.end.422

if.end.422:                                       ; preds = %cleanup.cont.421, %if.end.407
  %259 = load i32, i32* %ats, align 4, !tbaa !5
  %260 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats423 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %260, i32 0, i32 0
  store i32 %259, i32* %expand_ats423, align 4, !tbaa !56
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.424

cleanup.424:                                      ; preds = %if.end.422, %cleanup.419, %if.then.406, %if.then.401, %if.then.371
  %261 = bitcast i32* %ats to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %cleanup.dest.425 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.425, label %cleanup.1278 [
    i32 2, label %sw.epilog.1277
  ]

sw.bb.426:                                        ; preds = %entry
  %262 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %263 = load i8, i8* %262, align 1, !tbaa !21
  %conv427 = sext i8 %263 to i32
  switch i32 %conv427, label %sw.default.430 [
    i32 0, label %sw.bb.428
    i32 45, label %sw.bb.429
  ]

sw.bb.428:                                        ; preds = %sw.bb.426
  store i8 1, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 35), align 1, !tbaa !21
  br label %sw.epilog.433

sw.bb.429:                                        ; preds = %sw.bb.426
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 35), align 1, !tbaa !21
  br label %sw.epilog.433

sw.default.430:                                   ; preds = %sw.bb.426
  %264 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap431 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %264, i32 0, i32 0
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap431, align 8, !tbaa !14
  %call432 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.epilog.433:                                    ; preds = %sw.bb.429, %sw.bb.428
  br label %sw.epilog.1277

sw.bb.434:                                        ; preds = %entry
  %266 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %267 = load i8, i8* %266, align 1, !tbaa !21
  %conv435 = sext i8 %267 to i32
  %cmp436 = icmp ne i32 %conv435, 0
  br i1 %cmp436, label %if.then.438, label %if.end.454

if.then.438:                                      ; preds = %sw.bb.434
  %268 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %269 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call439 = call i32 @argproc(%struct.gs_main_instance_s* %268, i8* %269) #6
  store i32 %call439, i32* %code, align 4, !tbaa !5
  %270 = load i32, i32* %code, align 4, !tbaa !5
  %cmp440 = icmp slt i32 %270, 0
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.then.438
  %271 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %271, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.443:                                       ; preds = %if.then.438
  %272 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode444 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %272, i32 0, i32 16
  %273 = load i32, i32* %saved_pages_test_mode444, align 4, !tbaa !22
  %tobool445 = icmp ne i32 %273, 0
  br i1 %tobool445, label %if.then.446, label %if.end.453

if.then.446:                                      ; preds = %if.end.443
  %274 = bitcast %struct.gx_device_s** %pdev448 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %274) #1
  %275 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p449 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %275, i32 0, i32 14
  %276 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p449, align 8, !tbaa !23
  %pgs450 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %276, i32 0, i32 0
  %277 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs450, align 8, !tbaa !24
  %call451 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %277) #6
  store %struct.gx_device_s* %call451, %struct.gx_device_s** %pdev448, align 8, !tbaa !1
  %278 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %278, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %279 = bitcast %struct.gx_device_s** %pdev448 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  br label %cleanup.1278

if.end.453:                                       ; preds = %if.end.443
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %sw.bb.434
  br label %sw.epilog.1277

sw.bb.455:                                        ; preds = %entry
  %280 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %281 = load i8, i8* %280, align 1, !tbaa !21
  %tobool456 = icmp ne i8 %281, 0
  br i1 %tobool456, label %if.end.460, label %if.then.457

if.then.457:                                      ; preds = %sw.bb.455
  %282 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap458 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %282, i32 0, i32 0
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap458, align 8, !tbaa !14
  %call459 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.460:                                       ; preds = %sw.bb.455
  %284 = bitcast i32* %bsize462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  %285 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size463 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %285, i32 0, i32 3
  %286 = load i32, i32* %run_buffer_size463, align 4, !tbaa !58
  store i32 %286, i32* %bsize462, align 4, !tbaa !5
  %287 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size464 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %287, i32 0, i32 3
  store i32 1, i32* %run_buffer_size464, align 4, !tbaa !58
  %288 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %289 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call465 = call i32 @argproc(%struct.gs_main_instance_s* %288, i8* %289) #6
  store i32 %call465, i32* %code, align 4, !tbaa !5
  %290 = load i32, i32* %bsize462, align 4, !tbaa !5
  %291 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size466 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %291, i32 0, i32 3
  store i32 %290, i32* %run_buffer_size466, align 4, !tbaa !58
  %292 = load i32, i32* %code, align 4, !tbaa !5
  %cmp467 = icmp slt i32 %292, 0
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %if.end.460
  %293 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %293, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.499

if.end.470:                                       ; preds = %if.end.460
  %294 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode471 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %294, i32 0, i32 16
  %295 = load i32, i32* %saved_pages_test_mode471, align 4, !tbaa !22
  %tobool472 = icmp ne i32 %295, 0
  br i1 %tobool472, label %if.then.473, label %if.end.498

if.then.473:                                      ; preds = %if.end.470
  %296 = bitcast %struct.gx_device_s** %pdev475 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %296) #1
  %297 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p476 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %297, i32 0, i32 14
  %298 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p476, align 8, !tbaa !23
  %pgs477 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %298, i32 0, i32 0
  %299 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs477, align 8, !tbaa !24
  %call478 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %299) #6
  store %struct.gx_device_s* %call478, %struct.gx_device_s** %pdev475, align 8, !tbaa !1
  %300 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev475, align 8, !tbaa !1
  %301 = bitcast %struct.gx_device_s* %300 to %struct.gx_device_printer_s*
  %call479 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %301, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 18) #6
  store i32 %call479, i32* %code, align 4, !tbaa !5
  %cmp480 = icmp slt i32 %call479, 0
  br i1 %cmp480, label %if.then.482, label %if.end.483

if.then.482:                                      ; preds = %if.then.473
  %302 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %302, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.495

if.end.483:                                       ; preds = %if.then.473
  %303 = load i32, i32* %code, align 4, !tbaa !5
  %cmp484 = icmp sgt i32 %303, 0
  br i1 %cmp484, label %if.then.486, label %if.end.494

if.then.486:                                      ; preds = %if.end.483
  %304 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p487 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %304, i32 0, i32 14
  %305 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p487, align 8, !tbaa !23
  %pgs488 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %305, i32 0, i32 0
  %306 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs488, align 8, !tbaa !24
  %call489 = call i32 @gs_erasepage(%struct.gs_state_s* %306) #6
  store i32 %call489, i32* %code, align 4, !tbaa !5
  %cmp490 = icmp slt i32 %call489, 0
  br i1 %cmp490, label %if.then.492, label %if.end.493

if.then.492:                                      ; preds = %if.then.486
  %307 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %307, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.495

if.end.493:                                       ; preds = %if.then.486
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.end.483
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.495

cleanup.495:                                      ; preds = %if.end.494, %if.then.492, %if.then.482
  %308 = bitcast %struct.gx_device_s** %pdev475 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %cleanup.dest.496 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.496, label %cleanup.499 [
    i32 0, label %cleanup.cont.497
  ]

cleanup.cont.497:                                 ; preds = %cleanup.495
  br label %if.end.498

if.end.498:                                       ; preds = %cleanup.cont.497, %if.end.470
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.499

cleanup.499:                                      ; preds = %if.end.498, %cleanup.495, %if.then.469
  %309 = bitcast i32* %bsize462 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %cleanup.dest.500 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.500, label %cleanup.1278 [
    i32 0, label %cleanup.cont.501
  ]

cleanup.cont.501:                                 ; preds = %cleanup.499
  br label %sw.epilog.1277

sw.bb.502:                                        ; preds = %entry
  %310 = bitcast i64* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  %311 = bitcast i64* %height to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  %312 = bitcast %struct.ref_s* %value506 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %312) #1
  %313 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call507 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %313) #6
  store i32 %call507, i32* %code, align 4, !tbaa !5
  %cmp508 = icmp slt i32 %call507, 0
  br i1 %cmp508, label %if.then.510, label %if.end.511

if.then.510:                                      ; preds = %sw.bb.502
  %314 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %314, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.532

if.end.511:                                       ; preds = %sw.bb.502
  %315 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call512 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i64* %width, i64* %height) #8
  %cmp513 = icmp ne i32 %call512, 2
  br i1 %cmp513, label %if.then.515, label %if.end.518

if.then.515:                                      ; preds = %if.end.511
  %316 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap516 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %316, i32 0, i32 0
  %317 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap516, align 8, !tbaa !14
  %call517 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %317, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.532

if.end.518:                                       ; preds = %if.end.511
  %318 = load i64, i64* %width, align 8, !tbaa !36
  %value519 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value506, i32 0, i32 1
  %intval = bitcast %union.v* %value519 to i64*
  store i64 %318, i64* %intval, align 8, !tbaa !36
  %tas520 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value506, i32 0, i32 0
  %type_attrs521 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas520, i32 0, i32 0
  store i16 2816, i16* %type_attrs521, align 2, !tbaa !38
  %319 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p522 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %319, i32 0, i32 14
  %320 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p522, align 8, !tbaa !23
  %call523 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), %struct.ref_s* %value506) #6
  %321 = load i64, i64* %height, align 8, !tbaa !36
  %value524 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value506, i32 0, i32 1
  %intval525 = bitcast %union.v* %value524 to i64*
  store i64 %321, i64* %intval525, align 8, !tbaa !36
  %tas526 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value506, i32 0, i32 0
  %type_attrs527 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas526, i32 0, i32 0
  store i16 2816, i16* %type_attrs527, align 2, !tbaa !38
  %322 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p528 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %322, i32 0, i32 14
  %323 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p528, align 8, !tbaa !23
  %call529 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %323, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s* %value506) #6
  %324 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p530 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %324, i32 0, i32 14
  %325 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p530, align 8, !tbaa !23
  %call531 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct.ref_s* %vtrue) #6
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.532

cleanup.532:                                      ; preds = %if.end.518, %if.then.515, %if.then.510
  %326 = bitcast %struct.ref_s* %value506 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %326) #1
  %327 = bitcast i64* %height to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast i64* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %cleanup.dest.535 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.535, label %cleanup.1278 [
    i32 2, label %sw.epilog.1277
  ]

sw.bb.536:                                        ; preds = %entry, %entry
  %329 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_help(%struct.gs_main_instance_s* %329) #6
  store i32 -110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.bb.537:                                        ; preds = %entry
  %330 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %330) #1
  %331 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx539 = getelementptr inbounds i8, i8* %331, i64 0
  %332 = load i8, i8* %arrayidx539, align 1, !tbaa !21
  %conv540 = sext i8 %332 to i32
  %cmp541 = icmp eq i32 %conv540, 0
  br i1 %cmp541, label %if.then.543, label %if.else.550

if.then.543:                                      ; preds = %sw.bb.537
  %333 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %334 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap544 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %334, i32 0, i32 0
  %335 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap544, align 8, !tbaa !14
  %call545 = call i8* @arg_next(%struct.arg_list_s* %333, i32* %code, %struct.gs_memory_s* %335) #6
  store i8* %call545, i8** %path, align 8, !tbaa !1
  %336 = load i32, i32* %code, align 4, !tbaa !5
  %cmp546 = icmp slt i32 %336, 0
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.then.543
  %337 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %337, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.563

if.end.549:                                       ; preds = %if.then.543
  br label %if.end.551

if.else.550:                                      ; preds = %sw.bb.537
  %338 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %338, i8** %path, align 8, !tbaa !1
  br label %if.end.551

if.end.551:                                       ; preds = %if.else.550, %if.end.549
  %339 = load i8*, i8** %path, align 8, !tbaa !1
  %cmp552 = icmp eq i8* %339, null
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.551
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.563

if.end.555:                                       ; preds = %if.end.551
  %340 = load i8*, i8** %path, align 8, !tbaa !1
  %341 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap556 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %341, i32 0, i32 0
  %342 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap556, align 8, !tbaa !14
  %call557 = call i8* @arg_copy(i8* %340, %struct.gs_memory_s* %342) #6
  store i8* %call557, i8** %path, align 8, !tbaa !1
  %343 = load i8*, i8** %path, align 8, !tbaa !1
  %cmp558 = icmp eq i8* %343, null
  br i1 %cmp558, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %if.end.555
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.563

if.end.561:                                       ; preds = %if.end.555
  %344 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %345 = load i8*, i8** %path, align 8, !tbaa !1
  %call562 = call i32 @gs_main_add_lib_path(%struct.gs_main_instance_s* %344, i8* %345) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.563

cleanup.563:                                      ; preds = %if.end.561, %if.then.560, %if.then.554, %if.then.548
  %346 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %cleanup.dest.564 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.564, label %cleanup.1278 [
    i32 0, label %cleanup.cont.565
  ]

cleanup.cont.565:                                 ; preds = %cleanup.563
  br label %sw.epilog.1277

sw.bb.566:                                        ; preds = %entry
  %347 = bitcast i64* %msize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %347) #1
  store i64 0, i64* %msize, align 8, !tbaa !36
  %348 = bitcast %struct.gs_malloc_memory_s** %rawheap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #1
  %349 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap569 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %349, i32 0, i32 0
  %350 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap569, align 8, !tbaa !14
  %call570 = call %struct.gs_malloc_memory_s* @gs_malloc_wrapped_contents(%struct.gs_memory_s* %350) #6
  store %struct.gs_malloc_memory_s* %call570, %struct.gs_malloc_memory_s** %rawheap, align 8, !tbaa !1
  %351 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call571 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %351, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64* %msize) #8
  %352 = load i64, i64* %msize, align 8, !tbaa !36
  %cmp572 = icmp sle i64 %352, 0
  br i1 %cmp572, label %if.then.577, label %lor.lhs.false.574

lor.lhs.false.574:                                ; preds = %sw.bb.566
  %353 = load i64, i64* %msize, align 8, !tbaa !36
  %cmp575 = icmp sgt i64 %353, 9007199254740991
  br i1 %cmp575, label %if.then.577, label %if.end.580

if.then.577:                                      ; preds = %lor.lhs.false.574, %sw.bb.566
  %354 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap578 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %354, i32 0, i32 0
  %355 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap578, align 8, !tbaa !14
  %call579 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %355, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0), i64 9007199254740991) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.581

if.end.580:                                       ; preds = %lor.lhs.false.574
  %356 = load i64, i64* %msize, align 8, !tbaa !36
  %shl = shl i64 %356, 10
  %357 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %rawheap, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %357, i32 0, i32 6
  store i64 %shl, i64* %limit, align 8, !tbaa !59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.581

cleanup.581:                                      ; preds = %if.end.580, %if.then.577
  %358 = bitcast %struct.gs_malloc_memory_s** %rawheap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast i64* %msize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %cleanup.dest.583 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.583, label %cleanup.1278 [
    i32 0, label %cleanup.cont.584
  ]

cleanup.cont.584:                                 ; preds = %cleanup.581
  br label %sw.epilog.1277

sw.bb.585:                                        ; preds = %entry
  %360 = bitcast i32* %msize587 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %360) #1
  store i32 0, i32* %msize587, align 4, !tbaa !5
  %361 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call588 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %361, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32* %msize587) #8
  %362 = load i32, i32* %msize587, align 4, !tbaa !5
  %shl589 = shl i32 %362, 10
  %363 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %memory_chunk_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %363, i32 0, i32 1
  store i32 %shl589, i32* %memory_chunk_size, align 4, !tbaa !61
  %364 = bitcast i32* %msize587 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  br label %sw.epilog.1277

sw.bb.590:                                        ; preds = %entry
  %365 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %365) #1
  store i32 0, i32* %nsize, align 4, !tbaa !5
  %366 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call592 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32* %nsize) #8
  %367 = load i32, i32* %nsize, align 4, !tbaa !5
  %conv593 = zext i32 %367 to i64
  %shl594 = shl i64 %conv593, 10
  %368 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %name_table_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %368, i32 0, i32 2
  store i64 %shl594, i64* %name_table_size, align 8, !tbaa !62
  %369 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #1
  br label %sw.epilog.1277

sw.bb.595:                                        ; preds = %entry
  %370 = bitcast i8** %adef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %370) #1
  %371 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %371) #1
  %372 = bitcast %struct.ref_s* %value599 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %372) #1
  %373 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373) #1
  %374 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %arrayidx601 = getelementptr inbounds i8, i8* %374, i64 0
  %375 = load i8, i8* %arrayidx601, align 1, !tbaa !21
  %conv602 = sext i8 %375 to i32
  %cmp603 = icmp eq i32 %conv602, 0
  br i1 %cmp603, label %if.then.605, label %if.else.612

if.then.605:                                      ; preds = %sw.bb.595
  %376 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %377 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap606 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %377, i32 0, i32 0
  %378 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap606, align 8, !tbaa !14
  %call607 = call i8* @arg_next(%struct.arg_list_s* %376, i32* %code, %struct.gs_memory_s* %378) #6
  store i8* %call607, i8** %adef, align 8, !tbaa !1
  %379 = load i32, i32* %code, align 4, !tbaa !5
  %cmp608 = icmp slt i32 %379, 0
  br i1 %cmp608, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %if.then.605
  %380 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %380, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.641

if.end.611:                                       ; preds = %if.then.605
  br label %if.end.613

if.else.612:                                      ; preds = %sw.bb.595
  %381 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %381, i8** %adef, align 8, !tbaa !1
  br label %if.end.613

if.end.613:                                       ; preds = %if.else.612, %if.end.611
  %382 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call614 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %382) #6
  store i32 %call614, i32* %code, align 4, !tbaa !5
  %cmp615 = icmp slt i32 %call614, 0
  br i1 %cmp615, label %if.then.617, label %if.end.618

if.then.617:                                      ; preds = %if.end.613
  %383 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %383, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.641

if.end.618:                                       ; preds = %if.end.613
  %384 = load i8*, i8** %adef, align 8, !tbaa !1
  %call619 = call i64 @strlen(i8* %384) #7
  %conv620 = trunc i64 %call619 to i32
  store i32 %conv620, i32* %len, align 4, !tbaa !5
  %385 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap621 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %385, i32 0, i32 0
  %386 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap621, align 8, !tbaa !14
  %procs622 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %386, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs622, i32 0, i32 7
  %387 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %388 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap623 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %388, i32 0, i32 0
  %389 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap623, align 8, !tbaa !14
  %390 = load i32, i32* %len, align 4, !tbaa !5
  %call624 = call i8* %387(%struct.gs_memory_s* %389, i32 %390, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0)) #6
  store i8* %call624, i8** %str, align 8, !tbaa !1
  %391 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp625 = icmp eq i8* %391, null
  br i1 %cmp625, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.end.618
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.641

if.end.628:                                       ; preds = %if.end.618
  %392 = load i8*, i8** %str, align 8, !tbaa !1
  %393 = load i8*, i8** %adef, align 8, !tbaa !1
  %394 = load i32, i32* %len, align 4, !tbaa !5
  %conv629 = sext i32 %394 to i64
  %call630 = call i8* @memcpy(i8* %392, i8* %393, i64 %conv629) #8
  %395 = load i8*, i8** %str, align 8, !tbaa !1
  %value631 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value599, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value631 to i8**
  store i8* %395, i8** %const_bytes, align 8, !tbaa !1
  %tas632 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value599, i32 0, i32 0
  %type_attrs633 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas632, i32 0, i32 0
  store i16 4704, i16* %type_attrs633, align 2, !tbaa !38
  %396 = load i32, i32* %len, align 4, !tbaa !5
  %tas634 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value599, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas634, i32 0, i32 2
  store i32 %396, i32* %rsize, align 4, !tbaa !63
  %397 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p635 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %397, i32 0, i32 14
  %398 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p635, align 8, !tbaa !23
  %call636 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %398, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct.ref_s* %value599) #6
  %399 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p637 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %399, i32 0, i32 14
  %400 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p637, align 8, !tbaa !23
  %call638 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), %struct.ref_s* %vtrue) #6
  %401 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p639 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %401, i32 0, i32 14
  %402 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p639, align 8, !tbaa !23
  %call640 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %402, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct.ref_s* %vtrue) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.641

cleanup.641:                                      ; preds = %if.end.628, %if.then.627, %if.then.617, %if.then.610
  %403 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast %struct.ref_s* %value599 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %404) #1
  %405 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i8** %adef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %cleanup.dest.645 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.645, label %cleanup.1278 [
    i32 0, label %cleanup.cont.646
  ]

cleanup.cont.646:                                 ; preds = %cleanup.641
  br label %sw.epilog.1277

sw.bb.647:                                        ; preds = %entry
  %407 = bitcast i64* %__s1_len649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %407) #1
  %408 = bitcast i64* %__s2_len651 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %408) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i64 1) to i64), i64 ptrtoint ([1 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.653, label %cond.false.700

land.lhs.true.653:                                ; preds = %sw.bb.647
  %call654 = call i64 @strlen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #7
  store i64 %call654, i64* %__s2_len651, align 8, !tbaa !36
  %409 = load i64, i64* %__s2_len651, align 8, !tbaa !36
  %cmp655 = icmp ult i64 %409, 4
  br i1 %cmp655, label %cond.true.657, label %cond.false.700

cond.true.657:                                    ; preds = %land.lhs.true.653
  %410 = bitcast i8** %__s1659 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %410) #1
  %411 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %411, i8** %__s1659, align 8, !tbaa !1
  %412 = bitcast i32* %__result661 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #1
  %413 = load i8*, i8** %__s1659, align 8, !tbaa !1
  %arrayidx662 = getelementptr inbounds i8, i8* %413, i64 0
  %414 = load i8, i8* %arrayidx662, align 1, !tbaa !21
  %conv663 = zext i8 %414 to i32
  %415 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !21
  %conv664 = zext i8 %415 to i32
  %sub665 = sub nsw i32 %conv663, %conv664
  store i32 %sub665, i32* %__result661, align 4, !tbaa !5
  %416 = load i64, i64* %__s2_len651, align 8, !tbaa !36
  %cmp666 = icmp ugt i64 %416, 0
  br i1 %cmp666, label %land.lhs.true.668, label %if.end.698

land.lhs.true.668:                                ; preds = %cond.true.657
  %417 = load i32, i32* %__result661, align 4, !tbaa !5
  %cmp669 = icmp eq i32 %417, 0
  br i1 %cmp669, label %if.then.671, label %if.end.698

if.then.671:                                      ; preds = %land.lhs.true.668
  %418 = load i8*, i8** %__s1659, align 8, !tbaa !1
  %arrayidx672 = getelementptr inbounds i8, i8* %418, i64 1
  %419 = load i8, i8* %arrayidx672, align 1, !tbaa !21
  %conv673 = zext i8 %419 to i32
  %420 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i64 1), align 1, !tbaa !21
  %conv674 = zext i8 %420 to i32
  %sub675 = sub nsw i32 %conv673, %conv674
  store i32 %sub675, i32* %__result661, align 4, !tbaa !5
  %421 = load i64, i64* %__s2_len651, align 8, !tbaa !36
  %cmp676 = icmp ugt i64 %421, 1
  br i1 %cmp676, label %land.lhs.true.678, label %if.end.697

land.lhs.true.678:                                ; preds = %if.then.671
  %422 = load i32, i32* %__result661, align 4, !tbaa !5
  %cmp679 = icmp eq i32 %422, 0
  br i1 %cmp679, label %if.then.681, label %if.end.697

if.then.681:                                      ; preds = %land.lhs.true.678
  %423 = load i8*, i8** %__s1659, align 8, !tbaa !1
  %arrayidx682 = getelementptr inbounds i8, i8* %423, i64 2
  %424 = load i8, i8* %arrayidx682, align 1, !tbaa !21
  %conv683 = zext i8 %424 to i32
  %425 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i64 2), align 1, !tbaa !21
  %conv684 = zext i8 %425 to i32
  %sub685 = sub nsw i32 %conv683, %conv684
  store i32 %sub685, i32* %__result661, align 4, !tbaa !5
  %426 = load i64, i64* %__s2_len651, align 8, !tbaa !36
  %cmp686 = icmp ugt i64 %426, 2
  br i1 %cmp686, label %land.lhs.true.688, label %if.end.696

land.lhs.true.688:                                ; preds = %if.then.681
  %427 = load i32, i32* %__result661, align 4, !tbaa !5
  %cmp689 = icmp eq i32 %427, 0
  br i1 %cmp689, label %if.then.691, label %if.end.696

if.then.691:                                      ; preds = %land.lhs.true.688
  %428 = load i8*, i8** %__s1659, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds i8, i8* %428, i64 3
  %429 = load i8, i8* %arrayidx692, align 1, !tbaa !21
  %conv693 = zext i8 %429 to i32
  %430 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i64 3), align 1, !tbaa !21
  %conv694 = zext i8 %430 to i32
  %sub695 = sub nsw i32 %conv693, %conv694
  store i32 %sub695, i32* %__result661, align 4, !tbaa !5
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.691, %land.lhs.true.688, %if.then.681
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %land.lhs.true.678, %if.then.671
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %land.lhs.true.668, %cond.true.657
  %431 = load i32, i32* %__result661, align 4, !tbaa !5
  store i32 %431, i32* %tmp699, !tbaa !5
  %432 = bitcast i32* %__result661 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #1
  %433 = bitcast i8** %__s1659 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = load i32, i32* %tmp699, !tbaa !5
  br label %cond.end.702

cond.false.700:                                   ; preds = %land.lhs.true.653, %sw.bb.647
  %435 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call701 = call i32 @strcmp(i8* %435, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %cond.end.702

cond.end.702:                                     ; preds = %cond.false.700, %if.end.698
  %cond703 = phi i32 [ %434, %if.end.698 ], [ %call701, %cond.false.700 ]
  store i32 %cond703, i32* %tmp652, !tbaa !5
  %436 = bitcast i64* %__s2_len651 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %436) #1
  %437 = bitcast i64* %__s1_len649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %437) #1
  %438 = load i32, i32* %tmp652, !tbaa !5
  %tobool704 = icmp ne i32 %438, 0
  br i1 %tobool704, label %if.else.706, label %if.then.705

if.then.705:                                      ; preds = %cond.end.702
  %439 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %search_here_first = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %439, i32 0, i32 6
  store i32 1, i32* %search_here_first, align 4, !tbaa !64
  br label %if.end.770

if.else.706:                                      ; preds = %cond.end.702
  %440 = bitcast i64* %__s1_len708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #1
  %441 = bitcast i64* %__s2_len710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.44 to i64)), i64 1), label %land.lhs.true.712, label %cond.false.759

land.lhs.true.712:                                ; preds = %if.else.706
  %call713 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #7
  store i64 %call713, i64* %__s2_len710, align 8, !tbaa !36
  %442 = load i64, i64* %__s2_len710, align 8, !tbaa !36
  %cmp714 = icmp ult i64 %442, 4
  br i1 %cmp714, label %cond.true.716, label %cond.false.759

cond.true.716:                                    ; preds = %land.lhs.true.712
  %443 = bitcast i8** %__s1718 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %443) #1
  %444 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  store i8* %444, i8** %__s1718, align 8, !tbaa !1
  %445 = bitcast i32* %__result720 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %445) #1
  %446 = load i8*, i8** %__s1718, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds i8, i8* %446, i64 0
  %447 = load i8, i8* %arrayidx721, align 1, !tbaa !21
  %conv722 = zext i8 %447 to i32
  %448 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), align 1, !tbaa !21
  %conv723 = zext i8 %448 to i32
  %sub724 = sub nsw i32 %conv722, %conv723
  store i32 %sub724, i32* %__result720, align 4, !tbaa !5
  %449 = load i64, i64* %__s2_len710, align 8, !tbaa !36
  %cmp725 = icmp ugt i64 %449, 0
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.757

land.lhs.true.727:                                ; preds = %cond.true.716
  %450 = load i32, i32* %__result720, align 4, !tbaa !5
  %cmp728 = icmp eq i32 %450, 0
  br i1 %cmp728, label %if.then.730, label %if.end.757

if.then.730:                                      ; preds = %land.lhs.true.727
  %451 = load i8*, i8** %__s1718, align 8, !tbaa !1
  %arrayidx731 = getelementptr inbounds i8, i8* %451, i64 1
  %452 = load i8, i8* %arrayidx731, align 1, !tbaa !21
  %conv732 = zext i8 %452 to i32
  %453 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i64 1), align 1, !tbaa !21
  %conv733 = zext i8 %453 to i32
  %sub734 = sub nsw i32 %conv732, %conv733
  store i32 %sub734, i32* %__result720, align 4, !tbaa !5
  %454 = load i64, i64* %__s2_len710, align 8, !tbaa !36
  %cmp735 = icmp ugt i64 %454, 1
  br i1 %cmp735, label %land.lhs.true.737, label %if.end.756

land.lhs.true.737:                                ; preds = %if.then.730
  %455 = load i32, i32* %__result720, align 4, !tbaa !5
  %cmp738 = icmp eq i32 %455, 0
  br i1 %cmp738, label %if.then.740, label %if.end.756

if.then.740:                                      ; preds = %land.lhs.true.737
  %456 = load i8*, i8** %__s1718, align 8, !tbaa !1
  %arrayidx741 = getelementptr inbounds i8, i8* %456, i64 2
  %457 = load i8, i8* %arrayidx741, align 1, !tbaa !21
  %conv742 = zext i8 %457 to i32
  %458 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i64 2), align 1, !tbaa !21
  %conv743 = zext i8 %458 to i32
  %sub744 = sub nsw i32 %conv742, %conv743
  store i32 %sub744, i32* %__result720, align 4, !tbaa !5
  %459 = load i64, i64* %__s2_len710, align 8, !tbaa !36
  %cmp745 = icmp ugt i64 %459, 2
  br i1 %cmp745, label %land.lhs.true.747, label %if.end.755

land.lhs.true.747:                                ; preds = %if.then.740
  %460 = load i32, i32* %__result720, align 4, !tbaa !5
  %cmp748 = icmp eq i32 %460, 0
  br i1 %cmp748, label %if.then.750, label %if.end.755

if.then.750:                                      ; preds = %land.lhs.true.747
  %461 = load i8*, i8** %__s1718, align 8, !tbaa !1
  %arrayidx751 = getelementptr inbounds i8, i8* %461, i64 3
  %462 = load i8, i8* %arrayidx751, align 1, !tbaa !21
  %conv752 = zext i8 %462 to i32
  %463 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i64 3), align 1, !tbaa !21
  %conv753 = zext i8 %463 to i32
  %sub754 = sub nsw i32 %conv752, %conv753
  store i32 %sub754, i32* %__result720, align 4, !tbaa !5
  br label %if.end.755

if.end.755:                                       ; preds = %if.then.750, %land.lhs.true.747, %if.then.740
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %land.lhs.true.737, %if.then.730
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756, %land.lhs.true.727, %cond.true.716
  %464 = load i32, i32* %__result720, align 4, !tbaa !5
  store i32 %464, i32* %tmp758, !tbaa !5
  %465 = bitcast i32* %__result720 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i8** %__s1718 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %466) #1
  %467 = load i32, i32* %tmp758, !tbaa !5
  br label %cond.end.761

cond.false.759:                                   ; preds = %land.lhs.true.712, %if.else.706
  %468 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call760 = call i32 @strcmp(i8* %468, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #8
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.759, %if.end.757
  %cond762 = phi i32 [ %467, %if.end.757 ], [ %call760, %cond.false.759 ]
  store i32 %cond762, i32* %tmp711, !tbaa !5
  %469 = bitcast i64* %__s2_len710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %469) #1
  %470 = bitcast i64* %__s1_len708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #1
  %471 = load i32, i32* %tmp711, !tbaa !5
  %tobool763 = icmp ne i32 %471, 0
  br i1 %tobool763, label %if.else.766, label %if.then.764

if.then.764:                                      ; preds = %cond.end.761
  %472 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %search_here_first765 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %472, i32 0, i32 6
  store i32 0, i32* %search_here_first765, align 4, !tbaa !64
  br label %if.end.769

if.else.766:                                      ; preds = %cond.end.761
  %473 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap767 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %473, i32 0, i32 0
  %474 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap767, align 8, !tbaa !14
  %call768 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %474, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.769:                                       ; preds = %if.then.764
  br label %if.end.770

if.end.770:                                       ; preds = %if.end.769, %if.then.705
  br label %sw.epilog.1277

sw.bb.771:                                        ; preds = %entry
  %475 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call772 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %475) #6
  store i32 %call772, i32* %code, align 4, !tbaa !5
  %cmp773 = icmp slt i32 %call772, 0
  br i1 %cmp773, label %if.then.775, label %if.end.776

if.then.775:                                      ; preds = %sw.bb.771
  %476 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %476, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.776:                                       ; preds = %sw.bb.771
  %477 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p777 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %477, i32 0, i32 14
  %478 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p777, align 8, !tbaa !23
  %call778 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), %struct.ref_s* %vtrue) #6
  br label %sw.epilog.1277

sw.bb.779:                                        ; preds = %entry
  %479 = bitcast float* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %479) #1
  %480 = bitcast float* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %480) #1
  %481 = bitcast %struct.ref_s* %value783 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %481) #1
  %482 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call784 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %482) #6
  store i32 %call784, i32* %code, align 4, !tbaa !5
  %cmp785 = icmp slt i32 %call784, 0
  br i1 %cmp785, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %sw.bb.779
  %483 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %483, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.809

if.end.788:                                       ; preds = %sw.bb.779
  %484 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call789 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %484, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), float* %xres, float* %yres) #8
  switch i32 %call789, label %sw.default.790 [
    i32 1, label %sw.bb.793
    i32 2, label %sw.bb.794
  ]

sw.default.790:                                   ; preds = %if.end.788
  %485 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap791 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %485, i32 0, i32 0
  %486 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap791, align 8, !tbaa !14
  %call792 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %486, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.809

sw.bb.793:                                        ; preds = %if.end.788
  %487 = load float, float* %xres, align 4, !tbaa !65
  store float %487, float* %yres, align 4, !tbaa !65
  br label %sw.bb.794

sw.bb.794:                                        ; preds = %if.end.788, %sw.bb.793
  %488 = load float, float* %xres, align 4, !tbaa !65
  %value795 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value783, i32 0, i32 1
  %realval = bitcast %union.v* %value795 to float*
  store float %488, float* %realval, align 4, !tbaa !65
  %tas796 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value783, i32 0, i32 0
  %type_attrs797 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas796, i32 0, i32 0
  store i16 4096, i16* %type_attrs797, align 2, !tbaa !38
  %489 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p798 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %489, i32 0, i32 14
  %490 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p798, align 8, !tbaa !23
  %call799 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %490, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), %struct.ref_s* %value783) #6
  %491 = load float, float* %yres, align 4, !tbaa !65
  %value800 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value783, i32 0, i32 1
  %realval801 = bitcast %union.v* %value800 to float*
  store float %491, float* %realval801, align 4, !tbaa !65
  %tas802 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value783, i32 0, i32 0
  %type_attrs803 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas802, i32 0, i32 0
  store i16 4096, i16* %type_attrs803, align 2, !tbaa !38
  %492 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p804 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %492, i32 0, i32 14
  %493 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p804, align 8, !tbaa !23
  %call805 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %493, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), %struct.ref_s* %value783) #6
  %494 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p806 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %494, i32 0, i32 14
  %495 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p806, align 8, !tbaa !23
  %call807 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %495, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), %struct.ref_s* %vtrue) #6
  br label %sw.epilog.808

sw.epilog.808:                                    ; preds = %sw.bb.794
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.809

cleanup.809:                                      ; preds = %sw.epilog.808, %sw.default.790, %if.then.787
  %496 = bitcast %struct.ref_s* %value783 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %496) #1
  %497 = bitcast float* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast float* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %cleanup.dest.812 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.812, label %cleanup.1278 [
    i32 2, label %sw.epilog.1277
  ]

sw.bb.813:                                        ; preds = %entry, %entry, %entry, %entry
  %499 = bitcast i8** %adef815 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %499) #1
  %500 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %501 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap816 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %501, i32 0, i32 0
  %502 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap816, align 8, !tbaa !14
  %call817 = call i8* @arg_copy(i8* %500, %struct.gs_memory_s* %502) #6
  store i8* %call817, i8** %adef815, align 8, !tbaa !1
  %503 = bitcast i8** %eqp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503) #1
  %504 = bitcast i32* %isd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %504) #1
  %505 = load i8, i8* %sw, align 1, !tbaa !21
  %conv820 = sext i8 %505 to i32
  %cmp821 = icmp eq i32 %conv820, 68
  br i1 %cmp821, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.813
  %506 = load i8, i8* %sw, align 1, !tbaa !21
  %conv823 = sext i8 %506 to i32
  %cmp824 = icmp eq i32 %conv823, 100
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.813
  %507 = phi i1 [ true, %sw.bb.813 ], [ %cmp824, %lor.rhs ]
  %lor.ext = zext i1 %507 to i32
  store i32 %lor.ext, i32* %isd, align 4, !tbaa !5
  %508 = bitcast %struct.ref_s* %value827 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %508) #1
  %509 = load i8*, i8** %adef815, align 8, !tbaa !1
  %cmp828 = icmp eq i8* %509, null
  br i1 %cmp828, label %if.then.830, label %if.end.831

if.then.830:                                      ; preds = %lor.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1241

if.end.831:                                       ; preds = %lor.end
  %510 = load i8*, i8** %adef815, align 8, !tbaa !1
  %call832 = call i8* @strchr(i8* %510, i32 61) #8
  store i8* %call832, i8** %eqp, align 8, !tbaa !1
  %511 = load i8*, i8** %eqp, align 8, !tbaa !1
  %cmp833 = icmp eq i8* %511, null
  br i1 %cmp833, label %if.then.835, label %if.end.837

if.then.835:                                      ; preds = %if.end.831
  %512 = load i8*, i8** %adef815, align 8, !tbaa !1
  %call836 = call i8* @strchr(i8* %512, i32 35) #8
  store i8* %call836, i8** %eqp, align 8, !tbaa !1
  br label %if.end.837

if.end.837:                                       ; preds = %if.then.835, %if.end.831
  %513 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call838 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %513) #6
  store i32 %call838, i32* %code, align 4, !tbaa !5
  %cmp839 = icmp slt i32 %call838, 0
  br i1 %cmp839, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %if.end.837
  %514 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %514, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1241

if.end.842:                                       ; preds = %if.end.837
  %515 = load i8*, i8** %eqp, align 8, !tbaa !1
  %516 = load i8*, i8** %adef815, align 8, !tbaa !1
  %cmp843 = icmp eq i8* %515, %516
  br i1 %cmp843, label %if.then.845, label %if.end.848

if.then.845:                                      ; preds = %if.end.842
  %517 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap846 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %517, i32 0, i32 0
  %518 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap846, align 8, !tbaa !14
  %call847 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %518, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1241

if.end.848:                                       ; preds = %if.end.842
  %519 = load i8*, i8** %eqp, align 8, !tbaa !1
  %cmp849 = icmp eq i8* %519, null
  br i1 %cmp849, label %if.then.851, label %if.else.865

if.then.851:                                      ; preds = %if.end.848
  %520 = load i32, i32* %isd, align 4, !tbaa !5
  %tobool852 = icmp ne i32 %520, 0
  br i1 %tobool852, label %if.then.853, label %if.else.858

if.then.853:                                      ; preds = %if.then.851
  %value854 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %boolval855 = bitcast %union.v* %value854 to i16*
  store i16 1, i16* %boolval855, align 2, !tbaa !37
  %tas856 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs857 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas856, i32 0, i32 0
  store i16 256, i16* %type_attrs857, align 2, !tbaa !38
  br label %if.end.864

if.else.858:                                      ; preds = %if.then.851
  %value859 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %bytes = bitcast %union.v* %value859 to i8**
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %tas860 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs861 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas860, i32 0, i32 0
  store i16 4704, i16* %type_attrs861, align 2, !tbaa !38
  %tas862 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %rsize863 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas862, i32 0, i32 2
  store i32 0, i32* %rsize863, align 4, !tbaa !63
  br label %if.end.864

if.end.864:                                       ; preds = %if.else.858, %if.then.853
  br label %if.end.1238

if.else.865:                                      ; preds = %if.end.848
  %521 = bitcast i32* %code867 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %521) #1
  %522 = bitcast %struct.gs_context_state_s** %i_ctx_p869 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %522) #1
  %523 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p870 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %523, i32 0, i32 14
  %524 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p870, align 8, !tbaa !23
  store %struct.gs_context_state_s* %524, %struct.gs_context_state_s** %i_ctx_p869, align 8, !tbaa !1
  %525 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %525) #1
  %526 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p869, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %526, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %527 = load i32, i32* %current_space, align 4, !tbaa !67
  store i32 %527, i32* %space, align 4, !tbaa !5
  %528 = load i8*, i8** %eqp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %incdec.ptr, i8** %eqp, align 8, !tbaa !1
  store i8 0, i8* %528, align 1, !tbaa !21
  %529 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p869, align 8, !tbaa !1
  %memory872 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %529, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory872, i32 4) #6
  %530 = load i32, i32* %isd, align 4, !tbaa !5
  %tobool873 = icmp ne i32 %530, 0
  br i1 %tobool873, label %if.then.874, label %if.else.1195

if.then.874:                                      ; preds = %if.else.865
  %531 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %531) #1
  %532 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #1
  %533 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call877 = call i8* @strchr(i8* %533, i32 35) #8
  %cmp878 = icmp eq i8* %call877, null
  br i1 %cmp878, label %land.lhs.true.880, label %if.else.914

land.lhs.true.880:                                ; preds = %if.then.874
  %534 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call881 = call i8* @strchr(i8* %534, i32 46) #8
  %cmp882 = icmp eq i8* %call881, null
  br i1 %cmp882, label %land.lhs.true.884, label %if.else.914

land.lhs.true.884:                                ; preds = %land.lhs.true.880
  %535 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call885 = call i8* @strchr(i8* %535, i32 101) #8
  %cmp886 = icmp eq i8* %call885, null
  br i1 %cmp886, label %land.lhs.true.888, label %if.else.914

land.lhs.true.888:                                ; preds = %land.lhs.true.884
  %536 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call889 = call i8* @strchr(i8* %536, i32 69) #8
  %cmp890 = icmp eq i8* %call889, null
  br i1 %cmp890, label %land.lhs.true.892, label %if.else.914

land.lhs.true.892:                                ; preds = %land.lhs.true.888
  %537 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call893 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %537, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32* %num) #8
  store i32 %call893, i32* %i, align 4, !tbaa !5
  %cmp894 = icmp eq i32 %call893, 1
  br i1 %cmp894, label %if.then.896, label %if.else.914

if.then.896:                                      ; preds = %land.lhs.true.892
  call void @llvm.lifetime.start(i64 1, i8* %suffix) #1
  %538 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call898 = call i64 @strlen(i8* %538) #7
  %sub899 = sub i64 %call898, 1
  %539 = load i8*, i8** %eqp, align 8, !tbaa !1
  %arrayidx900 = getelementptr inbounds i8, i8* %539, i64 %sub899
  %540 = load i8, i8* %arrayidx900, align 1, !tbaa !21
  store i8 %540, i8* %suffix, align 1, !tbaa !21
  %541 = load i8, i8* %suffix, align 1, !tbaa !21
  %conv901 = sext i8 %541 to i32
  switch i32 %conv901, label %sw.default.907 [
    i32 107, label %sw.bb.902
    i32 75, label %sw.bb.902
    i32 109, label %sw.bb.903
    i32 77, label %sw.bb.903
    i32 103, label %sw.bb.905
    i32 71, label %sw.bb.905
  ]

sw.bb.902:                                        ; preds = %if.then.896, %if.then.896
  %542 = load i32, i32* %num, align 4, !tbaa !5
  %mul = mul nsw i32 %542, 1024
  store i32 %mul, i32* %num, align 4, !tbaa !5
  br label %sw.epilog.908

sw.bb.903:                                        ; preds = %if.then.896, %if.then.896
  %543 = load i32, i32* %num, align 4, !tbaa !5
  %mul904 = mul nsw i32 %543, 1048576
  store i32 %mul904, i32* %num, align 4, !tbaa !5
  br label %sw.epilog.908

sw.bb.905:                                        ; preds = %if.then.896, %if.then.896
  %544 = load i32, i32* %num, align 4, !tbaa !5
  %mul906 = mul nsw i32 %544, 1073741824
  store i32 %mul906, i32* %num, align 4, !tbaa !5
  br label %sw.epilog.908

sw.default.907:                                   ; preds = %if.then.896
  br label %sw.epilog.908

sw.epilog.908:                                    ; preds = %sw.default.907, %sw.bb.905, %sw.bb.903, %sw.bb.902
  %545 = load i32, i32* %num, align 4, !tbaa !5
  %conv909 = sext i32 %545 to i64
  %value910 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %intval911 = bitcast %union.v* %value910 to i64*
  store i64 %conv909, i64* %intval911, align 8, !tbaa !36
  %tas912 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs913 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas912, i32 0, i32 0
  store i16 2816, i16* %type_attrs913, align 2, !tbaa !38
  call void @llvm.lifetime.end(i64 1, i8* %suffix) #1
  br label %if.end.1190

if.else.914:                                      ; preds = %land.lhs.true.892, %land.lhs.true.888, %land.lhs.true.884, %land.lhs.true.880, %if.then.874
  %546 = bitcast %struct.stream_s* %astream to i8*
  call void @llvm.lifetime.start(i64 352, i8* %546) #1
  %547 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %547) #1
  call void @s_init(%struct.stream_s* %astream, %struct.gs_memory_s* null) #6
  %548 = load i8*, i8** %eqp, align 8, !tbaa !1
  %549 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call917 = call i64 @strlen(i8* %549) #7
  %conv918 = trunc i64 %call917 to i32
  call void @sread_string(%struct.stream_s* %astream, i8* %548, i32 %conv918) #6
  call void @gs_scanner_init_stream_options(%struct.scanner_state_s* %state, %struct.stream_s* %astream, i32 0) #6
  %550 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p919 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %550, i32 0, i32 14
  %551 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p919, align 8, !tbaa !23
  %call920 = call i32 @gs_scan_token(%struct.gs_context_state_s* %551, %struct.ref_s* %value827, %struct.scanner_state_s* %state) #6
  store i32 %call920, i32* %code867, align 4, !tbaa !5
  %552 = load i32, i32* %code867, align 4, !tbaa !5
  %tobool921 = icmp ne i32 %552, 0
  br i1 %tobool921, label %if.then.922, label %if.end.925

if.then.922:                                      ; preds = %if.else.914
  %553 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap923 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %553, i32 0, i32 0
  %554 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap923, align 8, !tbaa !14
  %555 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call924 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %554, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.53, i32 0, i32 0), i8* %555) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1186

if.end.925:                                       ; preds = %if.else.914
  %tas926 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs927 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas926, i32 0, i32 0
  %556 = load i16, i16* %type_attrs927, align 2, !tbaa !38
  %conv928 = zext i16 %556 to i32
  %and929 = and i32 %conv928, 16256
  %cmp930 = icmp eq i32 %and929, 3456
  br i1 %cmp930, label %if.then.932, label %if.end.1185

if.then.932:                                      ; preds = %if.end.925
  %557 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %557) #1
  %558 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap934 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %558, i32 0, i32 0
  %559 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap934, align 8, !tbaa !14
  %gs_lib_ctx935 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %559, i32 0, i32 2
  %560 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx935, align 8, !tbaa !39
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %560, i32 0, i32 16
  %561 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !68
  call void @names_string_ref(%struct.name_table_s* %561, %struct.ref_s* %value827, %struct.ref_s* %nsref) #6
  %tas936 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize937 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas936, i32 0, i32 2
  %562 = load i32, i32* %rsize937, align 4, !tbaa !63
  %cmp938 = icmp eq i32 %562, 4
  br i1 %cmp938, label %land.lhs.true.940, label %if.else.1014

land.lhs.true.940:                                ; preds = %if.then.932
  %call941 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #7
  %cmp942 = icmp ult i64 %call941, 4
  br i1 %cmp942, label %cond.true.944, label %cond.false.1006

cond.true.944:                                    ; preds = %land.lhs.true.940
  %563 = bitcast i64* %__s1_len946 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %563) #1
  %564 = bitcast i64* %__s2_len948 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %564) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.54 to i64)), i64 1), label %land.lhs.true.950, label %cond.false.999

land.lhs.true.950:                                ; preds = %cond.true.944
  %call951 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #7
  store i64 %call951, i64* %__s2_len948, align 8, !tbaa !36
  %565 = load i64, i64* %__s2_len948, align 8, !tbaa !36
  %cmp952 = icmp ult i64 %565, 4
  br i1 %cmp952, label %cond.true.954, label %cond.false.999

cond.true.954:                                    ; preds = %land.lhs.true.950
  %566 = bitcast i8** %__s1956 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %566) #1
  %value957 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes958 = bitcast %union.v* %value957 to i8**
  %567 = load i8*, i8** %const_bytes958, align 8, !tbaa !1
  store i8* %567, i8** %__s1956, align 8, !tbaa !1
  %568 = bitcast i32* %__result960 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %568) #1
  %569 = load i8*, i8** %__s1956, align 8, !tbaa !1
  %arrayidx961 = getelementptr inbounds i8, i8* %569, i64 0
  %570 = load i8, i8* %arrayidx961, align 1, !tbaa !21
  %conv962 = zext i8 %570 to i32
  %571 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), align 1, !tbaa !21
  %conv963 = zext i8 %571 to i32
  %sub964 = sub nsw i32 %conv962, %conv963
  store i32 %sub964, i32* %__result960, align 4, !tbaa !5
  %572 = load i64, i64* %__s2_len948, align 8, !tbaa !36
  %cmp965 = icmp ugt i64 %572, 0
  br i1 %cmp965, label %land.lhs.true.967, label %if.end.997

land.lhs.true.967:                                ; preds = %cond.true.954
  %573 = load i32, i32* %__result960, align 4, !tbaa !5
  %cmp968 = icmp eq i32 %573, 0
  br i1 %cmp968, label %if.then.970, label %if.end.997

if.then.970:                                      ; preds = %land.lhs.true.967
  %574 = load i8*, i8** %__s1956, align 8, !tbaa !1
  %arrayidx971 = getelementptr inbounds i8, i8* %574, i64 1
  %575 = load i8, i8* %arrayidx971, align 1, !tbaa !21
  %conv972 = zext i8 %575 to i32
  %576 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i64 1), align 1, !tbaa !21
  %conv973 = zext i8 %576 to i32
  %sub974 = sub nsw i32 %conv972, %conv973
  store i32 %sub974, i32* %__result960, align 4, !tbaa !5
  %577 = load i64, i64* %__s2_len948, align 8, !tbaa !36
  %cmp975 = icmp ugt i64 %577, 1
  br i1 %cmp975, label %land.lhs.true.977, label %if.end.996

land.lhs.true.977:                                ; preds = %if.then.970
  %578 = load i32, i32* %__result960, align 4, !tbaa !5
  %cmp978 = icmp eq i32 %578, 0
  br i1 %cmp978, label %if.then.980, label %if.end.996

if.then.980:                                      ; preds = %land.lhs.true.977
  %579 = load i8*, i8** %__s1956, align 8, !tbaa !1
  %arrayidx981 = getelementptr inbounds i8, i8* %579, i64 2
  %580 = load i8, i8* %arrayidx981, align 1, !tbaa !21
  %conv982 = zext i8 %580 to i32
  %581 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i64 2), align 1, !tbaa !21
  %conv983 = zext i8 %581 to i32
  %sub984 = sub nsw i32 %conv982, %conv983
  store i32 %sub984, i32* %__result960, align 4, !tbaa !5
  %582 = load i64, i64* %__s2_len948, align 8, !tbaa !36
  %cmp985 = icmp ugt i64 %582, 2
  br i1 %cmp985, label %land.lhs.true.987, label %if.end.995

land.lhs.true.987:                                ; preds = %if.then.980
  %583 = load i32, i32* %__result960, align 4, !tbaa !5
  %cmp988 = icmp eq i32 %583, 0
  br i1 %cmp988, label %if.then.990, label %if.end.995

if.then.990:                                      ; preds = %land.lhs.true.987
  %584 = load i8*, i8** %__s1956, align 8, !tbaa !1
  %arrayidx991 = getelementptr inbounds i8, i8* %584, i64 3
  %585 = load i8, i8* %arrayidx991, align 1, !tbaa !21
  %conv992 = zext i8 %585 to i32
  %586 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i64 3), align 1, !tbaa !21
  %conv993 = zext i8 %586 to i32
  %sub994 = sub nsw i32 %conv992, %conv993
  store i32 %sub994, i32* %__result960, align 4, !tbaa !5
  br label %if.end.995

if.end.995:                                       ; preds = %if.then.990, %land.lhs.true.987, %if.then.980
  br label %if.end.996

if.end.996:                                       ; preds = %if.end.995, %land.lhs.true.977, %if.then.970
  br label %if.end.997

if.end.997:                                       ; preds = %if.end.996, %land.lhs.true.967, %cond.true.954
  %587 = load i32, i32* %__result960, align 4, !tbaa !5
  store i32 %587, i32* %tmp998, !tbaa !5
  %588 = bitcast i32* %__result960 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %588) #1
  %589 = bitcast i8** %__s1956 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %589) #1
  %590 = load i32, i32* %tmp998, !tbaa !5
  br label %cond.end.1003

cond.false.999:                                   ; preds = %land.lhs.true.950, %cond.true.944
  %value1000 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1001 = bitcast %union.v* %value1000 to i8**
  %591 = load i8*, i8** %const_bytes1001, align 8, !tbaa !1
  %call1002 = call i32 @strcmp(i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #8
  br label %cond.end.1003

cond.end.1003:                                    ; preds = %cond.false.999, %if.end.997
  %cond1004 = phi i32 [ %590, %if.end.997 ], [ %call1002, %cond.false.999 ]
  store i32 %cond1004, i32* %tmp949, !tbaa !5
  %592 = bitcast i64* %__s2_len948 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %592) #1
  %593 = bitcast i64* %__s1_len946 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %593) #1
  %594 = load i32, i32* %tmp949, !tbaa !5
  %tobool1005 = icmp ne i32 %594, 0
  br i1 %tobool1005, label %if.else.1014, label %if.then.1011

cond.false.1006:                                  ; preds = %land.lhs.true.940
  %value1007 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1008 = bitcast %union.v* %value1007 to i8**
  %595 = load i8*, i8** %const_bytes1008, align 8, !tbaa !1
  %call1009 = call i32 @strncmp(i8* %595, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i64 4) #7
  %tobool1010 = icmp ne i32 %call1009, 0
  br i1 %tobool1010, label %if.else.1014, label %if.then.1011

if.then.1011:                                     ; preds = %cond.false.1006, %cond.end.1003
  %tas1012 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs1013 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1012, i32 0, i32 0
  store i16 3584, i16* %type_attrs1013, align 2, !tbaa !38
  br label %if.end.1181

if.else.1014:                                     ; preds = %cond.false.1006, %cond.end.1003, %if.then.932
  %tas1015 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize1016 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1015, i32 0, i32 2
  %596 = load i32, i32* %rsize1016, align 4, !tbaa !63
  %cmp1017 = icmp eq i32 %596, 4
  br i1 %cmp1017, label %land.lhs.true.1019, label %if.else.1095

land.lhs.true.1019:                               ; preds = %if.else.1014
  %call1020 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #7
  %cmp1021 = icmp ult i64 %call1020, 4
  br i1 %cmp1021, label %cond.true.1023, label %cond.false.1085

cond.true.1023:                                   ; preds = %land.lhs.true.1019
  %597 = bitcast i64* %__s1_len1025 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %597) #1
  %598 = bitcast i64* %__s2_len1027 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %598) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true.1029, label %cond.false.1078

land.lhs.true.1029:                               ; preds = %cond.true.1023
  %call1030 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #7
  store i64 %call1030, i64* %__s2_len1027, align 8, !tbaa !36
  %599 = load i64, i64* %__s2_len1027, align 8, !tbaa !36
  %cmp1031 = icmp ult i64 %599, 4
  br i1 %cmp1031, label %cond.true.1033, label %cond.false.1078

cond.true.1033:                                   ; preds = %land.lhs.true.1029
  %600 = bitcast i8** %__s11035 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %600) #1
  %value1036 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1037 = bitcast %union.v* %value1036 to i8**
  %601 = load i8*, i8** %const_bytes1037, align 8, !tbaa !1
  store i8* %601, i8** %__s11035, align 8, !tbaa !1
  %602 = bitcast i32* %__result1039 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %602) #1
  %603 = load i8*, i8** %__s11035, align 8, !tbaa !1
  %arrayidx1040 = getelementptr inbounds i8, i8* %603, i64 0
  %604 = load i8, i8* %arrayidx1040, align 1, !tbaa !21
  %conv1041 = zext i8 %604 to i32
  %605 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), align 1, !tbaa !21
  %conv1042 = zext i8 %605 to i32
  %sub1043 = sub nsw i32 %conv1041, %conv1042
  store i32 %sub1043, i32* %__result1039, align 4, !tbaa !5
  %606 = load i64, i64* %__s2_len1027, align 8, !tbaa !36
  %cmp1044 = icmp ugt i64 %606, 0
  br i1 %cmp1044, label %land.lhs.true.1046, label %if.end.1076

land.lhs.true.1046:                               ; preds = %cond.true.1033
  %607 = load i32, i32* %__result1039, align 4, !tbaa !5
  %cmp1047 = icmp eq i32 %607, 0
  br i1 %cmp1047, label %if.then.1049, label %if.end.1076

if.then.1049:                                     ; preds = %land.lhs.true.1046
  %608 = load i8*, i8** %__s11035, align 8, !tbaa !1
  %arrayidx1050 = getelementptr inbounds i8, i8* %608, i64 1
  %609 = load i8, i8* %arrayidx1050, align 1, !tbaa !21
  %conv1051 = zext i8 %609 to i32
  %610 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i64 1), align 1, !tbaa !21
  %conv1052 = zext i8 %610 to i32
  %sub1053 = sub nsw i32 %conv1051, %conv1052
  store i32 %sub1053, i32* %__result1039, align 4, !tbaa !5
  %611 = load i64, i64* %__s2_len1027, align 8, !tbaa !36
  %cmp1054 = icmp ugt i64 %611, 1
  br i1 %cmp1054, label %land.lhs.true.1056, label %if.end.1075

land.lhs.true.1056:                               ; preds = %if.then.1049
  %612 = load i32, i32* %__result1039, align 4, !tbaa !5
  %cmp1057 = icmp eq i32 %612, 0
  br i1 %cmp1057, label %if.then.1059, label %if.end.1075

if.then.1059:                                     ; preds = %land.lhs.true.1056
  %613 = load i8*, i8** %__s11035, align 8, !tbaa !1
  %arrayidx1060 = getelementptr inbounds i8, i8* %613, i64 2
  %614 = load i8, i8* %arrayidx1060, align 1, !tbaa !21
  %conv1061 = zext i8 %614 to i32
  %615 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i64 2), align 1, !tbaa !21
  %conv1062 = zext i8 %615 to i32
  %sub1063 = sub nsw i32 %conv1061, %conv1062
  store i32 %sub1063, i32* %__result1039, align 4, !tbaa !5
  %616 = load i64, i64* %__s2_len1027, align 8, !tbaa !36
  %cmp1064 = icmp ugt i64 %616, 2
  br i1 %cmp1064, label %land.lhs.true.1066, label %if.end.1074

land.lhs.true.1066:                               ; preds = %if.then.1059
  %617 = load i32, i32* %__result1039, align 4, !tbaa !5
  %cmp1067 = icmp eq i32 %617, 0
  br i1 %cmp1067, label %if.then.1069, label %if.end.1074

if.then.1069:                                     ; preds = %land.lhs.true.1066
  %618 = load i8*, i8** %__s11035, align 8, !tbaa !1
  %arrayidx1070 = getelementptr inbounds i8, i8* %618, i64 3
  %619 = load i8, i8* %arrayidx1070, align 1, !tbaa !21
  %conv1071 = zext i8 %619 to i32
  %620 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i64 3), align 1, !tbaa !21
  %conv1072 = zext i8 %620 to i32
  %sub1073 = sub nsw i32 %conv1071, %conv1072
  store i32 %sub1073, i32* %__result1039, align 4, !tbaa !5
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.then.1069, %land.lhs.true.1066, %if.then.1059
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.end.1074, %land.lhs.true.1056, %if.then.1049
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.end.1075, %land.lhs.true.1046, %cond.true.1033
  %621 = load i32, i32* %__result1039, align 4, !tbaa !5
  store i32 %621, i32* %tmp1077, !tbaa !5
  %622 = bitcast i32* %__result1039 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i8** %__s11035 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %623) #1
  %624 = load i32, i32* %tmp1077, !tbaa !5
  br label %cond.end.1082

cond.false.1078:                                  ; preds = %land.lhs.true.1029, %cond.true.1023
  %value1079 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1080 = bitcast %union.v* %value1079 to i8**
  %625 = load i8*, i8** %const_bytes1080, align 8, !tbaa !1
  %call1081 = call i32 @strcmp(i8* %625, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8
  br label %cond.end.1082

cond.end.1082:                                    ; preds = %cond.false.1078, %if.end.1076
  %cond1083 = phi i32 [ %624, %if.end.1076 ], [ %call1081, %cond.false.1078 ]
  store i32 %cond1083, i32* %tmp1028, !tbaa !5
  %626 = bitcast i64* %__s2_len1027 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %626) #1
  %627 = bitcast i64* %__s1_len1025 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %627) #1
  %628 = load i32, i32* %tmp1028, !tbaa !5
  %tobool1084 = icmp ne i32 %628, 0
  br i1 %tobool1084, label %if.else.1095, label %if.then.1090

cond.false.1085:                                  ; preds = %land.lhs.true.1019
  %value1086 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1087 = bitcast %union.v* %value1086 to i8**
  %629 = load i8*, i8** %const_bytes1087, align 8, !tbaa !1
  %call1088 = call i32 @strncmp(i8* %629, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i64 4) #7
  %tobool1089 = icmp ne i32 %call1088, 0
  br i1 %tobool1089, label %if.else.1095, label %if.then.1090

if.then.1090:                                     ; preds = %cond.false.1085, %cond.end.1082
  %value1091 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %boolval1092 = bitcast %union.v* %value1091 to i16*
  store i16 1, i16* %boolval1092, align 2, !tbaa !37
  %tas1093 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs1094 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1093, i32 0, i32 0
  store i16 256, i16* %type_attrs1094, align 2, !tbaa !38
  br label %if.end.1180

if.else.1095:                                     ; preds = %cond.false.1085, %cond.end.1082, %if.else.1014
  %tas1096 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize1097 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1096, i32 0, i32 2
  %630 = load i32, i32* %rsize1097, align 4, !tbaa !63
  %cmp1098 = icmp eq i32 %630, 5
  br i1 %cmp1098, label %land.lhs.true.1100, label %if.else.1176

land.lhs.true.1100:                               ; preds = %if.else.1095
  %call1101 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #7
  %cmp1102 = icmp ult i64 %call1101, 5
  br i1 %cmp1102, label %cond.true.1104, label %cond.false.1166

cond.true.1104:                                   ; preds = %land.lhs.true.1100
  %631 = bitcast i64* %__s1_len1106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %631) #1
  %632 = bitcast i64* %__s2_len1108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %632) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.56 to i64)), i64 1), label %land.lhs.true.1110, label %cond.false.1159

land.lhs.true.1110:                               ; preds = %cond.true.1104
  %call1111 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #7
  store i64 %call1111, i64* %__s2_len1108, align 8, !tbaa !36
  %633 = load i64, i64* %__s2_len1108, align 8, !tbaa !36
  %cmp1112 = icmp ult i64 %633, 4
  br i1 %cmp1112, label %cond.true.1114, label %cond.false.1159

cond.true.1114:                                   ; preds = %land.lhs.true.1110
  %634 = bitcast i8** %__s11116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %634) #1
  %value1117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1118 = bitcast %union.v* %value1117 to i8**
  %635 = load i8*, i8** %const_bytes1118, align 8, !tbaa !1
  store i8* %635, i8** %__s11116, align 8, !tbaa !1
  %636 = bitcast i32* %__result1120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %636) #1
  %637 = load i8*, i8** %__s11116, align 8, !tbaa !1
  %arrayidx1121 = getelementptr inbounds i8, i8* %637, i64 0
  %638 = load i8, i8* %arrayidx1121, align 1, !tbaa !21
  %conv1122 = zext i8 %638 to i32
  %639 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), align 1, !tbaa !21
  %conv1123 = zext i8 %639 to i32
  %sub1124 = sub nsw i32 %conv1122, %conv1123
  store i32 %sub1124, i32* %__result1120, align 4, !tbaa !5
  %640 = load i64, i64* %__s2_len1108, align 8, !tbaa !36
  %cmp1125 = icmp ugt i64 %640, 0
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.end.1157

land.lhs.true.1127:                               ; preds = %cond.true.1114
  %641 = load i32, i32* %__result1120, align 4, !tbaa !5
  %cmp1128 = icmp eq i32 %641, 0
  br i1 %cmp1128, label %if.then.1130, label %if.end.1157

if.then.1130:                                     ; preds = %land.lhs.true.1127
  %642 = load i8*, i8** %__s11116, align 8, !tbaa !1
  %arrayidx1131 = getelementptr inbounds i8, i8* %642, i64 1
  %643 = load i8, i8* %arrayidx1131, align 1, !tbaa !21
  %conv1132 = zext i8 %643 to i32
  %644 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i64 1), align 1, !tbaa !21
  %conv1133 = zext i8 %644 to i32
  %sub1134 = sub nsw i32 %conv1132, %conv1133
  store i32 %sub1134, i32* %__result1120, align 4, !tbaa !5
  %645 = load i64, i64* %__s2_len1108, align 8, !tbaa !36
  %cmp1135 = icmp ugt i64 %645, 1
  br i1 %cmp1135, label %land.lhs.true.1137, label %if.end.1156

land.lhs.true.1137:                               ; preds = %if.then.1130
  %646 = load i32, i32* %__result1120, align 4, !tbaa !5
  %cmp1138 = icmp eq i32 %646, 0
  br i1 %cmp1138, label %if.then.1140, label %if.end.1156

if.then.1140:                                     ; preds = %land.lhs.true.1137
  %647 = load i8*, i8** %__s11116, align 8, !tbaa !1
  %arrayidx1141 = getelementptr inbounds i8, i8* %647, i64 2
  %648 = load i8, i8* %arrayidx1141, align 1, !tbaa !21
  %conv1142 = zext i8 %648 to i32
  %649 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i64 2), align 1, !tbaa !21
  %conv1143 = zext i8 %649 to i32
  %sub1144 = sub nsw i32 %conv1142, %conv1143
  store i32 %sub1144, i32* %__result1120, align 4, !tbaa !5
  %650 = load i64, i64* %__s2_len1108, align 8, !tbaa !36
  %cmp1145 = icmp ugt i64 %650, 2
  br i1 %cmp1145, label %land.lhs.true.1147, label %if.end.1155

land.lhs.true.1147:                               ; preds = %if.then.1140
  %651 = load i32, i32* %__result1120, align 4, !tbaa !5
  %cmp1148 = icmp eq i32 %651, 0
  br i1 %cmp1148, label %if.then.1150, label %if.end.1155

if.then.1150:                                     ; preds = %land.lhs.true.1147
  %652 = load i8*, i8** %__s11116, align 8, !tbaa !1
  %arrayidx1151 = getelementptr inbounds i8, i8* %652, i64 3
  %653 = load i8, i8* %arrayidx1151, align 1, !tbaa !21
  %conv1152 = zext i8 %653 to i32
  %654 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i64 3), align 1, !tbaa !21
  %conv1153 = zext i8 %654 to i32
  %sub1154 = sub nsw i32 %conv1152, %conv1153
  store i32 %sub1154, i32* %__result1120, align 4, !tbaa !5
  br label %if.end.1155

if.end.1155:                                      ; preds = %if.then.1150, %land.lhs.true.1147, %if.then.1140
  br label %if.end.1156

if.end.1156:                                      ; preds = %if.end.1155, %land.lhs.true.1137, %if.then.1130
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.end.1156, %land.lhs.true.1127, %cond.true.1114
  %655 = load i32, i32* %__result1120, align 4, !tbaa !5
  store i32 %655, i32* %tmp1158, !tbaa !5
  %656 = bitcast i32* %__result1120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %656) #1
  %657 = bitcast i8** %__s11116 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %657) #1
  %658 = load i32, i32* %tmp1158, !tbaa !5
  br label %cond.end.1163

cond.false.1159:                                  ; preds = %land.lhs.true.1110, %cond.true.1104
  %value1160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1161 = bitcast %union.v* %value1160 to i8**
  %659 = load i8*, i8** %const_bytes1161, align 8, !tbaa !1
  %call1162 = call i32 @strcmp(i8* %659, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #8
  br label %cond.end.1163

cond.end.1163:                                    ; preds = %cond.false.1159, %if.end.1157
  %cond1164 = phi i32 [ %658, %if.end.1157 ], [ %call1162, %cond.false.1159 ]
  store i32 %cond1164, i32* %tmp1109, !tbaa !5
  %660 = bitcast i64* %__s2_len1108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %660) #1
  %661 = bitcast i64* %__s1_len1106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %661) #1
  %662 = load i32, i32* %tmp1109, !tbaa !5
  %tobool1165 = icmp ne i32 %662, 0
  br i1 %tobool1165, label %if.else.1176, label %if.then.1171

cond.false.1166:                                  ; preds = %land.lhs.true.1100
  %value1167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes1168 = bitcast %union.v* %value1167 to i8**
  %663 = load i8*, i8** %const_bytes1168, align 8, !tbaa !1
  %call1169 = call i32 @strncmp(i8* %663, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i64 5) #7
  %tobool1170 = icmp ne i32 %call1169, 0
  br i1 %tobool1170, label %if.else.1176, label %if.then.1171

if.then.1171:                                     ; preds = %cond.false.1166, %cond.end.1163
  %value1172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %boolval1173 = bitcast %union.v* %value1172 to i16*
  store i16 0, i16* %boolval1173, align 2, !tbaa !37
  %tas1174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs1175 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1174, i32 0, i32 0
  store i16 256, i16* %type_attrs1175, align 2, !tbaa !38
  br label %if.end.1179

if.else.1176:                                     ; preds = %cond.false.1166, %cond.end.1163, %if.else.1095
  %664 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1177 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %664, i32 0, i32 0
  %665 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1177, align 8, !tbaa !14
  %666 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call1178 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %665, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.57, i32 0, i32 0), i8* %666) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1182

if.end.1179:                                      ; preds = %if.then.1171
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.end.1179, %if.then.1090
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.end.1180, %if.then.1011
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1182

cleanup.1182:                                     ; preds = %if.end.1181, %if.else.1176
  %667 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %667) #1
  %cleanup.dest.1183 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1183, label %cleanup.1186 [
    i32 0, label %cleanup.cont.1184
  ]

cleanup.cont.1184:                                ; preds = %cleanup.1182
  br label %if.end.1185

if.end.1185:                                      ; preds = %cleanup.cont.1184, %if.end.925
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1186

cleanup.1186:                                     ; preds = %if.end.1185, %cleanup.1182, %if.then.922
  %668 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %668) #1
  %669 = bitcast %struct.stream_s* %astream to i8*
  call void @llvm.lifetime.end(i64 352, i8* %669) #1
  %cleanup.dest.1188 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1188, label %cleanup.1191 [
    i32 0, label %cleanup.cont.1189
  ]

cleanup.cont.1189:                                ; preds = %cleanup.1186
  br label %if.end.1190

if.end.1190:                                      ; preds = %cleanup.cont.1189, %sw.epilog.908
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1191

cleanup.1191:                                     ; preds = %if.end.1190, %cleanup.1186
  %670 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %670) #1
  %671 = bitcast i32* %num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %671) #1
  %cleanup.dest.1193 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1193, label %cleanup.1233 [
    i32 0, label %cleanup.cont.1194
  ]

cleanup.cont.1194:                                ; preds = %cleanup.1191
  br label %if.end.1231

if.else.1195:                                     ; preds = %if.else.865
  %672 = bitcast i32* %len1197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %672) #1
  %673 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call1198 = call i64 @strlen(i8* %673) #7
  %conv1199 = trunc i64 %call1198 to i32
  store i32 %conv1199, i32* %len1197, align 4, !tbaa !5
  %674 = bitcast i8** %str1201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %674) #1
  %675 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1202 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %675, i32 0, i32 0
  %676 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1202, align 8, !tbaa !14
  %procs1203 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %676, i32 0, i32 1
  %alloc_bytes1204 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1203, i32 0, i32 7
  %677 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes1204, align 8, !tbaa !15
  %678 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1205 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %678, i32 0, i32 0
  %679 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1205, align 8, !tbaa !14
  %680 = load i32, i32* %len1197, align 4, !tbaa !5
  %call1206 = call i8* %677(%struct.gs_memory_s* %679, i32 %680, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0)) #6
  store i8* %call1206, i8** %str1201, align 8, !tbaa !1
  %681 = load i8*, i8** %str1201, align 8, !tbaa !1
  %cmp1207 = icmp eq i8* %681, null
  br i1 %cmp1207, label %if.then.1209, label %if.end.1213

if.then.1209:                                     ; preds = %if.else.1195
  %call1210 = call i8* @gs_program_name() #6
  %call1211 = call i64 @gs_revision_number() #6
  call void @eprintf_program_ident(i8* %call1210, i64 %call1211) #6
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i32 798) #6
  %call1212 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1227

if.end.1213:                                      ; preds = %if.else.1195
  %682 = load i8*, i8** %str1201, align 8, !tbaa !1
  %683 = load i8*, i8** %eqp, align 8, !tbaa !1
  %684 = load i32, i32* %len1197, align 4, !tbaa !5
  %conv1214 = sext i32 %684 to i64
  %call1215 = call i8* @memcpy(i8* %682, i8* %683, i64 %conv1214) #8
  %685 = load i8*, i8** %str1201, align 8, !tbaa !1
  %value1216 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 1
  %const_bytes1217 = bitcast %union.v* %value1216 to i8**
  store i8* %685, i8** %const_bytes1217, align 8, !tbaa !1
  %tas1218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %type_attrs1219 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1218, i32 0, i32 0
  store i16 4704, i16* %type_attrs1219, align 2, !tbaa !38
  %686 = load i32, i32* %len1197, align 4, !tbaa !5
  %tas1220 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value827, i32 0, i32 0
  %rsize1221 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1220, i32 0, i32 2
  store i32 %686, i32* %rsize1221, align 4, !tbaa !63
  %687 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %688 = load i8*, i8** %adef815, align 8, !tbaa !1
  %689 = load i8*, i8** %eqp, align 8, !tbaa !1
  %call1222 = call i32 @try_stdout_redirect(%struct.gs_main_instance_s* %687, i8* %688, i8* %689) #6
  store i32 %call1222, i32* %code867, align 4, !tbaa !5
  %cmp1223 = icmp slt i32 %call1222, 0
  br i1 %cmp1223, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %if.end.1213
  %690 = load i32, i32* %code867, align 4, !tbaa !5
  store i32 %690, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1227

if.end.1226:                                      ; preds = %if.end.1213
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1227

cleanup.1227:                                     ; preds = %if.end.1226, %if.then.1225, %if.then.1209
  %691 = bitcast i8** %str1201 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  %692 = bitcast i32* %len1197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
  %cleanup.dest.1229 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1229, label %cleanup.1233 [
    i32 0, label %cleanup.cont.1230
  ]

cleanup.cont.1230:                                ; preds = %cleanup.1227
  br label %if.end.1231

if.end.1231:                                      ; preds = %cleanup.cont.1230, %cleanup.cont.1194
  %693 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p869, align 8, !tbaa !1
  %memory1232 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %693, i32 0, i32 1
  %694 = load i32, i32* %space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1232, i32 %694) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1233

cleanup.1233:                                     ; preds = %if.end.1231, %cleanup.1227, %cleanup.1191
  %695 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast %struct.gs_context_state_s** %i_ctx_p869 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast i32* %code867 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %cleanup.dest.1236 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1236, label %cleanup.1241 [
    i32 0, label %cleanup.cont.1237
  ]

cleanup.cont.1237:                                ; preds = %cleanup.1233
  br label %if.end.1238

if.end.1238:                                      ; preds = %cleanup.cont.1237, %if.end.864
  %698 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1239 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %698, i32 0, i32 14
  %699 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1239, align 8, !tbaa !23
  %700 = load i8*, i8** %adef815, align 8, !tbaa !1
  %call1240 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %699, i8* %700, %struct.ref_s* %value827) #6
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.1241

cleanup.1241:                                     ; preds = %if.end.1238, %cleanup.1233, %if.then.845, %if.then.841, %if.then.830
  %701 = bitcast %struct.ref_s* %value827 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %701) #1
  %702 = bitcast i32* %isd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %702) #1
  %703 = bitcast i8** %eqp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %703) #1
  %704 = bitcast i8** %adef815 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %704) #1
  %cleanup.dest.1245 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1245, label %cleanup.1278 [
    i32 2, label %sw.epilog.1277
  ]

sw.bb.1246:                                       ; preds = %entry
  %705 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  call void @set_debug_flags(i8* %705, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @vd_flags, i32 0, i32 0)) #6
  br label %sw.epilog.1277

sw.bb.1247:                                       ; preds = %entry
  %706 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %707 = load i8, i8* %706, align 1, !tbaa !21
  %tobool1248 = icmp ne i8 %707, 0
  br i1 %tobool1248, label %if.end.1252, label %if.then.1249

if.then.1249:                                     ; preds = %sw.bb.1247
  %708 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1250 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %708, i32 0, i32 0
  %709 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1250, align 8, !tbaa !14
  %call1251 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %709, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0)) #6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.1252:                                      ; preds = %sw.bb.1247
  %710 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1253 = call i32 @gs_main_init1(%struct.gs_main_instance_s* %710) #6
  store i32 %call1253, i32* %code, align 4, !tbaa !5
  %cmp1254 = icmp slt i32 %call1253, 0
  br i1 %cmp1254, label %if.then.1256, label %if.end.1257

if.then.1256:                                     ; preds = %if.end.1252
  %711 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %711, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.1257:                                      ; preds = %if.end.1252
  %712 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1258 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %712, i32 0, i32 14
  %713 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1258, align 8, !tbaa !23
  %714 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  call void @i_initial_remove_name(%struct.gs_context_state_s* %713, i8* %714) #6
  br label %sw.epilog.1277

sw.bb.1259:                                       ; preds = %entry
  %715 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  call void @print_revision(%struct.gs_main_instance_s* %715) #6
  store i32 -110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.bb.1260:                                       ; preds = %entry
  %716 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1261 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %716) #6
  store i32 %call1261, i32* %code, align 4, !tbaa !5
  %717 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1262 = icmp slt i32 %717, 0
  br i1 %cmp1262, label %if.then.1264, label %if.end.1265

if.then.1264:                                     ; preds = %sw.bb.1260
  %718 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %718, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

if.end.1265:                                      ; preds = %sw.bb.1260
  %719 = bitcast i32* %xec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %719) #1
  %720 = bitcast %struct.ref_s* %xeo to i8*
  call void @llvm.lifetime.start(i64 16, i8* %720) #1
  %721 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1268 = call i32 @gs_main_run_string_begin(%struct.gs_main_instance_s* %721, i32 1, i32* %xec, %struct.ref_s* %xeo) #6
  %722 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1269 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)) #7
  %conv1270 = trunc i64 %call1269 to i32
  %call1271 = call i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %722, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 %conv1270, i32 1, i32* %xec, %struct.ref_s* %xeo) #6
  %723 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1272 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0)) #7
  %conv1273 = trunc i64 %call1272 to i32
  %call1274 = call i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %723, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %conv1273, i32 1, i32* %xec, %struct.ref_s* %xeo) #6
  %724 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1275 = call i32 @gs_main_run_string_end(%struct.gs_main_instance_s* %724, i32 1, i32* %xec, %struct.ref_s* %xeo) #6
  %725 = bitcast %struct.ref_s* %xeo to i8*
  call void @llvm.lifetime.end(i64 16, i8* %725) #1
  %726 = bitcast i32* %xec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %726) #1
  store i32 -101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

sw.bb.1276:                                       ; preds = %entry
  %727 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  call void @set_debug_flags(i8* %727, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i32 0)) #6
  br label %sw.epilog.1277

sw.epilog.1277:                                   ; preds = %sw.bb.1276, %if.end.1257, %sw.bb.1246, %cleanup.1241, %cleanup.809, %if.end.776, %if.end.770, %cleanup.cont.646, %sw.bb.590, %sw.bb.585, %cleanup.cont.584, %cleanup.cont.565, %cleanup.532, %cleanup.cont.501, %if.end.454, %sw.epilog.433, %cleanup.424, %if.end.364, %sw.epilog, %if.then.276, %cleanup.206, %if.end.95, %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1278

cleanup.1278:                                     ; preds = %sw.epilog.1277, %if.end.1265, %if.then.1264, %sw.bb.1259, %if.then.1256, %if.then.1249, %cleanup.1241, %cleanup.809, %if.then.775, %if.else.766, %cleanup.641, %cleanup.581, %cleanup.563, %sw.bb.536, %cleanup.532, %cleanup.499, %if.then.457, %if.then.446, %if.then.442, %sw.default.430, %cleanup.424, %cleanup.361, %sw.default.338, %cleanup.333, %cleanup.206, %if.then.94, %cleanup, %if.then.12, %if.then.7, %if.then, %sw.default
  %728 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %728) #1
  %729 = bitcast %struct.ref_s* %vtrue to i8*
  call void @llvm.lifetime.end(i64 16, i8* %729) #1
  call void @llvm.lifetime.end(i64 1, i8* %sw) #1
  %730 = load i32, i32* %retval
  ret i32 %730
}

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @argproc(%struct.gs_main_instance_s* %minst, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %arg.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_init1(%struct.gs_main_instance_s* %1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 3
  %5 = load i32, i32* %run_buffer_size, align 4, !tbaa !58
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call2 = call i32 @run_buffered(%struct.gs_main_instance_s* %6, i8* %7) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call3 = call i32 @runarg(%struct.gs_main_instance_s* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 3) #6
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.1, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s*, i8*, i32) #2

declare i32 @gs_erasepage(%struct.gs_state_s*) #2

declare i32 @gs_main_init2(%struct.gs_main_instance_s*) #2

; Function Attrs: nounwind uwtable
define void @gs_main_inst_arg_decode(%struct.gs_main_instance_s* %minst, i32 (%struct._IO_FILE*, i8**)* %get_codepoint) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %get_codepoint.addr = alloca i32 (%struct._IO_FILE*, i8**)*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 (%struct._IO_FILE*, i8**)* %get_codepoint, i32 (%struct._IO_FILE*, i8**)** %get_codepoint.addr, align 8, !tbaa !1
  %0 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint.addr, align 8, !tbaa !1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %get_codepoint1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 12
  store i32 (%struct._IO_FILE*, i8**)* %0, i32 (%struct._IO_FILE*, i8**)** %get_codepoint1, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 (%struct._IO_FILE*, i8**)* @gs_main_inst_get_arg_decode(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %get_codepoint = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 12
  %1 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint, align 8, !tbaa !7
  ret i32 (%struct._IO_FILE*, i8**)* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_start(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @run_string(%struct.gs_main_instance_s* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i32 2) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @run_string(%struct.gs_main_instance_s* %minst, i8* %str, i32 %options) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %str.addr = alloca i8*, align 8
  %options.addr = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %error_object = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 5
  %6 = load i32, i32* %user_errors, align 4, !tbaa !69
  %call = call i32 @gs_main_run_string(%struct.gs_main_instance_s* %3, i8* %4, i32 %6, i32* %exit_code, %struct.ref_s* %error_object) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %7, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %9, i32 0, i32 14
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !23
  %call1 = call i32 @zflush(%struct.gs_context_state_s* %10) #6
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p2 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %11, i32 0, i32 14
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p2, align 8, !tbaa !23
  %call3 = call i32 @zflushpage(%struct.gs_context_state_s* %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %exit_code, align 4, !tbaa !5
  %call4 = call i32 @run_finish(%struct.gs_main_instance_s* %13, i32 %14, i32 %15, %struct.ref_s* %error_object) #6
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %18 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret i32 %call4
}

declare %struct._IO_FILE* @lib_fopen(%struct.gs_file_path_s*, %struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @gs_debug_flags_parse(%struct.gs_memory_s*, i8*) #2

declare void @arg_finit(%struct.arg_list_s*) #2

declare i8* @arg_copy(i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @runarg(%struct.gs_main_instance_s* %minst, i8* %pre, i8* %arg, i8* %post, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pre.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %post.addr = alloca i8*, align 8
  %options.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %pre, i8** %pre.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store i8* %post, i8** %post.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %pre.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %2 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call1 = call i32 @esc_strlen(i8* %2) #6
  %conv = sext i32 %call1 to i64
  %add = add i64 %call, %conv
  %3 = load i8*, i8** %post.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %3) #7
  %add3 = add i64 %add, %call2
  %add4 = add i64 %add3, 1
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %len, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %7) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap10 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap10, align 8, !tbaa !14
  %15 = load i32, i32* %len, align 4, !tbaa !5
  %call11 = call i8* %12(%struct.gs_memory_s* %14, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0)) #6
  store i8* %call11, i8** %line, align 8, !tbaa !1
  %16 = load i8*, i8** %line, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %16, null
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.9
  %call15 = call i8* @gs_program_name() #6
  %call16 = call i64 @gs_revision_number() #6
  call void @eprintf_program_ident(i8* %call15, i64 %call16) #6
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i32 962) #6
  %call17 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.9
  %17 = load i8*, i8** %line, align 8, !tbaa !1
  %18 = load i8*, i8** %pre.addr, align 8, !tbaa !1
  %call19 = call i8* @strcpy(i8* %17, i8* %18) #8
  %19 = load i8*, i8** %line, align 8, !tbaa !1
  %20 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  call void @esc_strcat(i8* %19, i8* %20) #6
  %21 = load i8*, i8** %line, align 8, !tbaa !1
  %22 = load i8*, i8** %post.addr, align 8, !tbaa !1
  %call20 = call i8* @strcat(i8* %21, i8* %22) #8
  %23 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and21 = and i32 %23, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %24, i32 0, i32 14
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !23
  %starting_arg_file = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 14
  store i32 0, i32* %starting_arg_file, align 4, !tbaa !70
  br label %if.end.26

if.else:                                          ; preds = %if.end.18
  %26 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p24 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %26, i32 0, i32 14
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p24, align 8, !tbaa !23
  %starting_arg_file25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 14
  store i32 1, i32* %starting_arg_file25, align 4, !tbaa !70
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %line, align 8, !tbaa !1
  %30 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call27 = call i32 @run_string(%struct.gs_main_instance_s* %28, i8* %29, i32 %30) #6
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p28 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 14
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p28, align 8, !tbaa !23
  %starting_arg_file29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 14
  store i32 0, i32* %starting_arg_file29, align 4, !tbaa !70
  %33 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap30 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %33, i32 0, i32 0
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap30, align 8, !tbaa !14
  %procs31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs31, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %36 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap32 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %36, i32 0, i32 0
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap32, align 8, !tbaa !14
  %38 = load i8*, i8** %line, align 8, !tbaa !1
  call void %35(%struct.gs_memory_s* %37, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0)) #6
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.14, %if.then.8
  %40 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare void @arg_free(i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @arg_push_memory_string(%struct.arg_list_s*, i8*, i32, %struct.gs_memory_s*) #2

declare i32 @gs_main_init1(%struct.gs_main_instance_s*) #2

declare i32 @i_initial_enter_name(%struct.gs_context_state_s*, i8*, %struct.ref_s*) #2

declare i32 @gs_main_add_lib_path(%struct.gs_main_instance_s*, i8*) #2

declare %struct.gs_malloc_memory_s* @gs_malloc_wrapped_contents(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @sread_string(%struct.stream_s*, i8*, i32) #2

declare void @gs_scanner_init_stream_options(%struct.scanner_state_s*, %struct.stream_s*, i32) #2

declare i32 @gs_scan_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @lprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @try_stdout_redirect(%struct.gs_main_instance_s* %minst, i8* %command, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %command.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__s1_len76 = alloca i64, align 8
  %__s2_len78 = alloca i64, align 8
  %tmp79 = alloca i32, align 4
  %__s186 = alloca i8*, align 8
  %__result88 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %__s1_len134 = alloca i64, align 8
  %__s2_len136 = alloca i64, align 8
  %tmp137 = alloca i32, align 4
  %__s1144 = alloca i8*, align 8
  %__result146 = alloca i32, align 4
  %tmp184 = alloca i32, align 4
  %__s1_len192 = alloca i64, align 8
  %__s2_len194 = alloca i64, align 8
  %tmp195 = alloca i32, align 4
  %__s1202 = alloca i8*, align 8
  %__result204 = alloca i32, align 4
  %tmp242 = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %command, i8** %command.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.66 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)) #7
  store i64 %call, i64* %__s2_len, align 8, !tbaa !36
  %2 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp = icmp ult i64 %2, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %command.addr, align 8, !tbaa !1
  store i8* %4, i8** %__s1, align 8, !tbaa !1
  %5 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  %8 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), align 1, !tbaa !21
  %conv3 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %9 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp4 = icmp ugt i64 %9, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.34

land.lhs.true.6:                                  ; preds = %cond.true
  %10 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.6
  %11 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx9, align 1, !tbaa !21
  %conv10 = zext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i64 1), align 1, !tbaa !21
  %conv11 = zext i8 %13 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, i32* %__result, align 4, !tbaa !5
  %14 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp13 = icmp ugt i64 %14, 1
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %if.then
  %15 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %land.lhs.true.15
  %16 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx19, align 1, !tbaa !21
  %conv20 = zext i8 %17 to i32
  %18 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i64 2), align 1, !tbaa !21
  %conv21 = zext i8 %18 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %__result, align 4, !tbaa !5
  %19 = load i64, i64* %__s2_len, align 8, !tbaa !36
  %cmp23 = icmp ugt i64 %19, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.18
  %20 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %21 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i64 3
  %22 = load i8, i8* %arrayidx29, align 1, !tbaa !21
  %conv30 = zext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i64 3), align 1, !tbaa !21
  %conv31 = zext i8 %23 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.15, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.6, %cond.true
  %24 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %24, i32* %tmp35, !tbaa !5
  %25 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %tmp35, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %28 = load i8*, i8** %command.addr, align 8, !tbaa !1
  %call36 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.34
  %cond = phi i32 [ %27, %if.end.34 ], [ %call36, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %29 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %tmp, !tbaa !5
  %cmp37 = icmp eq i32 %31, 0
  br i1 %cmp37, label %if.then.39, label %if.end.266

if.then.39:                                       ; preds = %cond.end
  %32 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %32, i32 0, i32 0
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 2
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !39
  %stdout_to_stderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 6
  store i32 0, i32* %stdout_to_stderr, align 4, !tbaa !72
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap40 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %35, i32 0, i32 0
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap40, align 8, !tbaa !14
  %gs_lib_ctx41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 2
  %37 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx41, align 8, !tbaa !39
  %stdout_is_redirected = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %37, i32 0, i32 5
  store i32 0, i32* %stdout_is_redirected, align 4, !tbaa !73
  %38 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap42 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap42, align 8, !tbaa !14
  %gs_lib_ctx43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 2
  %40 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx43, align 8, !tbaa !39
  %fstdout2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %40, i32 0, i32 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2, align 8, !tbaa !74
  %tobool = icmp ne %struct._IO_FILE* %41, null
  br i1 %tobool, label %land.lhs.true.44, label %if.end.68

land.lhs.true.44:                                 ; preds = %if.then.39
  %42 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap45 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap45, align 8, !tbaa !14
  %gs_lib_ctx46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 2
  %44 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx46, align 8, !tbaa !39
  %fstdout247 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %44, i32 0, i32 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout247, align 8, !tbaa !74
  %46 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap48 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %46, i32 0, i32 0
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap48, align 8, !tbaa !14
  %gs_lib_ctx49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 2
  %48 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx49, align 8, !tbaa !39
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %48, i32 0, i32 2
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !75
  %cmp50 = icmp ne %struct._IO_FILE* %45, %49
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.68

land.lhs.true.52:                                 ; preds = %land.lhs.true.44
  %50 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap53 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %50, i32 0, i32 0
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap53, align 8, !tbaa !14
  %gs_lib_ctx54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 2
  %52 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx54, align 8, !tbaa !39
  %fstdout255 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %52, i32 0, i32 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout255, align 8, !tbaa !74
  %54 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap56 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %54, i32 0, i32 0
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap56, align 8, !tbaa !14
  %gs_lib_ctx57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 2
  %56 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx57, align 8, !tbaa !39
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %56, i32 0, i32 3
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !76
  %cmp58 = icmp ne %struct._IO_FILE* %53, %57
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %land.lhs.true.52
  %58 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap61 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %58, i32 0, i32 0
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap61, align 8, !tbaa !14
  %gs_lib_ctx62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 2
  %60 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx62, align 8, !tbaa !39
  %fstdout263 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %60, i32 0, i32 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout263, align 8, !tbaa !74
  %call64 = call i32 @fclose(%struct._IO_FILE* %61) #6
  %62 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap65 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %62, i32 0, i32 0
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap65, align 8, !tbaa !14
  %gs_lib_ctx66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 2
  %64 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx66, align 8, !tbaa !39
  %fstdout267 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %64, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fstdout267, align 8, !tbaa !74
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.60, %land.lhs.true.52, %land.lhs.true.44, %if.then.39
  %65 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %cmp69 = icmp ne i8* %65, null
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.265

land.lhs.true.71:                                 ; preds = %if.end.68
  %66 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call72 = call i64 @strlen(i8* %66) #7
  %tobool73 = icmp ne i64 %call72, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.end.265

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %67 = bitcast i64* %__s1_len76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = bitcast i64* %__s2_len78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.44 to i64)), i64 1), label %land.lhs.true.80, label %cond.false.127

land.lhs.true.80:                                 ; preds = %land.lhs.true.74
  %call81 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #7
  store i64 %call81, i64* %__s2_len78, align 8, !tbaa !36
  %69 = load i64, i64* %__s2_len78, align 8, !tbaa !36
  %cmp82 = icmp ult i64 %69, 4
  br i1 %cmp82, label %cond.true.84, label %cond.false.127

cond.true.84:                                     ; preds = %land.lhs.true.80
  %70 = bitcast i8** %__s186 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  store i8* %71, i8** %__s186, align 8, !tbaa !1
  %72 = bitcast i32* %__result88 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i8*, i8** %__s186, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx89, align 1, !tbaa !21
  %conv90 = zext i8 %74 to i32
  %75 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), align 1, !tbaa !21
  %conv91 = zext i8 %75 to i32
  %sub92 = sub nsw i32 %conv90, %conv91
  store i32 %sub92, i32* %__result88, align 4, !tbaa !5
  %76 = load i64, i64* %__s2_len78, align 8, !tbaa !36
  %cmp93 = icmp ugt i64 %76, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.125

land.lhs.true.95:                                 ; preds = %cond.true.84
  %77 = load i32, i32* %__result88, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %77, 0
  br i1 %cmp96, label %if.then.98, label %if.end.125

if.then.98:                                       ; preds = %land.lhs.true.95
  %78 = load i8*, i8** %__s186, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %arrayidx99, align 1, !tbaa !21
  %conv100 = zext i8 %79 to i32
  %80 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i64 1), align 1, !tbaa !21
  %conv101 = zext i8 %80 to i32
  %sub102 = sub nsw i32 %conv100, %conv101
  store i32 %sub102, i32* %__result88, align 4, !tbaa !5
  %81 = load i64, i64* %__s2_len78, align 8, !tbaa !36
  %cmp103 = icmp ugt i64 %81, 1
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.124

land.lhs.true.105:                                ; preds = %if.then.98
  %82 = load i32, i32* %__result88, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %82, 0
  br i1 %cmp106, label %if.then.108, label %if.end.124

if.then.108:                                      ; preds = %land.lhs.true.105
  %83 = load i8*, i8** %__s186, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %83, i64 2
  %84 = load i8, i8* %arrayidx109, align 1, !tbaa !21
  %conv110 = zext i8 %84 to i32
  %85 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i64 2), align 1, !tbaa !21
  %conv111 = zext i8 %85 to i32
  %sub112 = sub nsw i32 %conv110, %conv111
  store i32 %sub112, i32* %__result88, align 4, !tbaa !5
  %86 = load i64, i64* %__s2_len78, align 8, !tbaa !36
  %cmp113 = icmp ugt i64 %86, 2
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.123

land.lhs.true.115:                                ; preds = %if.then.108
  %87 = load i32, i32* %__result88, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %87, 0
  br i1 %cmp116, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %land.lhs.true.115
  %88 = load i8*, i8** %__s186, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %arrayidx119, align 1, !tbaa !21
  %conv120 = zext i8 %89 to i32
  %90 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i64 3), align 1, !tbaa !21
  %conv121 = zext i8 %90 to i32
  %sub122 = sub nsw i32 %conv120, %conv121
  store i32 %sub122, i32* %__result88, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.118, %land.lhs.true.115, %if.then.108
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true.105, %if.then.98
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %land.lhs.true.95, %cond.true.84
  %91 = load i32, i32* %__result88, align 4, !tbaa !5
  store i32 %91, i32* %tmp126, !tbaa !5
  %92 = bitcast i32* %__result88 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i8** %__s186 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %tmp126, !tbaa !5
  br label %cond.end.129

cond.false.127:                                   ; preds = %land.lhs.true.80, %land.lhs.true.74
  %95 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call128 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %if.end.125
  %cond130 = phi i32 [ %94, %if.end.125 ], [ %call128, %cond.false.127 ]
  store i32 %cond130, i32* %tmp79, !tbaa !5
  %96 = bitcast i64* %__s2_len78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i64* %__s1_len76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %tmp79, !tbaa !5
  %tobool131 = icmp ne i32 %98, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.265

land.lhs.true.132:                                ; preds = %cond.end.129
  %99 = bitcast i64* %__s1_len134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast i64* %__s2_len136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.67 to i64)), i64 1), label %land.lhs.true.138, label %cond.false.185

land.lhs.true.138:                                ; preds = %land.lhs.true.132
  %call139 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0)) #7
  store i64 %call139, i64* %__s2_len136, align 8, !tbaa !36
  %101 = load i64, i64* %__s2_len136, align 8, !tbaa !36
  %cmp140 = icmp ult i64 %101, 4
  br i1 %cmp140, label %cond.true.142, label %cond.false.185

cond.true.142:                                    ; preds = %land.lhs.true.138
  %102 = bitcast i8** %__s1144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  store i8* %103, i8** %__s1144, align 8, !tbaa !1
  %104 = bitcast i32* %__result146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load i8*, i8** %__s1144, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx147, align 1, !tbaa !21
  %conv148 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), align 1, !tbaa !21
  %conv149 = zext i8 %107 to i32
  %sub150 = sub nsw i32 %conv148, %conv149
  store i32 %sub150, i32* %__result146, align 4, !tbaa !5
  %108 = load i64, i64* %__s2_len136, align 8, !tbaa !36
  %cmp151 = icmp ugt i64 %108, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.183

land.lhs.true.153:                                ; preds = %cond.true.142
  %109 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %109, 0
  br i1 %cmp154, label %if.then.156, label %if.end.183

if.then.156:                                      ; preds = %land.lhs.true.153
  %110 = load i8*, i8** %__s1144, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx157, align 1, !tbaa !21
  %conv158 = zext i8 %111 to i32
  %112 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i64 1), align 1, !tbaa !21
  %conv159 = zext i8 %112 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %__result146, align 4, !tbaa !5
  %113 = load i64, i64* %__s2_len136, align 8, !tbaa !36
  %cmp161 = icmp ugt i64 %113, 1
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.182

land.lhs.true.163:                                ; preds = %if.then.156
  %114 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %114, 0
  br i1 %cmp164, label %if.then.166, label %if.end.182

if.then.166:                                      ; preds = %land.lhs.true.163
  %115 = load i8*, i8** %__s1144, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %115, i64 2
  %116 = load i8, i8* %arrayidx167, align 1, !tbaa !21
  %conv168 = zext i8 %116 to i32
  %117 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i64 2), align 1, !tbaa !21
  %conv169 = zext i8 %117 to i32
  %sub170 = sub nsw i32 %conv168, %conv169
  store i32 %sub170, i32* %__result146, align 4, !tbaa !5
  %118 = load i64, i64* %__s2_len136, align 8, !tbaa !36
  %cmp171 = icmp ugt i64 %118, 2
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.181

land.lhs.true.173:                                ; preds = %if.then.166
  %119 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %119, 0
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %land.lhs.true.173
  %120 = load i8*, i8** %__s1144, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %120, i64 3
  %121 = load i8, i8* %arrayidx177, align 1, !tbaa !21
  %conv178 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i64 3), align 1, !tbaa !21
  %conv179 = zext i8 %122 to i32
  %sub180 = sub nsw i32 %conv178, %conv179
  store i32 %sub180, i32* %__result146, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %land.lhs.true.173, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %land.lhs.true.163, %if.then.156
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.153, %cond.true.142
  %123 = load i32, i32* %__result146, align 4, !tbaa !5
  store i32 %123, i32* %tmp184, !tbaa !5
  %124 = bitcast i32* %__result146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i8** %__s1144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %tmp184, !tbaa !5
  br label %cond.end.187

cond.false.185:                                   ; preds = %land.lhs.true.138, %land.lhs.true.132
  %127 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call186 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0)) #8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.185, %if.end.183
  %cond188 = phi i32 [ %126, %if.end.183 ], [ %call186, %cond.false.185 ]
  store i32 %cond188, i32* %tmp137, !tbaa !5
  %128 = bitcast i64* %__s2_len136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i64* %__s1_len134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %tmp137, !tbaa !5
  %tobool189 = icmp ne i32 %130, 0
  br i1 %tobool189, label %if.then.190, label %if.end.265

if.then.190:                                      ; preds = %cond.end.187
  %131 = bitcast i64* %__s1_len192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = bitcast i64* %__s2_len194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.68 to i64)), i64 1), label %land.lhs.true.196, label %cond.false.243

land.lhs.true.196:                                ; preds = %if.then.190
  %call197 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0)) #7
  store i64 %call197, i64* %__s2_len194, align 8, !tbaa !36
  %133 = load i64, i64* %__s2_len194, align 8, !tbaa !36
  %cmp198 = icmp ult i64 %133, 4
  br i1 %cmp198, label %cond.true.200, label %cond.false.243

cond.true.200:                                    ; preds = %land.lhs.true.196
  %134 = bitcast i8** %__s1202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  store i8* %135, i8** %__s1202, align 8, !tbaa !1
  %136 = bitcast i32* %__result204 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i8*, i8** %__s1202, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx205, align 1, !tbaa !21
  %conv206 = zext i8 %138 to i32
  %139 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), align 1, !tbaa !21
  %conv207 = zext i8 %139 to i32
  %sub208 = sub nsw i32 %conv206, %conv207
  store i32 %sub208, i32* %__result204, align 4, !tbaa !5
  %140 = load i64, i64* %__s2_len194, align 8, !tbaa !36
  %cmp209 = icmp ugt i64 %140, 0
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.241

land.lhs.true.211:                                ; preds = %cond.true.200
  %141 = load i32, i32* %__result204, align 4, !tbaa !5
  %cmp212 = icmp eq i32 %141, 0
  br i1 %cmp212, label %if.then.214, label %if.end.241

if.then.214:                                      ; preds = %land.lhs.true.211
  %142 = load i8*, i8** %__s1202, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx215, align 1, !tbaa !21
  %conv216 = zext i8 %143 to i32
  %144 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i64 1), align 1, !tbaa !21
  %conv217 = zext i8 %144 to i32
  %sub218 = sub nsw i32 %conv216, %conv217
  store i32 %sub218, i32* %__result204, align 4, !tbaa !5
  %145 = load i64, i64* %__s2_len194, align 8, !tbaa !36
  %cmp219 = icmp ugt i64 %145, 1
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.240

land.lhs.true.221:                                ; preds = %if.then.214
  %146 = load i32, i32* %__result204, align 4, !tbaa !5
  %cmp222 = icmp eq i32 %146, 0
  br i1 %cmp222, label %if.then.224, label %if.end.240

if.then.224:                                      ; preds = %land.lhs.true.221
  %147 = load i8*, i8** %__s1202, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i8, i8* %147, i64 2
  %148 = load i8, i8* %arrayidx225, align 1, !tbaa !21
  %conv226 = zext i8 %148 to i32
  %149 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i64 2), align 1, !tbaa !21
  %conv227 = zext i8 %149 to i32
  %sub228 = sub nsw i32 %conv226, %conv227
  store i32 %sub228, i32* %__result204, align 4, !tbaa !5
  %150 = load i64, i64* %__s2_len194, align 8, !tbaa !36
  %cmp229 = icmp ugt i64 %150, 2
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.239

land.lhs.true.231:                                ; preds = %if.then.224
  %151 = load i32, i32* %__result204, align 4, !tbaa !5
  %cmp232 = icmp eq i32 %151, 0
  br i1 %cmp232, label %if.then.234, label %if.end.239

if.then.234:                                      ; preds = %land.lhs.true.231
  %152 = load i8*, i8** %__s1202, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %152, i64 3
  %153 = load i8, i8* %arrayidx235, align 1, !tbaa !21
  %conv236 = zext i8 %153 to i32
  %154 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i64 3), align 1, !tbaa !21
  %conv237 = zext i8 %154 to i32
  %sub238 = sub nsw i32 %conv236, %conv237
  store i32 %sub238, i32* %__result204, align 4, !tbaa !5
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.234, %land.lhs.true.231, %if.then.224
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %land.lhs.true.221, %if.then.214
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %land.lhs.true.211, %cond.true.200
  %155 = load i32, i32* %__result204, align 4, !tbaa !5
  store i32 %155, i32* %tmp242, !tbaa !5
  %156 = bitcast i32* %__result204 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i8** %__s1202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = load i32, i32* %tmp242, !tbaa !5
  br label %cond.end.245

cond.false.243:                                   ; preds = %land.lhs.true.196, %if.then.190
  %159 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call244 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0)) #8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.243, %if.end.241
  %cond246 = phi i32 [ %158, %if.end.241 ], [ %call244, %cond.false.243 ]
  store i32 %cond246, i32* %tmp195, !tbaa !5
  %160 = bitcast i64* %__s2_len194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i64* %__s1_len192 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = load i32, i32* %tmp195, !tbaa !5
  %cmp247 = icmp eq i32 %162, 0
  br i1 %cmp247, label %if.then.249, label %if.else

if.then.249:                                      ; preds = %cond.end.245
  %163 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap250 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %163, i32 0, i32 0
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap250, align 8, !tbaa !14
  %gs_lib_ctx251 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 2
  %165 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx251, align 8, !tbaa !39
  %stdout_to_stderr252 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %165, i32 0, i32 6
  store i32 1, i32* %stdout_to_stderr252, align 4, !tbaa !72
  br label %if.end.261

if.else:                                          ; preds = %cond.end.245
  %166 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call253 = call %struct._IO_FILE* @gp_fopen(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0)) #6
  %167 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap254 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %167, i32 0, i32 0
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap254, align 8, !tbaa !14
  %gs_lib_ctx255 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 2
  %169 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx255, align 8, !tbaa !39
  %fstdout2256 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %169, i32 0, i32 4
  store %struct._IO_FILE* %call253, %struct._IO_FILE** %fstdout2256, align 8, !tbaa !74
  %cmp257 = icmp eq %struct._IO_FILE* %call253, null
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.else
  store i32 -9, i32* %retval
  br label %return

if.end.260:                                       ; preds = %if.else
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.249
  %170 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap262 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %170, i32 0, i32 0
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap262, align 8, !tbaa !14
  %gs_lib_ctx263 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 2
  %172 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx263, align 8, !tbaa !39
  %stdout_is_redirected264 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %172, i32 0, i32 5
  store i32 1, i32* %stdout_is_redirected264, align 4, !tbaa !73
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.261, %cond.end.187, %cond.end.129, %land.lhs.true.71, %if.end.68
  store i32 0, i32* %retval
  br label %return

if.end.266:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.266, %if.end.265, %if.then.259
  %173 = load i32, i32* %retval
  ret i32 %173
}

; Function Attrs: nounwind uwtable
define internal void @set_debug_flags(i8* %arg, i8* %flags) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %value = alloca i8, align 1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store i8* %flags, i8** %flags.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !21
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 255, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  store i8 %conv2, i8* %value, align 1, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !21
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %value, align 1, !tbaa !21
  %6 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %arg.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !21
  %conv4 = sext i8 %7 to i32
  %and = and i32 %conv4, 127
  %idxprom = sext i32 %and to i64
  %8 = load i8*, i8** %flags.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %5, i8* %arrayidx, align 1, !tbaa !21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  ret void
}

declare void @i_initial_remove_name(%struct.gs_context_state_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @print_revision(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %2 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %3 = load i64, i64* @gs_version, align 8, !tbaa !36
  call void @printf_program_ident(%struct.gs_memory_s* %1, i8* %2, i64 %3) #6
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1, align 8, !tbaa !14
  %6 = load i64, i64* @gs_revisiondate, align 8, !tbaa !36
  %div = sdiv i64 %6, 10000
  %conv = trunc i64 %div to i32
  %7 = load i64, i64* @gs_revisiondate, align 8, !tbaa !36
  %div2 = sdiv i64 %7, 100
  %rem = srem i64 %div2, 100
  %conv3 = trunc i64 %rem to i32
  %8 = load i64, i64* @gs_revisiondate, align 8, !tbaa !36
  %rem4 = srem i64 %8, 100
  %conv5 = trunc i64 %rem4 to i32
  %9 = load i8*, i8** @gs_copyright, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv5, i8* %9) #6
  ret void
}

declare i32 @gs_main_run_string_begin(%struct.gs_main_instance_s*, i32, i32*, %struct.ref_s*) #2

declare i32 @gs_main_run_string_continue(%struct.gs_main_instance_s*, i8*, i32, i32, i32*, %struct.ref_s*) #2

declare i32 @gs_main_run_string_end(%struct.gs_main_instance_s*, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @esc_strlen(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %0) #7
  %mul = mul i64 %call, 2
  %add = add i64 %mul, 2
  %conv = trunc i64 %add to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @esc_strcat(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  %0 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #7
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** %d, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %d, align 8, !tbaa !1
  store i8 60, i8* %4, align 1, !tbaa !21
  %5 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %5, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !21
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !21
  store i8 %9, i8* %c, align 1, !tbaa !21
  %10 = load i8, i8* %c, align 1, !tbaa !21
  %conv = zext i8 %10 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %11 = load i8*, i8** @esc_strcat.hex, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %13 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr1, i8** %d, align 8, !tbaa !1
  store i8 %12, i8* %13, align 1, !tbaa !21
  %14 = load i8, i8* %c, align 1, !tbaa !21
  %conv2 = zext i8 %14 to i32
  %and = and i32 %conv2, 15
  %idxprom3 = sext i32 %and to i64
  %15 = load i8*, i8** @esc_strcat.hex, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 %idxprom3
  %16 = load i8, i8* %arrayidx4, align 1, !tbaa !21
  %17 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr5, i8** %d, align 8, !tbaa !1
  store i8 %16, i8* %17, align 1, !tbaa !21
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr7, i8** %d, align 8, !tbaa !1
  store i8 62, i8* %19, align 1, !tbaa !21
  %20 = load i8*, i8** %d, align 8, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !21
  %21 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #2

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #2

declare void @printf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @run_buffered(%struct.gs_main_instance_s* %minst, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %arg.addr = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %exit_code = alloca i32, align 4
  %error_object = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %buf = alloca [1024 x i8], align 16
  %count = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_fopen(i8* %1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_rb, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8, !tbaa !1
  %2 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %8 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* %8) #6
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_main_init2(%struct.gs_main_instance_s* %9) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call5 = call i32 @fclose(%struct._IO_FILE* %11) #6
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %14 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %14, i32 0, i32 5
  %15 = load i32, i32* %user_errors, align 4, !tbaa !69
  %call7 = call i32 @gs_main_run_string_begin(%struct.gs_main_instance_s* %13, i32 %15, i32* %exit_code, %struct.ref_s* %error_object) #6
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.26, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %17 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %17) #1
  %18 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -106, i32* %code, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.then.8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %run_buffer_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 3
  %20 = load i32, i32* %run_buffer_size, align 4, !tbaa !58
  %conv = zext i32 %20 to i64
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call9 = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv, %struct._IO_FILE* %21) #6
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %count, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %conv10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %23 = load i32, i32* %count, align 4, !tbaa !5
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors14 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %24, i32 0, i32 5
  %25 = load i32, i32* %user_errors14, align 4, !tbaa !69
  %call15 = call i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %22, i8* %arraydecay13, i32 %23, i32 %25, i32* %exit_code, %struct.ref_s* %error_object) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %26, -106
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  br label %while.end

if.end.19:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %27, -106
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %while.end
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %29 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors23 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %29, i32 0, i32 5
  %30 = load i32, i32* %user_errors23, align 4, !tbaa !69
  %call24 = call i32 @gs_main_run_string_end(%struct.gs_main_instance_s* %28, i32 %30, i32* %exit_code, %struct.ref_s* %error_object) #6
  store i32 %call24, i32* %code, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %while.end
  %31 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %32) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.6
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call27 = call i32 @fclose(%struct._IO_FILE* %33) #6
  %34 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %34, i32 0, i32 14
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !23
  %call28 = call i32 @zflush(%struct.gs_context_state_s* %35) #6
  %36 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p29 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %36, i32 0, i32 14
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p29, align 8, !tbaa !23
  %call30 = call i32 @zflushpage(%struct.gs_context_state_s* %37) #6
  %38 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %exit_code, align 4, !tbaa !5
  %call31 = call i32 @run_finish(%struct.gs_main_instance_s* %38, i32 %39, i32 %40, %struct.ref_s* %error_object) #6
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.4, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #1
  %43 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @zflush(%struct.gs_context_state_s*) #2

declare i32 @zflushpage(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @run_finish(%struct.gs_main_instance_s* %minst, i32 %code, i32 %exit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %code.addr = alloca i32, align 4
  %exit_code.addr = alloca i32, align 4
  %perror_object.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  store i32 %exit_code, i32* %exit_code.addr, align 4, !tbaa !5
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = load i32, i32* %code.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 -101, label %sw.bb
    i32 0, label %sw.bb
    i32 -100, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call = call i8* @gs_program_name() #6
  %call2 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %2, i8* %call, i64 %call2) #6
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap3 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap3, align 8, !tbaa !14
  %5 = load i32, i32* %exit_code.addr, align 4, !tbaa !5
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), i32 %5) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %7 = load i32, i32* %code.addr, align 4, !tbaa !5
  %8 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  call void @gs_main_dump_stack(%struct.gs_main_instance_s* %6, i32 %7, %struct.ref_s* %8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %code.addr, align 4, !tbaa !5
  ret i32 %9
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare void @gs_main_dump_stack(%struct.gs_main_instance_s*, i32, %struct.ref_s*) #2

declare i32 @gs_main_run_string(%struct.gs_main_instance_s*, i8*, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal void @print_usage(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([262 x i8], [262 x i8]* @help_usage1, i32 0, i32 0)) #6
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1, align 8, !tbaa !14
  %call2 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([218 x i8], [218 x i8]* @help_usage2, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_emulators(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %s = alloca i8*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @help_emulators, i32 0, i32 0)) #6
  %2 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gs_emulators, i32 0, i32 0), i8** %s, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap2 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap2, align 8, !tbaa !14
  %7 = load i8*, i8** %s, align 8, !tbaa !1
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* %7) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8*, i8** %s, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %8) #7
  %add = add i64 %call4, 1
  %9 = load i8*, i8** %s, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %add
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap5, align 8, !tbaa !14
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_devices(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %pdev = alloca %struct.gx_device_s*, align 8
  %names = alloca i8**, align 8
  %ndev = alloca i64, align 8
  %dname = alloca i8*, align 8
  %len = alloca i32, align 4
  %len49 = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @help_default_device, i32 0, i32 0)) #6
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1, align 8, !tbaa !14
  %call2 = call %struct.gx_device_s* @gs_getdefaultdevice() #6
  %call3 = call i8* @gs_devicename(%struct.gx_device_s* %call2) #6
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* %call3) #6
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap5, align 8, !tbaa !14
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @help_devices, i32 0, i32 0)) #6
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 100, i32* %pos, align 4, !tbaa !5
  %8 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8*** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %ndev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 0, i64* %ndev, align 8, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %call7 = call %struct.gx_device_s* @gs_getdevice(i32 %11) #6
  %cmp = icmp ne %struct.gx_device_s* %call7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %ndev, align 8, !tbaa !36
  %14 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap8 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap8, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap9 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap9, align 8, !tbaa !14
  %19 = load i64, i64* %ndev, align 8, !tbaa !36
  %mul = mul i64 %19, 8
  %conv10 = trunc i64 %mul to i32
  %call11 = call i8* %16(%struct.gs_memory_s* %18, i32 %conv10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0)) #6
  %20 = bitcast i8* %call11 to i8**
  store i8** %20, i8*** %names, align 8, !tbaa !1
  %21 = load i8**, i8*** %names, align 8, !tbaa !1
  %cmp12 = icmp eq i8** %21, null
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.32, %if.then
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %call15 = call %struct.gx_device_s* @gs_getdevice(i32 %22) #6
  store %struct.gx_device_s* %call15, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.gx_device_s* %call15, null
  br i1 %cmp16, label %for.body.18, label %for.end.34

for.body.18:                                      ; preds = %for.cond.14
  %23 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call19 = call i8* @gs_devicename(%struct.gx_device_s* %24) #6
  store i8* %call19, i8** %dname, align 8, !tbaa !1
  %25 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i8*, i8** %dname, align 8, !tbaa !1
  %call20 = call i64 @strlen(i8* %26) #7
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %len, align 4, !tbaa !5
  %27 = load i32, i32* %pos, align 4, !tbaa !5
  %add = add nsw i32 %27, 1
  %28 = load i32, i32* %len, align 4, !tbaa !5
  %add22 = add nsw i32 %add, %28
  %cmp23 = icmp sgt i32 %add22, 76
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %for.body.18
  %29 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap26 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap26, align 8, !tbaa !14
  %call27 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0)) #6
  store i32 2, i32* %pos, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.25, %for.body.18
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap28 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 0
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap28, align 8, !tbaa !14
  %33 = load i8*, i8** %dname, align 8, !tbaa !1
  %call29 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* %33) #6
  %34 = load i32, i32* %len, align 4, !tbaa !5
  %add30 = add nsw i32 1, %34
  %35 = load i32, i32* %pos, align 4, !tbaa !5
  %add31 = add nsw i32 %35, %add30
  store i32 %add31, i32* %pos, align 4, !tbaa !5
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.end.34:                                       ; preds = %for.cond.14
  br label %if.end.75

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %if.else
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %call36 = call %struct.gx_device_s* @gs_getdevice(i32 %39) #6
  store %struct.gx_device_s* %call36, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.gx_device_s* %call36, null
  br i1 %cmp37, label %for.body.39, label %for.end.43

for.body.39:                                      ; preds = %for.cond.35
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call40 = call i8* @gs_devicename(%struct.gx_device_s* %40) #6
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %41 to i64
  %42 = load i8**, i8*** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %42, i64 %idxprom
  store i8* %call40, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.39
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  %44 = load i8**, i8*** %names, align 8, !tbaa !1
  %45 = bitcast i8** %44 to i8*
  %46 = load i64, i64* %ndev, align 8, !tbaa !36
  call void @qsort(i8* %45, i64 %46, i64 8, i32 (i8*, i8*)* @cmpstr) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.68, %for.end.43
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %conv45 = sext i32 %47 to i64
  %48 = load i64, i64* %ndev, align 8, !tbaa !36
  %cmp46 = icmp ult i64 %conv45, %48
  br i1 %cmp46, label %for.body.48, label %for.end.70

for.body.48:                                      ; preds = %for.cond.44
  %49 = bitcast i32* %len49 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %50 to i64
  %51 = load i8**, i8*** %names, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8*, i8** %51, i64 %idxprom50
  %52 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  %call52 = call i64 @strlen(i8* %52) #7
  %conv53 = trunc i64 %call52 to i32
  store i32 %conv53, i32* %len49, align 4, !tbaa !5
  %53 = load i32, i32* %pos, align 4, !tbaa !5
  %add54 = add nsw i32 %53, 1
  %54 = load i32, i32* %len49, align 4, !tbaa !5
  %add55 = add nsw i32 %add54, %54
  %cmp56 = icmp sgt i32 %add55, 76
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %for.body.48
  %55 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap59 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %55, i32 0, i32 0
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap59, align 8, !tbaa !14
  %call60 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0)) #6
  store i32 2, i32* %pos, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %for.body.48
  %57 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap62 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %57, i32 0, i32 0
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap62, align 8, !tbaa !14
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %59 to i64
  %60 = load i8**, i8*** %names, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8*, i8** %60, i64 %idxprom63
  %61 = load i8*, i8** %arrayidx64, align 8, !tbaa !1
  %call65 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* %61) #6
  %62 = load i32, i32* %len49, align 4, !tbaa !5
  %add66 = add nsw i32 1, %62
  %63 = load i32, i32* %pos, align 4, !tbaa !5
  %add67 = add nsw i32 %63, %add66
  store i32 %add67, i32* %pos, align 4, !tbaa !5
  %64 = bitcast i32* %len49 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.61
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %65, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !5
  br label %for.cond.44

for.end.70:                                       ; preds = %for.cond.44
  %66 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap71 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %66, i32 0, i32 0
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap71, align 8, !tbaa !14
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !77
  %procs72 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs72, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %70 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap73 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %70, i32 0, i32 0
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap73, align 8, !tbaa !14
  %non_gc_memory74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory74, align 8, !tbaa !77
  %73 = load i8**, i8*** %names, align 8, !tbaa !1
  %74 = bitcast i8** %73 to i8*
  call void %69(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0)) #6
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.70, %for.end.34
  %75 = bitcast i64* %ndev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i8*** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap76 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %80, i32 0, i32 0
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap76, align 8, !tbaa !14
  %call77 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_paths(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %fsepr = alloca [3 x i8], align 1
  %prdir = alloca %struct.ref_s*, align 8
  %len = alloca i32, align 4
  %sepr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @help_paths, i32 0, i32 0)) #6
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %2) #6
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !63
  store i32 %5, i32* %count, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 100, i32* %pos, align 4, !tbaa !5
  %8 = bitcast [3 x i8]* %fsepr to i8*
  call void @llvm.lifetime.start(i64 3, i8* %8) #1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %fsepr, i32 0, i64 0
  store i8 32, i8* %arrayidx, align 1, !tbaa !21
  %9 = load i8, i8* @gp_file_name_list_separator, align 1, !tbaa !21
  %arrayidx2 = getelementptr inbounds [3 x i8], [3 x i8]* %fsepr, i32 0, i64 1
  store i8 %9, i8* %arrayidx2, align 1, !tbaa !21
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* %fsepr, i32 0, i64 2
  store i8 0, i8* %arrayidx3, align 1, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.ref_s** %prdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 8
  %list5 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path4, i32 0, i32 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list5, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %prdir, align 8, !tbaa !1
  %16 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.ref_s*, %struct.ref_s** %prdir, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %18 = load i32, i32* %rsize7, align 4, !tbaa !63
  store i32 %18, i32* %len, align 4, !tbaa !5
  %19 = bitcast i8** %sepr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %21, 1
  %cmp8 = icmp eq i32 %20, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %fsepr, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.true ], [ %arraydecay, %cond.false ]
  store i8* %cond, i8** %sepr, align 8, !tbaa !1
  %22 = load i32, i32* %pos, align 4, !tbaa !5
  %add = add nsw i32 1, %22
  %conv = sext i32 %add to i64
  %23 = load i8*, i8** %sepr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %23) #7
  %add10 = add i64 %conv, %call9
  %24 = load i32, i32* %len, align 4, !tbaa !5
  %conv11 = zext i32 %24 to i64
  %add12 = add i64 %add10, %conv11
  %cmp13 = icmp ugt i64 %add12, 76
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %25 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap15 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %25, i32 0, i32 0
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap15, align 8, !tbaa !14
  %call16 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0)) #6
  store i32 2, i32* %pos, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %27 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap17 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %27, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap17, align 8, !tbaa !14
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0)) #6
  %29 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.ref_s*, %struct.ref_s** %prdir, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %bytes = bitcast %union.v* %value19 to i8**
  %31 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %31, i8** %p, align 8, !tbaa !1
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %33, i32* %j, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.20
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap22 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %35, i32 0, i32 0
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap22, align 8, !tbaa !14
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !21
  %conv23 = sext i8 %38 to i32
  %call24 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 %conv23) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add i32 %39, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap25 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap25, align 8, !tbaa !14
  %44 = load i8*, i8** %sepr, align 8, !tbaa !1
  %call26 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* %44) #6
  %45 = load i32, i32* %len, align 4, !tbaa !5
  %add27 = add i32 1, %45
  %conv28 = zext i32 %add27 to i64
  %46 = load i8*, i8** %sepr, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* %46) #7
  %add30 = add i64 %conv28, %call29
  %47 = load i32, i32* %pos, align 4, !tbaa !5
  %conv31 = sext i32 %47 to i64
  %add32 = add i64 %conv31, %add30
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %pos, align 4, !tbaa !5
  %48 = bitcast i8** %sepr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_s** %prdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %52 = bitcast [3 x i8]* %fsepr to i8*
  call void @llvm.lifetime.end(i64 3, i8* %52) #1
  %53 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap36 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %56, i32 0, i32 0
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap36, align 8, !tbaa !14
  %call37 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %58 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap38 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %58, i32 0, i32 0
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap38, align 8, !tbaa !14
  %call39 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @help_fontconfig, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @print_help_trailer(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %buffer = alloca [4096 x i8], align 16
  %use_htm = alloca i8*, align 8
  %p = alloca i8*, align 8
  %blen = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = bitcast i8** %use_htm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8** %use_htm, align 8, !tbaa !1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %3 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 4096, i32* %blen, align 4, !tbaa !5
  %4 = load i8*, i8** @gs_doc_directory, align 8, !tbaa !1
  %5 = load i8*, i8** @gs_doc_directory, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #7
  %conv = trunc i64 %call to i32
  %6 = load i8*, i8** %use_htm, align 8, !tbaa !1
  %7 = load i8*, i8** %use_htm, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %7) #7
  %conv2 = trunc i64 %call1 to i32
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call4 = call i32 @gp_file_name_combine(i8* %4, i32 %conv, i8* %6, i32 %conv2, i32 0, i8* %arraydecay3, i32* %blen) #6
  %cmp = icmp ne i32 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %use_htm, align 8, !tbaa !1
  store i8* %8, i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !14
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @help_trailer, i32 0, i32 0), i8* %11) #6
  %12 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i8** %use_htm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %15) #1
  ret void
}

declare i8* @gs_devicename(%struct.gx_device_s*) #2

declare %struct.gx_device_s* @gs_getdefaultdevice() #2

declare %struct.gx_device_s* @gs_getdevice(i32) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmpstr(i8* %v1, i8* %v2) #0 {
entry:
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %v1, i8** %v1.addr, align 8, !tbaa !1
  store i8* %v2, i8** %v2.addr, align 8, !tbaa !1
  %0 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %v1.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !1
  %5 = load i8*, i8** %v2.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %4, i8* %7) #8
  store i32 %call, i32* %tmp, !tbaa !5
  %8 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %tmp, !tbaa !5
  ret i32 %10
}

declare i32 @gp_file_name_combine(i8*, i32, i8*, i32, i32, i8*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 144}
!8 = !{!"gs_main_instance_s", !2, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !10, i64 48, !3, i64 104, !2, i64 120, !11, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !6, i64 176}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_file_path_s", !11, i64 0, !11, i64 16, !2, i64 32, !2, i64 40, !6, i64 48}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!8, !2, i64 0}
!15 = !{!16, !2, i64 64}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!8, !2, i64 80}
!19 = !{!8, !2, i64 88}
!20 = !{!8, !6, i64 40}
!21 = !{!3, !3, i64 0}
!22 = !{!8, !6, i64 176}
!23 = !{!8, !2, i64 160}
!24 = !{!25, !2, i64 0}
!25 = !{!"gs_context_state_s", !2, i64 0, !26, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !28, i64 264, !28, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !29, i64 368, !31, i64 520, !32, i64 624, !2, i64 720}
!26 = !{!"gs_dual_memory_s", !2, i64 0, !27, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!27 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!28 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!29 = !{!"dict_stack_s", !30, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!30 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!31 = !{!"exec_stack_s", !30, i64 0, !2, i64 96}
!32 = !{!"op_stack_s", !30, i64 0}
!33 = !{!34, !2, i64 0}
!34 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !35, i64 16, !2, i64 120}
!35 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!36 = !{!9, !9, i64 0}
!37 = !{!13, !13, i64 0}
!38 = !{!11, !13, i64 0}
!39 = !{!16, !2, i64 192}
!40 = !{!41, !6, i64 48}
!41 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!42 = !{!8, !6, i64 28}
!43 = !{!8, !2, i64 168}
!44 = !{!45, !2, i64 1664}
!45 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !46, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !47, i64 96, !49, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !50, i64 984, !6, i64 1052, !6, i64 1056, !51, i64 1064, !2, i64 1104, !3, i64 1112, !53, i64 1120, !54, i64 1144}
!46 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!47 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !48, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!48 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!49 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!50 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!51 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !52, i64 16, !6, i64 32, !3, i64 36}
!52 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!53 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!54 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!55 = !{!45, !2, i64 16}
!56 = !{!57, !6, i64 0}
!57 = !{!"arg_list_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !3, i64 56, !3, i64 2112}
!58 = !{!8, !6, i64 24}
!59 = !{!60, !9, i64 224}
!60 = !{!"gs_malloc_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !2, i64 248}
!61 = !{!8, !6, i64 8}
!62 = !{!8, !9, i64 16}
!63 = !{!11, !6, i64 4}
!64 = !{!8, !6, i64 36}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !3, i64 0}
!67 = !{!26, !6, i64 48}
!68 = !{!41, !2, i64 120}
!69 = !{!8, !6, i64 32}
!70 = !{!25, !6, i64 192}
!71 = !{!16, !2, i64 24}
!72 = !{!41, !6, i64 44}
!73 = !{!41, !6, i64 40}
!74 = !{!41, !2, i64 32}
!75 = !{!41, !2, i64 16}
!76 = !{!41, !2, i64 24}
!77 = !{!16, !2, i64 200}
