; ModuleID = './zcharout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.name_s = type opaque
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.2, %struct.anon.3, i32, %struct.anon.4, i32, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_type1_state_s = type opaque
%struct.anon = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [14 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [10 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [1 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [12 x float] }
%struct.anon.9 = type { i32, [16 x float] }

@.str = private unnamed_addr constant [8 x i8] c"Metrics\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Metrics2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CDevProc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"setcharwidth\00", align 1
@charstring_make_notdef.char_data = internal constant [4 x i8] c"\8B\8B\0D\0E", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"charstring_make_notdef\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zchar_exec_char_proc(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rfont = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !19
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -5
  %cmp = icmp ugt %struct.ref_s* %5, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %8 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack6, i32 5) #5
  store i32 %call, i32* %es_code_, align 4, !tbaa !21
  %10 = load i32, i32* %es_code_, align 4, !tbaa !21
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %11 = load i32, i32* %es_code_, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %12 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !19
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 5
  store %struct.ref_s* %add.ptr13, %struct.ref_s** %p12, align 8, !tbaa !19
  store %struct.ref_s* %add.ptr13, %struct.ref_s** %ep, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zend, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !22
  %17 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -4
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !23
  %18 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -3
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 1
  %opproc20 = bitcast %union.v* %value19 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zend, i32 (%struct.gs_context_state_s*)** %opproc20, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -3
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  store i16 3968, i16* %type_attrs23, align 2, !tbaa !22
  %20 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 0
  %rsize26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  store i32 0, i32* %rsize26, align 4, !tbaa !23
  %21 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %add.ptr27 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !24
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 1
  %opproc30 = bitcast %union.v* %value29 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zbegin, i32 (%struct.gs_context_state_s*)** %opproc30, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 3968, i16* %type_attrs33, align 2, !tbaa !22
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %rsize36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  store i32 0, i32* %rsize36, align 4, !tbaa !23
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %opproc38 = bitcast %union.v* %value37 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zbegin, i32 (%struct.gs_context_state_s*)** %opproc38, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 3968, i16* %type_attrs40, align 2, !tbaa !22
  %30 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 2
  store i32 0, i32* %rsize42, align 4, !tbaa !23
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %33 = bitcast %struct.ref_s* %add.ptr43 to i8*
  %34 = bitcast %struct.ref_s* %system_dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false), !tbaa.struct !24
  %35 = bitcast %struct.ref_s* %rfont to i8*
  call void @llvm.lifetime.start(i64 16, i8* %35) #1
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %37 = bitcast %struct.ref_s* %rfont to i8*
  %38 = bitcast %struct.ref_s* %add.ptr44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !24
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -3
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -2
  %41 = bitcast %struct.ref_s* %add.ptr45 to i8*
  %42 = bitcast %struct.ref_s* %add.ptr46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !24
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  %44 = bitcast %struct.ref_s* %add.ptr47 to i8*
  %45 = bitcast %struct.ref_s* %rfont to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !24
  %46 = bitcast %struct.ref_s* %rfont to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !5
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  store %struct.ref_s* %add.ptr51, %struct.ref_s** %p50, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.9, %cleanup
  %49 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @zend(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @zbegin(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zchar_get_metrics(%struct.gs_font_base_s* %pbfont, %struct.ref_s* %pcnref, double* %psbw) #0 {
entry:
  %retval = alloca i32, align 4
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %pcnref.addr = alloca %struct.ref_s*, align 8
  %psbw.addr = alloca double*, align 8
  %pfdict = alloca %struct.ref_s*, align 8
  %pmdict = alloca %struct.ref_s*, align 8
  %pmvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcnref, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  store double* %psbw, double** %psbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %1) #5
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pmdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %pmdict) #5
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %12 = load i16, i16* %type_attrs7, align 2, !tbaa !22
  %conv8 = zext i16 %12 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.body.5
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end.10:                                        ; preds = %do.body.5
  br label %do.cond.11

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %13 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  %call13 = call i32 @dict_find(%struct.ref_s* %13, %struct.ref_s* %14, %struct.ref_s** %pmvalue) #5
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.56

if.then.16:                                       ; preds = %do.end.12
  %15 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %16 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds double, double* %16, i64 2
  %call17 = call i32 @num_params(%struct.ref_s* %15, i32 1, double* %add.ptr) #5
  %cmp18 = icmp sge i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.16
  %17 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %17, i64 3
  store double 0.000000e+00, double* %arrayidx21, align 8, !tbaa !40
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.else:                                          ; preds = %if.then.16
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %do.body.22

do.body.22:                                       ; preds = %if.else
  %19 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %20 = load i16, i16* %type_attrs24, align 2, !tbaa !22
  %conv25 = zext i16 %20 to i32
  %and26 = and i32 %conv25, 16160
  %cmp27 = icmp eq i32 %and26, 1056
  br i1 %cmp27, label %if.end.36, label %if.then.29

if.then.29:                                       ; preds = %do.body.22
  %21 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %22 = bitcast i16* %type_attrs31 to i8*
  %arrayidx32 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx32, align 1, !tbaa !39
  %conv33 = zext i8 %23 to i32
  %cmp34 = icmp eq i32 %conv33, 4
  %lnot = xor i1 %cmp34, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %do.body.22
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %24 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  %25 = load i32, i32* %rsize, align 4, !tbaa !23
  switch i32 %25, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %do.end.38
  %26 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %refs = bitcast %union.v* %value40 to %struct.ref_s**
  %27 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  %28 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %call42 = call i32 @num_params(%struct.ref_s* %add.ptr41, i32 2, double* %28) #5
  store i32 %call42, i32* %code, align 4, !tbaa !21
  %29 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds double, double* %29, i64 1
  %30 = load double, double* %arrayidx43, align 8, !tbaa !40
  %31 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds double, double* %31, i64 2
  store double %30, double* %arrayidx44, align 8, !tbaa !40
  %32 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %32, i64 3
  store double 0.000000e+00, double* %arrayidx45, align 8, !tbaa !40
  %33 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds double, double* %33, i64 1
  store double 0.000000e+00, double* %arrayidx46, align 8, !tbaa !40
  br label %sw.epilog

sw.bb.47:                                         ; preds = %do.end.38
  %34 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %refs49 = bitcast %union.v* %value48 to %struct.ref_s**
  %35 = load %struct.ref_s*, %struct.ref_s** %refs49, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 3
  %36 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %call51 = call i32 @num_params(%struct.ref_s* %add.ptr50, i32 4, double* %36) #5
  store i32 %call51, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.38
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.47, %sw.bb
  %37 = load i32, i32* %code, align 4, !tbaa !21
  %cmp52 = icmp slt i32 %37, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %sw.epilog
  %38 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %sw.epilog
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.54, %sw.default, %if.then.29
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %cleanup.57

if.end.56:                                        ; preds = %do.end.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.56, %cleanup, %if.then.20, %if.then.9, %if.then.4
  %40 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.57
  br label %if.end.58

if.end.58:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.58, %cleanup.57
  %41 = bitcast %struct.ref_s** %pmdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

