; ModuleID = './zbfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
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
%union.anon = type { %struct.gs_device_n_params_s }
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
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [10 x i8] c"font_data\00", align 1
@st_font_data = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @font_data_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_data_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_data_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"j%ld\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"2.buildfont3\00", align 1
@zbfont_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont3 }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"BuildChar\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BuildGlyph\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@build_gs_FDArray_font.bbox = internal constant [4 x double] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"StrokeWidth\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"FontInfo\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"GlyphNames2Unicode\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"build_gs_font\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"WMode\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"BitmapWidths\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"ExactSize\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"InBetweenSize\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"TransformedChar\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@gs_font_procs_default = external constant %struct.gs_font_procs_s, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"buildfont(font)\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"buildfont(data)\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"CIDCount\00", align 1
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"Metrics\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Metrics2\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"OrigFont\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"OrigFontName\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"OrigFontStyle\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"sub_font_params\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c".Alias\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: nounwind uwtable
define internal void @font_data_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  call void @ref_struct_clear_marks(%struct.gs_memory_s* %0, i8* %1, i32 ptrtoint (i32* getelementptr inbounds (%struct.font_data_s, %struct.font_data_s* null, i32 0, i32 6, i32 0, i32 3) to i32), %struct.gs_memory_struct_type_s* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_data_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %index.addr, align 4, !tbaa !5
  %3 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s* %0, i8* %1, i32 ptrtoint (i32* getelementptr inbounds (%struct.font_data_s, %struct.font_data_s* null, i32 0, i32 6, i32 0, i32 3) to i32), i32 %2, %struct.enum_ptr_s* %3, %struct.gs_memory_struct_type_s* %4, %struct.gc_state_s* %5) #5
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @font_data_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %2 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @ref_struct_reloc_ptrs(i8* %0, i32 ptrtoint (i32* getelementptr inbounds (%struct.font_data_s, %struct.font_data_s* null, i32 0, i32 6, i32 0, i32 3) to i32), %struct.gs_memory_struct_type_s* %1, %struct.gc_state_s* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @zfont_encode_char(%struct.gs_font_s* %pfont, i64 %chr, i32 %gspace) #0 {
entry:
  %retval = alloca i64, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %gspace.addr = alloca i32, align 4
  %pdata = alloca %struct.font_data_s*, align 8
  %pencoding = alloca %struct.ref_s*, align 8
  %index = alloca i64, align 8
  %cname = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nsref = alloca %struct.ref_s, align 8
  %tname = alloca %struct.ref_s, align 8
  %buf = alloca [20 x i8], align 16
  %code22 = alloca i32, align 4
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !7
  store i32 %gspace, i32* %gspace.addr, align 4, !tbaa !9
  %0 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 3
  store %struct.ref_s* %Encoding, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %6 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i64, i64* %chr.addr, align 8, !tbaa !7
  store i64 %7, i64* %index, align 8, !tbaa !7
  %8 = bitcast %struct.ref_s* %cname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %12 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %13 = load i64, i64* %index, align 8, !tbaa !7
  %call = call i32 @array_get(%struct.gs_memory_s* %11, %struct.ref_s* %12, i64 %13, %struct.ref_s* %cname) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %16 to i32
  %cmp1 = icmp eq i32 %conv, 13
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 11
  %18 = load i32, i32* %FontType, align 4, !tbaa !18
  %cmp3 = icmp eq i32 %18, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %19, i32 0, i32 2
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %20 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx7, align 1, !tbaa !9
  %conv8 = zext i8 %21 to i32
  %cmp9 = icmp eq i32 %conv8, 14
  br i1 %cmp9, label %if.then.11, label %if.end.46

if.then.11:                                       ; preds = %land.lhs.true
  %22 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast %struct.ref_s* %tname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 2
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !17
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 2
  %26 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %26, i32 0, i32 16
  %27 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  call void @names_string_ref(%struct.name_table_s* %27, %struct.ref_s* %cname, %struct.ref_s* %nsref) #5
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %28 = load i32, i32* %rsize, align 4, !tbaa !24
  %cmp14 = icmp eq i32 %28, 7
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.41

land.lhs.true.16:                                 ; preds = %if.then.11
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %29 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %30 = load i32, i32* %rsize18, align 4, !tbaa !24
  %conv19 = zext i32 %30 to i64
  %call20 = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 %conv19) #6
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end.41, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.16
  %31 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %31) #1
  %32 = bitcast i32* %code22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %gspace.addr, align 4, !tbaa !9
  %cmp23 = icmp eq i32 %33, 2
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i64 2147483647, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.21
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %34 = load i64, i64* %chr.addr, align 8, !tbaa !7
  %call27 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %34) #5
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %35, i32 0, i32 2
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !17
  %gs_lib_ctx29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 2
  %37 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx29, align 8, !tbaa !19
  %gs_name_table30 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %37, i32 0, i32 16
  %38 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table30, align 8, !tbaa !22
  %arraydecay31 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #6
  %conv34 = trunc i64 %call33 to i32
  %call35 = call i32 @names_ref(%struct.name_table_s* %38, i8* %arraydecay31, i32 %conv34, %struct.ref_s* %tname, i32 1) #5
  store i32 %call35, i32* %code22, align 4, !tbaa !5
  %39 = load i32, i32* %code22, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %39, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.26
  br label %if.end.39

if.else:                                          ; preds = %if.end.26
  %40 = bitcast %struct.ref_s* %cname to i8*
  %41 = bitcast %struct.ref_s* %tname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.25
  %42 = bitcast i32* %code22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont, %land.lhs.true.16, %if.then.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %if.end.41, %cleanup
  %44 = bitcast %struct.ref_s* %tname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %cleanup.53 [
    i32 0, label %cleanup.cont.45
  ]

cleanup.cont.45:                                  ; preds = %cleanup.42
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont.45, %land.lhs.true, %if.end
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 1
  %pname = bitcast %union.v* %value47 to %struct.name_s**
  %46 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 0
  %rsize49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 2
  %47 = load i32, i32* %rsize49, align 4, !tbaa !24
  %and = and i32 %47, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %46, i64 %idx.neg
  %48 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %48, i32 0, i32 1
  %49 = load i32, i32* %high_index, align 4, !tbaa !31
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 0
  %rsize51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  %50 = load i32, i32* %rsize51, align 4, !tbaa !24
  %add = add i32 %49, %50
  %conv52 = zext i32 %add to i64
  store i64 %conv52, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.46, %cleanup.42, %if.then
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.ref_s* %cname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  %53 = bitcast i64* %index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i64, i64* %retval
  ret i64 %56
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @gs_font_map_glyph_to_unicode(%struct.gs_font_s* %font, i64 %glyph, i32 %ch) #0 {
entry:
  %retval = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  %pdata = alloca %struct.font_data_s*, align 8
  %UnicodeDecoding = alloca %struct.ref_s*, align 8
  %c = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct.ref_s*, align 8
  %n = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %c25 = alloca i64, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !7
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  %0 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %UnicodeDecoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %GlyphNames2Unicode = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphNames2Unicode, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %entry
  %8 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %11 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %GlyphNames2Unicode2 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %11, i32 0, i32 5
  %12 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %call = call i64 @gs_font_map_glyph_by_dict(%struct.gs_memory_s* %10, %struct.ref_s* %GlyphNames2Unicode2, i64 %12) #5
  store i64 %call, i64* %c, align 8, !tbaa !7
  %13 = load i64, i64* %c, align 8, !tbaa !7
  %cmp3 = icmp ne i64 %13, -1
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load i64, i64* %c, align 8, !tbaa !7
  store i64 %14, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %if.then
  %15 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %15, -1
  br i1 %cmp6, label %if.then.8, label %if.end.44

if.then.8:                                        ; preds = %if.end
  %16 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %conv9 = sext i32 %18 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv9, i64* %intval, align 8, !tbaa !7
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 2816, i16* %type_attrs11, align 2, !tbaa !33
  %19 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %GlyphNames2Unicode12 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %19, i32 0, i32 5
  %call13 = call i32 @dict_find(%struct.ref_s* %GlyphNames2Unicode12, %struct.ref_s* %n, %struct.ref_s** %v) #5
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.42

if.then.16:                                       ; preds = %if.then.8
  %20 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %21 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx19, align 1, !tbaa !9
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 18
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.then.16
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 2
  %26 = load i32, i32* %rsize, align 4, !tbaa !24
  store i32 %26, i32* %l, align 4, !tbaa !5
  %27 = bitcast i64* %c25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64 0, i64* %c25, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load i32, i32* %l, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %28, %29
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64, i64* %c25, align 8, !tbaa !7
  %shl = shl i64 %30, 8
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value28 to i8**
  %33 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx29, align 1, !tbaa !9
  %conv30 = zext i8 %34 to i64
  %or = or i64 %shl, %conv30
  store i64 %or, i64* %c25, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64, i64* %c25, align 8, !tbaa !7
  store i64 %36, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast i64* %c25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %cleanup

if.end.31:                                        ; preds = %if.then.16
  %40 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %41 = bitcast i16* %type_attrs33 to i8*
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx34, align 1, !tbaa !9
  %conv35 = zext i8 %42 to i32
  %cmp36 = icmp eq i32 %conv35, 11
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.31
  %43 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %intval40 = bitcast %union.v* %value39 to i64*
  %44 = load i64, i64* %intval40, align 8, !tbaa !7
  store i64 %44, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.38, %for.end
  %45 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %46 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.44

if.end.44:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %cleanup, %if.then.5
  %47 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.46, label %cleanup.66 [
    i32 0, label %cleanup.cont.47
  ]

cleanup.cont.47:                                  ; preds = %cleanup.45
  br label %if.end.48

if.end.48:                                        ; preds = %cleanup.cont.47, %entry
  %48 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %cmp49 = icmp ule i64 %48, 2147483648
  br i1 %cmp49, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %if.end.48
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %49, i32 0, i32 3
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !34
  %call52 = call %struct.ref_s* @zfont_get_to_unicode_map(%struct.gs_font_dir_s* %50) #5
  store %struct.ref_s* %call52, %struct.ref_s** %UnicodeDecoding, align 8, !tbaa !1
  %51 = load %struct.ref_s*, %struct.ref_s** %UnicodeDecoding, align 8, !tbaa !1
  %cmp53 = icmp ne %struct.ref_s* %51, null
  br i1 %cmp53, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.then.51
  %52 = load %struct.ref_s*, %struct.ref_s** %UnicodeDecoding, align 8, !tbaa !1
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %53 = bitcast i16* %type_attrs56 to i8*
  %arrayidx57 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx57, align 1, !tbaa !9
  %conv58 = zext i8 %54 to i32
  %cmp59 = icmp eq i32 %conv58, 2
  br i1 %cmp59, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %land.lhs.true
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %55, i32 0, i32 2
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !17
  %57 = load %struct.ref_s*, %struct.ref_s** %UnicodeDecoding, align 8, !tbaa !1
  %58 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %call63 = call i64 @gs_font_map_glyph_by_dict(%struct.gs_memory_s* %56, %struct.ref_s* %57, i64 %58) #5
  store i64 %call63, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end.64:                                        ; preds = %land.lhs.true, %if.then.51
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.48
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.65, %if.then.61, %cleanup.45
  %59 = bitcast %struct.ref_s** %UnicodeDecoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i64, i64* %retval
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define internal i64 @gs_font_map_glyph_by_dict(%struct.gs_memory_s* %mem, %struct.ref_s* %map, i64 %glyph) #0 {
entry:
  %retval = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %map.addr = alloca %struct.ref_s*, align 8
  %glyph.addr = alloca i64, align 8
  %v = alloca %struct.ref_s*, align 8
  %n = alloca %struct.ref_s, align 8
  %cid = alloca i32, align 4
  %vv = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %c = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %map, %struct.ref_s** %map.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !7
  %0 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %cmp = icmp uge i64 %2, 2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %sub = sub i64 %4, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !5
  %5 = load %struct.ref_s*, %struct.ref_s** %map.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct.ref_s** %v) #5
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %cid, align 4, !tbaa !5
  %div = udiv i32 %6, 256
  %conv4 = zext i32 %div to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv4, i64* %intval, align 8, !tbaa !7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !33
  %7 = load %struct.ref_s*, %struct.ref_s** %map.addr, align 8, !tbaa !1
  %call5 = call i32 @dict_find(%struct.ref_s* %7, %struct.ref_s* %n, %struct.ref_s** %v) #5
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.then.3
  %8 = bitcast %struct.ref_s* %vv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %11 = load i32, i32* %cid, align 4, !tbaa !5
  %rem = urem i32 %11, 256
  %conv9 = zext i32 %rem to i64
  %call10 = call i32 @array_get(%struct.gs_memory_s* %9, %struct.ref_s* %10, i64 %conv9, %struct.ref_s* %vv) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.8
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vv, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %12 = bitcast i16* %type_attrs14 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv15 = zext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 11
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vv, i32 0, i32 1
  %intval20 = bitcast %union.v* %value19 to i64*
  %14 = load i64, i64* %intval20, align 8, !tbaa !7
  store i64 %14, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.18
  %15 = bitcast %struct.ref_s* %vv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %if.then.3
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

