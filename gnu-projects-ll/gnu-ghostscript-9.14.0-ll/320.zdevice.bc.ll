; ModuleID = './zdevice.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gs_main_instance_s = type opaque
%struct.stack_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.6, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_stack_s*, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.8, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"1.copydevice2\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"0currentdevice\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1.devicename\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"0.doneshowpage\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0flushpage\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"7.getbitsrect\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"1.getdevice\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"1.getdefaultdevice\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"2.getdeviceparams\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"2.gethardwareparams\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"5makewordimagedevice\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"0nulldevice\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"2.outputpage\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"3.putdeviceparams\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"1.setdevice\00", align 1
@zdevice_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcopydevice2 }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentdevice }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdevicename }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdoneshowpage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zflushpage }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetbitsrect }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetdevice }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetdefaultdevice }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetdeviceparams }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgethardwareparams }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmakewordimagedevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znulldevice }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zoutputpage }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zputdeviceparams }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdevice }, %struct.op_def zeroinitializer], align 16
@zgetbitsrect.depths = internal constant [17 x i64] [i64 0, i64 256, i64 512, i64 0, i64 1024, i64 0, i64 0, i64 0, i64 2048, i64 0, i64 0, i64 0, i64 4096, i64 0, i64 0, i64 0, i64 8192], align 16
@gs_debug = external global [128 x i8], align 16
@.str.15 = private unnamed_addr constant [17 x i8] c"Outputpage start\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Outputpage end\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcurrentdevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
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
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !20
  %9 = bitcast %struct.gs_memory_s* %8 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %9, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !31
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !32
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
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  store %struct.gx_device_s* %16, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_ref_memory_s* %18, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call9 = call i32 @imemory_space(%struct.gs_ref_memory_s* %19) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %or = or i32 %cond, 112
  %add = add i32 4864, %or
  %conv = trunc i32 %add to i16
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %21 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zflushpage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call i32 @gs_flushpage(%struct.gs_state_s* %1) #4
  ret i32 %call
}