; Function Attrs: nounwind uwtable
define i32 @zchar_get_metrics2(%struct.gs_font_base_s* %pbfont, %struct.ref_s* %pcnref, double* %pwv) #0 {
entry:
  %retval = alloca i32, align 4
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %pcnref.addr = alloca %struct.ref_s*, align 8
  %pwv.addr = alloca double*, align 8
  %pfdict = alloca %struct.ref_s*, align 8
  %pmdict = alloca %struct.ref_s*, align 8
  %pmvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcnref, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  store double* %pwv, double** %pwv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %1) #5
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pmdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pmdict) #5
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %12 = load i16, i16* %type_attrs7, align 2, !tbaa !22
  %conv8 = zext i16 %12 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.body.5
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %do.body.5
  br label %do.cond.11

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %13 = load %struct.ref_s*, %struct.ref_s** %pmdict, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  %call13 = call i32 @dict_find(%struct.ref_s* %13, %struct.ref_s* %14, %struct.ref_s** %pmvalue) #5
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.44

if.then.16:                                       ; preds = %do.end.12
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %15 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %16 = load i16, i16* %type_attrs19, align 2, !tbaa !22
  %conv20 = zext i16 %16 to i32
  %and21 = and i32 %conv20, 16160
  %cmp22 = icmp eq i32 %and21, 1056
  br i1 %cmp22, label %if.end.31, label %if.then.24

if.then.24:                                       ; preds = %do.body.17
  %17 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %18 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %conv28 = zext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 4
  %lnot = xor i1 %cmp29, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %do.body.17
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %20 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp35 = icmp eq i32 %21, 4
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %do.end.33
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %refs = bitcast %union.v* %value38 to %struct.ref_s**
  %24 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 3
  %25 = load double*, double** %pwv.addr, align 8, !tbaa !1
  %call39 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 4, double* %25) #5
  store i32 %call39, i32* %code, align 4, !tbaa !21
  %26 = load i32, i32* %code, align 4, !tbaa !21
  %cmp40 = icmp slt i32 %26, 0
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  %27 = load i32, i32* %code, align 4, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond42 = phi i32 [ %27, %cond.true ], [ 2, %cond.false ]
  store i32 %cond42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %cleanup

if.end.43:                                        ; preds = %do.end.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %do.end.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %cond.end, %if.then.24, %if.then.9, %if.then.4
  %29 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.45

if.end.45:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %if.end.45, %cleanup
  %30 = bitcast %struct.ref_s** %pmdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @zchar_get_CDevProc(%struct.gs_font_base_s* %pbfont, %struct.ref_s** %ppcdevproc) #0 {
entry:
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %ppcdevproc.addr = alloca %struct.ref_s**, align 8
  %pfdict = alloca %struct.ref_s*, align 8
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s** %ppcdevproc, %struct.ref_s*** %ppcdevproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %1) #5
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %5 = load %struct.ref_s**, %struct.ref_s*** %ppcdevproc.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %5) #5
  %cmp = icmp sgt i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %6 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @zchar_set_cache(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_base_s* %pbfont, %struct.ref_s* %pcnref, double* %psb, double* %pwidth, %struct.gs_rect_s* %pbbox, i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %exec_cont, double* %Metrics2_sbw_default) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %pcnref.addr = alloca %struct.ref_s*, align 8
  %psb.addr = alloca double*, align 8
  %pwidth.addr = alloca double*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %Metrics2_sbw_default.addr = alloca double*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcdevproc = alloca %struct.ref_s*, align 8
  %valueref = alloca %struct.ref_s*, align 8
  %have_cdevproc = alloca i32, align 4
  %rpop = alloca %struct.ref_s, align 8
  %cid = alloca %struct.ref_s, align 8
  %cidptr = alloca %struct.ref_s*, align 8
  %metrics2 = alloca i32, align 4
  %metrics2_use_default = alloca i32, align 4
  %w2 = alloca [10 x double], align 16
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %expand = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %zsetc = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %nparams = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %code307 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcnref, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  store double* %psb, double** %psb.addr, align 8, !tbaa !1
  store double* %pwidth, double** %pwidth.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  store double* %Metrics2_sbw_default, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %valueref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %have_cdevproc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.ref_s* %rpop to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.ref_s* %cid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s** %cidptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %metrics2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %metrics2_use_default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %metrics2_use_default, align 4, !tbaa !21
  %11 = bitcast [10 x double]* %w2 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %11) #1
  %12 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %13) #5
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %14 = load double*, double** %pwidth.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %14, i64 0
  %15 = load double, double* %arrayidx, align 8, !tbaa !40
  %arrayidx1 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 0
  store double %15, double* %arrayidx1, align 8, !tbaa !40
  %16 = load double*, double** %pwidth.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %16, i64 1
  %17 = load double, double* %arrayidx2, align 8, !tbaa !40
  %arrayidx3 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 1
  store double %17, double* %arrayidx3, align 8, !tbaa !40
  %18 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %18, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p4, i32 0, i32 0
  %19 = load double, double* %x, align 8, !tbaa !41
  %arrayidx5 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 2
  store double %19, double* %arrayidx5, align 8, !tbaa !40
  %20 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %20, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 1
  %21 = load double, double* %y, align 8, !tbaa !42
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 3
  store double %21, double* %arrayidx7, align 8, !tbaa !40
  %22 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %22, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %23 = load double, double* %x8, align 8, !tbaa !43
  %arrayidx9 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 4
  store double %23, double* %arrayidx9, align 8, !tbaa !40
  %24 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %24, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q10, i32 0, i32 1
  %25 = load double, double* %y11, align 8, !tbaa !44
  %arrayidx12 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 5
  store double %25, double* %arrayidx12, align 8, !tbaa !40
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 17
  %27 = load i32, i32* %PaintType, align 4, !tbaa !45
  %cmp = icmp ne i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = bitcast double* %expand to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 0
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !46
  %call13 = call float @gs_currentmiterlimit(%struct.gs_state_s* %30) #5
  %conv = fpext float %call13 to double
  %cmp14 = fcmp ogt double 1.415000e+00, %conv
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 0
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs16, align 8, !tbaa !46
  %call17 = call float @gs_currentmiterlimit(%struct.gs_state_s* %32) #5
  %conv18 = fpext float %call17 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.415000e+00, %cond.true ], [ %conv18, %cond.false ]
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 0
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs19, align 8, !tbaa !46
  %call20 = call float @gs_currentlinewidth(%struct.gs_state_s* %34) #5
  %conv21 = fpext float %call20 to double
  %mul = fmul double %cond, %conv21
  %div = fdiv double %mul, 2.000000e+00
  store double %div, double* %expand, align 8, !tbaa !40
  %35 = load double, double* %expand, align 8, !tbaa !40
  %arrayidx22 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 2
  %36 = load double, double* %arrayidx22, align 8, !tbaa !40
  %sub = fsub double %36, %35
  store double %sub, double* %arrayidx22, align 8, !tbaa !40
  %37 = load double, double* %expand, align 8, !tbaa !40
  %arrayidx23 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 3
  %38 = load double, double* %arrayidx23, align 8, !tbaa !40
  %sub24 = fsub double %38, %37
  store double %sub24, double* %arrayidx23, align 8, !tbaa !40
  %39 = load double, double* %expand, align 8, !tbaa !40
  %arrayidx25 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 4
  %40 = load double, double* %arrayidx25, align 8, !tbaa !40
  %add = fadd double %40, %39
  store double %add, double* %arrayidx25, align 8, !tbaa !40
  %41 = load double, double* %expand, align 8, !tbaa !40
  %arrayidx26 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 5
  %42 = load double, double* %arrayidx26, align 8, !tbaa !40
  %add27 = fadd double %42, %41
  store double %add27, double* %arrayidx26, align 8, !tbaa !40
  %43 = bitcast double* %expand to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i32 0
  %add.ptr = getelementptr inbounds double, double* %arraydecay, i64 6
  %call28 = call i32 @zchar_get_metrics2(%struct.gs_font_base_s* %45, %struct.ref_s* %46, double* %add.ptr) #5
  store i32 %call28, i32* %code, align 4, !tbaa !21
  %47 = load i32, i32* %code, align 4, !tbaa !21
  %cmp29 = icmp slt i32 %47, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %48 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end
  %49 = load i32, i32* %code, align 4, !tbaa !21
  %cmp33 = icmp sgt i32 %49, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %metrics2, align 4, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.360 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %51 = load i32, i32* %metrics2, align 4, !tbaa !21
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.end.46, label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.cont
  %52 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %cmp35 = icmp ne double* %52, null
  br i1 %cmp35, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %land.lhs.true
  %53 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds double, double* %53, i64 2
  %54 = load double, double* %arrayidx38, align 8, !tbaa !40
  %arrayidx39 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 6
  store double %54, double* %arrayidx39, align 8, !tbaa !40
  %55 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %55, i64 3
  %56 = load double, double* %arrayidx40, align 8, !tbaa !40
  %arrayidx41 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 7
  store double %56, double* %arrayidx41, align 8, !tbaa !40
  %57 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %57, i64 0
  %58 = load double, double* %arrayidx42, align 8, !tbaa !40
  %arrayidx43 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 8
  store double %58, double* %arrayidx43, align 8, !tbaa !40
  %59 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds double, double* %59, i64 1
  %60 = load double, double* %arrayidx44, align 8, !tbaa !40
  %arrayidx45 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 9
  store double %60, double* %arrayidx45, align 8, !tbaa !40
  store i32 1, i32* %metrics2, align 4, !tbaa !21
  store i32 1, i32* %metrics2_use_default, align 4, !tbaa !21
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.37, %land.lhs.true, %cleanup.cont
  %61 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call47 = call i32 @zchar_get_CDevProc(%struct.gs_font_base_s* %61, %struct.ref_s** %pcdevproc) #5
  store i32 %call47, i32* %have_cdevproc, align 4, !tbaa !21
  %62 = load %struct.ref_s*, %struct.ref_s** %pcnref.addr, align 8, !tbaa !1
  store %struct.ref_s* %62, %struct.ref_s** %cidptr, align 8, !tbaa !1
  %63 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %63, i32 0, i32 11
  %64 = load i32, i32* %FontType, align 4, !tbaa !47
  %cmp48 = icmp eq i32 %64, 11
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.105

