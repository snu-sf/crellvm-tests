; ModuleID = './ztrans.bc'
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, {}*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.3 }
%union.anon.3 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_paint_color_s = type { [64 x float] }
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
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_transparency_mask_params_s = type { %struct.gs_color_space_s*, i32, i32, [64 x float], float, i32 (double, float*, i8*)*, %struct.gs_function_s*, i32, i64, %struct.cmm_profile_s* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_image3x_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s }
%struct.gs_image3x_mask_s = type { i32, [64 x float], i32, %struct.gs_data_image_s }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.image_params_s = type { i32, [65 x %struct.ref_s], float* }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }

@.str = private unnamed_addr constant [15 x i8] c"1.setblendmode\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0.currentblendmode\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"1.setopacityalpha\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"0.currentopacityalpha\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1.setshapealpha\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"0.currentshapealpha\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"1.settextknockout\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"0.currenttextknockout\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"0.pushextendedgstate\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"0.popextendedgstate\00", align 1
@ztrans1_op_defs = constant [11 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetblendmode }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentblendmode }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetopacityalpha }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentopacityalpha }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetshapealpha }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentshapealpha }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsettextknockout }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrenttextknockout }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpushextendedgstate }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpopextendedgstate }, %struct.op_def zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [25 x i8] c"5.begintransparencygroup\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"0.endtransparencygroup\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"5.begintransparencymaskgroup\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"5.begintransparencymaskimage\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"1.endtransparencymask\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"1.image3x\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"1.pushpdf14devicefilter\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"0.poppdf14devicefilter\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"0.abortpdf14devicefilter\00", align 1
@ztrans2_op_defs = constant [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbegintransparencygroup }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zendtransparencygroup }, %struct.op_def { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbegintransparencymaskgroup }, %struct.op_def { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbegintransparencymaskimage }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zendtransparencymask }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimage3x }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpushpdf14devicefilter }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpoppdf14devicefilter }, %struct.op_def { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zabortpdf14devicefilter }, %struct.op_def zeroinitializer], align 16
@blend_mode_names = internal constant [18 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"ColorDodge\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"ColorBurn\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Exclusion\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"HardLight\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"SoftLight\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Compatible\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Isolated\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Knockout\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c".image_with_SMask\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@zbegintransparencymaskgroup.subtype_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"GrayBackground\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@zbegintransparencymaskimage.bbox = private unnamed_addr constant %struct.gs_rect_s { %struct.gs_point_s zeroinitializer, %struct.gs_point_s { double 1.000000e+00, double 1.000000e+00 } }, align 8
@.str.45 = private unnamed_addr constant [28 x i8] c"zbegintransparencymaskimage\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"DataDict\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"ImageType\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"ShapeMaskDict\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"OpacityMaskDict\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"InterleaveType\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"Matte\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zsetblendmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @enum_param(%struct.gs_memory_s* %10, %struct.ref_s* %11, i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @blend_mode_names, i32 0, i32 0)) #5
  store i32 %call2, i32* %code, align 4, !tbaa !21
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %14 = load i32, i32* %code, align 4, !tbaa !21
  %call5 = call i32 @gs_setblendmode(%struct.gs_state_s* %13, i32 %14) #5
  store i32 %call5, i32* %code, align 4, !tbaa !21
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p12, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentblendmode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mode_name = alloca i8*, align 8
  %nref = alloca %struct.ref_s, align 8
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
  %3 = bitcast i8** %mode_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_currentblendmode(%struct.gs_state_s* %5) #5
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [18 x i8*], [18 x i8*]* @blend_mode_names, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %6, i8** %mode_name, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !23
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !26
  %14 = load i8*, i8** %mode_name, align 8, !tbaa !1
  %call1 = call i32 @names_enter_string(%struct.name_table_s* %13, i8* %14, %struct.ref_s* %nref) #5
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %15 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %19 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !28
  %cmp4 = icmp ugt %struct.ref_s* %add.ptr, %19
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !29
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  store %struct.ref_s* %21, %struct.ref_s** %p10, align 8, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = bitcast %struct.ref_s* %23 to i8*
  %25 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false), !tbaa.struct !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.5, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast i8** %mode_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetopacityalpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @set_float_value(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setopacityalpha) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentopacityalpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @current_float_value(%struct.gs_context_state_s* %0, float (%struct.gs_state_s*)* @gs_currentopacityalpha) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetshapealpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @set_float_value(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setshapealpha) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentshapealpha(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @current_float_value(%struct.gs_context_state_s* %0, float (%struct.gs_state_s*)* @gs_currentshapealpha) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsettextknockout(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %10 = load i16, i16* %boolval, align 2, !tbaa !31
  %conv2 = zext i16 %10 to i32
  %call3 = call i32 @gs_settextknockout(%struct.gs_state_s* %8, i32 %conv2) #5
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrenttextknockout(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !28
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !29
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
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_currenttextknockout(%struct.gs_state_s* %10) #5
  %conv = trunc i32 %call to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !31
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !35
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
define internal i32 @zpushextendedgstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_push_transparency_state(%struct.gs_state_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !21
  %3 = load i32, i32* %code, align 4, !tbaa !21
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zpopextendedgstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_pop_transparency_state(%struct.gs_state_s* %2, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !21
  %3 = load i32, i32* %code, align 4, !tbaa !21
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zbegintransparencygroup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dop = alloca %struct.ref_s*, align 8
  %params = alloca %struct.gs_transparency_group_params_s, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %dummy = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %dop, align 8, !tbaa !1
  %5 = bitcast %struct.gs_transparency_group_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 56, i8* %5) #1
  %6 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast %struct.ref_s** %dummy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %15 = load i16, i16* %type_attrs3, align 2, !tbaa !35
  %conv4 = zext i16 %15 to i32
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
  call void @gs_trans_group_params_init(%struct.gs_transparency_group_params_s* %params) #5
  %16 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %Isolated = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 1
  %call7 = call i32 @dict_bool_param(%struct.ref_s* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* %Isolated) #5
  store i32 %call7, i32* %code, align 4, !tbaa !21
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %17 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %Knockout = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 2
  %call10 = call i32 @dict_bool_param(%struct.ref_s* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* %Knockout) #5
  store i32 %call10, i32* %code, align 4, !tbaa !21
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %18 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %image_with_SMask = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 3
  %call14 = call i32 @dict_bool_param(%struct.ref_s* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* %image_with_SMask) #5
  store i32 %call14, i32* %code, align 4, !tbaa !21
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %lor.lhs.false.13
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call19 = call i32 @rect_param(%struct.gs_rect_s* %bbox, %struct.ref_s* %20) #5
  store i32 %call19, i32* %code, align 4, !tbaa !21
  %21 = load i32, i32* %code, align 4, !tbaa !21
  %cmp20 = icmp slt i32 %21, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %22 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %23 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %call24 = call i32 @dict_find_string(%struct.ref_s* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), %struct.ref_s** %dummy) #5
  %cmp25 = icmp sle i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.23
  %ColorSpace = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !36
  br label %if.end.58

if.else:                                          ; preds = %if.end.23
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call28 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %25) #5
  %ColorSpace29 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* %call28, %struct.gs_color_space_s** %ColorSpace29, align 8, !tbaa !36
  %ColorSpace30 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace30, align 8, !tbaa !36
  %call31 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %26) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.else
  %ColorSpace34 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace34, align 8, !tbaa !36
  br label %if.end.57

if.else.35:                                       ; preds = %if.else
  %ColorSpace36 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace36, align 8, !tbaa !36
  %call37 = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %27) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.else.35
  %ColorSpace39 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace39, align 8, !tbaa !36
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 6
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp40 = icmp ne %struct.cmm_profile_s* %29, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.56

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %ColorSpace43 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace43, align 8, !tbaa !36
  %cmm_icc_profile_data44 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 6
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data44, align 8, !tbaa !38
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 17
  %32 = load i8*, i8** %profile_handle, align 8, !tbaa !41
  %cmp45 = icmp ne i8* %32, null
  br i1 %cmp45, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %land.lhs.true.42
  %ColorSpace48 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace48, align 8, !tbaa !36
  %cmm_icc_profile_data49 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 6
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data49, align 8, !tbaa !38
  %profile_handle50 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 17
  %35 = load i8*, i8** %profile_handle50, align 8, !tbaa !41
  %call51 = call i32 @gscms_is_input(i8* %35) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.47
  %ColorSpace54 = getelementptr inbounds %struct.gs_transparency_group_params_s, %struct.gs_transparency_group_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace54, align 8, !tbaa !36
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.42, %land.lhs.true, %if.else.35
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.33
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.27
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 0
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs59, align 8, !tbaa !22
  %call60 = call i32 @gs_begin_transparency_group(%struct.gs_state_s* %37, %struct.gs_transparency_group_params_s* %params, %struct.gs_rect_s* %bbox) #5
  store i32 %call60, i32* %code, align 4, !tbaa !21
  %38 = load i32, i32* %code, align 4, !tbaa !21
  %cmp61 = icmp slt i32 %38, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  %39 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.58
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 26
  %stack66 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack65, i32 0, i32 0
  %p67 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack66, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p67, align 8, !tbaa !5
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -5
  store %struct.ref_s* %add.ptr68, %struct.ref_s** %p67, align 8, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.63, %if.then.22, %if.then.17, %if.then.5, %if.then
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.ref_s** %dummy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %45) #1
  %46 = bitcast %struct.gs_transparency_group_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 56, i8* %46) #1
  %47 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @zendtransparencygroup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_end_transparency_group(%struct.gs_state_s* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbegintransparencymaskgroup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dop = alloca %struct.ref_s*, align 8
  %params = alloca %struct.gs_transparency_mask_params_s, align 8
  %pparam = alloca %struct.ref_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %dop, align 8, !tbaa !1
  %5 = bitcast %struct.gs_transparency_mask_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 320, i8* %5) #1
  %6 = bitcast %struct.ref_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %15 = load i16, i16* %type_attrs3, align 2, !tbaa !35
  %conv4 = zext i16 %15 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %call7 = call i32 @dict_find_string(%struct.ref_s* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct.ref_s** %pparam) #5
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.11:                                        ; preds = %do.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.ref_s*, %struct.ref_s** %pparam, align 8, !tbaa !1
  %call12 = call i32 @enum_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @zbegintransparencymaskgroup.subtype_names, i32 0, i32 0)) #5
  store i32 %call12, i32* %code, align 4, !tbaa !21
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %21 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.16:                                        ; preds = %if.end.11
  %22 = load i32, i32* %code, align 4, !tbaa !21
  call void @gs_trans_mask_params_init(%struct.gs_transparency_mask_params_s* %params, i32 %22) #5
  %replacing = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 7
  store i32 1, i32* %replacing, align 4, !tbaa !45
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory17, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current18, align 8, !tbaa !20
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call19 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %28) #5
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %call19, i32 0, i32 0
  %29 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !47
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %29, i32 0, i32 4
  %30 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !48
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 0
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !22
  %call21 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %32) #5
  %call22 = call i32 %30(%struct.gs_color_space_s* %call21) #5
  %Background = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Background, i32 0, i32 0
  %call23 = call i32 @dict_floats_param(%struct.gs_memory_s* %25, %struct.ref_s* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 %call22, float* %arraydecay, float* null) #5
  store i32 %call23, i32* %code, align 4, !tbaa !21
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.16
  %33 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.else:                                          ; preds = %if.end.16
  %34 = load i32, i32* %code, align 4, !tbaa !21
  %cmp27 = icmp sgt i32 %34, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  %35 = load i32, i32* %code, align 4, !tbaa !21
  %Background_components = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 2
  store i32 %35, i32* %Background_components, align 4, !tbaa !50
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !20
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %GrayBackground = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 4
  %call34 = call i32 @dict_floats_param(%struct.gs_memory_s* %38, %struct.ref_s* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 1, float* %GrayBackground, float* null) #5
  store i32 %call34, i32* %code, align 4, !tbaa !21
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.31
  %40 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.38:                                        ; preds = %if.end.31
  %41 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %call39 = call i32 @dict_find_string(%struct.ref_s* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), %struct.ref_s** %pparam) #5
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.38
  %42 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load %struct.ref_s*, %struct.ref_s** %pparam, align 8, !tbaa !1
  %call43 = call %struct.gs_function_s* @ref_function(%struct.ref_s* %43) #5
  store %struct.gs_function_s* %call43, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %44 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %cmp44 = icmp eq %struct.gs_function_s* %44, null
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.42
  %45 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %params46 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %45, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params46, i32 0, i32 0
  %46 = load i32, i32* %m, align 4, !tbaa !51
  %cmp47 = icmp ne i32 %46, 1
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %47 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %47, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params50, i32 0, i32 2
  %48 = load i32, i32* %n, align 4, !tbaa !56
  %cmp51 = icmp ne i32 %48, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %if.then.42
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %lor.lhs.false.49
  %TransferFunction = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 5
  store i32 (double, float*, i8*)* @tf_using_function, i32 (double, float*, i8*)** %TransferFunction, align 8, !tbaa !57
  %49 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %TransferFunction_data = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 6
  store %struct.gs_function_s* %49, %struct.gs_function_s** %TransferFunction_data, align 8, !tbaa !58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.53
  %50 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.108 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont, %if.end.38
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call56 = call i32 @rect_param(%struct.gs_rect_s* %bbox, %struct.ref_s* %51) #5
  store i32 %call56, i32* %code, align 4, !tbaa !21
  %52 = load i32, i32* %code, align 4, !tbaa !21
  %cmp57 = icmp slt i32 %52, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  %53 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.60:                                        ; preds = %if.end.55
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -5
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx61, i32 0, i32 1
  %boolval = bitcast %union.v* %value62 to i16*
  %55 = load i16, i16* %boolval, align 2, !tbaa !31
  %tobool63 = icmp ne i16 %55, 0
  br i1 %tobool63, label %if.then.64, label %if.else.95