declare i32 @gs_flushpage(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zsetdevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %5, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !34
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4880
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 19
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %12) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 32
  %14 = load i32, i32* %LockSafetyParams, align 4, !tbaa !36
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.gx_device_s* %16, %17
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 27
  store i64 0, i64* %ShowpageCount, align 8, !tbaa !37
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %pdevice15 = bitcast %union.v* %value14 to %struct.gx_device_s**
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice15, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.gx_device_s* %20, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.13
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 0
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !19
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pdevice22 = bitcast %union.v* %value21 to %struct.gx_device_s**
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice22, align 8, !tbaa !1
  %call23 = call i32 @gs_setdevice_no_erase(%struct.gs_state_s* %22, %struct.gx_device_s* %24) #4
  store i32 %call23, i32* %code, align 4, !tbaa !34
  %25 = load i32, i32* %code, align 4, !tbaa !34
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.19
  %26 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.19
  %27 = load i32, i32* %code, align 4, !tbaa !34
  %cmp28 = icmp ne i32 %27, 0
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = trunc i32 %conv29 to i16
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %boolval = bitcast %union.v* %value31 to i16*
  store i16 %conv30, i16* %boolval, align 2, !tbaa !38
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 256, i16* %type_attrs33, align 2, !tbaa !33
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @invalidate_stack_devices(%struct.gs_context_state_s* %30) #4
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 0
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs34, align 8, !tbaa !19
  %call35 = call i8* @gs_state_client_data(%struct.gs_state_s* %32) #4
  %33 = bitcast i8* %call35 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %33, i32 0, i32 10
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  store i16 3584, i16* %type_attrs37, align 2, !tbaa !33
  %34 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.then.18, %if.then.11, %cond.end
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_setdevice_no_erase(%struct.gs_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal void @invalidate_stack_devices(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 1
  %2 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !39
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !31
  %cmp = icmp ne %struct.ref_s* %3, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 19
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcopydevice2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
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
  %3 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4896
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !35
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 19
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %12 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx12, align 1, !tbaa !35
  %conv13 = zext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call17 = call i32 @check_type_failed(%struct.ref_s* %14) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx19, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %boolval = bitcast %union.v* %value20 to i16*
  %18 = load i16, i16* %boolval, align 2, !tbaa !38
  %conv21 = zext i16 %18 to i32
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %call22 = call i32 @gs_copydevice2(%struct.gx_device_s** %new_dev, %struct.gx_device_s* %16, i32 %conv21, %struct.gs_memory_s* %21) #4
  store i32 %call22, i32* %code, align 4, !tbaa !34
  %22 = load i32, i32* %code, align 4, !tbaa !34
  %cmp23 = icmp slt i32 %22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  %23 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.18
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current28 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory27, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current28, align 8, !tbaa !40
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 3
  store %struct.gs_memory_s* %26, %struct.gs_memory_s** %memory29, align 8, !tbaa !20
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pdevice31 = bitcast %union.v* %value30 to %struct.gx_device_s**
  store %struct.gx_device_s* %28, %struct.gx_device_s** %pdevice31, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 2
  %31 = load i32, i32* %current_space, align 4, !tbaa !41
  %or = or i32 %31, 112
  %add = add i32 4864, %or
  %conv33 = trunc i32 %add to i16
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 %conv33, i16* %type_attrs36, align 2, !tbaa !33
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !5
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  store %struct.ref_s* %add.ptr40, %struct.ref_s** %p39, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.16, %cond.end
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zdevicename(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dname = alloca i8*, align 8
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
  %3 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4896
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 19
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %dname7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %dname7, align 8, !tbaa !42
  store i8* %12, i8** %dname, align 8, !tbaa !1
  %13 = load i8*, i8** %dname, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value8 to i8**
  store i8* %13, i8** %const_bytes, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  store i16 4704, i16* %type_attrs10, align 2, !tbaa !33
  %16 = load i8*, i8** %dname, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %16) #5
  %conv12 = trunc i64 %call11 to i32
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  store i32 %conv12, i32* %rsize, align 4, !tbaa !43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %18 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zdoneshowpage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %5 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !44
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %5(%struct.gx_device_s* %6) #4
  store %struct.gx_device_s* %call1, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 27
  %9 = load i64, i64* %ShowpageCount, align 8, !tbaa !37
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %ShowpageCount, align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetbitsrect(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %options = alloca i64, align 8
  %depth = alloca i32, align 4
  %raster = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %depth_option = alloca i64, align 8
  %std_depth = alloca i32, align 4
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
  %4 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %5) #1
  %6 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 294715392, i64* %options, align 8, !tbaa !45
  %9 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4896
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -7
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %16 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx5, align 1, !tbaa !35
  %conv6 = zext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv6, 19
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -7
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end:                                           ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  store %struct.gx_device_s* %20, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -6
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx11, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %22 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx14, align 1, !tbaa !35
  %conv15 = zext i8 %23 to i32
  %cmp16 = icmp eq i32 %conv15, 11
  br i1 %cmp16, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %do.body
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -6
  %call20 = call i32 @check_type_failed(%struct.ref_s* %arrayidx19) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.21:                                        ; preds = %do.body
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -6
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 1
  %intval = bitcast %union.v* %value23 to i64*
  %26 = load i64, i64* %intval, align 8, !tbaa !45
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width, align 4, !tbaa !46
  %conv24 = sext i32 %28 to i64
  %cmp25 = icmp ugt i64 %26, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.21
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.28:                                        ; preds = %if.end.21
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -6
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx29, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  %30 = load i64, i64* %intval31, align 8, !tbaa !45
  %conv32 = trunc i64 %30 to i32
  %p33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p33, i32 0, i32 0
  store i32 %conv32, i32* %x, align 4, !tbaa !47
  br label %do.body.34

do.body.34:                                       ; preds = %do.end
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -5
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx35, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %32 = bitcast i16* %type_attrs37 to i8*
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx38, align 1, !tbaa !35
  %conv39 = zext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 11
  br i1 %cmp40, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %do.body.34
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -5
  %call44 = call i32 @check_type_failed(%struct.ref_s* %arrayidx43) #4
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.45:                                        ; preds = %do.body.34
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -5
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx46, i32 0, i32 1
  %intval48 = bitcast %union.v* %value47 to i64*
  %36 = load i64, i64* %intval48, align 8, !tbaa !45
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height, align 4, !tbaa !50
  %conv49 = sext i32 %38 to i64
  %cmp50 = icmp ugt i64 %36, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.45
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.53:                                        ; preds = %if.end.45
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -5
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  %40 = load i64, i64* %intval58, align 8, !tbaa !45
  %conv59 = trunc i64 %40 to i32
  %p60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p60, i32 0, i32 1
  store i32 %conv59, i32* %y, align 4, !tbaa !51
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.55
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -4
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  %42 = bitcast i16* %type_attrs64 to i8*
  %arrayidx65 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx65, align 1, !tbaa !35
  %conv66 = zext i8 %43 to i32
  %cmp67 = icmp eq i32 %conv66, 11
  br i1 %cmp67, label %if.end.72, label %if.then.69

if.then.69:                                       ; preds = %do.body.61
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -4
  %call71 = call i32 @check_type_failed(%struct.ref_s* %arrayidx70) #4
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.72:                                        ; preds = %do.body.61
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -4
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx73, i32 0, i32 1
  %intval75 = bitcast %union.v* %value74 to i64*
  %46 = load i64, i64* %intval75, align 8, !tbaa !45
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width76 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 13
  %48 = load i32, i32* %width76, align 4, !tbaa !46
  %conv77 = sext i32 %48 to i64
  %cmp78 = icmp ugt i64 %46, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.72
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.81:                                        ; preds = %if.end.72
  br label %do.cond.82

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -4
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx84, i32 0, i32 1
  %intval86 = bitcast %union.v* %value85 to i64*
  %50 = load i64, i64* %intval86, align 8, !tbaa !45
  %conv87 = trunc i64 %50 to i32
  store i32 %conv87, i32* %w, align 4, !tbaa !34
  br label %do.body.88

do.body.88:                                       ; preds = %do.end.83
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -3
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx89, i32 0, i32 0
  %type_attrs91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 0
  %52 = bitcast i16* %type_attrs91 to i8*
  %arrayidx92 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx92, align 1, !tbaa !35
  %conv93 = zext i8 %53 to i32
  %cmp94 = icmp eq i32 %conv93, 11
  br i1 %cmp94, label %if.end.99, label %if.then.96

if.then.96:                                       ; preds = %do.body.88
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -3
  %call98 = call i32 @check_type_failed(%struct.ref_s* %arrayidx97) #4
  store i32 %call98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.99:                                        ; preds = %do.body.88
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -3
  %value101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx100, i32 0, i32 1
  %intval102 = bitcast %union.v* %value101 to i64*
  %56 = load i64, i64* %intval102, align 8, !tbaa !45
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height103 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 14
  %58 = load i32, i32* %height103, align 4, !tbaa !50
  %conv104 = sext i32 %58 to i64
  %cmp105 = icmp ugt i64 %56, %conv104
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.99
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.108:                                       ; preds = %if.end.99
  br label %do.cond.109

do.cond.109:                                      ; preds = %if.end.108
  br label %do.end.110

do.end.110:                                       ; preds = %do.cond.109
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -3
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx111, i32 0, i32 1
  %intval113 = bitcast %union.v* %value112 to i64*
  %60 = load i64, i64* %intval113, align 8, !tbaa !45
  %conv114 = trunc i64 %60 to i32
  store i32 %conv114, i32* %h, align 4, !tbaa !34
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -2
  %tas116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx115, i32 0, i32 0
  %type_attrs117 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas116, i32 0, i32 0
  %62 = bitcast i16* %type_attrs117 to i8*
  %arrayidx118 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx118, align 1, !tbaa !35
  %conv119 = zext i8 %63 to i32
  %cmp120 = icmp eq i32 %conv119, 11
  br i1 %cmp120, label %if.end.125, label %if.then.122

if.then.122:                                      ; preds = %do.end.110
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -2
  %call124 = call i32 @check_type_failed(%struct.ref_s* %arrayidx123) #4
  store i32 %call124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.125:                                       ; preds = %do.end.110
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -2
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx126, i32 0, i32 1
  %intval128 = bitcast %union.v* %value127 to i64*
  %66 = load i64, i64* %intval128, align 8, !tbaa !45
  %cmp129 = icmp eq i64 %66, -1
  br i1 %cmp129, label %if.then.131, label %if.else

if.then.131:                                      ; preds = %if.end.125
  %67 = load i64, i64* %options, align 8, !tbaa !45
  %or = or i64 %67, 32
  store i64 %or, i64* %options, align 8, !tbaa !45
  br label %if.end.150

if.else:                                          ; preds = %if.end.125
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -2
  %value133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx132, i32 0, i32 1
  %intval134 = bitcast %union.v* %value133 to i64*
  %69 = load i64, i64* %intval134, align 8, !tbaa !45
  %cmp135 = icmp eq i64 %69, 0
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.else
  %70 = load i64, i64* %options, align 8, !tbaa !45
  %or138 = or i64 %70, 16
  store i64 %or138, i64* %options, align 8, !tbaa !45
  br label %if.end.149

if.else.139:                                      ; preds = %if.else
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -2
  %value141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx140, i32 0, i32 1
  %intval142 = bitcast %union.v* %value141 to i64*
  %72 = load i64, i64* %intval142, align 8, !tbaa !45
  %cmp143 = icmp eq i64 %72, 1
  br i1 %cmp143, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.else.139
  %73 = load i64, i64* %options, align 8, !tbaa !45
  %or146 = or i64 %73, 64
  store i64 %or146, i64* %options, align 8, !tbaa !45
  br label %if.end.148

if.else.147:                                      ; preds = %if.else.139
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.148:                                       ; preds = %if.then.145
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.137
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.131
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  %tas151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs152 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas151, i32 0, i32 0
  %75 = bitcast i16* %type_attrs152 to i8*
  %arrayidx153 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx153, align 1, !tbaa !35
  %conv154 = zext i8 %76 to i32
  %cmp155 = icmp eq i32 %conv154, 14
  br i1 %cmp155, label %if.then.157, label %if.else.161

if.then.157:                                      ; preds = %if.end.150
  %77 = load i64, i64* %options, align 8, !tbaa !45
  %or158 = or i64 %77, 1
  store i64 %or158, i64* %options, align 8, !tbaa !45
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 11
  %depth159 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %79 = load i16, i16* %depth159, align 2, !tbaa !52
  %conv160 = zext i16 %79 to i32
  store i32 %conv160, i32* %depth, align 4, !tbaa !34
  br label %if.end.198

if.else.161:                                      ; preds = %if.end.150
  %80 = bitcast i64* %depth_option to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = bitcast i32* %std_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  br label %do.body.162

do.body.162:                                      ; preds = %if.else.161
  %82 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -1
  %tas164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx163, i32 0, i32 0
  %type_attrs165 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas164, i32 0, i32 0
  %83 = bitcast i16* %type_attrs165 to i8*
  %arrayidx166 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx166, align 1, !tbaa !35
  %conv167 = zext i8 %84 to i32
  %cmp168 = icmp eq i32 %conv167, 11
  br i1 %cmp168, label %if.end.173, label %if.then.170

if.then.170:                                      ; preds = %do.body.162
  %85 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -1
  %call172 = call i32 @check_type_failed(%struct.ref_s* %arrayidx171) #4
  store i32 %call172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %do.body.162
  %86 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 -1
  %value175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx174, i32 0, i32 1
  %intval176 = bitcast %union.v* %value175 to i64*
  %87 = load i64, i64* %intval176, align 8, !tbaa !45
  %cmp177 = icmp ugt i64 %87, 16
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.173
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.180:                                       ; preds = %if.end.173
  br label %do.cond.181

do.cond.181:                                      ; preds = %if.end.180
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  %88 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -1
  %value184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx183, i32 0, i32 1
  %intval185 = bitcast %union.v* %value184 to i64*
  %89 = load i64, i64* %intval185, align 8, !tbaa !45
  %conv186 = trunc i64 %89 to i32
  store i32 %conv186, i32* %std_depth, align 4, !tbaa !34
  %90 = load i32, i32* %std_depth, align 4, !tbaa !34
  %idxprom = sext i32 %90 to i64
  %arrayidx187 = getelementptr inbounds [17 x i64], [17 x i64]* @zgetbitsrect.depths, i32 0, i64 %idxprom
  %91 = load i64, i64* %arrayidx187, align 8, !tbaa !45
  store i64 %91, i64* %depth_option, align 8, !tbaa !45
  %92 = load i64, i64* %depth_option, align 8, !tbaa !45
  %cmp188 = icmp eq i64 %92, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %do.end.182
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.191:                                       ; preds = %do.end.182
  %93 = load i64, i64* %depth_option, align 8, !tbaa !45
  %or192 = or i64 %93, 1
  %94 = load i64, i64* %options, align 8, !tbaa !45
  %or193 = or i64 %94, %or192
  store i64 %or193, i64* %options, align 8, !tbaa !45
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info194 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info194, i32 0, i32 1
  %96 = load i32, i32* %num_components, align 4, !tbaa !53
  %97 = load i64, i64* %options, align 8, !tbaa !45
  %and195 = and i64 %97, 16
  %tobool = icmp ne i64 %and195, 0
  %cond196 = select i1 %tobool, i32 0, i32 1
  %add = add nsw i32 %96, %cond196
  %98 = load i32, i32* %std_depth, align 4, !tbaa !34
  %mul = mul nsw i32 %add, %98
  store i32 %mul, i32* %depth, align 4, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.191, %if.then.190, %if.then.179, %if.then.170
  %99 = bitcast i32* %std_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i64* %depth_option to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.268 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.198

if.end.198:                                       ; preds = %cleanup.cont, %if.then.157
  %101 = load i32, i32* %w, align 4, !tbaa !34
  %cmp199 = icmp eq i32 %101, 0
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.198
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.202:                                       ; preds = %if.end.198
  %102 = load i32, i32* %w, align 4, !tbaa !34
  %103 = load i32, i32* %depth, align 4, !tbaa !34
  %mul203 = mul nsw i32 %102, %103
  %add204 = add nsw i32 %mul203, 7
  %shr = ashr i32 %add204, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !34
  %104 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 0
  %type_attrs206 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas205, i32 0, i32 0
  %105 = load i16, i16* %type_attrs206, align 2, !tbaa !33
  %conv207 = zext i16 %105 to i32
  %and208 = and i32 %conv207, 16144
  %cmp209 = icmp eq i32 %and208, 4624
  br i1 %cmp209, label %if.end.223, label %if.then.211

if.then.211:                                      ; preds = %if.end.202
  %106 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %type_attrs213 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas212, i32 0, i32 0
  %107 = bitcast i16* %type_attrs213 to i8*
  %arrayidx214 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx214, align 1, !tbaa !35
  %conv215 = zext i8 %108 to i32
  %cmp216 = icmp eq i32 %conv215, 18
  br i1 %cmp216, label %cond.false.220, label %cond.true.218

cond.true.218:                                    ; preds = %if.then.211
  %109 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call219 = call i32 @check_type_failed(%struct.ref_s* %109) #4
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.then.211
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.218
  %cond222 = phi i32 [ %call219, %cond.true.218 ], [ -7, %cond.false.220 ]
  store i32 %cond222, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.223:                                       ; preds = %if.end.202
  %110 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas224, i32 0, i32 2
  %111 = load i32, i32* %rsize, align 4, !tbaa !43
  %112 = load i32, i32* %raster, align 4, !tbaa !34
  %div = udiv i32 %111, %112
  store i32 %div, i32* %num_rows, align 4, !tbaa !34
  %113 = load i32, i32* %h, align 4, !tbaa !34
  %114 = load i32, i32* %num_rows, align 4, !tbaa !34
  %cmp225 = icmp slt i32 %113, %114
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %if.end.223
  %115 = load i32, i32* %h, align 4, !tbaa !34
  br label %cond.end.229

cond.false.228:                                   ; preds = %if.end.223
  %116 = load i32, i32* %num_rows, align 4, !tbaa !34
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.true.227
  %cond230 = phi i32 [ %115, %cond.true.227 ], [ %116, %cond.false.228 ]
  store i32 %cond230, i32* %h, align 4, !tbaa !34
  %117 = load i32, i32* %h, align 4, !tbaa !34
  %cmp231 = icmp eq i32 %117, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %cond.end.229
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.234:                                       ; preds = %cond.end.229
  %p235 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x236 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p235, i32 0, i32 0
  %118 = load i32, i32* %x236, align 4, !tbaa !47
  %119 = load i32, i32* %w, align 4, !tbaa !34
  %add237 = add nsw i32 %118, %119
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x238 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add237, i32* %x238, align 4, !tbaa !54
  %p239 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y240 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p239, i32 0, i32 1
  %120 = load i32, i32* %y240, align 4, !tbaa !51
  %121 = load i32, i32* %h, align 4, !tbaa !34
  %add241 = add nsw i32 %120, %121
  %q242 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y243 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q242, i32 0, i32 1
  store i32 %add241, i32* %y243, align 4, !tbaa !55
  %122 = load i64, i64* %options, align 8, !tbaa !45
  %options244 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 %122, i64* %options244, align 8, !tbaa !56
  %123 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value245 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 0, i32 1
  %bytes = bitcast %union.v* %value245 to i8**
  %124 = load i8*, i8** %bytes, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %124, i8** %arrayidx246, align 8, !tbaa !1
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %125, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %126 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !58
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call247 = call i32 %126(%struct.gx_device_s* %127, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #4
  store i32 %call247, i32* %code, align 4, !tbaa !34
  %128 = load i32, i32* %code, align 4, !tbaa !34
  %cmp248 = icmp slt i32 %128, 0
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.234
  %129 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.251:                                       ; preds = %if.end.234
  %130 = load i32, i32* %h, align 4, !tbaa !34
  %conv252 = sext i32 %130 to i64
  %131 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr253 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 -7
  %value254 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr253, i32 0, i32 1
  %intval255 = bitcast %union.v* %value254 to i64*
  store i64 %conv252, i64* %intval255, align 8, !tbaa !45
  %132 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i64 -7
  %tas257 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr256, i32 0, i32 0
  %type_attrs258 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas257, i32 0, i32 0
  store i16 2816, i16* %type_attrs258, align 2, !tbaa !33
  %133 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i64 -6
  %134 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %135 = bitcast %struct.ref_s* %arrayidx259 to i8*
  %136 = bitcast %struct.ref_s* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 16, i32 8, i1 false), !tbaa.struct !59
  %137 = load i32, i32* %h, align 4, !tbaa !34
  %138 = load i32, i32* %raster, align 4, !tbaa !34
  %mul260 = mul i32 %137, %138
  %139 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 -6
  %tas262 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr261, i32 0, i32 0
  %rsize263 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas262, i32 0, i32 2
  store i32 %mul260, i32* %rsize263, align 4, !tbaa !43
  %140 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack264 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %140, i32 0, i32 26
  %stack265 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack264, i32 0, i32 0
  %p266 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack265, i32 0, i32 0
  %141 = load %struct.ref_s*, %struct.ref_s** %p266, align 8, !tbaa !5
  %add.ptr267 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i64 -6
  store %struct.ref_s* %add.ptr267, %struct.ref_s** %p266, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

cleanup.268:                                      ; preds = %if.end.251, %if.then.250, %if.then.233, %cond.end.221, %if.then.201, %cleanup, %if.else.147, %if.then.122, %if.then.107, %if.then.96, %if.then.80, %if.then.69, %if.then.52, %if.then.42, %if.then.27, %if.then.18, %cond.end
  %142 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %149) #1
  %150 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !45
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval3 = bitcast %union.v* %value2 to i64*
  %11 = load i64, i64* %intval3, align 8, !tbaa !45
  %conv4 = trunc i64 %11 to i32
  %conv5 = sext i32 %conv4 to i64
  %cmp6 = icmp ne i64 %9, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %13 = load i64, i64* %intval11, align 8, !tbaa !45
  %conv12 = trunc i64 %13 to i32
  %call13 = call %struct.gx_device_s* @gs_getdevice(i32 %conv12) #4
  store %struct.gx_device_s* %call13, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gx_device_s* %14, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.9
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pdevice = bitcast %union.v* %value18 to %struct.gx_device_s**
  store %struct.gx_device_s* %15, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  store i16 4960, i16* %type_attrs20, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.8, %if.then
  %18 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdefaultdevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %call = call %struct.gx_device_s* @gs_getdefaultdevice() #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !31
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !32
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %9, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  store %struct.gx_device_s* %11, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4960, i16* %type_attrs, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %14 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdeviceparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zget_device_params(%struct.gs_context_state_s* %0, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zgethardwareparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zget_device_params(%struct.gs_context_state_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakewordimagedevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %new_dev = alloca %struct.gx_device_s*, align 8
  %colors = alloca i8*, align 8
  %colors_size = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %colors_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx1, align 1, !tbaa !35
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %15 = load i64, i64* %intval, align 8, !tbaa !45
  %cmp5 = icmp ugt i64 %15, 2147483647
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %17 = bitcast i16* %type_attrs12 to i8*
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %conv14 = zext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 11
  br i1 %cmp15, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  %call19 = call i32 @check_type_failed(%struct.ref_s* %arrayidx18) #4
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.body.9
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx21, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %21 = load i64, i64* %intval23, align 8, !tbaa !45
  %cmp24 = icmp ugt i64 %21, 2147483647
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.20
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %23 = bitcast i16* %type_attrs31 to i8*
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx32, align 1, !tbaa !35
  %conv33 = zext i8 %24 to i32
  %cmp34 = icmp eq i32 %conv33, 1
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %do.end.29
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call37 = call i32 @check_type_failed(%struct.ref_s* %25) #4
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.end.29
  %26 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %27 = bitcast i16* %type_attrs40 to i8*
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx41, align 1, !tbaa !35
  %conv42 = zext i8 %28 to i32
  %cmp43 = icmp eq i32 %conv42, 14
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.38
  store i8* null, i8** %colors, align 8, !tbaa !1
  store i32 -24, i32* %colors_size, align 4, !tbaa !34
  br label %if.end.90

if.else:                                          ; preds = %if.end.38
  %29 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %30 = bitcast i16* %type_attrs47 to i8*
  %arrayidx48 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx48, align 1, !tbaa !35
  %conv49 = zext i8 %31 to i32
  %cmp50 = icmp eq i32 %conv49, 11
  br i1 %cmp50, label %if.then.52, label %if.else.71

if.then.52:                                       ; preds = %if.else
  %32 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval54 = bitcast %union.v* %value53 to i64*
  %33 = load i64, i64* %intval54, align 8, !tbaa !45
  %cmp55 = icmp ne i64 %33, 16
  br i1 %cmp55, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then.52
  %34 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  %35 = load i64, i64* %intval58, align 8, !tbaa !45
  %cmp59 = icmp ne i64 %35, 24
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %land.lhs.true
  %36 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %intval63 = bitcast %union.v* %value62 to i64*
  %37 = load i64, i64* %intval63, align 8, !tbaa !45
  %cmp64 = icmp ne i64 %37, 32
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.61
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %land.lhs.true.61, %land.lhs.true, %if.then.52
  store i8* null, i8** %colors, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %intval69 = bitcast %union.v* %value68 to i64*
  %39 = load i64, i64* %intval69, align 8, !tbaa !45
  %sub = sub nsw i64 0, %39
  %conv70 = trunc i64 %sub to i32
  store i32 %conv70, i32* %colors_size, align 4, !tbaa !34
  br label %if.end.89

if.else.71:                                       ; preds = %if.else
  %40 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  %41 = bitcast i16* %type_attrs73 to i8*
  %arrayidx74 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx74, align 1, !tbaa !35
  %conv75 = zext i8 %42 to i32
  %cmp76 = icmp eq i32 %conv75, 18
  br i1 %cmp76, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %if.else.71
  %43 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call79 = call i32 @check_type_failed(%struct.ref_s* %43) #4
  store i32 %call79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.else.71
  %44 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  %45 = load i32, i32* %rsize, align 4, !tbaa !43
  %cmp82 = icmp ugt i32 %45, 768
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.end.80
  %46 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %bytes = bitcast %union.v* %value86 to i8**
  %47 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %47, i8** %colors, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize88 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas87, i32 0, i32 2
  %49 = load i32, i32* %rsize88, align 4, !tbaa !43
  store i32 %49, i32* %colors_size, align 4, !tbaa !34
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.85, %if.end.67
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.45
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -4
  %call92 = call i32 @read_matrix(%struct.gs_memory_s* %52, %struct.ref_s* %add.ptr91, %struct.gs_matrix_s* %imat) #4
  store i32 %call92, i32* %code, align 4, !tbaa !34
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.90
  %54 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.90
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -3
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx97, i32 0, i32 1
  %intval99 = bitcast %union.v* %value98 to i64*
  %56 = load i64, i64* %intval99, align 8, !tbaa !45
  %conv100 = trunc i64 %56 to i32
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -2
  %value102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx101, i32 0, i32 1
  %intval103 = bitcast %union.v* %value102 to i64*
  %58 = load i64, i64* %intval103, align 8, !tbaa !45
  %conv104 = trunc i64 %58 to i32
  %59 = load i8*, i8** %colors, align 8, !tbaa !1
  %60 = load i32, i32* %colors_size, align 4, !tbaa !34
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %boolval = bitcast %union.v* %value105 to i16*
  %62 = load i16, i16* %boolval, align 2, !tbaa !38
  %conv106 = zext i16 %62 to i32
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 1
  %current108 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 0
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current108, align 8, !tbaa !40
  %65 = bitcast %struct.gs_ref_memory_s* %64 to %struct.gs_memory_s*
  %call109 = call i32 @gs_makewordimagedevice(%struct.gx_device_s** %new_dev, %struct.gs_matrix_s* %imat, i32 %conv100, i32 %conv104, i8* %59, i32 %60, i32 %conv106, i32 1, %struct.gs_memory_s* %65) #4
  store i32 %call109, i32* %code, align 4, !tbaa !34
  %66 = load i32, i32* %code, align 4, !tbaa !34
  %cmp110 = icmp eq i32 %66, 0
  br i1 %cmp110, label %if.then.112, label %if.end.129

if.then.112:                                      ; preds = %if.end.96
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %current114 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory113, i32 0, i32 0
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current114, align 8, !tbaa !40
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 3
  store %struct.gs_memory_s* %69, %struct.gs_memory_s** %memory115, align 8, !tbaa !20
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -4
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr116, i32 0, i32 1
  %pdevice = bitcast %union.v* %value117 to %struct.gx_device_s**
  store %struct.gx_device_s* %71, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 1
  %current119 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory118, i32 0, i32 0
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current119, align 8, !tbaa !40
  %call120 = call i32 @imemory_space(%struct.gs_ref_memory_s* %74) #4
  %or = or i32 %call120, 112
  %add = add i32 4864, %or
  %conv121 = trunc i32 %add to i16
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -4
  %tas123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr122, i32 0, i32 0
  %type_attrs124 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas123, i32 0, i32 0
  store i16 %conv121, i16* %type_attrs124, align 2, !tbaa !33
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack125 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 26
  %stack126 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack125, i32 0, i32 0
  %p127 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack126, i32 0, i32 0
  %77 = load %struct.ref_s*, %struct.ref_s** %p127, align 8, !tbaa !5
  %add.ptr128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 -4
  store %struct.ref_s* %add.ptr128, %struct.ref_s** %p127, align 8, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.112, %if.end.96
  %78 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.129, %if.then.95, %if.then.84, %if.then.78, %if.then.66, %if.then.36, %if.then.26, %if.then.17, %if.then.7, %if.then
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %colors_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i8** %colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %83) #1
  %84 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @znulldevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call = call i32 @gs_nulldevice(%struct.gs_state_s* %1) #4
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @invalidate_stack_devices(%struct.gs_context_state_s* %2) #4
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !19
  %call2 = call i8* @gs_state_client_data(%struct.gs_state_s* %4) #4
  %5 = bitcast i8* %call2 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %5, i32 0, i32 10
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zoutputpage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %minst31 = alloca %struct.gs_main_instance_s*, align 8
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
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !35
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %9 = bitcast i16* %type_attrs5 to i8*
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1, !tbaa !35
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %11) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %12 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !35
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.12
  %13 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !62
  %call14 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %16) #4
  store %struct.gs_main_instance_s* %call14, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  call void @print_resource_usage(%struct.gs_main_instance_s* %17, %struct.gs_dual_memory_s* %memory15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #4
  %19 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.12
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %23 = load i64, i64* %intval, align 8, !tbaa !45
  %conv18 = trunc i64 %23 to i32
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %boolval = bitcast %union.v* %value19 to i16*
  %25 = load i16, i16* %boolval, align 2, !tbaa !38
  %conv20 = zext i16 %25 to i32
  %call21 = call i32 @gs_output_page(%struct.gs_state_s* %21, i32 %conv18, i32 %conv20) #4
  store i32 %call21, i32* %code, align 4, !tbaa !34
  %26 = load i32, i32* %code, align 4, !tbaa !34
  %cmp22 = icmp slt i32 %26, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.16
  %27 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.16
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p28, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p28, align 8, !tbaa !5
  %30 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !35
  %tobool29 = icmp ne i8 %30, 0
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end.25
  %31 = bitcast %struct.gs_main_instance_s** %minst31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !40
  %non_gc_memory34 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !62
  %call35 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %34) #4
  store %struct.gs_main_instance_s* %call35, %struct.gs_main_instance_s** %minst31, align 8, !tbaa !1
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst31, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  call void @print_resource_usage(%struct.gs_main_instance_s* %35, %struct.gs_dual_memory_s* %memory36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #4
  %37 = bitcast %struct.gs_main_instance_s** %minst31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.24, %if.then.10, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @zputdeviceparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %count = alloca i32, align 4
  %prequire_all = alloca %struct.ref_s*, align 8
  %ppolicy = alloca %struct.ref_s*, align 8
  %pdev = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %list = alloca %struct.stack_param_list_s, align 8
  %code = alloca i32, align 4
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %i = alloca i32, align 4
  %dest = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %was_open = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack) #4
  store i32 %call, i32* %count, align 4, !tbaa !34
  %2 = bitcast %struct.ref_s** %prequire_all to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s** %ppolicy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %old_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %old_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %dest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %count, align 4, !tbaa !34
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %14 = load i32, i32* %count, align 4, !tbaa !34
  %conv = zext i32 %14 to i64
  %call3 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack2, i64 %conv) #4
  store %struct.ref_s* %call3, %struct.ref_s** %prequire_all, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %16 = load i32, i32* %count, align 4, !tbaa !34
  %add = add i32 %16, 1
  %conv6 = zext i32 %add to i64
  %call7 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack5, i64 %conv6) #4
  store %struct.ref_s* %call7, %struct.ref_s** %ppolicy, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %18 = load i32, i32* %count, align 4, !tbaa !34
  %add10 = add i32 %18, 2
  %conv11 = zext i32 %add10 to i64
  %call12 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack9, i64 %conv11) #4
  store %struct.ref_s* %call12, %struct.ref_s** %pdev, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %pdev, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.ref_s* %19, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %20 = load %struct.ref_s*, %struct.ref_s** %prequire_all, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %21 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  %23 = load %struct.ref_s*, %struct.ref_s** %pdev, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %24 = load i16, i16* %type_attrs24, align 2, !tbaa !33
  %conv25 = zext i16 %24 to i32
  %and = and i32 %conv25, 16144
  %cmp26 = icmp eq i32 %and, 4880
  br i1 %cmp26, label %if.end.35, label %if.then.28