land.lhs.true.50:                                 ; preds = %if.end.46
  %65 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call51 = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %65) #5
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call51, i32 0, i32 8
  %66 = load i8*, i8** %client_data, align 8, !tbaa !29
  %67 = bitcast i8* %66 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %67, i32 0, i32 0
  %call52 = call i32 @dict_find_string(%struct.ref_s* %dict, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %valueref) #5
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.105

if.then.55:                                       ; preds = %land.lhs.true.50
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %68, i32 0, i32 21
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name, i32 0, i32 1
  %69 = load i32, i32* %size, align 4, !tbaa !48
  %70 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %70, i32 0, i32 22
  %size56 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %71 = load i32, i32* %size56, align 4, !tbaa !49
  %cmp57 = icmp ne i32 %69, %71
  br i1 %cmp57, label %if.then.90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.55
  br i1 false, label %land.lhs.true.59, label %cond.false.78

land.lhs.true.59:                                 ; preds = %lor.lhs.false
  br i1 false, label %land.lhs.true.60, label %cond.false.78

land.lhs.true.60:                                 ; preds = %land.lhs.true.59
  %72 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %font_name61 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %72, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name61, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %call63 = call i64 @strlen(i8* %arraydecay62) #6
  %73 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name64 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %73, i32 0, i32 21
  %size65 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name64, i32 0, i32 1
  %74 = load i32, i32* %size65, align 4, !tbaa !48
  %conv66 = zext i32 %74 to i64
  %cmp67 = icmp ult i64 %call63, %conv66
  br i1 %cmp67, label %cond.true.69, label %cond.false.78

cond.true.69:                                     ; preds = %land.lhs.true.60
  %75 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name70 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %77, i32 0, i32 21
  %chars71 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name70, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [48 x i8], [48 x i8]* %chars71, i32 0, i32 0
  %78 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %font_name73 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %78, i32 0, i32 22
  %chars74 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name73, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [48 x i8], [48 x i8]* %chars74, i32 0, i32 0
  %call76 = call i32 @strcmp(i8* %arraydecay72, i8* %arraydecay75) #7
  store i32 %call76, i32* %tmp, !tbaa !21
  %79 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %tmp, !tbaa !21
  %tobool77 = icmp ne i32 %81, 0
  br i1 %tobool77, label %if.then.90, label %if.end.104

cond.false.78:                                    ; preds = %land.lhs.true.60, %land.lhs.true.59, %lor.lhs.false
  %82 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name79 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %82, i32 0, i32 21
  %chars80 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name79, i32 0, i32 0
  %arraydecay81 = getelementptr inbounds [48 x i8], [48 x i8]* %chars80, i32 0, i32 0
  %83 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %font_name82 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %83, i32 0, i32 22
  %chars83 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name82, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [48 x i8], [48 x i8]* %chars83, i32 0, i32 0
  %84 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name85 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %84, i32 0, i32 21
  %size86 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name85, i32 0, i32 1
  %85 = load i32, i32* %size86, align 4, !tbaa !48
  %conv87 = zext i32 %85 to i64
  %call88 = call i32 @strncmp(i8* %arraydecay81, i8* %arraydecay84, i64 %conv87) #6
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.104

if.then.90:                                       ; preds = %cond.false.78, %cond.true.69, %if.then.55
  %86 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %86, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %87 = load i64, i64* %current_glyph, align 8, !tbaa !50
  %cmp91 = icmp uge i64 %87, 2147483648
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.then.90
  %88 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned94 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %88, i32 0, i32 28
  %current_glyph95 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned94, i32 0, i32 1
  %89 = load i64, i64* %current_glyph95, align 8, !tbaa !50
  %sub96 = sub i64 %89, 2147483648
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cid, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %sub96, i64* %intval, align 8, !tbaa !26
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cid, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !22
  br label %if.end.103

if.else:                                          ; preds = %if.then.90
  %90 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned97 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %90, i32 0, i32 28
  %current_glyph98 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned97, i32 0, i32 1
  %91 = load i64, i64* %current_glyph98, align 8, !tbaa !50
  %value99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cid, i32 0, i32 1
  %intval100 = bitcast %union.v* %value99 to i64*
  store i64 %91, i64* %intval100, align 8, !tbaa !26
  %tas101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cid, i32 0, i32 0
  %type_attrs102 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas101, i32 0, i32 0
  store i16 2816, i16* %type_attrs102, align 2, !tbaa !22
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.then.93
  store %struct.ref_s* %cid, %struct.ref_s** %cidptr, align 8, !tbaa !1
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %cond.false.78, %cond.true.69
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.50, %if.end.46
  %92 = load i32, i32* %have_cdevproc, align 4, !tbaa !21
  %tobool106 = icmp ne i32 %92, 0
  br i1 %tobool106, label %if.then.110, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.end.105
  %93 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call108 = call i32 @zchar_show_width_only(%struct.gs_text_enum_s* %93) #5
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.305