if.then.64:                                       ; preds = %if.end.60
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 0
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs65, align 8, !tbaa !22
  %call66 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %57) #5
  %ColorSpace = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* %call66, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !59
  %ColorSpace67 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace67, align 8, !tbaa !59
  %call68 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %58) #5
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.then.64
  %ColorSpace71 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace71, align 8, !tbaa !59
  br label %if.end.94

if.else.72:                                       ; preds = %if.then.64
  %ColorSpace73 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace73, align 8, !tbaa !59
  %call74 = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %59) #5
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %if.else.72
  %ColorSpace76 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace76, align 8, !tbaa !59
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %60, i32 0, i32 6
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp77 = icmp ne %struct.cmm_profile_s* %61, null
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.93

land.lhs.true.79:                                 ; preds = %land.lhs.true
  %ColorSpace80 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace80, align 8, !tbaa !59
  %cmm_icc_profile_data81 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 6
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data81, align 8, !tbaa !38
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 17
  %64 = load i8*, i8** %profile_handle, align 8, !tbaa !41
  %cmp82 = icmp ne i8* %64, null
  br i1 %cmp82, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %land.lhs.true.79
  %ColorSpace85 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace85, align 8, !tbaa !59
  %cmm_icc_profile_data86 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 6
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data86, align 8, !tbaa !38
  %profile_handle87 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 17
  %67 = load i8*, i8** %profile_handle87, align 8, !tbaa !41
  %call88 = call i32 @gscms_is_input(i8* %67) #5
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.84
  %ColorSpace91 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace91, align 8, !tbaa !59
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.84
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.79, %land.lhs.true, %if.else.72
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.70
  br label %if.end.97