if.then.28:                                       ; preds = %do.body.22
  %25 = load %struct.ref_s*, %struct.ref_s** %pdev, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %26 = bitcast i16* %type_attrs30 to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx31, align 1, !tbaa !35
  %conv32 = zext i8 %27 to i32
  %cmp33 = icmp eq i32 %conv32, 19
  %lnot = xor i1 %cmp33, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %do.body.22
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %28 = load %struct.ref_s*, %struct.ref_s** %pdev, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  store %struct.gx_device_s* %29, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %ppolicy, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %prequire_all, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %boolval = bitcast %union.v* %value40 to i16*
  %33 = load i16, i16* %boolval, align 2, !tbaa !38
  %conv41 = zext i16 %33 to i32
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %call42 = call i32 @stack_param_list_read(%struct.stack_param_list_s* %list, %struct.ref_stack_s* %stack39, i32 0, %struct.ref_s* %31, i32 %conv41, %struct.gs_ref_memory_s* %35) #4
  store i32 %call42, i32* %code, align 4, !tbaa !34
  %36 = load i32, i32* %code, align 4, !tbaa !34
  %cmp43 = icmp slt i32 %36, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.37
  %37 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %do.end.37
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 13
  %39 = load i32, i32* %width, align 4, !tbaa !46
  store i32 %39, i32* %old_width, align 4, !tbaa !34
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 14
  %41 = load i32, i32* %height, align 4, !tbaa !50
  store i32 %41, i32* %old_height, align 4, !tbaa !34
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %43 = bitcast %struct.stack_param_list_s* %list to %struct.gs_param_list_s*
  %call47 = call i32 @gs_putdeviceparams(%struct.gx_device_s* %42, %struct.gs_param_list_s* %43) #4
  store i32 %call47, i32* %code, align 4, !tbaa !34
  %44 = load i32, i32* %count, align 4, !tbaa !34
  %sub = sub i32 %44, 2
  store i32 %sub, i32* %dest, align 4, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %45 = load i32, i32* %i, align 4, !tbaa !34
  %46 = load i32, i32* %count, align 4, !tbaa !34
  %shr = lshr i32 %46, 1
  %cmp48 = icmp ult i32 %45, %shr
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %47 to i64
  %results = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 6
  %48 = load i32*, i32** %results, align 8, !tbaa !70
  %arrayidx50 = getelementptr inbounds i32, i32* %48, i64 %idxprom
  %49 = load i32, i32* %arrayidx50, align 4, !tbaa !34
  %cmp51 = icmp slt i32 %49, 0
  br i1 %cmp51, label %if.then.53, label %if.end.74