if.then.110:                                      ; preds = %lor.lhs.false.107, %if.end.105
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = bitcast i32 (%struct.gs_context_state_s*)** %zsetc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = bitcast i32* %nparams to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load i32, i32* %have_cdevproc, align 4, !tbaa !21
  %tobool114 = icmp ne i32 %97, 0
  br i1 %tobool114, label %if.then.115, label %if.else.139

if.then.115:                                      ; preds = %if.then.110
  br label %do.body

do.body:                                          ; preds = %if.then.115
  %98 = load %struct.ref_s*, %struct.ref_s** %pcdevproc, align 8, !tbaa !1
  %tas116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 0
  %type_attrs117 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas116, i32 0, i32 0
  %99 = load i16, i16* %type_attrs117, align 2, !tbaa !22
  %conv118 = zext i16 %99 to i32
  %and = and i32 %conv118, 15552
  %cmp119 = icmp eq i32 %and, 1216
  br i1 %cmp119, label %if.end.123, label %if.then.121

if.then.121:                                      ; preds = %do.body
  %100 = load %struct.ref_s*, %struct.ref_s** %pcdevproc, align 8, !tbaa !1
  %call122 = call i32 @check_proc_failed(%struct.ref_s* %100) #5
  store i32 %call122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

if.end.123:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.123
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 (%struct.gs_context_state_s*)* @zsetcachedevice2, i32 (%struct.gs_context_state_s*)** %zsetc, align 8, !tbaa !1
  %101 = load i32, i32* %metrics2, align 4, !tbaa !21
  %tobool124 = icmp ne i32 %101, 0
  br i1 %tobool124, label %lor.lhs.false.125, label %if.then.131

lor.lhs.false.125:                                ; preds = %do.end
  %102 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %102, i32 0, i32 12
  %103 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !57
  %FontType126 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %103, i32 0, i32 11
  %104 = load i32, i32* %FontType126, align 4, !tbaa !58
  %cmp127 = icmp eq i32 %104, 9
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.138

land.lhs.true.129:                                ; preds = %lor.lhs.false.125
  %105 = load i32, i32* %metrics2_use_default, align 4, !tbaa !21
  %tobool130 = icmp ne i32 %105, 0
  br i1 %tobool130, label %if.then.131, label %if.end.138

if.then.131:                                      ; preds = %land.lhs.true.129, %do.end
  %arrayidx132 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 0
  %106 = load double, double* %arrayidx132, align 8, !tbaa !40
  %arrayidx133 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 6
  store double %106, double* %arrayidx133, align 8, !tbaa !40
  %arrayidx134 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 1
  %107 = load double, double* %arrayidx134, align 8, !tbaa !40
  %arrayidx135 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 7
  store double %107, double* %arrayidx135, align 8, !tbaa !40
  %arrayidx136 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 9
  store double 0.000000e+00, double* %arrayidx136, align 8, !tbaa !40
  %arrayidx137 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 8
  store double 0.000000e+00, double* %arrayidx137, align 8, !tbaa !40
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.131, %land.lhs.true.129, %lor.lhs.false.125
  store i32 10, i32* %nparams, align 4, !tbaa !21
  br label %if.end.148

if.else.139:                                      ; preds = %if.then.110
  %value140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rpop, i32 0, i32 1
  %opproc = bitcast %union.v* %value140 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zpop, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rpop, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  store i16 3968, i16* %type_attrs142, align 2, !tbaa !22
  %tas143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rpop, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas143, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !23
  store %struct.ref_s* %rpop, %struct.ref_s** %pcdevproc, align 8, !tbaa !1
  %108 = load i32, i32* %metrics2, align 4, !tbaa !21
  %tobool144 = icmp ne i32 %108, 0
  br i1 %tobool144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.else.139
  store i32 (%struct.gs_context_state_s*)* @zsetcachedevice2, i32 (%struct.gs_context_state_s*)** %zsetc, align 8, !tbaa !1
  store i32 10, i32* %nparams, align 4, !tbaa !21
  br label %if.end.147

if.else.146:                                      ; preds = %if.else.139
  store i32 (%struct.gs_context_state_s*)* @zsetcachedevice, i32 (%struct.gs_context_state_s*)** %zsetc, align 8, !tbaa !1
  store i32 6, i32* %nparams, align 4, !tbaa !21
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %if.then.145
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.138
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 25
  %stack149 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %110 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !19
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 25
  %stack152 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack151, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack152, i32 0, i32 2
  %112 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %add.ptr153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i64 -3
  %cmp154 = icmp ugt %struct.ref_s* %110, %add.ptr153
  br i1 %cmp154, label %if.then.156, label %if.end.168

if.then.156:                                      ; preds = %if.end.148
  %113 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack158 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %114, i32 0, i32 25
  %stack159 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack158, i32 0, i32 0
  %call160 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack159, i32 3) #5
  store i32 %call160, i32* %es_code_, align 4, !tbaa !21
  %115 = load i32, i32* %es_code_, align 4, !tbaa !21
  %cmp161 = icmp slt i32 %115, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.156
  %116 = load i32, i32* %es_code_, align 4, !tbaa !21
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.end.164:                                       ; preds = %if.then.156
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %if.end.164, %if.then.163
  %117 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.302 [
    i32 0, label %cleanup.cont.167
  ]

cleanup.cont.167:                                 ; preds = %cleanup.165
  br label %if.end.168

if.end.168:                                       ; preds = %cleanup.cont.167, %if.end.148
  %118 = load double*, double** %psb.addr, align 8, !tbaa !1
  %cmp169 = icmp ne double* %118, null
  br i1 %cmp169, label %if.then.171, label %if.else.217

if.then.171:                                      ; preds = %if.end.168
  br label %do.body.172

do.body.172:                                      ; preds = %if.then.171
  %119 = load i32, i32* %nparams, align 4, !tbaa !21
  %add173 = add nsw i32 %119, 3
  %120 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = sext i32 %add173 to i64
  %add.ptr174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 %idx.ext
  store %struct.ref_s* %add.ptr174, %struct.ref_s** %op, align 8, !tbaa !1
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack175 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack176 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack175, i32 0, i32 0
  %top177 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack176, i32 0, i32 2
  %122 = load %struct.ref_s*, %struct.ref_s** %top177, align 8, !tbaa !60
  %cmp178 = icmp ugt %struct.ref_s* %add.ptr174, %122
  br i1 %cmp178, label %if.then.180, label %if.else.184

if.then.180:                                      ; preds = %do.body.172
  %123 = load i32, i32* %nparams, align 4, !tbaa !21
  %add181 = add nsw i32 %123, 3
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack182 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 26
  %stack183 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack182, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack183, i32 0, i32 7
  store i32 %add181, i32* %requested, align 4, !tbaa !61
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

if.else.184:                                      ; preds = %do.body.172
  %125 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %126 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack185 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %126, i32 0, i32 26
  %stack186 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack185, i32 0, i32 0
  %p187 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack186, i32 0, i32 0
  store %struct.ref_s* %125, %struct.ref_s** %p187, align 8, !tbaa !5
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.184
  br label %do.cond.189