if.end.22:                                        ; preds = %if.then
  %16 = load i32, i32* %cid, align 4, !tbaa !5
  %conv23 = zext i32 %16 to i64
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  store i64 %conv23, i64* %intval25, align 8, !tbaa !7
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 2816, i16* %type_attrs27, align 2, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %if.end.22, %if.end.21, %cleanup
  %17 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.29, label %cleanup.65 [
    i32 0, label %cleanup.cont.30
  ]

cleanup.cont.30:                                  ; preds = %cleanup.28
  br label %if.end.32

if.else:                                          ; preds = %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 16
  %20 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %21 = load i64, i64* %glyph.addr, align 8, !tbaa !7
  %conv31 = trunc i64 %21 to i32
  call void @names_index_ref(%struct.name_table_s* %20, i32 %conv31, %struct.ref_s* %n) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %cleanup.cont.30
  %22 = load %struct.ref_s*, %struct.ref_s** %map.addr, align 8, !tbaa !1
  %call33 = call i32 @dict_find(%struct.ref_s* %22, %struct.ref_s* %n, %struct.ref_s** %v) #5
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.64

if.then.36:                                       ; preds = %if.end.32
  %23 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  %24 = bitcast i16* %type_attrs38 to i8*
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx39, align 1, !tbaa !9
  %conv40 = zext i8 %25 to i32
  %cmp41 = icmp eq i32 %conv40, 18
  br i1 %cmp41, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.then.36
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  %29 = load i32, i32* %rsize, align 4, !tbaa !24
  store i32 %29, i32* %l, align 4, !tbaa !5
  %30 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64 0, i64* %c, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %l, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %31, %32
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i64, i64* %c, align 8, !tbaa !7
  %shl = shl i64 %33, 8
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value47 to i8**
  %36 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx48, align 1, !tbaa !9
  %conv49 = zext i8 %37 to i64
  %or = or i64 %shl, %conv49
  store i64 %or, i64* %c, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i64, i64* %c, align 8, !tbaa !7
  store i64 %39, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %40 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %cleanup.65

if.end.53:                                        ; preds = %if.then.36
  %43 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 0
  %44 = bitcast i16* %type_attrs55 to i8*
  %arrayidx56 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx56, align 1, !tbaa !9
  %conv57 = zext i8 %45 to i32
  %cmp58 = icmp eq i32 %conv57, 11
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.53
  %46 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %intval62 = bitcast %union.v* %value61 to i64*
  %47 = load i64, i64* %intval62, align 8, !tbaa !7
  store i64 %47, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.63:                                        ; preds = %if.end.53
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.32
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %if.then.60, %for.end, %cleanup.28
  %48 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i64, i64* %retval
  ret i64 %50
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare %struct.ref_s* @zfont_get_to_unicode_map(%struct.gs_font_dir_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont3(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %build = alloca %struct.build_proc_refs_s, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !35
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @build_gs_font_procs(%struct.ref_s* %10, %struct.build_proc_refs_s* %build) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @build_gs_simple_font(%struct.gs_context_state_s* %13, %struct.ref_s* %14, %struct.gs_font_base_s** %pfont, i32 3, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.build_proc_refs_s* %build, i32 0) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_base_s* %18 to %struct.gs_font_s*
  %call12 = call i32 @define_gs_font(%struct.gs_context_state_s* %17, %struct.gs_font_s* %19) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %20 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @build_proc_name_refs(%struct.gs_memory_s* %mem, %struct.build_proc_refs_s* %pbuild, i8* %bcstr, i8* %bgstr) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %bcstr.addr = alloca i8*, align 8
  %bgstr.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i8* %bcstr, i8** %bcstr.addr, align 8, !tbaa !1
  store i8* %bgstr, i8** %bgstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %bcstr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %2, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !33
  br label %if.end.10

if.else:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 16
  %5 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %6 = load i8*, i8** %bcstr.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %bcstr.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %7) #6
  %conv = trunc i64 %call to i32
  %8 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar1 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %8, i32 0, i32 0
  %call2 = call i32 @names_ref(%struct.name_table_s* %5, i8* %6, i32 %conv, %struct.ref_s* %BuildChar1, i32 0) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %10 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar5 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %10, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %11 = load i16, i16* %type_attrs7, align 2, !tbaa !33
  %conv8 = zext i16 %11 to i32
  %or = or i32 %conv8, 128
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %type_attrs7, align 2, !tbaa !33
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %12 = load i8*, i8** %bgstr.addr, align 8, !tbaa !1
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %if.else.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %13, i32 0, i32 1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  store i16 3584, i16* %type_attrs14, align 2, !tbaa !33
  br label %if.end.32

if.else.15:                                       ; preds = %if.end.10
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 2
  %15 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx16, align 8, !tbaa !19
  %gs_name_table17 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %15, i32 0, i32 16
  %16 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table17, align 8, !tbaa !22
  %17 = load i8*, i8** %bgstr.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %bgstr.addr, align 8, !tbaa !1
  %call18 = call i64 @strlen(i8* %18) #6
  %conv19 = trunc i64 %call18 to i32
  %19 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph20 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %19, i32 0, i32 1
  %call21 = call i32 @names_ref(%struct.name_table_s* %16, i8* %17, i32 %conv19, %struct.ref_s* %BuildGlyph20, i32 0) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.15
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else.15
  %21 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph26 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %21, i32 0, i32 1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %22 = load i16, i16* %type_attrs28, align 2, !tbaa !33
  %conv29 = zext i16 %22 to i32
  %or30 = or i32 %conv29, 128
  %conv31 = trunc i32 %or30 to i16
  store i16 %conv31, i16* %type_attrs28, align 2, !tbaa !33
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.25, %if.then.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.24, %if.then.4
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @build_gs_font_procs(%struct.ref_s* %op, %struct.build_proc_refs_s* %pbuild) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %ccode = alloca i32, align 4
  %gcode = alloca i32, align 4
  %pBuildChar = alloca %struct.ref_s*, align 8
  %pBuildGlyph = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %gcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pBuildChar to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s** %pBuildGlyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pBuildChar) #5
  store i32 %call2, i32* %ccode, align 4, !tbaa !5
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call3 = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %pBuildGlyph) #5
  store i32 %call3, i32* %gcode, align 4, !tbaa !5
  %10 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %10, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %gcode, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %11, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  %12 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %12, i32 0, i32 0
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 3584, i16* %type_attrs12, align 2, !tbaa !33
  br label %if.end.22

if.else:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else
  %13 = load %struct.ref_s*, %struct.ref_s** %pBuildChar, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %14 = load i16, i16* %type_attrs14, align 2, !tbaa !33
  %conv15 = zext i16 %14 to i32
  %and = and i32 %conv15, 15552
  %cmp16 = icmp eq i32 %and, 1216
  br i1 %cmp16, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %do.body
  %15 = load %struct.ref_s*, %struct.ref_s** %pBuildChar, align 8, !tbaa !1
  %call19 = call i32 @check_proc_failed(%struct.ref_s* %15) #5
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar21 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %16, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %pBuildChar, align 8, !tbaa !1
  %18 = bitcast %struct.ref_s* %BuildChar21 to i8*
  %19 = bitcast %struct.ref_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %if.end.10
  %20 = load i32, i32* %gcode, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %20, 0
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.22
  %21 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %21, i32 0, i32 1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 3584, i16* %type_attrs27, align 2, !tbaa !33
  br label %if.end.42

if.else.28:                                       ; preds = %if.end.22
  br label %do.body.29

do.body.29:                                       ; preds = %if.else.28
  %22 = load %struct.ref_s*, %struct.ref_s** %pBuildGlyph, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %23 = load i16, i16* %type_attrs31, align 2, !tbaa !33
  %conv32 = zext i16 %23 to i32
  %and33 = and i32 %conv32, 15552
  %cmp34 = icmp eq i32 %and33, 1216
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %do.body.29
  %24 = load %struct.ref_s*, %struct.ref_s** %pBuildGlyph, align 8, !tbaa !1
  %call37 = call i32 @check_proc_failed(%struct.ref_s* %24) #5
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.body.29
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %25 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph41 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %25, i32 0, i32 1
  %26 = load %struct.ref_s*, %struct.ref_s** %pBuildGlyph, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %BuildGlyph41 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.40, %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.36, %if.then.18, %if.then.9, %if.then
  %29 = bitcast %struct.ref_s** %pBuildGlyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.ref_s** %pBuildChar to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %gcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @build_gs_primitive_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_base_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_base_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %options.addr = alloca i32, align 4
  %pcharstrings = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ignore = alloca %struct.ref_s*, align 8
  %pfont0 = alloca %struct.gs_font_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s** %ppfont, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !9
  %0 = bitcast %struct.ref_s** %pcharstrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.ref_s* null, %struct.ref_s** %pcharstrings, align 8, !tbaa !1
  %1 = bitcast %struct.ref_s* %CharStrings to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s** %pcharstrings) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %options.addr, align 4, !tbaa !9
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end:                                           ; preds = %if.then
  br label %if.end.14

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.ref_s** %ignore to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %10 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.else
  %11 = load i32, i32* %options.addr, align 4, !tbaa !9
  %and6 = and i32 %11, 16
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.5
  %12 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8, !tbaa !1
  %call9 = call i32 @dict_find_string(%struct.ref_s* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %ignore) #5
  %cmp10 = icmp sle i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %land.lhs.true, %if.end.5
  %13 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %CharStrings to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.4
  %16 = bitcast %struct.ref_s** %ignore to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %20 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %21 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %22 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %23 = load i32, i32* %options.addr, align 4, !tbaa !9
  %call15 = call i32 @build_gs_outline_font(%struct.gs_context_state_s* %17, %struct.ref_s* %18, %struct.gs_font_base_s** %19, i32 %20, %struct.gs_memory_struct_type_s* %21, %struct.build_proc_refs_s* %22, i32 %23, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)* @build_gs_simple_font) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %24, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.19:                                        ; preds = %if.end.14
  %26 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %26, align 8, !tbaa !1
  store %struct.gs_font_base_s* %27, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %28 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %28, i32 0, i32 8
  %29 = load i8*, i8** %client_data, align 8, !tbaa !44
  %30 = bitcast i8* %29 to %struct.font_data_s*
  store %struct.font_data_s* %30, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8, !tbaa !1
  %tobool20 = icmp ne %struct.ref_s* %31, null
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.19
  %32 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %CharStrings22 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %32, i32 0, i32 4
  %33 = bitcast %struct.ref_s* %CharStrings22 to i8*
  %34 = bitcast %struct.ref_s* %CharStrings to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.27