if.else.95:                                       ; preds = %if.end.60
  %ColorSpace96 = getelementptr inbounds %struct.gs_transparency_mask_params_s, %struct.gs_transparency_mask_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace96, align 8, !tbaa !59
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.end.94
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 0
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs98, align 8, !tbaa !22
  %call99 = call i32 @gs_begin_transparency_mask(%struct.gs_state_s* %69, %struct.gs_transparency_mask_params_s* %params, %struct.gs_rect_s* %bbox, i32 0) #5
  store i32 %call99, i32* %code, align 4, !tbaa !21
  %70 = load i32, i32* %code, align 4, !tbaa !21
  %cmp100 = icmp slt i32 %70, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.97
  %71 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.103:                                       ; preds = %if.end.97
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 26
  %stack105 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack104, i32 0, i32 0
  %p106 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack105, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p106, align 8, !tbaa !5
  %add.ptr107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -6
  store %struct.ref_s* %add.ptr107, %struct.ref_s** %p106, align 8, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.103, %if.then.102, %if.then.59, %cleanup, %if.then.37, %if.then.26, %if.then.15, %if.then.10, %if.then.5, %if.then
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %76) #1
  %77 = bitcast %struct.ref_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.gs_transparency_mask_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 320, i8* %78) #1
  %79 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @zbegintransparencymaskimage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %params = alloca %struct.gs_transparency_mask_params_s, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %gray_cs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_transparency_mask_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 320, i8* %0) #1
  %1 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gs_rect_s* @zbegintransparencymaskimage.bbox to i8*), i64 32, i32 8, i1 false)
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_color_space_s** %gray_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %7) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %gray_cs, align 8, !tbaa !1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gray_cs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @gs_trans_mask_params_init(%struct.gs_transparency_mask_params_s* %params, i32 1) #5
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call1 = call i32 @gs_begin_transparency_mask(%struct.gs_state_s* %10, %struct.gs_transparency_mask_params_s* %params, %struct.gs_rect_s* %bbox, i32 1) #5
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %11 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gray_cs, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0)) #5
  %14 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %15 = bitcast %struct.gs_color_space_s** %gray_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %17) #1
  %18 = bitcast %struct.gs_transparency_mask_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 320, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @zendtransparencymask(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @mask_op(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, i32)* @gs_end_transparency_mask) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zimage3x(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %image = alloca %struct.gs_image3x_s, align 8
  %pDataDict = alloca %struct.ref_s*, align 8
  %ip_data = alloca %struct.image_params_s, align 8
  %num_components = alloca i32, align 4
  %ignored = alloca i32, align 4
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
  %3 = bitcast %struct.gs_image3x_s* %image to i8*
  call void @llvm.lifetime.start(i64 2248, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pDataDict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.image_params_s* %ip_data to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %5) #1
  %6 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %8) #5
  %call1 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %call) #5
  store i32 %call1, i32* %num_components, align 4, !tbaa !21
  %9 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call3 = call i32 @check_type_failed(%struct.ref_s* %14) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %16 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %16, i32 0, i32 0
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %17 = load i16, i16* %type_attrs5, align 2, !tbaa !35
  %conv6 = zext i16 %17 to i32
  %and = and i32 %conv6, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = bitcast %struct.gs_image3x_s* %image to i8*
  %call9 = call i8* @memset(i8* %18, i32 0, i64 2248) #6
  call void @gs_image3x_t_init(%struct.gs_image3x_s* %image, %struct.gs_color_space_s* null) #5
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @dict_find_string(%struct.ref_s* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %struct.ref_s** %pDataDict) #5
  %cmp11 = icmp sle i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %do.end
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %pDataDict, align 8, !tbaa !1
  %22 = bitcast %struct.gs_image3x_s* %image to %struct.gs_pixel_image_s*
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs15, align 8, !tbaa !22
  %call16 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %24) #5
  %call17 = call i32 @pixel_image_params(%struct.gs_context_state_s* %20, %struct.ref_s* %21, %struct.gs_pixel_image_s* %22, %struct.image_params_s* %ip_data, i32 16, i32 0, %struct.gs_color_space_s* %call16) #5
  store i32 %call17, i32* %code, align 4, !tbaa !21
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %25 = load %struct.ref_s*, %struct.ref_s** %pDataDict, align 8, !tbaa !1
  %call20 = call i32 @dict_int_param(%struct.ref_s* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 1, i32 0, i32* %ignored) #5
  store i32 %call20, i32* %code, align 4, !tbaa !21
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.14
  %26 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load i32, i32* %num_components, align 4, !tbaa !21
  %Shape = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %image, i32 0, i32 11
  %call25 = call i32 @mask_dict_param(%struct.gs_memory_s* %29, %struct.ref_s* %30, %struct.image_params_s* %ip_data, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 %31, %struct.gs_image3x_mask_s* %Shape) #5
  store i32 %call25, i32* %code, align 4, !tbaa !21
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.24
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current30 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory29, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current30, align 8, !tbaa !20
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %36 = load i32, i32* %num_components, align 4, !tbaa !21
  %Opacity = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %image, i32 0, i32 10
  %call31 = call i32 @mask_dict_param(%struct.gs_memory_s* %34, %struct.ref_s* %35, %struct.image_params_s* %ip_data, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 %36, %struct.gs_image3x_mask_s* %Opacity) #5
  store i32 %call31, i32* %code, align 4, !tbaa !21
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.28, %if.end.24
  %37 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false.28
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_image3x_s* %image to %struct.gs_pixel_image_s*
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 0
  %CombineWithColor = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %image, i32 0, i32 8
  %40 = load i32, i32* %CombineWithColor, align 4, !tbaa !60
  %call37 = call i32 @zimage_setup(%struct.gs_context_state_s* %38, %struct.gs_pixel_image_s* %39, %struct.ref_s* %arrayidx36, i32 %40, i32 1) #5
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.23, %if.then.13, %if.then.7, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.image_params_s* %ip_data to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %44) #1
  %45 = bitcast %struct.ref_s** %pDataDict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gs_image3x_s* %image to i8*
  call void @llvm.lifetime.end(i64 2248, i8* %46) #1
  %47 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @zpushpdf14devicefilter(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %3, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call2 = call i32 @gs_push_pdf14trans_device(%struct.gs_state_s* %9, i32 0) #5
  store i32 %call2, i32* %code, align 4, !tbaa !21
  %10 = load i32, i32* %code, align 4, !tbaa !21
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zpoppdf14devicefilter(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_pop_pdf14trans_device(%struct.gs_state_s* %1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zabortpdf14devicefilter(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_abort_pdf14trans_device(%struct.gs_state_s* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @enum_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pnref, i8** %names) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  %names.addr = alloca i8**, align 8
  %p = alloca i8**, align 8
  %nsref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  store i8** %names, i8*** %names.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !23
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 16
  %4 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !26
  %5 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %4, %struct.ref_s* %5, %struct.ref_s* %nsref) #5
  %6 = load i8**, i8*** %names.addr, align 8, !tbaa !1
  store i8** %6, i8*** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8**, i8*** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !65
  %conv = zext i32 %9 to i64
  %10 = load i8**, i8*** %p, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %11) #7
  %cmp = icmp eq i64 %conv, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i8**, i8*** %p, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %14 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nsref, i32 0, i32 0
  %rsize3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %15 = load i32, i32* %rsize3, align 4, !tbaa !65
  %conv4 = zext i32 %15 to i64
  %call5 = call i32 @memcmp(i8* %13, i8* %14, i64 %conv4) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load i8**, i8*** %p, align 8, !tbaa !1
  %17 = load i8**, i8*** %names.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8** %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv7 = trunc i64 %sub.ptr.div to i32
  store i32 %conv7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i8**, i8*** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %19 = bitcast %struct.ref_s* %nsref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gs_setblendmode(%struct.gs_state_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @gs_currentblendmode(%struct.gs_state_s*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_float_value(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double)* %set_value) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %set_value.addr = alloca i32 (%struct.gs_state_s*, double)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %value = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double)* %set_value, i32 (%struct.gs_state_s*, double)** %set_value.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %value) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32 (%struct.gs_state_s*, double)*, i32 (%struct.gs_state_s*, double)** %set_value.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %10 = load double, double* %value, align 8, !tbaa !66
  %call2 = call i32 %7(%struct.gs_state_s* %9, double %10) #5
  store i32 %call2, i32* %code, align 4, !tbaa !21
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gs_setopacityalpha(%struct.gs_state_s*, double) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @current_float_value(%struct.gs_context_state_s* %i_ctx_p, float (%struct.gs_state_s*)* %current_value) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current_value.addr = alloca float (%struct.gs_state_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store float (%struct.gs_state_s*)* %current_value, float (%struct.gs_state_s*)** %current_value.addr, align 8, !tbaa !1
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !28
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !29
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
  %9 = load float (%struct.gs_state_s*)*, float (%struct.gs_state_s*)** %current_value.addr, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call float %9(%struct.gs_state_s* %11) #5
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !33
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare float @gs_currentopacityalpha(%struct.gs_state_s*) #2

declare i32 @gs_setshapealpha(%struct.gs_state_s*, double) #2

declare float @gs_currentshapealpha(%struct.gs_state_s*) #2

declare i32 @gs_settextknockout(%struct.gs_state_s*, i32) #2

declare i32 @gs_currenttextknockout(%struct.gs_state_s*) #2

declare i32 @gs_push_transparency_state(%struct.gs_state_s*) #2

declare i32 @gs_pop_transparency_state(%struct.gs_state_s*, i32) #2

declare void @gs_trans_group_params_init(%struct.gs_transparency_group_params_s*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rect_param(%struct.gs_rect_s* %prect, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %prect.addr = alloca %struct.gs_rect_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %coords = alloca [4 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_rect_s* %prect, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast [4 x double]* %coords to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %coords, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %2, i32 4, double* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !21
  %3 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %coords, i32 0, i64 0
  %5 = load double, double* %arrayidx, align 8, !tbaa !66
  %6 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %6, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %5, double* %x, align 8, !tbaa !68
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %coords, i32 0, i64 1
  %7 = load double, double* %arrayidx1, align 8, !tbaa !66
  %8 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %8, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  store double %7, double* %y, align 8, !tbaa !71
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %coords, i32 0, i64 2
  %9 = load double, double* %arrayidx3, align 8, !tbaa !66
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %9, double* %x4, align 8, !tbaa !72
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %coords, i32 0, i64 3
  %11 = load double, double* %arrayidx5, align 8, !tbaa !66
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %q6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q6, i32 0, i32 1
  store double %11, double* %y7, align 8, !tbaa !73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast [4 x double]* %coords to i8*
  call void @llvm.lifetime.end(i64 32, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #2

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_is_ICC(%struct.gs_color_space_s*) #2

declare i32 @gscms_is_input(i8*) #2

declare i32 @gs_begin_transparency_group(%struct.gs_state_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @gs_end_transparency_group(%struct.gs_state_s*) #2

declare void @gs_trans_mask_params_init(%struct.gs_transparency_mask_params_s*, i32) #2

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare %struct.gs_function_s* @ref_function(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tf_using_function(double %in_val, float* %out, i8* %proc_data) #0 {
entry:
  %in_val.addr = alloca double, align 8
  %out.addr = alloca float*, align 8
  %proc_data.addr = alloca i8*, align 8
  %in = alloca float, align 4
  %pfn = alloca %struct.gs_function_s*, align 8
  store double %in_val, double* %in_val.addr, align 8, !tbaa !66
  store float* %out, float** %out.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast float* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %in_val.addr, align 8, !tbaa !66
  %conv = fptrunc double %1 to float
  store float %conv, float* %in, align 4, !tbaa !33
  %2 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.gs_function_s*
  store %struct.gs_function_s* %4, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %5, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %6 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !74
  %7 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %8 = load float*, float** %out.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_function_s* %7, float* %in, float* %8) #5
  %9 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast float* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %call
}

declare i32 @gs_begin_transparency_mask(%struct.gs_state_s*, %struct.gs_transparency_mask_params_s*, %struct.gs_rect_s*, i32) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mask_op(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, i32)* %mask_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mask_proc.addr = alloca i32 (%struct.gs_state_s*, i32)*, align 8
  %csel = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, i32)* %mask_proc, i32 (%struct.gs_state_s*, i32)** %mask_proc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %csel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %call = call i32 @int_param(%struct.ref_s* %3, i32 1, i32* %csel) #5
  store i32 %call, i32* %code, align 4, !tbaa !21
  %4 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32 (%struct.gs_state_s*, i32)*, i32 (%struct.gs_state_s*, i32)** %mask_proc.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %9 = load i32, i32* %csel, align 4, !tbaa !21
  %call1 = call i32 %6(%struct.gs_state_s* %8, i32 %9) #5
  store i32 %call1, i32* %code, align 4, !tbaa !21
  %10 = load i32, i32* %code, align 4, !tbaa !21
  %cmp2 = icmp sge i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %csel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_end_transparency_mask(%struct.gs_state_s*, i32) #2

declare i32 @int_param(%struct.ref_s*, i32, i32*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @gs_image3x_t_init(%struct.gs_image3x_s*, %struct.gs_color_space_s*) #2

declare i32 @pixel_image_params(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_pixel_image_s*, %struct.image_params_s*, i32, i32, %struct.gs_color_space_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mask_dict_param(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.image_params_s* %pip_data, i8* %dict_name, i32 %num_components, %struct.gs_image3x_mask_s* %pixm) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pip_data.addr = alloca %struct.image_params_s*, align 8
  %dict_name.addr = alloca i8*, align 8
  %num_components.addr = alloca i32, align 4
  %pixm.addr = alloca %struct.gs_image3x_mask_s*, align 8
  %pMaskDict = alloca %struct.ref_s*, align 8
  %ip_mask = alloca %struct.image_params_s, align 8
  %ignored = alloca i32, align 4
  %code = alloca i32, align 4
  %mcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.image_params_s* %pip_data, %struct.image_params_s** %pip_data.addr, align 8, !tbaa !1
  store i8* %dict_name, i8** %dict_name.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !21
  store %struct.gs_image3x_mask_s* %pixm, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pMaskDict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.image_params_s* %ip_mask to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %1) #1
  %2 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %dict_name.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* %6, %struct.ref_s** %pMaskDict) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pMaskDict, align 8, !tbaa !1
  %9 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %9, i32 0, i32 3
  %call1 = call i32 @data_image_params(%struct.gs_memory_s* %7, %struct.ref_s* %8, %struct.gs_data_image_s* %MaskDict, %struct.image_params_s* %ip_mask, i32 0, i32 1, i32 16, i32 0, i32 0) #5
  store i32 %call1, i32* %code, align 4, !tbaa !21
  store i32 %call1, i32* %mcode, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %pMaskDict, align 8, !tbaa !1
  %call3 = call i32 @dict_int_param(%struct.ref_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 1, i32 0, i32* %ignored) #5
  store i32 %call3, i32* %code, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %11 = load %struct.ref_s*, %struct.ref_s** %pMaskDict, align 8, !tbaa !1
  %12 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %12, i32 0, i32 0
  %call6 = call i32 @dict_int_param(%struct.ref_s* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 3, i32 -1, i32* %InterleaveType) #5
  store i32 %call6, i32* %code, align 4, !tbaa !21
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = load i32, i32* %num_components.addr, align 4, !tbaa !21
  %16 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %Matte = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Matte, i32 0, i32 0
  %call9 = call i32 @dict_floats_param(%struct.gs_memory_s* %13, %struct.ref_s* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %15, float* %arraydecay, float* null) #5
  store i32 %call9, i32* %code, align 4, !tbaa !21
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false, %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false.8
  %18 = load i32, i32* %code, align 4, !tbaa !21
  %cmp13 = icmp sgt i32 %18, 0
  %conv = zext i1 %cmp13 to i32
  %19 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %has_Matte = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %19, i32 0, i32 2
  store i32 %conv, i32* %has_Matte, align 4, !tbaa !75
  %20 = load %struct.image_params_s*, %struct.image_params_s** %pip_data.addr, align 8, !tbaa !1
  %MultipleDataSources = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %20, i32 0, i32 0
  %21 = load i32, i32* %MultipleDataSources, align 4, !tbaa !76
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.17

land.lhs.true:                                    ; preds = %if.end.12
  %22 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %InterleaveType14 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %22, i32 0, i32 0
  %23 = load i32, i32* %InterleaveType14, align 4, !tbaa !78
  %cmp15 = icmp ne i32 %23, 3
  br i1 %cmp15, label %if.then.26, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true, %if.end.12
  %MultipleDataSources18 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_mask, i32 0, i32 0
  %24 = load i32, i32* %MultipleDataSources18, align 4, !tbaa !76
  %tobool19 = icmp ne i32 %24, 0
  br i1 %tobool19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %25 = load i32, i32* %mcode, align 4, !tbaa !21
  %26 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %InterleaveType21 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %26, i32 0, i32 0
  %27 = load i32, i32* %InterleaveType21, align 4, !tbaa !78
  %cmp22 = icmp ne i32 %27, 3
  %conv23 = zext i1 %cmp22 to i32
  %cmp24 = icmp ne i32 %25, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false.20
  %28 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm.addr, align 8, !tbaa !1
  %InterleaveType28 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %28, i32 0, i32 0
  %29 = load i32, i32* %InterleaveType28, align 4, !tbaa !78
  %cmp29 = icmp eq i32 %29, 3
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.27
  %30 = load %struct.image_params_s*, %struct.image_params_s** %pip_data.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 1
  %31 = bitcast %struct.ref_s* %arrayidx to i8*
  %32 = load %struct.image_params_s*, %struct.image_params_s** %pip_data.addr, align 8, !tbaa !1
  %DataSource32 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource32, i32 0, i64 0
  %33 = bitcast %struct.ref_s* %arrayidx33 to i8*
  %call34 = call i8* @memmove(i8* %31, i8* %33, i64 1024) #6
  %34 = load %struct.image_params_s*, %struct.image_params_s** %pip_data.addr, align 8, !tbaa !1
  %DataSource35 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %34, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource35, i32 0, i64 0
  %DataSource37 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_mask, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource37, i32 0, i64 0
  %35 = bitcast %struct.ref_s* %arrayidx36 to i8*
  %36 = bitcast %struct.ref_s* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !30
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.31, %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.26, %if.then.11, %if.then
  %37 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.image_params_s* %ip_mask to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %40) #1
  %41 = bitcast %struct.ref_s** %pMaskDict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @zimage_setup(%struct.gs_context_state_s*, %struct.gs_pixel_image_s*, %struct.ref_s*, i32, i32) #2

declare i32 @data_image_params(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_data_image_s*, %struct.image_params_s*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

declare i32 @gs_push_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare i32 @gs_pop_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare i32 @gs_abort_pdf14trans_device(%struct.gs_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

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
!20 = !{!6, !2, i64 8}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 0}
!23 = !{!24, !2, i64 192}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!27, !2, i64 120}
!27 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!28 = !{!6, !2, i64 640}
!29 = !{!6, !9, i64 688}
!30 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 4, i64 4, !21, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !33, i64 8, i64 8, !32, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !32}
!31 = !{!12, !12, i64 0}
!32 = !{!13, !13, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !3, i64 0}
!35 = !{!10, !12, i64 0}
!36 = !{!37, !2, i64 0}
!37 = !{!"gs_transparency_group_params_s", !2, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !3, i64 32, !13, i64 40, !2, i64 48}
!38 = !{!39, !2, i64 64}
!39 = !{!"gs_color_space_s", !2, i64 0, !40, i64 8, !13, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!42, !2, i64 280}
!42 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !9, i64 4, !9, i64 8, !3, i64 12, !3, i64 16, !43, i64 20, !13, i64 144, !9, i64 152, !3, i64 156, !9, i64 216, !9, i64 220, !9, i64 224, !44, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !40, i64 288, !9, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!43 = !{!"gs_range_icc_s", !3, i64 0}
!44 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20}
!45 = !{!46, !9, i64 296}
!46 = !{!"gs_transparency_mask_params_s", !2, i64 0, !3, i64 8, !9, i64 12, !3, i64 16, !34, i64 272, !2, i64 280, !2, i64 288, !9, i64 296, !13, i64 304, !2, i64 312}
!47 = !{!39, !2, i64 0}
!48 = !{!49, !2, i64 24}
!49 = !{!"gs_color_space_type_s", !3, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!50 = !{!46, !9, i64 12}
!51 = !{!52, !9, i64 72}
!52 = !{!"gs_function_s", !53, i64 0, !55, i64 72}
!53 = !{!"gs_function_head_s", !9, i64 0, !54, i64 8}
!54 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!55 = !{!"gs_function_params_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24}
!56 = !{!52, !9, i64 88}
!57 = !{!46, !2, i64 280}
!58 = !{!46, !2, i64 288}
!59 = !{!46, !2, i64 0}
!60 = !{!61, !9, i64 572}
!61 = !{!"gs_image3x_s", !2, i64 0, !62, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !63, i64 584, !63, i64 1416}
!62 = !{!"gs_matrix_s", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20}
!63 = !{!"gs_image3x_mask_s", !9, i64 0, !3, i64 4, !9, i64 260, !64, i64 264}
!64 = !{!"gs_data_image_s", !2, i64 0, !62, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564}
!65 = !{!10, !9, i64 4}
!66 = !{!67, !67, i64 0}
!67 = !{!"double", !3, i64 0}
!68 = !{!69, !67, i64 0}
!69 = !{!"gs_rect_s", !70, i64 0, !70, i64 16}
!70 = !{!"gs_point_s", !67, i64 0, !67, i64 8}
!71 = !{!69, !67, i64 8}
!72 = !{!69, !67, i64 16}
!73 = !{!69, !67, i64 24}
!74 = !{!52, !2, i64 8}
!75 = !{!63, !9, i64 260}
!76 = !{!77, !9, i64 0}
!77 = !{!"image_params_s", !9, i64 0, !3, i64 8, !2, i64 1048}
!78 = !{!63, !9, i64 0}