do.cond.189:                                      ; preds = %if.end.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  %127 = load double*, double** %psb.addr, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds double, double* %127, i64 0
  %128 = load double, double* %arrayidx191, align 8, !tbaa !40
  %conv192 = fptrunc double %128 to float
  %129 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %130 = load i32, i32* %nparams, align 4, !tbaa !21
  %add193 = add nsw i32 %130, 2
  %idx.ext194 = sext i32 %add193 to i64
  %idx.neg = sub i64 0, %idx.ext194
  %add.ptr195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i64 %idx.neg
  %value196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr195, i32 0, i32 1
  %realval = bitcast %union.v* %value196 to float*
  store float %conv192, float* %realval, align 4, !tbaa !27
  %131 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %132 = load i32, i32* %nparams, align 4, !tbaa !21
  %add197 = add nsw i32 %132, 2
  %idx.ext198 = sext i32 %add197 to i64
  %idx.neg199 = sub i64 0, %idx.ext198
  %add.ptr200 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 %idx.neg199
  %tas201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr200, i32 0, i32 0
  %type_attrs202 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas201, i32 0, i32 0
  store i16 4096, i16* %type_attrs202, align 2, !tbaa !22
  %133 = load double*, double** %psb.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds double, double* %133, i64 1
  %134 = load double, double* %arrayidx203, align 8, !tbaa !40
  %conv204 = fptrunc double %134 to float
  %135 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %136 = load i32, i32* %nparams, align 4, !tbaa !21
  %add205 = add nsw i32 %136, 1
  %idx.ext206 = sext i32 %add205 to i64
  %idx.neg207 = sub i64 0, %idx.ext206
  %add.ptr208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i64 %idx.neg207
  %value209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr208, i32 0, i32 1
  %realval210 = bitcast %union.v* %value209 to float*
  store float %conv204, float* %realval210, align 4, !tbaa !27
  %137 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %138 = load i32, i32* %nparams, align 4, !tbaa !21
  %add211 = add nsw i32 %138, 1
  %idx.ext212 = sext i32 %add211 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i64 %idx.neg213
  %tas215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr214, i32 0, i32 0
  %type_attrs216 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas215, i32 0, i32 0
  store i16 4096, i16* %type_attrs216, align 2, !tbaa !22
  br label %if.end.239

if.else.217:                                      ; preds = %if.end.168
  br label %do.body.218

do.body.218:                                      ; preds = %if.else.217
  %139 = load i32, i32* %nparams, align 4, !tbaa !21
  %add219 = add nsw i32 %139, 1
  %140 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext220 = sext i32 %add219 to i64
  %add.ptr221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i64 %idx.ext220
  store %struct.ref_s* %add.ptr221, %struct.ref_s** %op, align 8, !tbaa !1
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack222 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %141, i32 0, i32 26
  %stack223 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack222, i32 0, i32 0
  %top224 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack223, i32 0, i32 2
  %142 = load %struct.ref_s*, %struct.ref_s** %top224, align 8, !tbaa !60
  %cmp225 = icmp ugt %struct.ref_s* %add.ptr221, %142
  br i1 %cmp225, label %if.then.227, label %if.else.232

if.then.227:                                      ; preds = %do.body.218
  %143 = load i32, i32* %nparams, align 4, !tbaa !21
  %add228 = add nsw i32 %143, 1
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack229 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 26
  %stack230 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack229, i32 0, i32 0
  %requested231 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack230, i32 0, i32 7
  store i32 %add228, i32* %requested231, align 4, !tbaa !61
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

if.else.232:                                      ; preds = %do.body.218
  %145 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack233 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 26
  %stack234 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack233, i32 0, i32 0
  %p235 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack234, i32 0, i32 0
  store %struct.ref_s* %145, %struct.ref_s** %p235, align 8, !tbaa !5
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.232
  br label %do.cond.237

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238

do.end.238:                                       ; preds = %do.cond.237
  br label %if.end.239

if.end.239:                                       ; preds = %do.end.238, %do.end.190
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.239
  %147 = load i32, i32* %i, align 4, !tbaa !21
  %148 = load i32, i32* %nparams, align 4, !tbaa !21
  %cmp240 = icmp slt i32 %147, %148
  br i1 %cmp240, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %149 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %149 to i64
  %arrayidx242 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 %idxprom
  %150 = load double, double* %arrayidx242, align 8, !tbaa !40
  %conv243 = fptrunc double %150 to float
  %151 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %152 = load i32, i32* %nparams, align 4, !tbaa !21
  %idx.ext244 = sext i32 %152 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i64 %idx.neg245
  %153 = load i32, i32* %i, align 4, !tbaa !21
  %idx.ext247 = sext i32 %153 to i64
  %add.ptr248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr246, i64 %idx.ext247
  %value249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr248, i32 0, i32 1
  %realval250 = bitcast %union.v* %value249 to float*
  store float %conv243, float* %realval250, align 4, !tbaa !27
  %154 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %155 = load i32, i32* %nparams, align 4, !tbaa !21
  %idx.ext251 = sext i32 %155 to i64
  %idx.neg252 = sub i64 0, %idx.ext251
  %add.ptr253 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i64 %idx.neg252
  %156 = load i32, i32* %i, align 4, !tbaa !21
  %idx.ext254 = sext i32 %156 to i64
  %add.ptr255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr253, i64 %idx.ext254
  %tas256 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr255, i32 0, i32 0
  %type_attrs257 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas256, i32 0, i32 0
  store i16 4096, i16* %type_attrs257, align 2, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %157 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %158 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %159 = load %struct.ref_s*, %struct.ref_s** %cidptr, align 8, !tbaa !1
  %160 = bitcast %struct.ref_s* %158 to i8*
  %161 = bitcast %struct.ref_s* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 16, i32 8, i1 false), !tbaa.struct !24
  %162 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack258 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %162, i32 0, i32 25
  %stack259 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack258, i32 0, i32 0
  %p260 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack259, i32 0, i32 0
  %163 = load %struct.ref_s*, %struct.ref_s** %p260, align 8, !tbaa !19
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p260, align 8, !tbaa !19
  %164 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %165 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack261 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %165, i32 0, i32 25
  %stack262 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack261, i32 0, i32 0
  %p263 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack262, i32 0, i32 0
  %166 = load %struct.ref_s*, %struct.ref_s** %p263, align 8, !tbaa !19
  %value264 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %166, i32 0, i32 1
  %opproc265 = bitcast %union.v* %value264 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %164, i32 (%struct.gs_context_state_s*)** %opproc265, align 8, !tbaa !1
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack266 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %167, i32 0, i32 25
  %stack267 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack266, i32 0, i32 0
  %p268 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack267, i32 0, i32 0
  %168 = load %struct.ref_s*, %struct.ref_s** %p268, align 8, !tbaa !19
  %tas269 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 0
  %type_attrs270 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas269, i32 0, i32 0
  store i16 3968, i16* %type_attrs270, align 2, !tbaa !22
  %169 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack271 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %169, i32 0, i32 25
  %stack272 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack271, i32 0, i32 0
  %p273 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack272, i32 0, i32 0
  %170 = load %struct.ref_s*, %struct.ref_s** %p273, align 8, !tbaa !19
  %tas274 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i32 0, i32 0
  %rsize275 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas274, i32 0, i32 2
  store i32 0, i32* %rsize275, align 4, !tbaa !23
  %171 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack276 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %171, i32 0, i32 25
  %stack277 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack276, i32 0, i32 0
  %p278 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack277, i32 0, i32 0
  %172 = load %struct.ref_s*, %struct.ref_s** %p278, align 8, !tbaa !19
  %incdec.ptr279 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i32 1
  store %struct.ref_s* %incdec.ptr279, %struct.ref_s** %p278, align 8, !tbaa !19
  %173 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %zsetc, align 8, !tbaa !1
  %174 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack280 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %174, i32 0, i32 25
  %stack281 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack280, i32 0, i32 0
  %p282 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack281, i32 0, i32 0
  %175 = load %struct.ref_s*, %struct.ref_s** %p282, align 8, !tbaa !19
  %value283 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 1
  %opproc284 = bitcast %union.v* %value283 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %173, i32 (%struct.gs_context_state_s*)** %opproc284, align 8, !tbaa !1
  %176 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack285 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %176, i32 0, i32 25
  %stack286 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack285, i32 0, i32 0
  %p287 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack286, i32 0, i32 0
  %177 = load %struct.ref_s*, %struct.ref_s** %p287, align 8, !tbaa !19
  %tas288 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i32 0, i32 0
  %type_attrs289 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas288, i32 0, i32 0
  store i16 3968, i16* %type_attrs289, align 2, !tbaa !22
  %178 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack290 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %178, i32 0, i32 25
  %stack291 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack290, i32 0, i32 0
  %p292 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack291, i32 0, i32 0
  %179 = load %struct.ref_s*, %struct.ref_s** %p292, align 8, !tbaa !19
  %tas293 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %179, i32 0, i32 0
  %rsize294 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas293, i32 0, i32 2
  store i32 0, i32* %rsize294, align 4, !tbaa !23
  %180 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack295 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %180, i32 0, i32 25
  %stack296 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack295, i32 0, i32 0
  %p297 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack296, i32 0, i32 0
  %181 = load %struct.ref_s*, %struct.ref_s** %p297, align 8, !tbaa !19
  %incdec.ptr298 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i32 1
  store %struct.ref_s* %incdec.ptr298, %struct.ref_s** %p297, align 8, !tbaa !19
  %182 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack299 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %182, i32 0, i32 25
  %stack300 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack299, i32 0, i32 0
  %p301 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack300, i32 0, i32 0
  %183 = load %struct.ref_s*, %struct.ref_s** %p301, align 8, !tbaa !19
  %184 = load %struct.ref_s*, %struct.ref_s** %pcdevproc, align 8, !tbaa !1
  %185 = bitcast %struct.ref_s* %183 to i8*
  %186 = bitcast %struct.ref_s* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