if.else.23:                                       ; preds = %if.end.19
  %35 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %CharStrings24 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %35, i32 0, i32 4
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %CharStrings24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 3584, i16* %type_attrs26, align 2, !tbaa !33
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.21
  %36 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %36, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %37 = load i64, i64* %id, align 8, !tbaa !50
  %cmp28 = icmp ne i64 %37, 9223372036854775807
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %if.end.27
  %38 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %39 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID31 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %39, i32 0, i32 24
  %call32 = call i32 @dict_check_uid_param(%struct.ref_s* %38, %struct.gs_uid_s* %UID31) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.38, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.30
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID35 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %40, i32 0, i32 24
  %id36 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID35, i32 0, i32 0
  store i64 9223372036854775807, i64* %id36, align 8, !tbaa !50
  %41 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %41, i32 0, i32 24
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID37, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !51
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %land.lhs.true.30, %if.end.27
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID39 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %42, i32 0, i32 24
  %id40 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID39, i32 0, i32 0
  %43 = load i64, i64* %id40, align 8, !tbaa !50
  %cmp41 = icmp ne i64 %43, 9223372036854775807
  br i1 %cmp41, label %if.then.43, label %if.end.60

if.then.43:                                       ; preds = %if.end.38
  %44 = bitcast %struct.gs_font_s** %pfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %46 = bitcast %struct.gs_font_base_s* %45 to %struct.gs_font_s*
  store %struct.gs_font_s* %46, %struct.gs_font_s** %pfont0, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !52
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %call44 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %49) #5
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call44, i32 0, i32 22
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !53
  %call45 = call i32 @gs_font_find_similar(%struct.gs_font_dir_s* %50, %struct.gs_font_s** %pfont0, i32 (%struct.gs_font_s*, %struct.gs_font_s*)* @font_with_same_UID_and_another_metrics) #5
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %51, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.43
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end.49:                                        ; preds = %if.then.43
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %53, 0
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.49
  %54 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID52 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %54, i32 0, i32 24
  %id53 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID52, i32 0, i32 0
  store i64 9223372036854775807, i64* %id53, align 8, !tbaa !50
  %55 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %UID54 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %55, i32 0, i32 24
  %xvalues55 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID54, i32 0, i32 1
  store i64* null, i64** %xvalues55, align 8, !tbaa !51
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.56, %if.then.48
  %56 = bitcast %struct.gs_font_s** %pfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %cleanup.dest.58 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.58, label %cleanup.61 [
    i32 0, label %cleanup.cont.59
  ]

cleanup.cont.59:                                  ; preds = %cleanup.57
  br label %if.end.60

if.end.60:                                        ; preds = %cleanup.cont.59, %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %if.end.60, %cleanup.57, %if.then.18, %cleanup, %if.then.1
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.ref_s* %CharStrings to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast %struct.ref_s** %pcharstrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @build_gs_outline_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_base_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, i32 %options, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)* %build_base_font) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_base_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %options.addr = alloca i32, align 4
  %build_base_font.addr = alloca i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)*, align 8
  %painttype = alloca i32, align 4
  %strokewidth = alloca float, align 4
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s** %ppfont, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !9
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)* %build_base_font, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)** %build_base_font.addr, align 8, !tbaa !1
  %0 = bitcast i32* %painttype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %strokewidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 3, i32 0, i32* %painttype) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_float_param(%struct.ref_s* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00, float* %strokewidth) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)** %build_base_font.addr, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %14 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %16 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %17 = load i32, i32* %options.addr, align 4, !tbaa !9
  %call5 = call i32 %10(%struct.gs_context_state_s* %11, %struct.ref_s* %12, %struct.gs_font_base_s** %13, i32 %14, %struct.gs_memory_struct_type_s* %15, %struct.build_proc_refs_s* %16, i32 %17) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %20 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %20, align 8, !tbaa !1
  store %struct.gs_font_base_s* %21, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %22 = load i32, i32* %painttype, align 4, !tbaa !5
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 17
  store i32 %22, i32* %PaintType, align 4, !tbaa !54
  %24 = load float, float* %strokewidth, align 4, !tbaa !30
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %25, i32 0, i32 18
  store float %24, float* %StrokeWidth, align 4, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast float* %strokewidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %painttype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @build_gs_simple_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_base_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_base_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %options.addr = alloca i32, align 4
  %bbox = alloca [4 x double], align 16
  %uid = alloca %struct.gs_uid_s, align 8
  %code = alloca i32, align 4
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %space = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s** %ppfont, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !9
  %0 = bitcast [4 x double]* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %6 = load i32, i32* %current_space, align 4, !tbaa !56
  store i32 %6, i32* %space, align 4, !tbaa !5
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !52
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i32 0
  %call = call i32 @font_bbox_param(%struct.gs_memory_s* %9, %struct.ref_s* %10, double* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 12
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory2, i32 %and) #5
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !52
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @dict_uid_param(%struct.ref_s* %16, %struct.gs_uid_s* %uid, i32 0, %struct.gs_memory_s* %19, %struct.gs_context_state_s* %20) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %22 = load i32, i32* %space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory6, i32 %22) #5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %23, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %25 = load i32, i32* %options.addr, align 4, !tbaa !9
  %and11 = and i32 %25, 4
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  %26 = load i64, i64* %id, align 8, !tbaa !50
  %and12 = and i64 %26, -16777216
  %cmp13 = icmp eq i64 %and12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true
  %id16 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id16, align 8, !tbaa !50
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !51
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.10
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %29 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gs_font_base_s** %29 to %struct.gs_font_s**
  %31 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %32 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %33 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %34 = load i32, i32* %options.addr, align 4, !tbaa !9
  %call18 = call i32 @build_gs_font(%struct.gs_context_state_s* %27, %struct.ref_s* %28, %struct.gs_font_s** %30, i32 %31, %struct.gs_memory_struct_type_s* %32, %struct.build_proc_refs_s* %33, i32 %34) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp ne i32 %35, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.17
  %37 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  %38 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %37, align 8, !tbaa !1
  store %struct.gs_font_base_s* %38, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %39 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %39, i32 0, i32 20
  %init_fstack = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 10
  store i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)* @gs_default_init_fstack, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)** %init_fstack, align 8, !tbaa !57
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %40, i32 0, i32 20
  %define_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs23, i32 0, i32 0
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)* @gs_no_define_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)** %define_font, align 8, !tbaa !58
  %41 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %41, i32 0, i32 20
  %decode_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs24, i32 0, i32 5
  store i64 (%struct.gs_font_s*, i64, i32)* @gs_font_map_glyph_to_unicode, i64 (%struct.gs_font_s*, i64, i32)** %decode_glyph, align 8, !tbaa !59
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %42, i32 0, i32 20
  %make_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs25, i32 0, i32 1
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)* @zbase_make_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)** %make_font, align 8, !tbaa !60
  %43 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %43, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs26, i32 0, i32 11
  store i32 (%struct.gs_text_enum_s*, i64*, i64*)* @gs_default_next_char_glyph, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !61
  %44 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %44, i32 0, i32 25
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !62
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %45, i32 0, i32 26
  store i8* null, i8** %FAPI_font_data, align 8, !tbaa !63
  %46 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i32 0
  call void @init_gs_simple_font(%struct.gs_font_base_s* %46, double* %arraydecay27, %struct.gs_uid_s* %uid) #5
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  call void @lookup_gs_simple_font_encoding(%struct.gs_font_base_s* %47) #5
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %50 = bitcast %struct.gs_font_base_s* %49 to %struct.gs_font_s*
  %51 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @get_GlyphNames2Unicode(%struct.gs_context_state_s* %48, %struct.gs_font_s* %50, %struct.ref_s* %51) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.9, %if.then
  %52 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #1
  %56 = bitcast [4 x double]* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @dict_check_uid_param(%struct.ref_s*, %struct.gs_uid_s*) #2

declare i32 @gs_font_find_similar(%struct.gs_font_dir_s*, %struct.gs_font_s**, i32 (%struct.gs_font_s*, %struct.gs_font_s*)*) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @font_with_same_UID_and_another_metrics(%struct.gs_font_s* %pfont0, %struct.gs_font_s* %pfont1) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont0.addr = alloca %struct.gs_font_s*, align 8
  %pfont1.addr = alloca %struct.gs_font_s*, align 8
  %pbfont0 = alloca %struct.gs_font_base_s*, align 8
  %pbfont1 = alloca %struct.gs_font_base_s*, align 8
  %pfdict0 = alloca %struct.ref_s*, align 8
  %pfdict1 = alloca %struct.ref_s*, align 8
  %pmdict0 = alloca %struct.ref_s*, align 8
  %pmdict1 = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont0, %struct.gs_font_s** %pfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont1, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pbfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_base_s** %pbfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont1.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %pbfont1, align 8, !tbaa !1
  %6 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %6, i32 0, i32 24
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont1, align 8, !tbaa !1
  %UID1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 24
  %call = call i32 @uid_equal(%struct.gs_uid_s* %UID, %struct.gs_uid_s* %UID1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.61

if.then:                                          ; preds = %entry
  %8 = bitcast %struct.ref_s** %pfdict0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %call2 = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %9) #5
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call2, i32 0, i32 8
  %10 = load i8*, i8** %client_data, align 8, !tbaa !44
  %11 = bitcast i8* %10 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %11, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pfdict0, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s** %pfdict1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont1, align 8, !tbaa !1
  %call3 = call %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %13) #5
  %client_data4 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call3, i32 0, i32 8
  %14 = load i8*, i8** %client_data4, align 8, !tbaa !44
  %15 = bitcast i8* %14 to %struct.font_data_s*
  %dict5 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %15, i32 0, i32 0
  store %struct.ref_s* %dict5, %struct.ref_s** %pfdict1, align 8, !tbaa !1
  %16 = bitcast %struct.ref_s** %pmdict0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %pmdict1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %18, i32 0, i32 16
  %19 = load i32, i32* %WMode, align 4, !tbaa !64
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %20 = load %struct.ref_s*, %struct.ref_s** %pfdict0, align 8, !tbaa !1
  %call7 = call i32 @dict_find_string(%struct.ref_s* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), %struct.ref_s** %pmdict0) #5
  %cmp = icmp sle i32 %call7, 0
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  store %struct.ref_s* null, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont1, align 8, !tbaa !1
  %WMode9 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 16
  %22 = load i32, i32* %WMode9, align 4, !tbaa !64
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %23 = load %struct.ref_s*, %struct.ref_s** %pfdict1, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), %struct.ref_s** %pmdict1) #5
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.11, %if.end
  store %struct.ref_s* null, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %lor.lhs.false.11
  %24 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.ref_s* %24, null
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  %25 = load %struct.ref_s*, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  %tobool17 = icmp ne %struct.ref_s* %25, null
  %lnot18 = xor i1 %tobool17, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %cmp20 = icmp ne i32 %lnot.ext, %lnot.ext19
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.15
  %26 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.ref_s* %26, null
  br i1 %cmp23, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.22
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %29 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  %call24 = call i32 @obj_eq(%struct.gs_memory_s* %28, %struct.ref_s* %29, %struct.ref_s* %30) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true, %if.end.22
  %31 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %WMode28 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %31, i32 0, i32 16
  %32 = load i32, i32* %WMode28, align 4, !tbaa !64
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %lor.lhs.false.30, label %if.then.33

lor.lhs.false.30:                                 ; preds = %if.end.27
  %33 = load %struct.ref_s*, %struct.ref_s** %pfdict0, align 8, !tbaa !1
  %call31 = call i32 @dict_find_string(%struct.ref_s* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct.ref_s** %pmdict0) #5
  %cmp32 = icmp sle i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.end.27
  store %struct.ref_s* null, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false.30
  %34 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont0, align 8, !tbaa !1
  %WMode35 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %34, i32 0, i32 16
  %35 = load i32, i32* %WMode35, align 4, !tbaa !64
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %if.end.34
  %36 = load %struct.ref_s*, %struct.ref_s** %pfdict1, align 8, !tbaa !1
  %call38 = call i32 @dict_find_string(%struct.ref_s* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct.ref_s** %pmdict1) #5
  %cmp39 = icmp sle i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.34
  store %struct.ref_s* null, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %lor.lhs.false.37
  %37 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %tobool42 = icmp ne %struct.ref_s* %37, null
  %lnot43 = xor i1 %tobool42, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %38 = load %struct.ref_s*, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  %tobool45 = icmp ne %struct.ref_s* %38, null
  %lnot46 = xor i1 %tobool45, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %cmp48 = icmp ne i32 %lnot.ext44, %lnot.ext47
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.41
  %39 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %cmp51 = icmp ne %struct.ref_s* %39, null
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.57