if.then.53:                                       ; preds = %for.body
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %51 = load i32, i32* %dest, align 4, !tbaa !34
  %conv56 = sext i32 %51 to i64
  %call57 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack55, i64 %conv56) #4
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack59 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack58, i32 0, i32 0
  %53 = load i32, i32* %count, align 4, !tbaa !34
  %54 = load i32, i32* %i, align 4, !tbaa !34
  %shl = shl i32 %54, 1
  %sub60 = sub i32 %53, %shl
  %sub61 = sub i32 %sub60, 2
  %conv62 = zext i32 %sub61 to i64
  %call63 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack59, i64 %conv62) #4
  %55 = bitcast %struct.ref_s* %call57 to i8*
  %56 = bitcast %struct.ref_s* %call63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false), !tbaa.struct !59
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom64 = sext i32 %58 to i64
  %results65 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 6
  %59 = load i32*, i32** %results65, align 8, !tbaa !70
  %arrayidx66 = getelementptr inbounds i32, i32* %59, i64 %idxprom64
  %60 = load i32, i32* %arrayidx66, align 4, !tbaa !34
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 26
  %stack68 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack67, i32 0, i32 0
  %62 = load i32, i32* %dest, align 4, !tbaa !34
  %sub69 = sub nsw i32 %62, 1
  %conv70 = sext i32 %sub69 to i64
  %call71 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack68, i64 %conv70) #4
  %call72 = call i32 @gs_errorname(%struct.gs_context_state_s* %57, i32 %60, %struct.ref_s* %call71) #4
  %63 = load i32, i32* %dest, align 4, !tbaa !34
  %sub73 = sub nsw i32 %63, 2
  store i32 %sub73, i32* %dest, align 4, !tbaa !34
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.53, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %64 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %memory75 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !72
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !73
  %memory76 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !72
  %results77 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 6
  %68 = load i32*, i32** %results77, align 8, !tbaa !70
  %69 = bitcast i32* %68 to i8*
  call void %66(%struct.gs_memory_s* %67, i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
  %70 = load i32, i32* %code, align 4, !tbaa !34
  %cmp78 = icmp slt i32 %70, 0
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %for.end
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack82 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack81, i32 0, i32 0
  %72 = load i32, i32* %dest, align 4, !tbaa !34
  %add83 = add nsw i32 %72, 1
  call void @ref_stack_pop(%struct.ref_stack_s* %stack82, i32 %add83) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %for.end
  %73 = load i32, i32* %code, align 4, !tbaa !34
  %cmp85 = icmp sgt i32 %73, 0
  br i1 %cmp85, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.84
  %74 = load i32, i32* %code, align 4, !tbaa !34
  %cmp87 = icmp eq i32 %74, 0
  br i1 %cmp87, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %lor.lhs.false
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %width89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 13
  %76 = load i32, i32* %width89, align 4, !tbaa !46
  %77 = load i32, i32* %old_width, align 4, !tbaa !34
  %cmp90 = icmp ne i32 %76, %77
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height93, align 4, !tbaa !50
  %80 = load i32, i32* %old_height, align 4, !tbaa !34
  %cmp94 = icmp ne i32 %79, %80
  br i1 %cmp94, label %if.then.96, label %if.end.109

if.then.96:                                       ; preds = %lor.lhs.false.92, %land.lhs.true, %if.end.84
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 0
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !19
  %call97 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %82) #4
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp98 = icmp eq %struct.gx_device_s* %call97, %83
  br i1 %cmp98, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %if.then.96
  %84 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 9
  %86 = load i32, i32* %is_open, align 4, !tbaa !75
  store i32 %86, i32* %was_open, align 4, !tbaa !34
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 0
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs101, align 8, !tbaa !19
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call102 = call i32 @gs_setdevice_no_erase(%struct.gs_state_s* %88, %struct.gx_device_s* %89) #4
  store i32 %call102, i32* %code, align 4, !tbaa !34
  %90 = load i32, i32* %was_open, align 4, !tbaa !34
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %land.lhs.true.103, label %if.end.107