cleanup.302:                                      ; preds = %for.end, %if.then.227, %if.then.180, %cleanup.165, %if.then.121
  %187 = bitcast i32* %nparams to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32 (%struct.gs_context_state_s*)** %zsetc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  br label %cleanup.360

if.end.305:                                       ; preds = %lor.lhs.false.107
  %190 = bitcast i32* %code307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %metrics2, align 4, !tbaa !21
  %tobool308 = icmp ne i32 %191, 0
  br i1 %tobool308, label %cond.true.309, label %cond.false.312

cond.true.309:                                    ; preds = %if.end.305
  %192 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %arraydecay310 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i32 0
  %call311 = call i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s* %192, double* %arraydecay310) #5
  br label %cond.end.315

cond.false.312:                                   ; preds = %if.end.305
  %193 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %arraydecay313 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i32 0
  %call314 = call i32 @gs_text_setcachedevice(%struct.gs_text_enum_s* %193, double* %arraydecay313) #5
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.312, %cond.true.309
  %cond316 = phi i32 [ %call311, %cond.true.309 ], [ %call314, %cond.false.312 ]
  store i32 %cond316, i32* %code307, align 4, !tbaa !21
  %194 = load i32, i32* %code307, align 4, !tbaa !21
  %cmp317 = icmp slt i32 %194, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %cond.end.315
  %195 = load i32, i32* %code307, align 4, !tbaa !21
  store i32 %195, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.320:                                       ; preds = %cond.end.315
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %if.end.320, %if.then.319
  %196 = bitcast i32* %code307 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %cleanup.dest.322 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.322, label %cleanup.360 [
    i32 0, label %cleanup.cont.323
  ]

cleanup.cont.323:                                 ; preds = %cleanup.321
  %197 = load double*, double** %psb.addr, align 8, !tbaa !1
  %cmp324 = icmp ne double* %197, null
  br i1 %cmp324, label %if.then.326, label %if.end.359

if.then.326:                                      ; preds = %cleanup.cont.323
  br label %do.body.327

do.body.327:                                      ; preds = %if.then.326
  %198 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %198, i64 2
  store %struct.ref_s* %add.ptr328, %struct.ref_s** %op, align 8, !tbaa !1
  %199 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack329 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %199, i32 0, i32 26
  %stack330 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack329, i32 0, i32 0
  %top331 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack330, i32 0, i32 2
  %200 = load %struct.ref_s*, %struct.ref_s** %top331, align 8, !tbaa !60
  %cmp332 = icmp ugt %struct.ref_s* %add.ptr328, %200
  br i1 %cmp332, label %if.then.334, label %if.else.338

if.then.334:                                      ; preds = %do.body.327
  %201 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack335 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %201, i32 0, i32 26
  %stack336 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack335, i32 0, i32 0
  %requested337 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack336, i32 0, i32 7
  store i32 2, i32* %requested337, align 4, !tbaa !61
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.else.338:                                      ; preds = %do.body.327
  %202 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %203 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack339 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %203, i32 0, i32 26
  %stack340 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack339, i32 0, i32 0
  %p341 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack340, i32 0, i32 0
  store %struct.ref_s* %202, %struct.ref_s** %p341, align 8, !tbaa !5
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.338
  br label %do.cond.343

do.cond.343:                                      ; preds = %if.end.342
  br label %do.end.344

do.end.344:                                       ; preds = %do.cond.343
  %204 = load double*, double** %psb.addr, align 8, !tbaa !1
  %arrayidx345 = getelementptr inbounds double, double* %204, i64 0
  %205 = load double, double* %arrayidx345, align 8, !tbaa !40
  %conv346 = fptrunc double %205 to float
  %206 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr347 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %206, i64 -1
  %value348 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr347, i32 0, i32 1
  %realval349 = bitcast %union.v* %value348 to float*
  store float %conv346, float* %realval349, align 4, !tbaa !27
  %207 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr350 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %207, i64 -1
  %tas351 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr350, i32 0, i32 0
  %type_attrs352 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas351, i32 0, i32 0
  store i16 4096, i16* %type_attrs352, align 2, !tbaa !22
  %208 = load double*, double** %psb.addr, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds double, double* %208, i64 1
  %209 = load double, double* %arrayidx353, align 8, !tbaa !40
  %conv354 = fptrunc double %209 to float
  %210 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value355 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %210, i32 0, i32 1
  %realval356 = bitcast %union.v* %value355 to float*
  store float %conv354, float* %realval356, align 4, !tbaa !27
  %211 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas357 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %211, i32 0, i32 0
  %type_attrs358 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas357, i32 0, i32 0
  store i16 4096, i16* %type_attrs358, align 2, !tbaa !22
  br label %if.end.359

if.end.359:                                       ; preds = %do.end.344, %cleanup.cont.323
  %212 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %213 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %212, i32 (%struct.gs_context_state_s*)** %213, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