land.lhs.true.52:                                 ; preds = %if.end.50
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont0.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %40, i32 0, i32 2
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !17
  %42 = load %struct.ref_s*, %struct.ref_s** %pmdict0, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %pmdict1, align 8, !tbaa !1
  %call54 = call i32 @obj_eq(%struct.gs_memory_s* %41, %struct.ref_s* %42, %struct.ref_s* %43) #5
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %land.lhs.true.52, %if.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.56, %if.then.49, %if.then.26, %if.then.21
  %44 = bitcast %struct.ref_s** %pmdict1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %pmdict0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ref_s** %pfdict1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.ref_s** %pfdict0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.61

if.end.61:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %cleanup
  %48 = bitcast %struct.gs_font_base_s** %pbfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gs_font_base_s** %pbfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @build_gs_FDArray_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_base_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_base_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %code = alloca i32, align 4
  %uid = alloca %struct.gs_uid_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s** %ppfont, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %5 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %7 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %call = call i32 @build_gs_outline_font(%struct.gs_context_state_s* %3, %struct.ref_s* %4, %struct.gs_font_base_s** %pfont, i32 %5, %struct.gs_memory_struct_type_s* %6, %struct.build_proc_refs_s* %7, i32 0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)* @build_FDArray_sub_font) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 8
  %12 = load i8*, i8** %client_data, align 8, !tbaa !44
  %13 = bitcast i8* %12 to %struct.font_data_s*
  store %struct.font_data_s* %13, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %14 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %14, i32 0, i32 4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %CharStrings, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !33
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !50
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !51
  %15 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  call void @init_gs_simple_font(%struct.gs_font_base_s* %15, double* getelementptr inbounds ([4 x double], [4 x double]* @build_gs_FDArray_font.bbox, i32 0, i32 0), %struct.gs_uid_s* %uid) #5
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %16, i32 0, i32 27
  store i32 -1, i32* %encoding_index, align 4, !tbaa !65
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %nearest_encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %17, i32 0, i32 28
  store i32 -1, i32* %nearest_encoding_index, align 4, !tbaa !66
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %18, i32 0, i32 21
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 22
  %20 = bitcast %struct.gs_font_name_s* %key_name to i8*
  %21 = bitcast %struct.gs_font_name_s* %font_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 52, i32 4, i1 false), !tbaa.struct !67
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %23 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %22, %struct.gs_font_base_s** %23, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast %struct.gs_uid_s* %uid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @build_FDArray_sub_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_base_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, i32 %ignore_options) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_base_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %ignore_options.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s** %ppfont, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %ignore_options, i32* %ignore_options.addr, align 4, !tbaa !9
  %0 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %5 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %6 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @build_gs_sub_font(%struct.gs_context_state_s* %2, %struct.ref_s* %3, %struct.gs_font_s** %pfont, i32 %4, %struct.gs_memory_struct_type_s* %5, %struct.build_proc_refs_s* %6, %struct.ref_s* null, %struct.ref_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_base_s*
  %11 = load %struct.gs_font_base_s**, %struct.gs_font_base_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %10, %struct.gs_font_base_s** %11, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @init_gs_simple_font(%struct.gs_font_base_s* %pfont, double* %bbox, %struct.gs_uid_s* %puid) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  %bbox.addr = alloca double*, align 8
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  store double* %bbox, double** %bbox.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %0 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8, !tbaa !68
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %2, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %1, double* %x, align 8, !tbaa !69
  %3 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 1
  %4 = load double, double* %arrayidx1, align 8, !tbaa !68
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 23
  %p3 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox2, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 1
  store double %4, double* %y, align 8, !tbaa !70
  %6 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 2
  %7 = load double, double* %arrayidx4, align 8, !tbaa !68
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %8, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox5, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %7, double* %x6, align 8, !tbaa !71
  %9 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %9, i64 3
  %10 = load double, double* %arrayidx7, align 8, !tbaa !68
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox8 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 23
  %q9 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox8, i32 0, i32 1
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q9, i32 0, i32 1
  store double %10, double* %y10, align 8, !tbaa !72
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %12, i32 0, i32 24
  %13 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_uid_s* %UID to i8*
  %15 = bitcast %struct.gs_uid_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !73
  ret void
}

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

; Function Attrs: nounwind uwtable
define void @get_GlyphNames2Unicode(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_s* %pfont, %struct.ref_s* %pdref) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pfontinfo = alloca %struct.ref_s*, align 8
  %g2u = alloca %struct.ref_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.ref_s* null, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %1 = bitcast %struct.ref_s** %g2u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.ref_s* null, %struct.ref_s** %g2u, align 8, !tbaa !1
  %2 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s** %pfontinfo) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %call4 = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %g2u) #5
  %cmp5 = icmp sle i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.3
  %8 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %9 = bitcast i16* %type_attrs9 to i8*
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx10, align 1, !tbaa !9
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 8
  %12 = load i8*, i8** %client_data, align 8, !tbaa !10
  %13 = bitcast i8* %12 to %struct.font_data_s*
  store %struct.font_data_s* %13, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %14 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %GlyphNames2Unicode = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %14, i32 0, i32 5
  %15 = load %struct.ref_s*, %struct.ref_s** %g2u, align 8, !tbaa !1
  %16 = bitcast %struct.ref_s* %GlyphNames2Unicode to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !28
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 5
  %19 = load i32, i32* %new_mask, align 4, !tbaa !74
  %20 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %GlyphNames2Unicode14 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %20, i32 0, i32 5
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphNames2Unicode14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %21 = load i16, i16* %type_attrs16, align 2, !tbaa !33
  %conv17 = zext i16 %21 to i32
  %or = or i32 %conv17, %19
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, i16* %type_attrs16, align 2, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %g2u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @font_bbox_param(%struct.gs_memory_s*, %struct.ref_s*, double*) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare i32 @dict_uid_param(%struct.ref_s*, %struct.gs_uid_s*, i32, %struct.gs_memory_s*, %struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @build_gs_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %options.addr = alloca i32, align 4
  %kname = alloca %struct.ref_s, align 8
  %pftype = alloca %struct.ref_s*, align 8
  %pencoding = alloca %struct.ref_s*, align 8
  %bitmapwidths = alloca i32, align 4
  %exactsize = alloca i32, align 4
  %inbetweensize = alloca i32, align 4
  %transformedchar = alloca i32, align 4
  %wmode = alloca i32, align 4
  %code = alloca i32, align 4
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfid = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
  %cpsi_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count = alloca i32, align 4
  %type = alloca i32, align 4
  %fixit = alloca i32, align 4
  %r = alloca %struct.ref_s, align 8
  %penc = alloca %struct.ref_s, align 8
  %size = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %bptr = alloca i8*, align 8
  %curglob = alloca i32, align 4
  %useglob = alloca i32, align 4
  %r97 = alloca %struct.ref_s, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %fname = alloca %struct.ref_s, align 8
  %encoding = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !9
  %0 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pftype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.ref_s* null, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %3 = bitcast i32* %bitmapwidths to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %exactsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %inbetweensize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %transformedchar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.ref_s** %pfid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %13, i32 0, i32 0
  store %struct.ref_s* %values, %struct.ref_s** %aop, align 8, !tbaa !1
  %14 = bitcast i32* %cpsi_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !52
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %call = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %17) #5
  store i32 %call, i32* %cpsi_mode, align 4, !tbaa !5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !52
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  call void @get_font_name(%struct.gs_memory_s* %20, %struct.ref_s* %kname, %struct.ref_s* %add.ptr) #5
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call3 = call i32 @dict_find_string(%struct.ref_s* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s** %pftype) #5
  %cmp = icmp sle i32 %call3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load %struct.ref_s*, %struct.ref_s** %pftype, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %24 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %25 to i32
  %cmp4 = icmp eq i32 %conv, 11
  br i1 %cmp4, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %26 = load %struct.ref_s*, %struct.ref_s** %pftype, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval = bitcast %union.v* %value7 to i64*
  %27 = load i64, i64* %intval, align 8, !tbaa !7
  %28 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %conv8 = sext i32 %28 to i64
  %cmp9 = icmp ne i64 %27, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end:                                           ; preds = %lor.lhs.false.6
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call11 = call i32 @dict_find_string(%struct.ref_s* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.ref_s** %pencoding) #5
  %cmp12 = icmp sle i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  %30 = load i32, i32* %options.addr, align 4, !tbaa !9
  %and = and i32 %30, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.14
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.16:                                        ; preds = %if.then.14
  store %struct.ref_s* null, %struct.ref_s** %pencoding, align 8, !tbaa !1
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %31 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %32 = load i16, i16* %type_attrs18, align 2, !tbaa !33
  %conv19 = zext i16 %32 to i32
  %and20 = and i32 %conv19, 15360
  %cmp21 = icmp eq i32 %and20, 1024
  br i1 %cmp21, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.else
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.24:                                        ; preds = %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.16
  %33 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tobool26 = icmp ne %struct.ref_s* %33, null
  br i1 %tobool26, label %if.then.27, label %if.end.159

if.then.27:                                       ; preds = %if.end.25
  %34 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  %36 = load i32, i32* %rsize, align 4, !tbaa !24
  store i32 %36, i32* %count, align 4, !tbaa !5
  %37 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %tobool29 = icmp ne i32 %38, 0
  %cond = select i1 %tobool29, i32 13, i32 11
  store i32 %cond, i32* %type, align 4, !tbaa !5
  %39 = bitcast i32* %fixit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %fixit, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then.27
  %40 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %41) #1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !52
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %45 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %46 = load i32, i32* %count, align 4, !tbaa !5
  %conv33 = sext i32 %46 to i64
  %call34 = call i32 @array_get(%struct.gs_memory_s* %44, %struct.ref_s* %45, i64 %conv33, %struct.ref_s* %r) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.51, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %while.body
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %47 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx40, align 1, !tbaa !9
  %conv41 = zext i8 %48 to i32
  %49 = load i32, i32* %type, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %conv41, %49
  br i1 %cmp42, label %if.end.68, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.37
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %50 = bitcast i16* %type_attrs46 to i8*
  %arrayidx47 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx47, align 1, !tbaa !9
  %conv48 = zext i8 %51 to i32
  %cmp49 = icmp eq i32 %conv48, 14
  br i1 %cmp49, label %if.end.68, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.44, %while.body
  %52 = load i32, i32* %cpsi_mode, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %52, 0
  br i1 %tobool52, label %if.else.67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.51
  %53 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %cmp53 = icmp eq i32 %53, 3
  br i1 %cmp53, label %if.then.55, label %if.else.67

if.then.55:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %54, 0
  br i1 %cmp56, label %if.then.65, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.55
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %55 = bitcast i16* %type_attrs60 to i8*
  %arrayidx61 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx61, align 1, !tbaa !9
  %conv62 = zext i8 %56 to i32
  %cmp63 = icmp eq i32 %conv62, 14
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false.58, %if.then.55
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %lor.lhs.false.58
  store i32 1, i32* %fixit, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else.67:                                       ; preds = %land.lhs.true, %if.then.51
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %lor.lhs.false.44, %lor.lhs.false.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.else.67, %if.end.66, %if.then.65
  %57 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.154 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %58 = load i32, i32* %fixit, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %58, 0
  br i1 %tobool69, label %if.then.70, label %if.end.153