land.lhs.true.103:                                ; preds = %if.then.100
  %91 = load i32, i32* %code, align 4, !tbaa !34
  %cmp104 = icmp sge i32 %91, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.103
  store i32 1, i32* %code, align 4, !tbaa !34
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %land.lhs.true.103, %if.then.100
  %92 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.96
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %lor.lhs.false.92, %lor.lhs.false
  %93 = load i32, i32* %code, align 4, !tbaa !34
  %cmp110 = icmp slt i32 %93, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  %94 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %if.end.109
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 26
  %stack115 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack114, i32 0, i32 0
  %96 = load i32, i32* %count, align 4, !tbaa !34
  %add116 = add i32 %96, 1
  call void @ref_stack_pop(%struct.ref_stack_s* %stack115, i32 %add116) #4
  %97 = load i32, i32* %code, align 4, !tbaa !34
  %conv117 = trunc i32 %97 to i16
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 26
  %stack119 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack118, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack119, i32 0, i32 0
  %99 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %value120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 1
  %boolval121 = bitcast %union.v* %value120 to i16*
  store i16 %conv117, i16* %boolval121, align 2, !tbaa !38
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 26
  %stack123 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 0
  %101 = load %struct.ref_s*, %struct.ref_s** %p124, align 8, !tbaa !5
  %tas125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 0
  %type_attrs126 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas125, i32 0, i32 0
  store i16 256, i16* %type_attrs126, align 2, !tbaa !33
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs127 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 0
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs127, align 8, !tbaa !19
  %call128 = call i8* @gs_state_client_data(%struct.gs_state_s* %103) #4
  %104 = bitcast i8* %call128 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %104, i32 0, i32 10
  %tas129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs130 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas129, i32 0, i32 0
  store i16 3584, i16* %type_attrs130, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.113, %if.then.112, %if.then.80, %if.then.45, %if.then.28, %if.then.20, %if.then.15, %if.then
  %105 = bitcast i32* %dest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %old_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %old_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %110) #1
  %111 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast %struct.ref_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.ref_s** %ppolicy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.ref_s** %prequire_all to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare i32 @gs_copydevice2(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gx_device_s* @gs_getdevice(i32) #2

declare %struct.gx_device_s* @gs_getdefaultdevice() #2

; Function Attrs: nounwind uwtable
define internal i32 @zget_device_params(%struct.gs_context_state_s* %i_ctx_p, i32 %is_hardware) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %is_hardware.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %rkeys = alloca %struct.ref_s, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %list = alloca %struct.stack_param_list_s, align 8
  %code = alloca i32, align 4
  %pmark = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %is_hardware, i32* %is_hardware.addr, align 4, !tbaa !34
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %rkeys to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s** %pmark to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4896
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %11 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !35
  %conv6 = zext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 19
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %rkeys to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !59
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 1
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  store %struct.gx_device_s* %18, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p13, align 8, !tbaa !5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %call16 = call i32 @stack_param_list_write(%struct.stack_param_list_s* %list, %struct.ref_stack_s* %stack15, %struct.ref_s* %rkeys, %struct.gs_ref_memory_s* %23) #4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %25 = bitcast %struct.stack_param_list_s* %list to %struct.gs_param_list_s*
  %26 = load i32, i32* %is_hardware.addr, align 4, !tbaa !34
  %call17 = call i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %24, %struct.gs_param_list_s* %25, i32 %26) #4
  store i32 %call17, i32* %code, align 4, !tbaa !34
  %27 = load i32, i32* %code, align 4, !tbaa !34
  %cmp18 = icmp slt i32 %27, 0
  br i1 %cmp18, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %if.end
  %count = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %28 = load i32, i32* %count, align 4, !tbaa !76
  %cmp21 = icmp ugt i32 %28, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %count26 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %30 = load i32, i32* %count26, align 4, !tbaa !76
  %mul = mul i32 %30, 2
  %sub = sub i32 %mul, 1
  call void @ref_stack_pop(%struct.ref_stack_s* %stack25, i32 %sub) #4
  br label %if.end.30