cleanup.360:                                      ; preds = %if.end.359, %if.then.334, %cleanup.321, %cleanup.302, %cleanup
  %214 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast [10 x double]* %w2 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %215) #1
  %216 = bitcast i32* %metrics2_use_default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %metrics2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast %struct.ref_s** %cidptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast %struct.ref_s* %cid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %219) #1
  %220 = bitcast %struct.ref_s* %rpop to i8*
  call void @llvm.lifetime.end(i64 16, i8* %220) #1
  %221 = bitcast i32* %have_cdevproc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast %struct.ref_s** %valueref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

declare %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s*) #2

declare float @gs_currentmiterlimit(%struct.gs_state_s*) #2

declare float @gs_currentlinewidth(%struct.gs_state_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @zchar_show_width_only(%struct.gs_text_enum_s*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @zsetcachedevice2(%struct.gs_context_state_s*) #2

declare i32 @zpop(%struct.gs_context_state_s*) #2

declare i32 @zsetcachedevice(%struct.gs_context_state_s*) #2

declare i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s*, double*) #2

declare i32 @gs_text_setcachedevice(%struct.gs_text_enum_s*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @zchar_charstring_data(%struct.gs_font_s* %font, %struct.ref_s* %pgref, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pgref.addr = alloca %struct.ref_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pcstr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.ref_s* %pgref, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pcstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 4
  %4 = load %struct.ref_s*, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %CharStrings, %struct.ref_s* %4, %struct.ref_s** %pcstr) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 18
  br i1 %cmp1, label %if.end.9, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 11
  %9 = load i32, i32* %FontType, align 4, !tbaa !58
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.3
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %12 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %call6 = call i32 @charstring_is_notdef_proc(%struct.gs_memory_s* %11, %struct.ref_s* %12) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call8 = call i32 @charstring_make_notdef(%struct.gs_glyph_data_s* %13, %struct.gs_font_s* %14) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.then.3
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %15 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %17 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !23
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %15, i8* %17, i32 %19, %struct.gs_font_s* null) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.else, %if.then.7, %if.then
  %20 = bitcast %struct.ref_s** %pcstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @charstring_is_notdef_proc(%struct.gs_memory_s* %mem, %struct.ref_s* %pcstr) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcstr.addr = alloca %struct.ref_s*, align 8
  %elts = alloca [4 x %struct.ref_s], align 16
  %i = alloca i64, align 8
  %nref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcstr, %struct.ref_s** %pcstr.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pcstr.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !22
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pcstr.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %3 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp3 = icmp eq i32 %3, 4
  br i1 %cmp3, label %if.then, label %if.end.74

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast [4 x %struct.ref_s]* %elts to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %i, align 8, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i64, i64* %i, align 8, !tbaa !26
  %cmp5 = icmp slt i64 %6, 4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pcstr.addr, align 8, !tbaa !1
  %9 = load i64, i64* %i, align 8, !tbaa !26
  %10 = load i64, i64* %i, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 %10
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %8, i64 %9, %struct.ref_s* %arrayidx) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8, !tbaa !26
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 0
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %12 = bitcast i16* %type_attrs9 to i8*
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx10, align 1, !tbaa !39
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.69

land.lhs.true.14:                                 ; preds = %for.end
  %arrayidx15 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %14 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx18, align 1, !tbaa !39
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.69

land.lhs.true.22:                                 ; preds = %land.lhs.true.14
  %arrayidx23 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !26
  %cmp24 = icmp eq i64 %16, 0
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.69

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %arrayidx27 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 2
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %17 = bitcast i16* %type_attrs29 to i8*
  %arrayidx30 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx30, align 1, !tbaa !39
  %conv31 = zext i8 %18 to i32
  %cmp32 = icmp eq i32 %conv31, 11
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.69

land.lhs.true.34:                                 ; preds = %land.lhs.true.26
  %arrayidx35 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 2
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx35, i32 0, i32 1
  %intval37 = bitcast %union.v* %value36 to i64*
  %19 = load i64, i64* %intval37, align 8, !tbaa !26
  %cmp38 = icmp eq i64 %19, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.69

land.lhs.true.40:                                 ; preds = %land.lhs.true.34
  %arrayidx41 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 3
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %20 = bitcast i16* %type_attrs43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx44, align 1, !tbaa !39
  %conv45 = zext i8 %21 to i32
  %cmp46 = icmp eq i32 %conv45, 13
  br i1 %cmp46, label %if.then.48, label %if.end.69

if.then.48:                                       ; preds = %land.lhs.true.40
  %22 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !64
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 16
  %25 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !67
  %call49 = call i32 @names_enter_string(%struct.name_table_s* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s* %nref) #5
  %arrayidx50 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 0
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx50, i32 0, i32 1
  %pname = bitcast %union.v* %value51 to %struct.name_s**
  %26 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %pname53 = bitcast %union.v* %value52 to %struct.name_s**
  %27 = load %struct.name_s*, %struct.name_s** %pname53, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.name_s* %26, %27
  br i1 %cmp54, label %if.then.56, label %if.end.68

if.then.56:                                       ; preds = %if.then.48
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 2
  %29 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx57, align 8, !tbaa !64
  %gs_name_table58 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %29, i32 0, i32 16
  %30 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table58, align 8, !tbaa !67
  %call59 = call i32 @names_enter_string(%struct.name_table_s* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* %nref) #5
  %arrayidx60 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %elts, i32 0, i64 3
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx60, i32 0, i32 1
  %pname62 = bitcast %union.v* %value61 to %struct.name_s**
  %31 = load %struct.name_s*, %struct.name_s** %pname62, align 8, !tbaa !1
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %pname64 = bitcast %union.v* %value63 to %struct.name_s**
  %32 = load %struct.name_s*, %struct.name_s** %pname64, align 8, !tbaa !1
  %cmp65 = icmp eq %struct.name_s* %31, %32
  br i1 %cmp65, label %if.then.67, label %if.end

if.then.67:                                       ; preds = %if.then.56
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end, %if.then.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.67
  %33 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.69

if.end.69:                                        ; preds = %cleanup.cont, %land.lhs.true.40, %land.lhs.true.34, %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.14, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.69, %cleanup
  %34 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast [4 x %struct.ref_s]* %elts to i8*
  call void @llvm.lifetime.end(i64 64, i8* %35) #1
  %cleanup.dest.72 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.72, label %unreachable [
    i32 0, label %cleanup.cont.73
    i32 1, label %return
  ]

cleanup.cont.73:                                  ; preds = %cleanup.70
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont.73, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %cleanup.70
  %36 = load i32, i32* %retval
  ret i32 %36