if.then.70:                                       ; preds = %while.end
  %59 = bitcast %struct.ref_s* %penc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %59) #1
  %60 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %size, align 4, !tbaa !5
  %61 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %61) #1
  %62 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = bitcast i32* %curglob to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 2
  %65 = load i32, i32* %current_space, align 4, !tbaa !56
  store i32 %65, i32* %curglob, align 4, !tbaa !9
  %66 = bitcast i32* %useglob to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  %68 = load i16, i16* %type_attrs73, align 2, !tbaa !33
  %conv74 = zext i16 %68 to i32
  %and75 = and i32 %conv74, 12
  %cmp76 = icmp eq i32 %and75, 12
  %cond78 = select i1 %cmp76, i32 12, i32 8
  store i32 %cond78, i32* %useglob, align 4, !tbaa !9
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 1
  %70 = load i32, i32* %useglob, align 4, !tbaa !9
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory79, i32 %70) #5
  %71 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %rsize81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 2
  %72 = load i32, i32* %rsize81, align 4, !tbaa !24
  store i32 %72, i32* %count, align 4, !tbaa !5
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 1
  %current83 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory82, i32 0, i32 0
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current83, align 8, !tbaa !52
  %75 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %type_attrs85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 0
  %76 = load i16, i16* %type_attrs85, align 2, !tbaa !33
  %conv86 = zext i16 %76 to i32
  %and87 = and i32 %conv86, 96
  %77 = load i32, i32* %count, align 4, !tbaa !5
  %call88 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %74, %struct.ref_s* %penc, i32 %and87, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #5
  store i32 %call88, i32* %code, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.70
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.92:                                        ; preds = %if.then.70
  br label %while.cond.93

while.cond.93:                                    ; preds = %cleanup.cont.137, %if.end.92
  %79 = load i32, i32* %count, align 4, !tbaa !5
  %dec94 = add nsw i32 %79, -1
  store i32 %dec94, i32* %count, align 4, !tbaa !5
  %tobool95 = icmp ne i32 %79, 0
  br i1 %tobool95, label %while.body.96, label %while.end.138

while.body.96:                                    ; preds = %while.cond.93
  %80 = bitcast %struct.ref_s* %r97 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %80) #1
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 1
  %current99 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory98, i32 0, i32 0
  %82 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current99, align 8, !tbaa !52
  %83 = bitcast %struct.gs_ref_memory_s* %82 to %struct.gs_memory_s*
  %84 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %85 = load i32, i32* %count, align 4, !tbaa !5
  %conv100 = sext i32 %85 to i64
  %call101 = call i32 @array_get(%struct.gs_memory_s* %83, %struct.ref_s* %84, i64 %conv100, %struct.ref_s* %r97) #5
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %while.body.96
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.105:                                       ; preds = %while.body.96
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r97, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  %86 = bitcast i16* %type_attrs107 to i8*
  %arrayidx108 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx108, align 1, !tbaa !9
  %conv109 = zext i8 %87 to i32
  %cmp110 = icmp eq i32 %conv109, 13
  br i1 %cmp110, label %if.then.112, label %if.else.115

if.then.112:                                      ; preds = %if.end.105
  %88 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom = sext i32 %88 to i64
  %value113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %penc, i32 0, i32 1
  %refs = bitcast %union.v* %value113 to %struct.ref_s**
  %89 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 %idxprom
  %90 = bitcast %struct.ref_s* %arrayidx114 to i8*
  %91 = bitcast %struct.ref_s* %r97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.134

if.else.115:                                      ; preds = %if.end.105
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 1
  %current117 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory116, i32 0, i32 0
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current117, align 8, !tbaa !52
  %94 = bitcast %struct.gs_ref_memory_s* %93 to %struct.gs_memory_s*
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call118 = call i32 @obj_cvs(%struct.gs_memory_s* %94, %struct.ref_s* %r97, i8* %arraydecay, i32 32, i32* %size, i8** %bptr) #5
  store i32 %call118, i32* %code, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.else.115
  %95 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.122:                                       ; preds = %if.else.115
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current124, align 8, !tbaa !52
  %98 = bitcast %struct.gs_ref_memory_s* %97 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 2
  %99 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %99, i32 0, i32 16
  %100 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %101 = load i8*, i8** %bptr, align 8, !tbaa !1
  %102 = load i32, i32* %size, align 4, !tbaa !5
  %call125 = call i32 @names_ref(%struct.name_table_s* %100, i8* %101, i32 %102, %struct.ref_s* %r97, i32 1) #5
  store i32 %call125, i32* %code, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.122
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.129:                                       ; preds = %if.end.122
  %104 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom130 = sext i32 %104 to i64
  %value131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %penc, i32 0, i32 1
  %refs132 = bitcast %union.v* %value131 to %struct.ref_s**
  %105 = load %struct.ref_s*, %struct.ref_s** %refs132, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 %idxprom130
  %106 = bitcast %struct.ref_s* %arrayidx133 to i8*
  %107 = bitcast %struct.ref_s* %r97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.129, %if.then.112
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.134, %if.then.128, %if.then.121, %if.then.104
  %108 = bitcast %struct.ref_s* %r97 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %108) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %cleanup.145 [
    i32 0, label %cleanup.cont.137
  ]

cleanup.cont.137:                                 ; preds = %cleanup.135
  br label %while.cond.93

while.end.138:                                    ; preds = %while.cond.93
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %110 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !35
  %call139 = call i32 @dict_put_string(%struct.ref_s* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.ref_s* %penc, %struct.dict_stack_s* null) #5
  store i32 %call139, i32* %code, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %while.end.138
  %111 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.143:                                       ; preds = %while.end.138
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 1
  %113 = load i32, i32* %curglob, align 4, !tbaa !9
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory144, i32 %113) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %if.end.143, %if.then.142, %cleanup.135, %if.then.91
  %114 = bitcast i32* %useglob to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %curglob to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 32, i8* %117) #1
  %118 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast %struct.ref_s* %penc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %119) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %cleanup.154 [
    i32 0, label %cleanup.cont.152
  ]

cleanup.cont.152:                                 ; preds = %cleanup.145
  br label %if.end.153

if.end.153:                                       ; preds = %cleanup.cont.152, %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.154

cleanup.154:                                      ; preds = %if.end.153, %cleanup.145, %cleanup
  %120 = bitcast i32* %fixit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %cleanup.dest.157 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.157, label %cleanup.235 [
    i32 0, label %cleanup.cont.158
  ]

cleanup.cont.158:                                 ; preds = %cleanup.154
  br label %if.end.159

if.end.159:                                       ; preds = %cleanup.cont.158, %if.end.25
  %123 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call160 = call i32 @dict_int_param(%struct.ref_s* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 1, i32 0, i32* %wmode) #5
  store i32 %call160, i32* %code, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then.179, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.end.159
  %124 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call164 = call i32 @dict_bool_param(%struct.ref_s* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* %bitmapwidths) #5
  store i32 %call164, i32* %code, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then.179, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %lor.lhs.false.163
  %125 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call168 = call i32 @dict_int_param(%struct.ref_s* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 2, i32 1, i32* %exactsize) #5
  store i32 %call168, i32* %code, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.179, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.167
  %126 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call172 = call i32 @dict_int_param(%struct.ref_s* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 2, i32 0, i32* %inbetweensize) #5
  store i32 %call172, i32* %code, align 4, !tbaa !5
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.179, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.171
  %127 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call176 = call i32 @dict_int_param(%struct.ref_s* %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 2, i32 0, i32* %transformedchar) #5
  store i32 %call176, i32* %code, align 4, !tbaa !5
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %lor.lhs.false.175, %lor.lhs.false.171, %lor.lhs.false.167, %lor.lhs.false.163, %if.end.159
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.180:                                       ; preds = %lor.lhs.false.175
  %129 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call181 = call i32 @dict_find_string(%struct.ref_s* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %pfid) #5
  store i32 %call181, i32* %code, align 4, !tbaa !5
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp182 = icmp sgt i32 %130, 0
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.215

land.lhs.true.184:                                ; preds = %if.end.180
  %131 = load %struct.ref_s*, %struct.ref_s** %pfid, align 8, !tbaa !1
  %tas185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 0
  %type_attrs186 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas185, i32 0, i32 0
  %132 = bitcast i16* %type_attrs186 to i8*
  %arrayidx187 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i8, i8* %arrayidx187, align 1, !tbaa !9
  %conv188 = zext i8 %133 to i32
  %cmp189 = icmp eq i32 %conv188, 10
  br i1 %cmp189, label %if.then.191, label %if.end.215

if.then.191:                                      ; preds = %land.lhs.true.184
  %134 = load %struct.ref_s*, %struct.ref_s** %pfid, align 8, !tbaa !1
  %value192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i32 0, i32 1
  %pstruct = bitcast %union.v* %value192 to %struct.obj_header_s**
  %135 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %136 = bitcast %struct.obj_header_s* %135 to %struct.gs_font_s*
  store %struct.gs_font_s* %136, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %137 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory193 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %137, i32 0, i32 2
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory193, align 8, !tbaa !17
  %139 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %139, i32 0, i32 8
  %140 = load i8*, i8** %client_data, align 8, !tbaa !10
  %141 = bitcast i8* %140 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %141, i32 0, i32 0
  %142 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call194 = call i32 @obj_eq(%struct.gs_memory_s* %138, %struct.ref_s* %dict, %struct.ref_s* %142) #5
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.214

if.then.196:                                      ; preds = %if.then.191
  %143 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %143, i32 0, i32 7
  %144 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !75
  %145 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp197 = icmp eq %struct.gs_font_s* %144, %145
  br i1 %cmp197, label %if.then.199, label %if.else.204

if.then.199:                                      ; preds = %if.then.196
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 2
  %147 = load i32, i32* %language_level, align 4, !tbaa !76
  %cmp200 = icmp sge i32 %147, 2
  br i1 %cmp200, label %if.end.203, label %if.then.202

if.then.202:                                      ; preds = %if.then.199
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.203:                                       ; preds = %if.then.199
  %148 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %149 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %148, %struct.gs_font_s** %149, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.else.204:                                      ; preds = %if.then.196
  %150 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %150) #1
  %151 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %151) #1
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory205 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 1
  %current206 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory205, i32 0, i32 0
  %153 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current206, align 8, !tbaa !52
  %154 = bitcast %struct.gs_ref_memory_s* %153 to %struct.gs_memory_s*
  %155 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call207 = call i32 @sub_font_params(%struct.gs_memory_s* %154, %struct.ref_s* %155, %struct.gs_matrix_s* %mat, %struct.gs_matrix_s* null, %struct.ref_s* %fname) #5
  store i32 %call207, i32* %code, align 4, !tbaa !5
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %156, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.else.204
  %157 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %157, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.211:                                       ; preds = %if.else.204
  store i32 1, i32* %code, align 4, !tbaa !5
  %158 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %158, i32 0, i32 22
  call void @copy_font_name(%struct.gs_font_name_s* %font_name, %struct.ref_s* %fname) #5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.212

cleanup.212:                                      ; preds = %if.end.211, %if.then.210
  %159 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %159) #1
  %160 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %160) #1
  %cleanup.dest234 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest234, label %cleanup.235 [
    i32 6, label %set_name
  ]

if.end.214:                                       ; preds = %if.then.191
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.184, %if.end.180
  %161 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas216 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 0
  %type_attrs217 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas216, i32 0, i32 0
  %162 = load i16, i16* %type_attrs217, align 2, !tbaa !33
  %conv218 = zext i16 %162 to i32
  %and219 = and i32 %conv218, 16
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %if.end.222, label %if.then.221

if.then.221:                                      ; preds = %if.end.215
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.222:                                       ; preds = %if.end.215
  %163 = bitcast %struct.ref_s* %encoding to i8*
  call void @llvm.lifetime.start(i64 16, i8* %163) #1
  %164 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tobool223 = icmp ne %struct.ref_s* %164, null
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.222
  %165 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %166 = bitcast %struct.ref_s* %encoding to i8*
  %167 = bitcast %struct.ref_s* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 16, i32 8, i1 false), !tbaa.struct !28
  store %struct.ref_s* %encoding, %struct.ref_s** %pencoding, align 8, !tbaa !1
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.222
  %168 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %169 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %170 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %171 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %172 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %173 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %174 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call226 = call i32 @build_gs_sub_font(%struct.gs_context_state_s* %168, %struct.ref_s* %169, %struct.gs_font_s** %pfont, i32 %170, %struct.gs_memory_struct_type_s* %171, %struct.build_proc_refs_s* %172, %struct.ref_s* %173, %struct.ref_s* %174) #5
  store i32 %call226, i32* %code, align 4, !tbaa !5
  %175 = load i32, i32* %code, align 4, !tbaa !5
  %cmp227 = icmp slt i32 %175, 0
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.225
  %176 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %176, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

if.end.230:                                       ; preds = %if.end.225
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.231