if.else:                                          ; preds = %if.then.20
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %call29 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack28, i32 1) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.23
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !5
  %34 = bitcast %struct.ref_s* %33 to i8*
  %35 = bitcast %struct.ref_s* %rkeys to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !59
  %36 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %count37 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %38 = load i32, i32* %count37, align 4, !tbaa !76
  %mul38 = mul i32 %38, 2
  %conv39 = zext i32 %mul38 to i64
  %call40 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack36, i64 %conv39) #4
  store %struct.ref_s* %call40, %struct.ref_s** %pmark, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %pmark, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  store i16 3072, i16* %type_attrs42, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.end.30, %cond.end
  %40 = bitcast %struct.ref_s** %pmark to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %42) #1
  %43 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.ref_s* %rkeys to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @stack_param_list_write(%struct.stack_param_list_s*, %struct.ref_stack_s*, %struct.ref_s*, %struct.gs_ref_memory_s*) #2

declare i32 @gs_get_device_or_hw_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i32) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_makewordimagedevice(%struct.gx_device_s**, %struct.gs_matrix_s*, i32, i32, i8*, i32, i32, i32, %struct.gs_memory_s*) #2

declare i32 @gs_nulldevice(%struct.gs_state_s*) #2

declare %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s*) #2

declare void @print_resource_usage(%struct.gs_main_instance_s*, %struct.gs_dual_memory_s*, i8*) #2