unreachable:                                      ; preds = %cleanup.70
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @charstring_make_notdef(%struct.gs_glyph_data_s* %pgd, %struct.gs_font_s* %font) #0 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %len = alloca i32, align 4
  %chars = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %state = alloca i16, align 2
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %5 = load i32, i32* %lenIV, align 4, !tbaa !69
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 29
  %lenIV2 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 4
  %7 = load i32, i32* %lenIV2, align 4, !tbaa !69
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  %conv = sext i32 %cond to i64
  %add = add i64 %conv, 4
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %len, align 4, !tbaa !21
  %8 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !74
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !63
  %14 = load i32, i32* %len, align 4, !tbaa !21
  %call = call i8* %11(%struct.gs_memory_s* %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call, i8** %chars, align 8, !tbaa !1
  %15 = load i8*, i8** %chars, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %15, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %16 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %chars, align 8, !tbaa !1
  %18 = load i32, i32* %len, align 4, !tbaa !21
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %16, i8* %17, i32 %18, %struct.gs_font_s* %19) #5
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %20, i32 0, i32 29
  %lenIV8 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data7, i32 0, i32 4
  %21 = load i32, i32* %lenIV8, align 4, !tbaa !69
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %22 = load i8*, i8** %chars, align 8, !tbaa !1
  %call12 = call i8* @memcpy(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @charstring_make_notdef.char_data, i32 0, i32 0), i64 4) #7
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %23 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 4330, i16* %state, align 2, !tbaa !25
  %24 = load i8*, i8** %chars, align 8, !tbaa !1
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %25, i32 0, i32 29
  %lenIV14 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data13, i32 0, i32 4
  %26 = load i32, i32* %lenIV14, align 4, !tbaa !69
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %call15 = call i8* @memcpy(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @charstring_make_notdef.char_data, i32 0, i32 0), i64 4) #7
  %27 = load i8*, i8** %chars, align 8, !tbaa !1
  %28 = load i8*, i8** %chars, align 8, !tbaa !1
  %29 = load i32, i32* %len, align 4, !tbaa !21
  %call16 = call i32 @gs_type1_encrypt(i8* %27, i8* %28, i32 %29, i16* %state) #5
  %30 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %31 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zchar_enumerate_glyph(%struct.gs_memory_s* %mem, %struct.ref_s* %prdict, i32* %pindex, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %prdict.addr = alloca %struct.ref_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pglyph.addr = alloca i64*, align 8
  %index = alloca i32, align 4
  %elt = alloca [2 x %struct.ref_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %prdict, %struct.ref_s** %prdict.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !21
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %index, align 4, !tbaa !21
  %3 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %prdict.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %index, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %prdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_first(%struct.ref_s* %8) #5
  store i32 %call, i32* %index, align 4, !tbaa !21
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %next

next:                                             ; preds = %sw.default, %if.end.5
  %9 = load %struct.ref_s*, %struct.ref_s** %prdict.addr, align 8, !tbaa !1
  %10 = load i32, i32* %index, align 4, !tbaa !21
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %call6 = call i32 @dict_next(%struct.ref_s* %9, i32 %10, %struct.ref_s* %arraydecay) #5
  store i32 %call6, i32* %index, align 4, !tbaa !21
  %11 = load i32, i32* %index, align 4, !tbaa !21
  %add = add nsw i32 %11, 1
  %12 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %add, i32* %12, align 4, !tbaa !21
  %13 = load i32, i32* %index, align 4, !tbaa !21
  %cmp7 = icmp sge i32 %13, 0
  br i1 %cmp7, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %next
  %arraydecay10 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %14 = bitcast i16* %type_attrs12 to i8*
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx13, align 1, !tbaa !39
  %conv14 = zext i8 %15 to i32
  switch i32 %conv14, label %sw.default [
    i32 11, label %sw.bb
    i32 13, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.then.9
  %arrayidx15 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !26
  %add16 = add i64 2147483648, %16
  %17 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add16, i64* %17, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.9
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !64
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 16
  %20 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !67
  %arraydecay18 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %call19 = call i32 @names_index(%struct.name_table_s* %20, %struct.ref_s* %arraydecay18) #5
  %conv20 = zext i32 %call19 to i64
  %21 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %conv20, i64* %21, align 8, !tbaa !26
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.9
  br label %next

sw.epilog:                                        ; preds = %sw.bb.17, %sw.bb
  br label %if.end.21

if.end.21:                                        ; preds = %sw.epilog, %next
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then
  %22 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %22) #1
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gs_type1_encrypt(i8*, i8*, i32, i16*) #2

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
!19 = !{!6, !2, i64 520}
!20 = !{!6, !2, i64 536}
!21 = !{!9, !9, i64 0}
!22 = !{!10, !12, i64 0}
!23 = !{!10, !9, i64 4}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 4, i64 4, !21, i64 8, i64 8, !26, i64 8, i64 2, !25, i64 8, i64 4, !27, i64 8, i64 8, !26, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !26}
!25 = !{!12, !12, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!30, !2, i64 72}
!30 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !31, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !32, i64 80, !32, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !28, i64 156, !9, i64 160, !33, i64 168, !34, i64 272, !34, i64 324, !35, i64 376, !38, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!31 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!32 = !{!"gs_matrix_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!33 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!34 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!35 = !{!"gs_rect_s", !36, i64 0, !36, i64 16}
!36 = !{!"gs_point_s", !37, i64 0, !37, i64 8}
!37 = !{!"double", !3, i64 0}
!38 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!39 = !{!3, !3, i64 0}
!40 = !{!37, !37, i64 0}
!41 = !{!35, !37, i64 0}
!42 = !{!35, !37, i64 8}
!43 = !{!35, !37, i64 16}
!44 = !{!35, !37, i64 24}
!45 = !{!30, !9, i64 152}
!46 = !{!6, !2, i64 0}
!47 = !{!30, !3, i64 128}
!48 = !{!30, !9, i64 320}
!49 = !{!30, !9, i64 372}
!50 = !{!51, !13, i64 424}
!51 = !{!"gs_text_enum_s", !52, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !53, i64 160, !2, i64 184, !2, i64 192, !13, i64 200, !9, i64 208, !54, i64 212, !2, i64 224, !9, i64 232, !9, i64 236, !55, i64 240, !9, i64 344, !9, i64 348, !9, i64 352, !36, i64 360, !13, i64 376, !9, i64 384, !54, i64 388, !36, i64 400, !56, i64 416}
!52 = !{!"gs_text_params_s", !9, i64 0, !3, i64 8, !9, i64 16, !36, i64 24, !36, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !9, i64 80}
!53 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!54 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!55 = !{!"gx_font_stack_s", !9, i64 0, !3, i64 8}
!56 = !{!"gs_text_returned_s", !13, i64 0, !13, i64 8, !36, i64 16}
!57 = !{!51, !2, i64 192}
!58 = !{!59, !3, i64 128}
!59 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !31, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !32, i64 80, !32, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !28, i64 156, !9, i64 160, !33, i64 168, !34, i64 272, !34, i64 324}
!60 = !{!6, !2, i64 640}
!61 = !{!6, !9, i64 688}
!62 = !{!59, !2, i64 72}
!63 = !{!59, !2, i64 16}
!64 = !{!65, !2, i64 192}
!65 = !{!"gs_memory_s", !2, i64 0, !66, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!66 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!67 = !{!68, !2, i64 120}
!68 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!69 = !{!70, !9, i64 512}
!70 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !31, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !32, i64 80, !32, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !28, i64 156, !9, i64 160, !33, i64 168, !34, i64 272, !34, i64 324, !35, i64 376, !38, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !71, i64 448}
!71 = !{!"gs_type1_data_s", !72, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !13, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !28, i64 100, !28, i64 104, !73, i64 108, !28, i64 168, !9, i64 172, !73, i64 176, !73, i64 236, !9, i64 280, !73, i64 284, !9, i64 328, !73, i64 332, !73, i64 340, !73, i64 348, !73, i64 400, !73, i64 452, !3, i64 520, !9, i64 536}
!72 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!73 = !{!"", !9, i64 0, !3, i64 4}
!74 = !{!65, !2, i64 136}