cleanup.231:                                      ; preds = %if.end.230, %if.then.229
  %177 = bitcast %struct.ref_s* %encoding to i8*
  call void @llvm.lifetime.end(i64 16, i8* %177) #1
  %cleanup.dest.232 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.232, label %cleanup.235 [
    i32 0, label %cleanup.cont.233
  ]

cleanup.cont.233:                                 ; preds = %cleanup.231
  %178 = load i32, i32* %bitmapwidths, align 4, !tbaa !5
  %179 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %BitmapWidths = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %179, i32 0, i32 12
  store i32 %178, i32* %BitmapWidths, align 4, !tbaa !77
  %180 = load i32, i32* %exactsize, align 4, !tbaa !5
  %181 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %ExactSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %181, i32 0, i32 13
  store i32 %180, i32* %ExactSize, align 4, !tbaa !78
  %182 = load i32, i32* %inbetweensize, align 4, !tbaa !5
  %183 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %InBetweenSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %183, i32 0, i32 14
  store i32 %182, i32* %InBetweenSize, align 4, !tbaa !79
  %184 = load i32, i32* %transformedchar, align 4, !tbaa !5
  %185 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %TransformedChar = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %185, i32 0, i32 15
  store i32 %184, i32* %TransformedChar, align 4, !tbaa !80
  %186 = load i32, i32* %wmode, align 4, !tbaa !5
  %187 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %187, i32 0, i32 16
  store i32 %186, i32* %WMode, align 4, !tbaa !81
  %188 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %188, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  store i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @zfont_info, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !82
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %set_name

set_name:                                         ; preds = %cleanup.cont.233, %cleanup.212
  %189 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %189, i32 0, i32 21
  call void @copy_font_name(%struct.gs_font_name_s* %key_name, %struct.ref_s* %kname) #5
  %190 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %191 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %190, %struct.gs_font_s** %191, align 8, !tbaa !1
  %192 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %192, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %set_name, %cleanup.212, %cleanup.231, %if.then.221, %if.end.203, %if.then.202, %if.then.179, %cleanup.154, %if.then.23, %if.then.15, %if.then
  %193 = bitcast i32* %cpsi_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast %struct.ref_s** %pfid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %transformedchar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %inbetweensize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %exactsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %bitmapwidths to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast %struct.ref_s** %pftype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %205) #1
  %206 = load i32, i32* %retval
  ret i32 %206
}

declare i32 @gs_default_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #2

declare i32 @gs_no_define_font(%struct.gs_font_dir_s*, %struct.gs_font_s*) #2

declare i32 @zbase_make_font(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #2

declare i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #2

; Function Attrs: nounwind uwtable
define void @lookup_gs_simple_font_encoding(%struct.gs_font_base_s* %pfont) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  %pfe = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  %esize = alloca i32, align 4
  %near_index = alloca i32, align 4
  %best = alloca i32, align 4
  %fstrs = alloca [256 x %struct.gs_const_string_s], align 16
  %i = alloca i32, align 4
  %fchar = alloca %struct.ref_s, align 8
  %nsref = alloca %struct.ref_s, align 8
  %match = alloca i32, align 4
  %rstr = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pfe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !44
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 3
  store %struct.ref_s* %Encoding, %struct.ref_s** %pfe, align 8, !tbaa !1
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1, i32* %index, align 4, !tbaa !5
  %5 = load i32, i32* %index, align 4, !tbaa !5
  %6 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %6, i32 0, i32 27
  store i32 %5, i32* %encoding_index, align 4, !tbaa !65
  %7 = load %struct.ref_s*, %struct.ref_s** %pfe, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %pfe, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !24
  %cmp3 = icmp ule i32 %11, 256
  br i1 %cmp3, label %if.then, label %if.end.83

if.then:                                          ; preds = %land.lhs.true
  %12 = bitcast i32* %esize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %pfe, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %14 = load i32, i32* %rsize6, align 4, !tbaa !24
  store i32 %14, i32* %esize, align 4, !tbaa !5
  %15 = bitcast i32* %near_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1, i32* %near_index, align 4, !tbaa !5
  %16 = bitcast i32* %best to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %esize, align 4, !tbaa !5
  %div = udiv i32 %17, 3
  store i32 %div, i32* %best, align 4, !tbaa !5
  %18 = bitcast [256 x %struct.gs_const_string_s]* %fstrs to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %esize, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %20, %21
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast %struct.ref_s* %fchar to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 2
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %25 = load %struct.ref_s*, %struct.ref_s** %pfe, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %conv9 = sext i32 %26 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %24, %struct.ref_s* %25, i64 %conv9, %struct.ref_s* %fchar) #5
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fchar, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %27 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx14, align 1, !tbaa !9
  %conv15 = zext i8 %28 to i32
  %cmp16 = icmp eq i32 %conv15, 13
  br i1 %cmp16, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx19, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !84
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom20
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx21, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !86
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %31 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #1
  %32 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %32, i32 0, i32 2
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !83
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 2
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 16
  %35 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  call void @names_string_ref(%struct.name_table_s* %35, %struct.ref_s* %fchar, %struct.ref_s* %nsref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %36 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %37 to i64
  %arrayidx24 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom23
  %data25 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx24, i32 0, i32 0
  store i8* %36, i8** %data25, align 8, !tbaa !84
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %38 = load i32, i32* %rsize27, align 4, !tbaa !24
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %39 to i64
  %arrayidx29 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom28
  %size30 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx29, i32 0, i32 1
  store i32 %38, i32* %size30, align 4, !tbaa !86
  %40 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  %41 = bitcast %struct.ref_s* %fchar to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.75, %for.end
  %43 = load i32, i32* %index, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %43, 7
  br i1 %cmp32, label %for.body.34, label %for.end.77

for.body.34:                                      ; preds = %for.cond.31
  %44 = bitcast i32* %match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %esize, align 4, !tbaa !5
  store i32 %45, i32* %match, align 4, !tbaa !5
  %46 = load i32, i32* %esize, align 4, !tbaa !5
  store i32 %46, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %cleanup.cont, %cleanup, %for.body.34
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %dec, 0
  br i1 %cmp36, label %for.body.38, label %for.end.63

for.body.38:                                      ; preds = %for.cond.35
  %48 = bitcast %struct.gs_const_string_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %conv39 = sext i32 %49 to i64
  %50 = load i32, i32* %index, align 4, !tbaa !5
  %call40 = call i64 @gs_c_known_encode(i64 %conv39, i32 %50) #5
  %call41 = call i32 @gs_c_glyph_name(i64 %call40, %struct.gs_const_string_s* %rstr) #5
  %size42 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %rstr, i32 0, i32 1
  %51 = load i32, i32* %size42, align 4, !tbaa !86
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom43
  %size45 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx44, i32 0, i32 1
  %53 = load i32, i32* %size45, align 4, !tbaa !86
  %cmp46 = icmp eq i32 %51, %53
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.57

land.lhs.true.48:                                 ; preds = %for.body.38
  %data49 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %rstr, i32 0, i32 0
  %54 = load i8*, i8** %data49, align 8, !tbaa !84
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %55 to i64
  %arrayidx51 = getelementptr inbounds [256 x %struct.gs_const_string_s], [256 x %struct.gs_const_string_s]* %fstrs, i32 0, i64 %idxprom50
  %data52 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx51, i32 0, i32 0
  %56 = load i8*, i8** %data52, align 8, !tbaa !84
  %size53 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %rstr, i32 0, i32 1
  %57 = load i32, i32* %size53, align 4, !tbaa !86
  %conv54 = zext i32 %57 to i64
  %call55 = call i32 @memcmp(i8* %54, i8* %56, i64 %conv54) #6
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.48
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %land.lhs.true.48, %for.body.38
  %58 = load i32, i32* %match, align 4, !tbaa !5
  %dec58 = add i32 %58, -1
  store i32 %dec58, i32* %match, align 4, !tbaa !5
  %59 = load i32, i32* %best, align 4, !tbaa !5
  %cmp59 = icmp ule i32 %dec58, %59
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.61, %if.then.56
  %60 = bitcast %struct.gs_const_string_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %for.cond.35
    i32 8, label %for.end.63
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.35

for.end.63:                                       ; preds = %cleanup, %for.cond.35
  %61 = load i32, i32* %match, align 4, !tbaa !5
  %62 = load i32, i32* %best, align 4, !tbaa !5
  %cmp64 = icmp ugt i32 %61, %62
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %for.end.63
  %63 = load i32, i32* %match, align 4, !tbaa !5
  store i32 %63, i32* %best, align 4, !tbaa !5
  %64 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %64, i32* %near_index, align 4, !tbaa !5
  %65 = load i32, i32* %best, align 4, !tbaa !5
  %66 = load i32, i32* %esize, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %65, %66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.66
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.70:                                        ; preds = %if.then.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.end.63
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.71, %if.then.69
  %67 = bitcast i32* %match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest.73 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.73, label %unreachable [
    i32 0, label %cleanup.cont.74
    i32 5, label %for.end.77
  ]

cleanup.cont.74:                                  ; preds = %cleanup.72
  br label %for.inc.75

for.inc.75:                                       ; preds = %cleanup.cont.74
  %68 = load i32, i32* %index, align 4, !tbaa !5
  %inc76 = add nsw i32 %68, 1
  store i32 %inc76, i32* %index, align 4, !tbaa !5
  br label %for.cond.31

for.end.77:                                       ; preds = %cleanup.72, %for.cond.31
  %69 = load i32, i32* %near_index, align 4, !tbaa !5
  store i32 %69, i32* %index, align 4, !tbaa !5
  %70 = load i32, i32* %best, align 4, !tbaa !5
  %71 = load i32, i32* %esize, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %70, %71
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.end.77
  %72 = load i32, i32* %index, align 4, !tbaa !5
  %73 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %encoding_index81 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %73, i32 0, i32 27
  store i32 %72, i32* %encoding_index81, align 4, !tbaa !65
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %for.end.77
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [256 x %struct.gs_const_string_s]* %fstrs to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %75) #1
  %76 = bitcast i32* %best to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %near_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %esize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true, %entry
  %79 = load i32, i32* %index, align 4, !tbaa !5
  %80 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %nearest_encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %80, i32 0, i32 28
  store i32 %79, i32* %nearest_encoding_index, align 4, !tbaa !66
  %81 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.ref_s** %pfe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  ret void

unreachable:                                      ; preds = %cleanup.72, %cleanup
  unreachable
}

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #2

declare i64 @gs_c_known_encode(i64, i32) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @get_font_name(%struct.gs_memory_s* %mem, %struct.ref_s* %pfname, %struct.ref_s* %op) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfname.addr = alloca %struct.ref_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfname, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 13, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s* %3 to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false), !tbaa.struct !28
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %9, %struct.ref_s* %10, %struct.ref_s* %11) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  store i16 4704, i16* %type_attrs3, align 2, !tbaa !33
  %14 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  ret void
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @obj_cvs(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*, i8**) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sub_font_params(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s* %pomat, %struct.ref_s* %pfname) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pomat.addr = alloca %struct.gs_matrix_s*, align 8
  %pfname.addr = alloca %struct.ref_s*, align 8
  %pmatrix = alloca %struct.ref_s*, align 8
  %pfontname = alloca %struct.ref_s*, align 8
  %pfontstyle = alloca %struct.ref_s*, align 8
  %porigfont = alloca %struct.ref_s*, align 8
  %pfontinfo = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tmpStr1 = alloca i8*, align 8
  %tmpStr2 = alloca i8*, align 8
  %fssize1 = alloca i32, align 4
  %fssize2 = alloca i32, align 4
  %fssize = alloca i32, align 4
  %sfname = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pomat, %struct.gs_matrix_s** %pomat.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfname, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pmatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pfontname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pfontstyle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s** %porigfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %pmatrix) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %pmatrix, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call1 = call i32 @read_matrix(%struct.gs_memory_s* %6, %struct.ref_s* %7, %struct.gs_matrix_s* %8) #5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call3 = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %struct.ref_s** %porigfont) #5
  %cmp4 = icmp sle i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.ref_s* null, %struct.ref_s** %porigfont, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pomat.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gs_matrix_s* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.ref_s* %11, null
  br i1 %cmp9, label %if.then.16, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.8
  %12 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  %call11 = call i32 @dict_find_string(%struct.ref_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %pmatrix) #5
  %cmp12 = icmp sle i32 %call11, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %pmatrix, align 8, !tbaa !1
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pomat.addr, align 8, !tbaa !1
  %call14 = call i32 @read_matrix(%struct.gs_memory_s* %13, %struct.ref_s* %14, %struct.gs_matrix_s* %15) #5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.10, %if.then.8
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pomat.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_matrix_s* %16 to i8*
  %call17 = call i8* @memset(i8* %17, i32 0, i64 24) #7
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %lor.lhs.false.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.6
  %18 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  %cmp20 = icmp ne %struct.ref_s* %18, null
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %19 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %19, %cond.true ], [ %20, %cond.false ]
  %call21 = call i32 @dict_find_string(%struct.ref_s* %cond, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s** %pfontinfo) #5
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else.67