declare i32 @gs_output_page(%struct.gs_state_s*, i32, i32) #2

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

declare i32 @stack_param_list_read(%struct.stack_param_list_s*, %struct.ref_stack_s*, i32, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

declare i32 @gs_putdeviceparams(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gs_errorname(%struct.gs_context_state_s*, i32, %struct.ref_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

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
!19 = !{!6, !2, i64 0}
!20 = !{!21, !2, i64 24}
!21 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !22, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !23, i64 96, !25, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !26, i64 984, !9, i64 1052, !9, i64 1056, !27, i64 1064, !2, i64 1104, !3, i64 1112, !29, i64 1120, !30, i64 1144}
!22 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !24, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !9, i64 712}
!24 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!25 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!26 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!27 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !28, i64 16, !9, i64 32, !3, i64 36}
!28 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !13, i64 8}
!29 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!31 = !{!6, !2, i64 640}
!32 = !{!6, !9, i64 688}
!33 = !{!10, !12, i64 0}
!34 = !{!9, !9, i64 0}
!35 = !{!3, !3, i64 0}
!36 = !{!21, !9, i64 960}
!37 = !{!21, !13, i64 936}
!38 = !{!12, !12, i64 0}
!39 = !{!6, !2, i64 632}
!40 = !{!6, !2, i64 8}
!41 = !{!7, !9, i64 48}
!42 = !{!21, !2, i64 16}
!43 = !{!10, !9, i64 4}
!44 = !{!21, !2, i64 1296}
!45 = !{!13, !13, i64 0}
!46 = !{!21, !9, i64 832}
!47 = !{!48, !9, i64 0}
!48 = !{!"gs_int_rect_s", !49, i64 0, !49, i64 8}
!49 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!50 = !{!21, !9, i64 836}
!51 = !{!48, !9, i64 4}
!52 = !{!21, !12, i64 108}
!53 = !{!21, !9, i64 100}
!54 = !{!48, !9, i64 8}
!55 = !{!48, !9, i64 12}
!56 = !{!57, !13, i64 0}
!57 = !{!"gs_get_bits_params_s", !13, i64 0, !3, i64 8, !9, i64 520, !9, i64 524, !9, i64 528}
!58 = !{!21, !2, i64 1448}
!59 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 4, !34, i64 8, i64 8, !45, i64 8, i64 2, !38, i64 8, i64 4, !60, i64 8, i64 8, !45, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !45}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !3, i64 0}
!62 = !{!63, !2, i64 200}
!63 = !{!"gs_ref_memory_s", !2, i64 0, !64, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !65, i64 232, !9, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !66, i64 304, !2, i64 488, !67, i64 496, !13, i64 512, !13, i64 520, !68, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !69, i64 648, !9, i64 672, !3, i64 680}
!64 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!65 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!66 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!67 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!68 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!69 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!70 = !{!71, !2, i64 72}
!71 = !{!"stack_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !9, i64 80, !9, i64 84, !2, i64 88, !9, i64 96}
!72 = !{!71, !2, i64 8}
!73 = !{!74, !2, i64 24}
!74 = !{!"gs_memory_s", !2, i64 0, !64, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!75 = !{!21, !9, i64 84}
!76 = !{!71, !9, i64 80}