land.lhs.true:                                    ; preds = %cond.end
  %21 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %22 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.67

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %24 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %call26 = call i32 @dict_find_string(%struct.ref_s* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct.ref_s** %pfontname) #5
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.67

if.then.29:                                       ; preds = %land.lhs.true.25
  %25 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %call30 = call i32 @dict_find_string(%struct.ref_s* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), %struct.ref_s** %pfontstyle) #5
  %cmp31 = icmp sgt i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.else

land.lhs.true.33:                                 ; preds = %if.then.29
  %26 = load %struct.ref_s*, %struct.ref_s** %pfontstyle, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  %27 = load i32, i32* %rsize, align 4, !tbaa !24
  %cmp35 = icmp ugt i32 %27, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.33
  %28 = bitcast i8** %tmpStr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.ref_s*, %struct.ref_s** %pfontname, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %30 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %30, i8** %tmpStr1, align 8, !tbaa !1
  %31 = bitcast i8** %tmpStr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.ref_s*, %struct.ref_s** %pfontstyle, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %const_bytes39 = bitcast %union.v* %value38 to i8**
  %33 = load i8*, i8** %const_bytes39, align 8, !tbaa !1
  store i8* %33, i8** %tmpStr2, align 8, !tbaa !1
  %34 = bitcast i32* %fssize1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.ref_s*, %struct.ref_s** %pfontname, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %rsize41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 2
  %36 = load i32, i32* %rsize41, align 4, !tbaa !24
  store i32 %36, i32* %fssize1, align 4, !tbaa !5
  %37 = bitcast i32* %fssize2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.ref_s*, %struct.ref_s** %pfontstyle, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %39 = load i32, i32* %rsize43, align 4, !tbaa !24
  store i32 %39, i32* %fssize2, align 4, !tbaa !5
  %40 = bitcast i32* %fssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %fssize1, align 4, !tbaa !5
  %42 = load i32, i32* %fssize2, align 4, !tbaa !5
  %add = add nsw i32 %41, %42
  %add44 = add nsw i32 %add, 1
  store i32 %add44, i32* %fssize, align 4, !tbaa !5
  %43 = bitcast i8** %sfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %45 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !87
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = load i32, i32* %fssize, align 4, !tbaa !5
  %call45 = call i8* %45(%struct.gs_memory_s* %46, i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #5
  store i8* %call45, i8** %sfname, align 8, !tbaa !1
  %48 = load i8*, i8** %sfname, align 8, !tbaa !1
  %cmp46 = icmp eq i8* %48, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.37
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.37
  %49 = load i8*, i8** %sfname, align 8, !tbaa !1
  %50 = load i8*, i8** %tmpStr1, align 8, !tbaa !1
  %51 = load i32, i32* %fssize1, align 4, !tbaa !5
  %conv50 = sext i32 %51 to i64
  %call51 = call i8* @memcpy(i8* %49, i8* %50, i64 %conv50) #7
  %52 = load i32, i32* %fssize1, align 4, !tbaa !5
  %idxprom = sext i32 %52 to i64
  %53 = load i8*, i8** %sfname, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %53, i64 %idxprom
  store i8 44, i8* %arrayidx52, align 1, !tbaa !9
  %54 = load i8*, i8** %sfname, align 8, !tbaa !1
  %55 = load i32, i32* %fssize1, align 4, !tbaa !5
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %56 = load i8*, i8** %tmpStr2, align 8, !tbaa !1
  %57 = load i32, i32* %fssize2, align 4, !tbaa !5
  %conv54 = sext i32 %57 to i64
  %call55 = call i8* @memcpy(i8* %add.ptr53, i8* %56, i64 %conv54) #7
  %58 = load i8*, i8** %sfname, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %bytes = bitcast %union.v* %value56 to i8**
  store i8* %58, i8** %bytes, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  store i16 4704, i16* %type_attrs58, align 2, !tbaa !33
  %61 = load i32, i32* %fssize, align 4, !tbaa !5
  %62 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %rsize60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  store i32 %61, i32* %rsize60, align 4, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48
  %63 = bitcast i8** %sfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %fssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %fssize2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %fssize1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8** %tmpStr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %tmpStr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.66

if.else:                                          ; preds = %land.lhs.true.33, %if.then.29
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %71 = load %struct.ref_s*, %struct.ref_s** %pfontname, align 8, !tbaa !1
  call void @get_font_name(%struct.gs_memory_s* %69, %struct.ref_s* %70, %struct.ref_s* %71) #5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.98

if.else.67:                                       ; preds = %land.lhs.true.25, %land.lhs.true, %cond.end
  %72 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  %cmp68 = icmp ne %struct.ref_s* %72, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.else.67
  %73 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  br label %cond.end.72

cond.false.71:                                    ; preds = %if.else.67
  %74 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi %struct.ref_s* [ %73, %cond.true.70 ], [ %74, %cond.false.71 ]
  %call74 = call i32 @dict_find_string(%struct.ref_s* %cond73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), %struct.ref_s** %pfontname) #5
  %cmp75 = icmp sgt i32 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %cond.end.72
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %76 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %77 = load %struct.ref_s*, %struct.ref_s** %pfontname, align 8, !tbaa !1
  call void @get_font_name(%struct.gs_memory_s* %75, %struct.ref_s* %76, %struct.ref_s* %77) #5
  br label %if.end.97

if.else.78:                                       ; preds = %cond.end.72
  %78 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  %cmp79 = icmp ne %struct.ref_s* %78, null
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.else.78
  %79 = load %struct.ref_s*, %struct.ref_s** %porigfont, align 8, !tbaa !1
  br label %cond.end.83

cond.false.82:                                    ; preds = %if.else.78
  %80 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi %struct.ref_s* [ %79, %cond.true.81 ], [ %80, %cond.false.82 ]
  %call85 = call i32 @dict_find_string(%struct.ref_s* %cond84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct.ref_s** %pfontname) #5
  %cmp86 = icmp sgt i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %cond.end.83
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %82 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %83 = load %struct.ref_s*, %struct.ref_s** %pfontname, align 8, !tbaa !1
  call void @get_font_name(%struct.gs_memory_s* %81, %struct.ref_s* %82, %struct.ref_s* %83) #5
  br label %if.end.96

if.else.89:                                       ; preds = %cond.end.83
  %84 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %value90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %bytes91 = bitcast %union.v* %value90 to i8**
  store i8* null, i8** %bytes91, align 8, !tbaa !1
  %85 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  store i16 4704, i16* %type_attrs93, align 2, !tbaa !33
  %86 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %rsize95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 2
  store i32 0, i32* %rsize95, align 4, !tbaa !24
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.89, %if.then.88
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.77
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

cleanup.99:                                       ; preds = %if.end.98, %cleanup, %if.then
  %87 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.ref_s** %porigfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.ref_s** %pfontstyle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.ref_s** %pfontname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast %struct.ref_s** %pmatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define void @copy_font_name(%struct.gs_font_name_s* %pfstr, %struct.ref_s* %pfname) #0 {
entry:
  %pfstr.addr = alloca %struct.gs_font_name_s*, align 8
  %pfname.addr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.gs_font_name_s* %pfstr, %struct.gs_font_name_s** %pfstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfname, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !24
  store i32 %2, i32* %size, align 4, !tbaa !5
  %3 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp ugt i32 %3, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 47, i32* %size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfstr.addr, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i64 0
  %5 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  %call = call i8* @memcpy(i8* %arrayidx, i8* %6, i64 %conv) #7
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfstr.addr, align 8, !tbaa !1
  %chars1 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %9, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [48 x i8], [48 x i8]* %chars1, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx2, align 1, !tbaa !9
  %10 = load i32, i32* %size, align 4, !tbaa !5
  %11 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfstr.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %11, i32 0, i32 1
  store i32 %10, i32* %size3, align 4, !tbaa !88
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @build_gs_sub_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, %struct.build_proc_refs_s* %pbuild, %struct.ref_s* %pencoding, %struct.ref_s* %fid_op) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %pencoding.addr = alloca %struct.ref_s*, align 8
  %fid_op.addr = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %omat = alloca %struct.gs_matrix_s, align 4
  %fname = alloca %struct.ref_s, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %space = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !9
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store %struct.ref_s* %pencoding, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %fid_op, %struct.ref_s** %fid_op.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_matrix_s* %omat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %7 = load i32, i32* %current_space, align 4, !tbaa !56
  store i32 %7, i32* %space, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !52
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @sub_font_params(%struct.gs_memory_s* %11, %struct.ref_s* %12, %struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %omat, %struct.ref_s* %fname) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %17 to i32
  %and = and i32 %conv, 12
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory2, i32 %and) #5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !52
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call5 = call %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s* %20, %struct.gs_memory_struct_type_s* %21, %struct.gs_font_procs_s* @gs_font_procs_default, %struct.gs_font_dir_s* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)) #5
  store %struct.gs_font_s* %call5, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !52
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %25 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !89
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !52
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %call10 = call i8* %25(%struct.gs_memory_s* %28, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_font_data to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #5
  %29 = bitcast i8* %call10 to %struct.font_data_s*
  store %struct.font_data_s* %29, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gs_font_s* %30, null
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.font_data_s* %31, null
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.21

if.else:                                          ; preds = %lor.lhs.false
  %32 = load %struct.ref_s*, %struct.ref_s** %fid_op.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.ref_s* %32, null
  br i1 %tobool, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.else
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %fid_op.addr, align 8, !tbaa !1
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory17, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current18, align 8, !tbaa !52
  %call19 = call i32 @add_FID(%struct.gs_context_state_s* %33, %struct.ref_s* %34, %struct.gs_font_s* %35, %struct.gs_ref_memory_s* %37) #5
  store i32 %call19, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %38, 0
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.21
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !52
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !90
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !52
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %46 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %47 = bitcast %struct.font_data_s* %46 to i8*
  call void %42(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #5
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %current31 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 0
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current31, align 8, !tbaa !52
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object33, align 8, !tbaa !90
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !52
  %54 = bitcast %struct.gs_ref_memory_s* %53 to %struct.gs_memory_s*
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %56 = bitcast %struct.gs_font_s* %55 to i8*
  call void %51(%struct.gs_memory_s* %54, i8* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)) #5
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 1
  %58 = load i32, i32* %space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory36, i32 %58) #5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.21
  %60 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %61 = bitcast %struct.font_data_s* %60 to %struct.ref_s*
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 5
  %63 = load i32, i32* %new_mask, align 4, !tbaa !74
  call void @refset_null_new(%struct.ref_s* %61, i32 10, i32 %63) #5
  %64 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %64, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %66 = bitcast %struct.ref_s* %dict to i8*
  %67 = bitcast %struct.ref_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !tbaa.struct !28
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %new_mask40 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 5
  %69 = load i32, i32* %new_mask40, align 4, !tbaa !74
  %70 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %dict41 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %70, i32 0, i32 0
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict41, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %71 = load i16, i16* %type_attrs43, align 2, !tbaa !33
  %conv44 = zext i16 %71 to i32
  %or = or i32 %conv44, %69
  %conv45 = trunc i32 %or to i16
  store i16 %conv45, i16* %type_attrs43, align 2, !tbaa !33
  %72 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %72, i32 0, i32 1
  %73 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildChar46 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %73, i32 0, i32 0
  %74 = bitcast %struct.ref_s* %BuildChar to i8*
  %75 = bitcast %struct.ref_s* %BuildChar46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false), !tbaa.struct !28
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 1
  %new_mask48 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory47, i32 0, i32 5
  %77 = load i32, i32* %new_mask48, align 4, !tbaa !74
  %78 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar49 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %78, i32 0, i32 1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar49, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %79 = load i16, i16* %type_attrs51, align 2, !tbaa !33
  %conv52 = zext i16 %79 to i32
  %or53 = or i32 %conv52, %77
  %conv54 = trunc i32 %or53 to i16
  store i16 %conv54, i16* %type_attrs51, align 2, !tbaa !33
  %80 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %80, i32 0, i32 2
  %81 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %BuildGlyph55 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %81, i32 0, i32 1
  %82 = bitcast %struct.ref_s* %BuildGlyph to i8*
  %83 = bitcast %struct.ref_s* %BuildGlyph55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false), !tbaa.struct !28
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 1
  %new_mask57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 5
  %85 = load i32, i32* %new_mask57, align 4, !tbaa !74
  %86 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph58 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %86, i32 0, i32 2
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph58, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %87 = load i16, i16* %type_attrs60, align 2, !tbaa !33
  %conv61 = zext i16 %87 to i32
  %or62 = or i32 %conv61, %85
  %conv63 = trunc i32 %or62 to i16
  store i16 %conv63, i16* %type_attrs60, align 2, !tbaa !33
  %88 = load %struct.ref_s*, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  %tobool64 = icmp ne %struct.ref_s* %88, null
  br i1 %tobool64, label %if.then.65, label %if.end.74

if.then.65:                                       ; preds = %if.end.37
  %89 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %89, i32 0, i32 3
  %90 = load %struct.ref_s*, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  %91 = bitcast %struct.ref_s* %Encoding to i8*
  %92 = bitcast %struct.ref_s* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 16, i32 8, i1 false), !tbaa.struct !28
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %new_mask67 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory66, i32 0, i32 5
  %94 = load i32, i32* %new_mask67, align 4, !tbaa !74
  %95 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding68 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %95, i32 0, i32 3
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding68, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  %96 = load i16, i16* %type_attrs70, align 2, !tbaa !33
  %conv71 = zext i16 %96 to i32
  %or72 = or i32 %conv71, %94
  %conv73 = trunc i32 %or72 to i16
  store i16 %conv73, i16* %type_attrs70, align 2, !tbaa !33
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.65, %if.end.37
  %97 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %98 = bitcast %struct.font_data_s* %97 to i8*
  %99 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %99, i32 0, i32 8
  store i8* %98, i8** %client_data, align 8, !tbaa !10
  %100 = load i32, i32* %ftype.addr, align 4, !tbaa !9
  %101 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %101, i32 0, i32 11
  store i32 %100, i32* %FontType, align 4, !tbaa !18
  %102 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %102, i32 0, i32 9
  %103 = bitcast %struct.gs_matrix_s* %FontMatrix to i8*
  %104 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 24, i32 4, i1 false), !tbaa.struct !91
  %105 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %105, i32 0, i32 10
  %106 = bitcast %struct.gs_matrix_s* %orig_FontMatrix to i8*
  %107 = bitcast %struct.gs_matrix_s* %omat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 24, i32 4, i1 false), !tbaa.struct !91
  %108 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %BitmapWidths = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %108, i32 0, i32 12
  store i32 0, i32* %BitmapWidths, align 4, !tbaa !77
  %109 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %ExactSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %109, i32 0, i32 13
  store i32 1, i32* %ExactSize, align 4, !tbaa !78
  %110 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %InBetweenSize = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %110, i32 0, i32 14
  store i32 0, i32* %InBetweenSize, align 4, !tbaa !79
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %TransformedChar = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %111, i32 0, i32 15
  store i32 0, i32* %TransformedChar, align 4, !tbaa !80
  %112 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %112, i32 0, i32 16
  store i32 0, i32* %WMode, align 4, !tbaa !81
  %113 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %113, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs75, i32 0, i32 4
  store i64 (%struct.gs_font_s*, i64, i32)* @zfont_encode_char, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !92
  %114 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %114, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs76, i32 0, i32 9
  store i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)* @zfont_glyph_name, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !93
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 1
  %116 = load i32, i32* %space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory77, i32 %116) #5
  %117 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %117, i32 0, i32 22
  call void @copy_font_name(%struct.gs_font_name_s* %font_name, %struct.ref_s* %fname) #5
  %118 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %119 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %118, %struct.gs_font_s** %119, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.24, %if.then
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %124) #1
  %125 = bitcast %struct.gs_matrix_s* %omat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %125) #1
  %126 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %126) #1
  %127 = load i32, i32* %retval
  ret i32 %127
}

declare i32 @zfont_info(%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*) #2

declare %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, %struct.gs_font_procs_s*, %struct.gs_font_dir_s*, i8*) #2

declare i32 @add_FID(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_s*, %struct.gs_ref_memory_s*) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zfont_glyph_name(%struct.gs_font_s* %font, i64 %index, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %index.addr = alloca i64, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %sref = alloca %struct.ref_s, align 8
  %cid_name = alloca [25 x i8], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %index, i64* %index.addr, align 8, !tbaa !7
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load i64, i64* %index.addr, align 8, !tbaa !7
  %cmp = icmp uge i64 %2, 2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast [25 x i8]* %cid_name to i8*
  call void @llvm.lifetime.start(i64 25, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %cid_name, i32 0, i32 0
  %5 = load i64, i64* %index.addr, align 8, !tbaa !7
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 %5) #5
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %arraydecay1 = getelementptr inbounds [25 x i8], [25 x i8]* %cid_name, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [25 x i8], [25 x i8]* %cid_name, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @names_ref(%struct.name_table_s* %9, i8* %arraydecay1, i32 %conv, %struct.ref_s* %nref, i32 1) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast [25 x i8]* %cid_name to i8*
  call void @llvm.lifetime.end(i64 25, i8* %13) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.else:                                          ; preds = %entry
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !17
  %gs_lib_ctx10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 2
  %16 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx10, align 8, !tbaa !19
  %gs_name_table11 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %16, i32 0, i32 16
  %17 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table11, align 8, !tbaa !22
  %18 = load i64, i64* %index.addr, align 8, !tbaa !7
  %conv12 = trunc i64 %18 to i32
  call void @names_index_ref(%struct.name_table_s* %17, i32 %conv12, %struct.ref_s* %nref) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %cleanup.cont
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 2
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !17
  %gs_lib_ctx15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 2
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx15, align 8, !tbaa !19
  %gs_name_table16 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %21, i32 0, i32 16
  %22 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table16, align 8, !tbaa !22
  call void @names_string_ref(%struct.name_table_s* %22, %struct.ref_s* %nref, %struct.ref_s* %sref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %23 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %24 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %24, i32 0, i32 0
  store i8* %23, i8** %data, align 8, !tbaa !84
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %25 = load i32, i32* %rsize, align 4, !tbaa !24
  %26 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %26, i32 0, i32 1
  store i32 %25, i32* %size, align 4, !tbaa !86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.13, %cleanup
  %27 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @define_gs_font(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_s* %pfont) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 7
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !75
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_s* %1, %2
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 3
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !34
  %cmp1 = icmp eq %struct.gs_font_dir_s* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !52
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %7) #5
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !53
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_definefont(%struct.gs_font_dir_s* %8, %struct.gs_font_s* %9) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare i32 @gs_definefont(%struct.gs_font_dir_s*, %struct.gs_font_s*) #2

declare void @ref_struct_clear_marks(%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*) #2

declare %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @ref_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

declare i32 @uid_equal(%struct.gs_uid_s*, %struct.gs_uid_s*) #2

declare %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s*) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !2, i64 72}
!11 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !15, i64 168, !16, i64 272, !16, i64 324}
!12 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !3, i64 0}
!15 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!16 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!17 = !{!11, !2, i64 16}
!18 = !{!11, !3, i64 128}
!19 = !{!20, !2, i64 192}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!23, !2, i64 120}
!23 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!25, !6, i64 4}
!25 = !{!"ref_s", !26, i64 0, !3, i64 8}
!26 = !{!"tas_s", !27, i64 0, !27, i64 2, !6, i64 4}
!27 = !{!"short", !3, i64 0}
!28 = !{i64 0, i64 2, !29, i64 2, i64 2, !29, i64 4, i64 4, !5, i64 8, i64 8, !7, i64 8, i64 2, !29, i64 8, i64 4, !30, i64 8, i64 8, !7, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !7}
!29 = !{!27, !27, i64 0}
!30 = !{!14, !14, i64 0}
!31 = !{!32, !6, i64 4096}
!32 = !{!"name_sub_table_s", !3, i64 0, !6, i64 4096}
!33 = !{!25, !27, i64 0}
!34 = !{!11, !2, i64 24}
!35 = !{!36, !2, i64 624}
!36 = !{!"gs_context_state_s", !2, i64 0, !37, i64 8, !6, i64 80, !25, i64 88, !25, i64 104, !8, i64 120, !8, i64 128, !8, i64 136, !6, i64 144, !6, i64 148, !25, i64 152, !25, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !39, i64 264, !39, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !40, i64 368, !42, i64 520, !43, i64 624, !2, i64 720}
!37 = !{!"gs_dual_memory_s", !2, i64 0, !38, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!38 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!39 = !{!"op_array_table_s", !25, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!40 = !{!"dict_stack_s", !41, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !25, i64 136}
!41 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !25, i64 24, !6, i64 40, !6, i64 44, !25, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!42 = !{!"exec_stack_s", !41, i64 0, !2, i64 96}
!43 = !{!"op_stack_s", !41, i64 0}
!44 = !{!45, !2, i64 72}
!45 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !15, i64 168, !16, i64 272, !16, i64 324, !46, i64 376, !49, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!46 = !{!"gs_rect_s", !47, i64 0, !47, i64 16}
!47 = !{!"gs_point_s", !48, i64 0, !48, i64 8}
!48 = !{!"double", !3, i64 0}
!49 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!50 = !{!49, !8, i64 0}
!51 = !{!49, !2, i64 8}
!52 = !{!36, !2, i64 8}
!53 = !{!23, !2, i64 168}
!54 = !{!45, !6, i64 152}
!55 = !{!45, !14, i64 156}
!56 = !{!37, !6, i64 48}
!57 = !{!45, !2, i64 248}
!58 = !{!45, !2, i64 168}
!59 = !{!45, !2, i64 208}
!60 = !{!45, !2, i64 176}
!61 = !{!45, !2, i64 256}
!62 = !{!45, !2, i64 424}
!63 = !{!45, !2, i64 432}
!64 = !{!45, !6, i64 148}
!65 = !{!45, !3, i64 440}
!66 = !{!45, !3, i64 444}
!67 = !{i64 0, i64 48, !9, i64 48, i64 4, !5}
!68 = !{!48, !48, i64 0}
!69 = !{!45, !48, i64 376}
!70 = !{!45, !48, i64 384}
!71 = !{!45, !48, i64 392}
!72 = !{!45, !48, i64 400}
!73 = !{i64 0, i64 8, !7, i64 8, i64 8, !1}
!74 = !{!37, !6, i64 68}
!75 = !{!11, !2, i64 64}
!76 = !{!36, !6, i64 80}
!77 = !{!11, !6, i64 132}
!78 = !{!11, !3, i64 136}
!79 = !{!11, !3, i64 140}
!80 = !{!11, !3, i64 144}
!81 = !{!11, !6, i64 148}
!82 = !{!11, !2, i64 184}
!83 = !{!45, !2, i64 16}
!84 = !{!85, !2, i64 0}
!85 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!86 = !{!85, !6, i64 8}
!87 = !{!20, !2, i64 136}
!88 = !{!16, !6, i64 48}
!89 = !{!20, !2, i64 72}
!90 = !{!20, !2, i64 24}
!91 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30, i64 20, i64 4, !30}
!92 = !{!11, !2, i64 200}
!93 = !{!11, !2, i64 240}
