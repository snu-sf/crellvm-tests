; ModuleID = './zht2.bc'
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
%struct.gs_halftone_component_s = type { i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.gs_threshold2_halftone_s }
%struct.gs_threshold2_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, i32, i32, i32, %struct.gs_const_bytestring_s }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.3 }
%union.anon.3 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, %struct.gs_const_string_s, float (double, %struct.gx_transfer_map_s*)* }
%struct.gs_multiple_halftone_s = type { %struct.gs_halftone_component_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.obj_header_s = type opaque
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon, %struct.anon, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.7, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.6 }
%struct.ref_cie_procs_s = type { %union.anon.4, %union.anon.5, %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_s }
%union.anon.6 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.7 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_threshold_halftone_common_s = type { i32, i32, %struct.gs_mapping_closure_s }

@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2.sethalftone5\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0%sethalftone_finish\00", align 1
@zht2_l2_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsethalftone5 }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @sethalftone_finish }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"HalftoneType\00", align 1
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c".sethalftone5\00", align 1
@st_ht_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@zcolor_remap_one_ostack = external constant i32, align 4
@zcolor_remap_one_estack = external constant i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Frequency\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SpotFunction\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"AccurateScreens\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Thresholds\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Width2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Height2\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"ActualFrequency\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ActualAngle\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"sethalftone_cleanup(device halftone)\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"sethalftone_cleanup(halftone)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_get_colorname_string(%struct.gs_memory_s* %mem, i64 %colorname_index, i8** %ppstr, i32* %pname_size) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %colorname_index.addr = alloca i64, align 8
  %ppstr.addr = alloca i8**, align 8
  %pname_size.addr = alloca i32*, align 8
  %nref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %colorname_index, i64* %colorname_index.addr, align 8, !tbaa !5
  store i8** %ppstr, i8*** %ppstr.addr, align 8, !tbaa !1
  store i32* %pname_size, i32** %pname_size.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  %3 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !10
  %4 = load i64, i64* %colorname_index.addr, align 8, !tbaa !5
  %conv = trunc i64 %4 to i32
  call void @names_index_ref(%struct.name_table_s* %3, i32 %conv, %struct.ref_s* %nref) #3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !7
  %gs_name_table2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 16
  %7 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table2, align 8, !tbaa !10
  call void @names_string_ref(%struct.name_table_s* %7, %struct.ref_s* %nref, %struct.ref_s* %nref) #3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i8**, i8*** %ppstr.addr, align 8, !tbaa !1
  %10 = load i32*, i32** %pname_size.addr, align 8, !tbaa !1
  %call = call i32 @obj_string_data(%struct.gs_memory_s* %8, %struct.ref_s* %nref, i8** %9, i32* %10) #3
  %11 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @obj_string_data(%struct.gs_memory_s*, %struct.ref_s*, i8**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zsethalftone5(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %pc = alloca %struct.gs_halftone_component_s*, align 8
  %code = alloca i32, align 4
  %j = alloca i32, align 4
  %have_default = alloca i32, align 4
  %pht = alloca %struct.gs_halftone_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %sprocs = alloca [65 x %struct.ref_s], align 16
  %tprocs = alloca [65 x %struct.ref_s], align 16
  %mem = alloca %struct.gs_memory_s*, align 8
  %edepth = alloca i32, align 4
  %npop = alloca i32, align 4
  %dict_enum = alloca i32, align 4
  %rvalue = alloca [2 x %struct.ref_s], align 16
  %cname = alloca i32, align 4
  %colorant_number = alloca i32, align 4
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %halftonetype = alloca i32, align 4
  %type = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %space_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  %type200 = alloca i32, align 4
  %odepth = alloca i32, align 4
  %odict = alloca %struct.ref_s, align 8
  %odict5 = alloca %struct.ref_s, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %k = alloca i32, align 4
  %comp_number462 = alloca i32, align 4
  %es_code_535 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.gs_halftone_component_s* null, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %5 = bitcast %struct.gs_halftone_component_s** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !25
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %have_default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %11 = bitcast [65 x %struct.ref_s]* %sprocs to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %11) #1
  %12 = bitcast [65 x %struct.ref_s]* %tprocs to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %12) #1
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1) #3
  store i32 %call, i32* %edepth, align 4, !tbaa !25
  %16 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 2, i32* %npop, align 4, !tbaa !25
  %17 = bitcast i32* %dict_enum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @dict_first(%struct.ref_s* %18) #3
  store i32 %call2, i32* %dict_enum, align 4, !tbaa !25
  %19 = bitcast [2 x %struct.ref_s]* %rvalue to i8*
  call void @llvm.lifetime.start(i64 32, i8* %19) #1
  %20 = bitcast i32* %cname to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %halftonetype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %type, align 4, !tbaa !25
  %26 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !26
  store %struct.gs_state_s* %28, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %29 = bitcast i32* %space_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %31 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %31 to i32
  %and = and i32 %conv, 12
  %shr = ashr i32 %and, 2
  store i32 %shr, i32* %space_index, align 4, !tbaa !25
  %32 = load i32, i32* %space_index, align 4, !tbaa !25
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon.1* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %35, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %37 = bitcast i16* %type_attrs5 to i8*
  %arrayidx6 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx6, align 1, !tbaa !28
  %conv7 = zext i8 %38 to i32
  %cmp = icmp eq i32 %conv7, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @check_type_failed(%struct.ref_s* %39) #3
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %41 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %41, i32 0, i32 0
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %42 = load i16, i16* %type_attrs11, align 2, !tbaa !27
  %conv12 = zext i16 %42 to i32
  %and13 = and i32 %conv12, 32
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.15:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %44 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx19, align 1, !tbaa !28
  %conv20 = zext i8 %45 to i32
  %cmp21 = icmp eq i32 %conv20, 2
  br i1 %cmp21, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %do.end
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %call25 = call i32 @check_type_failed(%struct.ref_s* %arrayidx24) #3
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.26:                                        ; preds = %do.end
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.26
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx28, i32 0, i32 1
  %pdict30 = bitcast %union.v* %value29 to %struct.dict_s**
  %48 = load %struct.dict_s*, %struct.dict_s** %pdict30, align 8, !tbaa !1
  %values31 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %48, i32 0, i32 0
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %49 = load i16, i16* %type_attrs33, align 2, !tbaa !27
  %conv34 = zext i16 %49 to i32
  %and35 = and i32 %conv34, 32
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %do.body.27
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.38:                                        ; preds = %do.body.27
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %call42 = call i32 @dict_int_param(%struct.ref_s* %add.ptr41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 100, i32 0, i32* %type) #3
  store i32 %call42, i32* %code, align 4, !tbaa !25
  %51 = load i32, i32* %code, align 4, !tbaa !25
  %cmp43 = icmp slt i32 %51, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.40
  %52 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.46:                                        ; preds = %do.end.40
  %53 = load i32, i32* %type, align 4, !tbaa !25
  %cmp47 = icmp eq i32 %53, 2
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.46
  %54 = load i32, i32* %type, align 4, !tbaa !25
  %cmp49 = icmp eq i32 %54, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.46
  %55 = phi i1 [ true, %if.end.46 ], [ %cmp49, %lor.rhs ]
  %cond = select i1 %55, i32 7, i32 6
  store i32 %cond, i32* %halftonetype, align 4, !tbaa !25
  store i32 0, i32* %have_default, align 4, !tbaa !25
  store i32 0, i32* %count, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %if.end.97, %if.then.85, %if.then.72, %if.then.63, %lor.end
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %57 = load i32, i32* %dict_enum, align 4, !tbaa !25
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i32 0
  %call51 = call i32 @dict_next(%struct.ref_s* %56, i32 %57, %struct.ref_s* %arraydecay) #3
  store i32 %call51, i32* %dict_enum, align 4, !tbaa !25
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.cond
  br label %for.end

if.end.55:                                        ; preds = %for.cond
  %arrayidx56 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %58 = bitcast i16* %type_attrs58 to i8*
  %arrayidx59 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx59, align 1, !tbaa !28
  %conv60 = zext i8 %59 to i32
  %cmp61 = icmp eq i32 %conv60, 13
  br i1 %cmp61, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.55
  br label %for.cond

if.end.64:                                        ; preds = %if.end.55
  %arrayidx65 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx65, i32 0, i32 0
  %type_attrs67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 0
  %60 = bitcast i16* %type_attrs67 to i8*
  %arrayidx68 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx68, align 1, !tbaa !28
  %conv69 = zext i8 %61 to i32
  %cmp70 = icmp eq i32 %conv69, 2
  br i1 %cmp70, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.64
  br label %for.cond

if.end.73:                                        ; preds = %if.end.64
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 2
  %63 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %63, i32 0, i32 16
  %64 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %call75 = call i32 @names_index(%struct.name_table_s* %64, %struct.ref_s* %arrayidx74) #3
  store i32 %call75, i32* %cname, align 4, !tbaa !25
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %66 = load i32, i32* %cname, align 4, !tbaa !25
  %conv76 = sext i32 %66 to i64
  %call77 = call i32 @gs_get_colorname_string(%struct.gs_memory_s* %65, i64 %conv76, i8** %pname, i32* %name_size) #3
  store i32 %call77, i32* %code, align 4, !tbaa !25
  %67 = load i32, i32* %code, align 4, !tbaa !25
  %cmp78 = icmp slt i32 %67, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.73
  br label %for.end

if.end.81:                                        ; preds = %if.end.73
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %69 = load i8*, i8** %pname, align 8, !tbaa !1
  %70 = load i32, i32* %name_size, align 4, !tbaa !25
  %71 = load i32, i32* %halftonetype, align 4, !tbaa !25
  %call82 = call i32 @gs_cname_to_colorant_number(%struct.gs_state_s* %68, i8* %69, i32 %70, i32 %71) #3
  store i32 %call82, i32* %colorant_number, align 4, !tbaa !25
  %72 = load i32, i32* %colorant_number, align 4, !tbaa !25
  %cmp83 = icmp slt i32 %72, 0
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %if.end.81
  br label %for.cond

if.else:                                          ; preds = %if.end.81
  %73 = load i32, i32* %colorant_number, align 4, !tbaa !25
  %cmp86 = icmp eq i32 %73, 64
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.else
  %74 = load i32, i32* %have_default, align 4, !tbaa !25
  %tobool89 = icmp ne i32 %74, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.88
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.91:                                        ; preds = %if.then.88
  store i32 1, i32* %have_default, align 4, !tbaa !25
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.else
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92
  %75 = load i32, i32* %count, align 4, !tbaa !25
  %inc = add i32 %75, 1
  store i32 %inc, i32* %count, align 4, !tbaa !25
  %76 = load i32, i32* %count, align 4, !tbaa !25
  %cmp94 = icmp ugt i32 %76, 65
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  store i32 -15, i32* %code, align 4, !tbaa !25
  br label %for.end

if.end.97:                                        ; preds = %if.end.93
  br label %for.cond

for.end:                                          ; preds = %if.then.96, %if.then.80, %if.then.54
  %77 = load i32, i32* %count, align 4, !tbaa !25
  %cmp98 = icmp eq i32 %77, 0
  br i1 %cmp98, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %78 = load i32, i32* %halftonetype, align 4, !tbaa !25
  %cmp100 = icmp eq i32 %78, 6
  br i1 %cmp100, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %lor.lhs.false
  %79 = load i32, i32* %have_default, align 4, !tbaa !25
  %tobool102 = icmp ne i32 %79, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true, %for.end
  store i32 -15, i32* %code, align 4, !tbaa !25
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true, %lor.lhs.false
  %80 = load i32, i32* %code, align 4, !tbaa !25
  %cmp105 = icmp sge i32 %80, 0
  br i1 %cmp105, label %if.then.107, label %if.end.194

if.then.107:                                      ; preds = %if.end.104
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 25
  %stack109 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack108, i32 0, i32 0
  %p110 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack109, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p110, align 8, !tbaa !29
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack111 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack112 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack111, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack112, i32 0, i32 2
  %84 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %add.ptr113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 -5
  %cmp114 = icmp ugt %struct.ref_s* %82, %add.ptr113
  br i1 %cmp114, label %if.then.116, label %if.end.124

if.then.116:                                      ; preds = %if.then.107
  %85 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 25
  %stack118 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack117, i32 0, i32 0
  %call119 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack118, i32 5) #3
  store i32 %call119, i32* %es_code_, align 4, !tbaa !25
  %87 = load i32, i32* %es_code_, align 4, !tbaa !25
  %cmp120 = icmp slt i32 %87, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.116
  %88 = load i32, i32* %es_code_, align 4, !tbaa !25
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.123:                                       ; preds = %if.then.116
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.123, %if.then.122
  %89 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.610 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.124

if.end.124:                                       ; preds = %cleanup.cont, %if.then.107
  %arraydecay125 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %sprocs, i32 0, i32 0
  %90 = load i32, i32* %count, align 4, !tbaa !25
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory126, i32 0, i32 5
  %92 = load i32, i32* %new_mask, align 4, !tbaa !31
  call void @refset_null_new(%struct.ref_s* %arraydecay125, i32 %90, i32 %92) #3
  %arraydecay127 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %93 = load i32, i32* %count, align 4, !tbaa !25
  %94 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %94, i32 0, i32 1
  %new_mask129 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory128, i32 0, i32 5
  %95 = load i32, i32* %new_mask129, align 4, !tbaa !31
  call void @refset_null_new(%struct.ref_s* %arraydecay127, i32 %93, i32 %95) #3
  br label %do.body.130

do.body.130:                                      ; preds = %if.end.124
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory131, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %98 = bitcast %struct.gs_ref_memory_s* %97 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %99 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !33
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 1
  %current133 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory132, i32 0, i32 0
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current133, align 8, !tbaa !32
  %102 = bitcast %struct.gs_ref_memory_s* %101 to %struct.gs_memory_s*
  %call134 = call i8* %99(%struct.gs_memory_s* %102, %struct.gs_memory_struct_type_s* @st_halftone, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %103 = bitcast i8* %call134 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %103, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %cmp135 = icmp eq %struct.gs_halftone_s* %103, null
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.130
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  br label %if.end.150

if.else.138:                                      ; preds = %do.body.130
  br label %do.body.139

do.body.139:                                      ; preds = %if.else.138
  %104 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %104, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 0, i64* %ref_count, align 8, !tbaa !34
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 1
  %current141 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory140, i32 0, i32 0
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current141, align 8, !tbaa !32
  %107 = bitcast %struct.gs_ref_memory_s* %106 to %struct.gs_memory_s*
  %108 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc142 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %108, i32 0, i32 1
  %memory143 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc142, i32 0, i32 1
  store %struct.gs_memory_s* %107, %struct.gs_memory_s** %memory143, align 8, !tbaa !37
  %109 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc144 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %109, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc144, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !38
  br label %do.body.145

do.body.145:                                      ; preds = %do.body.139
  br label %do.cond.146

do.cond.146:                                      ; preds = %do.body.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  br label %do.cond.148

do.cond.148:                                      ; preds = %do.end.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.cond.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %if.then.137
  br label %do.cond.151

do.cond.151:                                      ; preds = %if.end.150
  br label %do.end.152

do.end.152:                                       ; preds = %do.cond.151
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs153 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs153, i32 0, i32 12
  %111 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !39
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %113 = load i32, i32* %count, align 4, !tbaa !25
  %call154 = call i8* %111(%struct.gs_memory_s* %112, i32 %113, %struct.gs_memory_struct_type_s* @st_ht_component_element, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %114 = bitcast i8* %call154 to %struct.gs_halftone_component_s*
  store %struct.gs_halftone_component_s* %114, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  br label %do.body.155

do.body.155:                                      ; preds = %do.end.152
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 1
  %current157 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory156, i32 0, i32 0
  %116 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current157, align 8, !tbaa !32
  %117 = bitcast %struct.gs_ref_memory_s* %116 to %struct.gs_memory_s*
  %procs158 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %alloc_struct159 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs158, i32 0, i32 8
  %118 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct159, align 8, !tbaa !33
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory160 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 1
  %current161 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory160, i32 0, i32 0
  %120 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current161, align 8, !tbaa !32
  %121 = bitcast %struct.gs_ref_memory_s* %120 to %struct.gs_memory_s*
  %call162 = call i8* %118(%struct.gs_memory_s* %121, %struct.gs_memory_struct_type_s* @st_device_halftone, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %122 = bitcast i8* %call162 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %122, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp163 = icmp eq %struct.gx_device_halftone_s* %122, null
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.155
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  br label %if.end.181

if.else.166:                                      ; preds = %do.body.155
  br label %do.body.167

do.body.167:                                      ; preds = %if.else.166
  %123 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc168 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %123, i32 0, i32 1
  %ref_count169 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc168, i32 0, i32 0
  store i64 0, i64* %ref_count169, align 8, !tbaa !40
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory170 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 1
  %current171 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory170, i32 0, i32 0
  %125 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current171, align 8, !tbaa !32
  %126 = bitcast %struct.gs_ref_memory_s* %125 to %struct.gs_memory_s*
  %127 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc172 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %127, i32 0, i32 1
  %memory173 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc172, i32 0, i32 1
  store %struct.gs_memory_s* %126, %struct.gs_memory_s** %memory173, align 8, !tbaa !47
  %128 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc174 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %128, i32 0, i32 1
  %free175 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc174, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free175, align 8, !tbaa !48
  br label %do.body.176

do.body.176:                                      ; preds = %do.body.167
  br label %do.cond.177

do.cond.177:                                      ; preds = %do.body.176
  br label %do.end.178

do.end.178:                                       ; preds = %do.cond.177
  br label %do.cond.179

do.cond.179:                                      ; preds = %do.end.178
  br label %do.end.180

do.end.180:                                       ; preds = %do.cond.179
  br label %if.end.181

if.end.181:                                       ; preds = %do.end.180, %if.then.165
  br label %do.cond.182

do.cond.182:                                      ; preds = %if.end.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %129 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %cmp184 = icmp eq %struct.gs_halftone_s* %129, null
  br i1 %cmp184, label %if.then.192, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %do.end.183
  %130 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %cmp187 = icmp eq %struct.gs_halftone_component_s* %130, null
  br i1 %cmp187, label %if.then.192, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %lor.lhs.false.186
  %131 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp190 = icmp eq %struct.gx_device_halftone_s* %131, null
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %lor.lhs.false.189, %lor.lhs.false.186, %do.end.183
  store i32 0, i32* %j, align 4, !tbaa !25
  store i32 -25, i32* %code, align 4, !tbaa !25
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %lor.lhs.false.189
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.104
  %132 = load i32, i32* %code, align 4, !tbaa !25
  %cmp195 = icmp sge i32 %132, 0
  br i1 %cmp195, label %if.then.197, label %if.end.298

if.then.197:                                      ; preds = %if.end.194
  %133 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call198 = call i32 @dict_first(%struct.ref_s* %133) #3
  store i32 %call198, i32* %dict_enum, align 4, !tbaa !25
  store i32 0, i32* %j, align 4, !tbaa !25
  %134 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  store %struct.gs_halftone_component_s* %134, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  br label %for.cond.199

for.cond.199:                                     ; preds = %cleanup.cont.296, %cleanup.294, %if.then.197
  %135 = bitcast i32* %type200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %137 = load i32, i32* %dict_enum, align 4, !tbaa !25
  %arraydecay201 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i32 0
  %call202 = call i32 @dict_next(%struct.ref_s* %136, i32 %137, %struct.ref_s* %arraydecay201) #3
  store i32 %call202, i32* %dict_enum, align 4, !tbaa !25
  %cmp203 = icmp eq i32 %call202, -1
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %for.cond.199
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.206:                                       ; preds = %for.cond.199
  %arrayidx207 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %tas208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx207, i32 0, i32 0
  %type_attrs209 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas208, i32 0, i32 0
  %138 = bitcast i16* %type_attrs209 to i8*
  %arrayidx210 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx210, align 1, !tbaa !28
  %conv211 = zext i8 %139 to i32
  %cmp212 = icmp eq i32 %conv211, 13
  br i1 %cmp212, label %if.end.215, label %if.then.214

if.then.214:                                      ; preds = %if.end.206
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.215:                                       ; preds = %if.end.206
  %arrayidx216 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %tas217 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx216, i32 0, i32 0
  %type_attrs218 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas217, i32 0, i32 0
  %140 = bitcast i16* %type_attrs218 to i8*
  %arrayidx219 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx219, align 1, !tbaa !28
  %conv220 = zext i8 %141 to i32
  %cmp221 = icmp eq i32 %conv220, 2
  br i1 %cmp221, label %if.end.224, label %if.then.223

if.then.223:                                      ; preds = %if.end.215
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.224:                                       ; preds = %if.end.215
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx225 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 2
  %143 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx225, align 8, !tbaa !7
  %gs_name_table226 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %143, i32 0, i32 16
  %144 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table226, align 8, !tbaa !10
  %arrayidx227 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %call228 = call i32 @names_index(%struct.name_table_s* %144, %struct.ref_s* %arrayidx227) #3
  store i32 %call228, i32* %cname, align 4, !tbaa !25
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %146 = load i32, i32* %cname, align 4, !tbaa !25
  %conv229 = sext i32 %146 to i64
  %call230 = call i32 @gs_get_colorname_string(%struct.gs_memory_s* %145, i64 %conv229, i8** %pname, i32* %name_size) #3
  store i32 %call230, i32* %code, align 4, !tbaa !25
  %147 = load i32, i32* %code, align 4, !tbaa !25
  %cmp231 = icmp slt i32 %147, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.224
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.234:                                       ; preds = %if.end.224
  %148 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %149 = load i8*, i8** %pname, align 8, !tbaa !1
  %150 = load i32, i32* %name_size, align 4, !tbaa !25
  %151 = load i32, i32* %halftonetype, align 4, !tbaa !25
  %call235 = call i32 @gs_cname_to_colorant_number(%struct.gs_state_s* %148, i8* %149, i32 %150, i32 %151) #3
  store i32 %call235, i32* %colorant_number, align 4, !tbaa !25
  %152 = load i32, i32* %colorant_number, align 4, !tbaa !25
  %cmp236 = icmp slt i32 %152, 0
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.234
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.239:                                       ; preds = %if.end.234
  %153 = load i32, i32* %cname, align 4, !tbaa !25
  %154 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %cname240 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %154, i32 0, i32 1
  store i32 %153, i32* %cname240, align 4, !tbaa !49
  %155 = load i32, i32* %colorant_number, align 4, !tbaa !25
  %156 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %comp_number = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %156, i32 0, i32 0
  store i32 %155, i32* %comp_number, align 4, !tbaa !51
  br label %do.body.241

do.body.241:                                      ; preds = %if.end.239
  %arrayidx242 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %value243 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx242, i32 0, i32 1
  %pdict244 = bitcast %union.v* %value243 to %struct.dict_s**
  %157 = load %struct.dict_s*, %struct.dict_s** %pdict244, align 8, !tbaa !1
  %values245 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %157, i32 0, i32 0
  %tas246 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values245, i32 0, i32 0
  %type_attrs247 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas246, i32 0, i32 0
  %158 = load i16, i16* %type_attrs247, align 2, !tbaa !27
  %conv248 = zext i16 %158 to i32
  %and249 = and i32 %conv248, 32
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %if.end.252, label %if.then.251

if.then.251:                                      ; preds = %do.body.241
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.252:                                       ; preds = %do.body.241
  br label %do.cond.253

do.cond.253:                                      ; preds = %if.end.252
  br label %do.end.254

do.end.254:                                       ; preds = %do.cond.253
  %arrayidx255 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %call256 = call i32 @dict_int_param(%struct.ref_s* %arrayidx255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 7, i32 0, i32* %type200) #3
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %do.end.254
  store i32 -20, i32* %code, align 4, !tbaa !25
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.260:                                       ; preds = %do.end.254
  %159 = load i32, i32* %type200, align 4, !tbaa !25
  switch i32 %159, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.271
    i32 7, label %sw.bb.279
  ]

sw.default:                                       ; preds = %if.end.260
  store i32 -15, i32* %code, align 4, !tbaa !25
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.260
  %arrayidx261 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %160 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %160, i32 0, i32 3
  %spot = bitcast %union.anon.2* %params to %struct.gs_spot_halftone_s*
  %arraydecay262 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %sprocs, i32 0, i32 0
  %161 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext = sext i32 %161 to i64
  %add.ptr263 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay262, i64 %idx.ext
  %arraydecay264 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %162 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext265 = sext i32 %162 to i64
  %add.ptr266 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay264, i64 %idx.ext265
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call267 = call i32 @dict_spot_params(%struct.ref_s* %arrayidx261, %struct.gs_spot_halftone_s* %spot, %struct.ref_s* %add.ptr263, %struct.ref_s* %add.ptr266, %struct.gs_memory_s* %163) #3
  store i32 %call267, i32* %code, align 4, !tbaa !25
  %164 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %params268 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %164, i32 0, i32 3
  %spot269 = bitcast %union.anon.2* %params268 to %struct.gs_spot_halftone_s*
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot269, i32 0, i32 0
  %spot_function = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen, i32 0, i32 2
  store float (double, double)* @spot1_dummy, float (double, double)** %spot_function, align 8, !tbaa !52
  %165 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %type270 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %165, i32 0, i32 2
  store i32 3, i32* %type270, align 4, !tbaa !56
  br label %sw.epilog

sw.bb.271:                                        ; preds = %if.end.260
  %arrayidx272 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %166 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %params273 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %166, i32 0, i32 3
  %threshold = bitcast %union.anon.2* %params273 to %struct.gs_threshold_halftone_s*
  %arraydecay274 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %167 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext275 = sext i32 %167 to i64
  %add.ptr276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay274, i64 %idx.ext275
  %call277 = call i32 @dict_threshold_params(%struct.ref_s* %arrayidx272, %struct.gs_threshold_halftone_s* %threshold, %struct.ref_s* %add.ptr276) #3
  store i32 %call277, i32* %code, align 4, !tbaa !25
  %168 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %type278 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %168, i32 0, i32 2
  store i32 4, i32* %type278, align 4, !tbaa !56
  br label %sw.epilog

sw.bb.279:                                        ; preds = %if.end.260
  %arrayidx280 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %169 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %params281 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %169, i32 0, i32 3
  %threshold2 = bitcast %union.anon.2* %params281 to %struct.gs_threshold2_halftone_s*
  %arraydecay282 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %170 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext283 = sext i32 %170 to i64
  %add.ptr284 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay282, i64 %idx.ext283
  %171 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory285 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %171, i32 0, i32 1
  %current286 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory285, i32 0, i32 0
  %172 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current286, align 8, !tbaa !32
  %173 = bitcast %struct.gs_ref_memory_s* %172 to %struct.gs_memory_s*
  %call287 = call i32 @dict_threshold2_params(%struct.ref_s* %arrayidx280, %struct.gs_threshold2_halftone_s* %threshold2, %struct.ref_s* %add.ptr284, %struct.gs_memory_s* %173) #3
  store i32 %call287, i32* %code, align 4, !tbaa !25
  %174 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %type288 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %174, i32 0, i32 2
  store i32 5, i32* %type288, align 4, !tbaa !56
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.279, %sw.bb.271, %sw.bb, %sw.default
  %175 = load i32, i32* %code, align 4, !tbaa !25
  %cmp289 = icmp slt i32 %175, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %sw.epilog
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.292:                                       ; preds = %sw.epilog
  %176 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %176, i32 1
  store %struct.gs_halftone_component_s* %incdec.ptr, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %177 = load i32, i32* %j, align 4, !tbaa !25
  %inc293 = add nsw i32 %177, 1
  store i32 %inc293, i32* %j, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.294

cleanup.294:                                      ; preds = %if.end.292, %if.then.291, %if.then.259, %if.then.251, %if.then.238, %if.then.233, %if.then.223, %if.then.214, %if.then.205
  %178 = bitcast i32* %type200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %cleanup.dest.295 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.295, label %cleanup.610 [
    i32 0, label %cleanup.cont.296
    i32 20, label %for.end.297
    i32 21, label %for.cond.199
  ]

cleanup.cont.296:                                 ; preds = %cleanup.294
  br label %for.cond.199

for.end.297:                                      ; preds = %cleanup.294
  br label %if.end.298

if.end.298:                                       ; preds = %for.end.297, %if.end.194
  %179 = load i32, i32* %code, align 4, !tbaa !25
  %cmp299 = icmp sge i32 %179, 0
  br i1 %cmp299, label %if.then.301, label %if.end.310

if.then.301:                                      ; preds = %if.end.298
  %180 = load i32, i32* %halftonetype, align 4, !tbaa !25
  %181 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %type302 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %181, i32 0, i32 0
  store i32 %180, i32* %type302, align 4, !tbaa !57
  %182 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %183 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params303 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %183, i32 0, i32 2
  %multiple = bitcast %union.anon.3* %params303 to %struct.gs_multiple_halftone_s*
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple, i32 0, i32 0
  store %struct.gs_halftone_component_s* %182, %struct.gs_halftone_component_s** %components, align 8, !tbaa !58
  %184 = load i32, i32* %j, align 4, !tbaa !25
  %185 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params304 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %185, i32 0, i32 2
  %multiple305 = bitcast %union.anon.3* %params304 to %struct.gs_multiple_halftone_s*
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple305, i32 0, i32 1
  store i32 %184, i32* %num_comp, align 4, !tbaa !60
  %186 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params306 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %186, i32 0, i32 2
  %multiple307 = bitcast %union.anon.3* %params306 to %struct.gs_multiple_halftone_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %multiple307, i32 0, i32 2
  store i32 (%struct.gs_memory_s*, i64, i8**, i32*)* @gs_get_colorname_string, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !61
  %187 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs308 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %187, i32 0, i32 0
  %188 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs308, align 8, !tbaa !26
  %189 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %190 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call309 = call i32 @gs_sethalftone_prepare(%struct.gs_state_s* %188, %struct.gs_halftone_s* %189, %struct.gx_device_halftone_s* %190) #3
  store i32 %call309, i32* %code, align 4, !tbaa !25
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.301, %if.end.298
  %191 = load i32, i32* %code, align 4, !tbaa !25
  %cmp311 = icmp sge i32 %191, 0
  br i1 %cmp311, label %if.then.313, label %if.end.370

if.then.313:                                      ; preds = %if.end.310
  %192 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call314 = call i32 @dict_first(%struct.ref_s* %192) #3
  store i32 %call314, i32* %dict_enum, align 4, !tbaa !25
  %193 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  store %struct.gs_halftone_component_s* %193, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  br label %for.cond.315

for.cond.315:                                     ; preds = %if.end.367, %if.then.353, %if.then.338, %if.then.329, %if.then.313
  %194 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %195 = load i32, i32* %dict_enum, align 4, !tbaa !25
  %arraydecay316 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i32 0
  %call317 = call i32 @dict_next(%struct.ref_s* %194, i32 %195, %struct.ref_s* %arraydecay316) #3
  store i32 %call317, i32* %dict_enum, align 4, !tbaa !25
  %cmp318 = icmp eq i32 %call317, -1
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %for.cond.315
  br label %for.end.369

if.end.321:                                       ; preds = %for.cond.315
  %arrayidx322 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %tas323 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx322, i32 0, i32 0
  %type_attrs324 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas323, i32 0, i32 0
  %196 = bitcast i16* %type_attrs324 to i8*
  %arrayidx325 = getelementptr inbounds i8, i8* %196, i64 1
  %197 = load i8, i8* %arrayidx325, align 1, !tbaa !28
  %conv326 = zext i8 %197 to i32
  %cmp327 = icmp eq i32 %conv326, 13
  br i1 %cmp327, label %if.end.330, label %if.then.329

if.then.329:                                      ; preds = %if.end.321
  br label %for.cond.315

if.end.330:                                       ; preds = %if.end.321
  %arrayidx331 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %tas332 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx331, i32 0, i32 0
  %type_attrs333 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas332, i32 0, i32 0
  %198 = bitcast i16* %type_attrs333 to i8*
  %arrayidx334 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx334, align 1, !tbaa !28
  %conv335 = zext i8 %199 to i32
  %cmp336 = icmp eq i32 %conv335, 2
  br i1 %cmp336, label %if.end.339, label %if.then.338

if.then.338:                                      ; preds = %if.end.330
  br label %for.cond.315

if.end.339:                                       ; preds = %if.end.330
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx340 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %200, i32 0, i32 2
  %201 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx340, align 8, !tbaa !7
  %gs_name_table341 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %201, i32 0, i32 16
  %202 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table341, align 8, !tbaa !10
  %arrayidx342 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 0
  %call343 = call i32 @names_index(%struct.name_table_s* %202, %struct.ref_s* %arrayidx342) #3
  store i32 %call343, i32* %cname, align 4, !tbaa !25
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %204 = load i32, i32* %cname, align 4, !tbaa !25
  %conv344 = sext i32 %204 to i64
  %call345 = call i32 @gs_get_colorname_string(%struct.gs_memory_s* %203, i64 %conv344, i8** %pname, i32* %name_size) #3
  store i32 %call345, i32* %code, align 4, !tbaa !25
  %205 = load i32, i32* %code, align 4, !tbaa !25
  %cmp346 = icmp slt i32 %205, 0
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.end.339
  br label %for.end.369

if.end.349:                                       ; preds = %if.end.339
  %206 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %207 = load i8*, i8** %pname, align 8, !tbaa !1
  %208 = load i32, i32* %name_size, align 4, !tbaa !25
  %209 = load i32, i32* %halftonetype, align 4, !tbaa !25
  %call350 = call i32 @gs_cname_to_colorant_number(%struct.gs_state_s* %206, i8* %207, i32 %208, i32 %209) #3
  store i32 %call350, i32* %colorant_number, align 4, !tbaa !25
  %210 = load i32, i32* %colorant_number, align 4, !tbaa !25
  %cmp351 = icmp slt i32 %210, 0
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.end.349
  br label %for.cond.315

if.end.354:                                       ; preds = %if.end.349
  %211 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %type355 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %211, i32 0, i32 2
  %212 = load i32, i32* %type355, align 4, !tbaa !56
  %cmp356 = icmp eq i32 %212, 3
  br i1 %cmp356, label %if.then.358, label %if.end.367

if.then.358:                                      ; preds = %if.end.354
  %213 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %rvalue, i32 0, i64 1
  %214 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %params360 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %214, i32 0, i32 3
  %spot361 = bitcast %union.anon.2* %params360 to %struct.gs_spot_halftone_s*
  %call362 = call i32 @dict_spot_results(%struct.gs_context_state_s* %213, %struct.ref_s* %arrayidx359, %struct.gs_spot_halftone_s* %spot361) #3
  store i32 %call362, i32* %code, align 4, !tbaa !25
  %215 = load i32, i32* %code, align 4, !tbaa !25
  %cmp363 = icmp slt i32 %215, 0
  br i1 %cmp363, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %if.then.358
  br label %for.end.369

if.end.366:                                       ; preds = %if.then.358
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.end.354
  %216 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  %incdec.ptr368 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %216, i32 1
  store %struct.gs_halftone_component_s* %incdec.ptr368, %struct.gs_halftone_component_s** %pc, align 8, !tbaa !1
  br label %for.cond.315

for.end.369:                                      ; preds = %if.then.365, %if.then.348, %if.then.320
  br label %if.end.370

if.end.370:                                       ; preds = %for.end.369, %if.end.310
  %217 = load i32, i32* %code, align 4, !tbaa !25
  %cmp371 = icmp sge i32 %217, 0
  br i1 %cmp371, label %if.then.373, label %if.end.588

if.then.373:                                      ; preds = %if.end.370
  %218 = bitcast i32* %odepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack374 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %219, i32 0, i32 26
  %stack375 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack374, i32 0, i32 0
  %call376 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack375) #3
  store i32 %call376, i32* %odepth, align 4, !tbaa !25
  %220 = bitcast %struct.ref_s* %odict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %220) #1
  %221 = bitcast %struct.ref_s* %odict5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %221) #1
  %222 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx377 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %222, i64 -1
  %223 = bitcast %struct.ref_s* %odict to i8*
  %224 = bitcast %struct.ref_s* %arrayidx377 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %224, i64 16, i32 8, i1 false), !tbaa.struct !62
  %225 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %226 = bitcast %struct.ref_s* %odict5 to i8*
  %227 = bitcast %struct.ref_s* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %227, i64 16, i32 8, i1 false), !tbaa.struct !62
  %228 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack378 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %228, i32 0, i32 26
  %stack379 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack378, i32 0, i32 0
  %p380 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack379, i32 0, i32 0
  %229 = load %struct.ref_s*, %struct.ref_s** %p380, align 8, !tbaa !13
  %add.ptr381 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i64 -2
  store %struct.ref_s* %add.ptr381, %struct.ref_s** %p380, align 8, !tbaa !13
  %230 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack382 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %230, i32 0, i32 26
  %stack383 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack382, i32 0, i32 0
  %p384 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack383, i32 0, i32 0
  %231 = load %struct.ref_s*, %struct.ref_s** %p384, align 8, !tbaa !13
  store %struct.ref_s* %231, %struct.ref_s** %op, align 8, !tbaa !1
  %232 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack385 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %232, i32 0, i32 25
  %stack386 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack385, i32 0, i32 0
  %p387 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack386, i32 0, i32 0
  %233 = load %struct.ref_s*, %struct.ref_s** %p387, align 8, !tbaa !29
  %add.ptr388 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %233, i64 5
  store %struct.ref_s* %add.ptr388, %struct.ref_s** %p387, align 8, !tbaa !29
  %234 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack389 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %234, i32 0, i32 25
  %stack390 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack389, i32 0, i32 0
  %p391 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack390, i32 0, i32 0
  %235 = load %struct.ref_s*, %struct.ref_s** %p391, align 8, !tbaa !29
  %add.ptr392 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %235, i64 -4
  %value393 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr392, i32 0, i32 1
  %opproc = bitcast %union.v* %value393 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @sethalftone_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %236 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack394 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %236, i32 0, i32 25
  %stack395 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack394, i32 0, i32 0
  %p396 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack395, i32 0, i32 0
  %237 = load %struct.ref_s*, %struct.ref_s** %p396, align 8, !tbaa !29
  %add.ptr397 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %237, i64 -4
  %tas398 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr397, i32 0, i32 0
  %type_attrs399 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas398, i32 0, i32 0
  store i16 3712, i16* %type_attrs399, align 2, !tbaa !27
  %238 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack400 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %238, i32 0, i32 25
  %stack401 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack400, i32 0, i32 0
  %p402 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack401, i32 0, i32 0
  %239 = load %struct.ref_s*, %struct.ref_s** %p402, align 8, !tbaa !29
  %add.ptr403 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %239, i64 -4
  %tas404 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr403, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas404, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !65
  %240 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack405 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %240, i32 0, i32 25
  %stack406 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack405, i32 0, i32 0
  %p407 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack406, i32 0, i32 0
  %241 = load %struct.ref_s*, %struct.ref_s** %p407, align 8, !tbaa !29
  %arrayidx408 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %241, i64 -3
  %242 = bitcast %struct.ref_s* %arrayidx408 to i8*
  %243 = bitcast %struct.ref_s* %odict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %243, i64 16, i32 8, i1 false), !tbaa.struct !62
  %244 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %245 = bitcast %struct.gs_halftone_s* %244 to %struct.obj_header_s*
  %246 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack409 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %246, i32 0, i32 25
  %stack410 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack409, i32 0, i32 0
  %p411 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack410, i32 0, i32 0
  %247 = load %struct.ref_s*, %struct.ref_s** %p411, align 8, !tbaa !29
  %add.ptr412 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %247, i64 -2
  %value413 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr412, i32 0, i32 1
  %pstruct = bitcast %union.v* %value413 to %struct.obj_header_s**
  store %struct.obj_header_s* %245, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %248 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory414 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %248, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory414, i32 0, i32 2
  %249 = load i32, i32* %current_space, align 4, !tbaa !66
  %or = or i32 0, %249
  %add = add i32 2048, %or
  %conv415 = trunc i32 %add to i16
  %250 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack416 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %250, i32 0, i32 25
  %stack417 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack416, i32 0, i32 0
  %p418 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack417, i32 0, i32 0
  %251 = load %struct.ref_s*, %struct.ref_s** %p418, align 8, !tbaa !29
  %add.ptr419 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %251, i64 -2
  %tas420 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr419, i32 0, i32 0
  %type_attrs421 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas420, i32 0, i32 0
  store i16 %conv415, i16* %type_attrs421, align 2, !tbaa !27
  %252 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %253 = bitcast %struct.gx_device_halftone_s* %252 to %struct.obj_header_s*
  %254 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack422 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %254, i32 0, i32 25
  %stack423 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack422, i32 0, i32 0
  %p424 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack423, i32 0, i32 0
  %255 = load %struct.ref_s*, %struct.ref_s** %p424, align 8, !tbaa !29
  %add.ptr425 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %255, i64 -1
  %value426 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr425, i32 0, i32 1
  %pstruct427 = bitcast %union.v* %value426 to %struct.obj_header_s**
  store %struct.obj_header_s* %253, %struct.obj_header_s** %pstruct427, align 8, !tbaa !1
  %256 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory428 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %256, i32 0, i32 1
  %current_space429 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory428, i32 0, i32 2
  %257 = load i32, i32* %current_space429, align 4, !tbaa !66
  %or430 = or i32 0, %257
  %add431 = add i32 2048, %or430
  %conv432 = trunc i32 %add431 to i16
  %258 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack433 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %258, i32 0, i32 25
  %stack434 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack433, i32 0, i32 0
  %p435 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack434, i32 0, i32 0
  %259 = load %struct.ref_s*, %struct.ref_s** %p435, align 8, !tbaa !29
  %add.ptr436 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %259, i64 -1
  %tas437 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr436, i32 0, i32 0
  %type_attrs438 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas437, i32 0, i32 0
  store i16 %conv432, i16* %type_attrs438, align 2, !tbaa !27
  %260 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack439 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %260, i32 0, i32 25
  %stack440 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack439, i32 0, i32 0
  %p441 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack440, i32 0, i32 0
  %261 = load %struct.ref_s*, %struct.ref_s** %p441, align 8, !tbaa !29
  %value442 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %261, i32 0, i32 1
  %opproc443 = bitcast %union.v* %value442 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @sethalftone_finish, i32 (%struct.gs_context_state_s*)** %opproc443, align 8, !tbaa !1
  %262 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack444 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %262, i32 0, i32 25
  %stack445 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack444, i32 0, i32 0
  %p446 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack445, i32 0, i32 0
  %263 = load %struct.ref_s*, %struct.ref_s** %p446, align 8, !tbaa !29
  %tas447 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %263, i32 0, i32 0
  %type_attrs448 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas447, i32 0, i32 0
  store i16 3968, i16* %type_attrs448, align 2, !tbaa !27
  %264 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack449 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %264, i32 0, i32 25
  %stack450 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack449, i32 0, i32 0
  %p451 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack450, i32 0, i32 0
  %265 = load %struct.ref_s*, %struct.ref_s** %p451, align 8, !tbaa !29
  %tas452 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %265, i32 0, i32 0
  %rsize453 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas452, i32 0, i32 2
  store i32 0, i32* %rsize453, align 4, !tbaa !65
  store i32 0, i32* %j, align 4, !tbaa !25
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.580, %if.then.373
  %266 = load i32, i32* %j, align 4, !tbaa !25
  %267 = load i32, i32* %count, align 4, !tbaa !25
  %cmp455 = icmp ult i32 %266, %267
  br i1 %cmp455, label %for.body, label %for.end.582

for.body:                                         ; preds = %for.cond.454
  %268 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #1
  store %struct.gx_ht_order_s* null, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %269 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components457 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %269, i32 0, i32 4
  %270 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components457, align 8, !tbaa !67
  %cmp458 = icmp eq %struct.gx_ht_order_component_s* %270, null
  br i1 %cmp458, label %if.then.460, label %if.else.461

if.then.460:                                      ; preds = %for.body
  %271 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %271, i32 0, i32 0
  store %struct.gx_ht_order_s* %order, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  br label %if.end.483

if.else.461:                                      ; preds = %for.body
  %272 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = bitcast i32* %comp_number462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %273) #1
  %274 = load i32, i32* %j, align 4, !tbaa !25
  %idxprom463 = sext i32 %274 to i64
  %275 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %275, i64 %idxprom463
  %comp_number465 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx464, i32 0, i32 0
  %276 = load i32, i32* %comp_number465, align 4, !tbaa !51
  store i32 %276, i32* %comp_number462, align 4, !tbaa !25
  store i32 0, i32* %k, align 4, !tbaa !25
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc, %if.else.461
  %277 = load i32, i32* %k, align 4, !tbaa !25
  %278 = load i32, i32* %count, align 4, !tbaa !25
  %cmp467 = icmp ult i32 %277, %278
  br i1 %cmp467, label %for.body.469, label %for.end.482

for.body.469:                                     ; preds = %for.cond.466
  %279 = load i32, i32* %k, align 4, !tbaa !25
  %idxprom470 = sext i32 %279 to i64
  %280 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components471 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %280, i32 0, i32 4
  %281 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components471, align 8, !tbaa !67
  %arrayidx472 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %281, i64 %idxprom470
  %comp_number473 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx472, i32 0, i32 1
  %282 = load i32, i32* %comp_number473, align 4, !tbaa !68
  %283 = load i32, i32* %comp_number462, align 4, !tbaa !25
  %cmp474 = icmp eq i32 %282, %283
  br i1 %cmp474, label %if.then.476, label %if.end.480

if.then.476:                                      ; preds = %for.body.469
  %284 = load i32, i32* %k, align 4, !tbaa !25
  %idxprom477 = sext i32 %284 to i64
  %285 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components478 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %285, i32 0, i32 4
  %286 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components478, align 8, !tbaa !67
  %arrayidx479 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %286, i64 %idxprom477
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx479, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  br label %for.end.482

if.end.480:                                       ; preds = %for.body.469
  br label %for.inc

for.inc:                                          ; preds = %if.end.480
  %287 = load i32, i32* %k, align 4, !tbaa !25
  %inc481 = add nsw i32 %287, 1
  store i32 %inc481, i32* %k, align 4, !tbaa !25
  br label %for.cond.466

for.end.482:                                      ; preds = %if.then.476, %for.cond.466
  %288 = bitcast i32* %comp_number462 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  br label %if.end.483

if.end.483:                                       ; preds = %for.end.482, %if.then.460
  %290 = load i32, i32* %j, align 4, !tbaa !25
  %idxprom484 = sext i32 %290 to i64
  %291 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %291, i64 %idxprom484
  %type486 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx485, i32 0, i32 2
  %292 = load i32, i32* %type486, align 4, !tbaa !56
  switch i32 %292, label %sw.default.556 [
    i32 3, label %sw.bb.487
    i32 4, label %sw.bb.500
  ]

sw.bb.487:                                        ; preds = %if.end.483
  %293 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %294 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %295 = load i32, i32* %j, align 4, !tbaa !25
  %idxprom488 = sext i32 %295 to i64
  %296 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %arrayidx489 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %296, i64 %idxprom488
  %params490 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx489, i32 0, i32 3
  %spot491 = bitcast %union.anon.2* %params490 to %struct.gs_spot_halftone_s*
  %screen492 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot491, i32 0, i32 0
  %297 = load i32, i32* %j, align 4, !tbaa !25
  %idxprom493 = sext i32 %297 to i64
  %arrayidx494 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %sprocs, i32 0, i64 %idxprom493
  %298 = load i32, i32* %space_index, align 4, !tbaa !25
  %call495 = call i32 @zscreen_enum_init(%struct.gs_context_state_s* %293, %struct.gx_ht_order_s* %294, %struct.gs_screen_halftone_s* %screen492, %struct.ref_s* %arrayidx494, i32 0, i32 (%struct.gs_context_state_s*)* null, i32 %298) #3
  store i32 %call495, i32* %code, align 4, !tbaa !25
  %299 = load i32, i32* %code, align 4, !tbaa !25
  %cmp496 = icmp slt i32 %299, 0
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %sw.bb.487
  br label %sw.epilog.557

if.end.499:                                       ; preds = %sw.bb.487
  br label %sw.bb.500

sw.bb.500:                                        ; preds = %if.end.483, %if.end.499
  %arraydecay501 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %300 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext502 = sext i32 %300 to i64
  %add.ptr503 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay501, i64 %idx.ext502
  %tas504 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr503, i32 0, i32 0
  %type_attrs505 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas504, i32 0, i32 0
  %301 = bitcast i16* %type_attrs505 to i8*
  %arrayidx506 = getelementptr inbounds i8, i8* %301, i64 1
  %302 = load i8, i8* %arrayidx506, align 1, !tbaa !28
  %conv507 = zext i8 %302 to i32
  %cmp508 = icmp eq i32 %conv507, 0
  br i1 %cmp508, label %if.end.555, label %if.then.510

if.then.510:                                      ; preds = %sw.bb.500
  %303 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack511 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %303, i32 0, i32 26
  %stack512 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack511, i32 0, i32 0
  %top513 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack512, i32 0, i32 2
  %304 = load %struct.ref_s*, %struct.ref_s** %top513, align 8, !tbaa !70
  %305 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack514 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %305, i32 0, i32 26
  %stack515 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack514, i32 0, i32 0
  %p516 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack515, i32 0, i32 0
  %306 = load %struct.ref_s*, %struct.ref_s** %p516, align 8, !tbaa !13
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %304 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %306 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %307 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !25
  %conv517 = sext i32 %307 to i64
  %cmp518 = icmp slt i64 %sub.ptr.div, %conv517
  br i1 %cmp518, label %if.then.520, label %if.end.523

if.then.520:                                      ; preds = %if.then.510
  %308 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !25
  %309 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack521 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %309, i32 0, i32 26
  %stack522 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack521, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack522, i32 0, i32 7
  store i32 %308, i32* %requested, align 4, !tbaa !71
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.577

if.end.523:                                       ; preds = %if.then.510
  %310 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack524 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %310, i32 0, i32 25
  %stack525 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack524, i32 0, i32 0
  %p526 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack525, i32 0, i32 0
  %311 = load %struct.ref_s*, %struct.ref_s** %p526, align 8, !tbaa !29
  %312 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack527 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %312, i32 0, i32 25
  %stack528 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack527, i32 0, i32 0
  %top529 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack528, i32 0, i32 2
  %313 = load %struct.ref_s*, %struct.ref_s** %top529, align 8, !tbaa !30
  %314 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !25
  %idx.ext530 = sext i32 %314 to i64
  %idx.neg = sub i64 0, %idx.ext530
  %add.ptr531 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %313, i64 %idx.neg
  %cmp532 = icmp ugt %struct.ref_s* %311, %add.ptr531
  br i1 %cmp532, label %if.then.534, label %if.end.546

if.then.534:                                      ; preds = %if.end.523
  %315 = bitcast i32* %es_code_535 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %316 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack536 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %316, i32 0, i32 25
  %stack537 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack536, i32 0, i32 0
  %317 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !25
  %call538 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack537, i32 %317) #3
  store i32 %call538, i32* %es_code_535, align 4, !tbaa !25
  %318 = load i32, i32* %es_code_535, align 4, !tbaa !25
  %cmp539 = icmp slt i32 %318, 0
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.then.534
  %319 = load i32, i32* %es_code_535, align 4, !tbaa !25
  store i32 %319, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.543

if.end.542:                                       ; preds = %if.then.534
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.543

cleanup.543:                                      ; preds = %if.end.542, %if.then.541
  %320 = bitcast i32* %es_code_535 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %cleanup.dest.544 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.544, label %cleanup.577 [
    i32 0, label %cleanup.cont.545
  ]

cleanup.cont.545:                                 ; preds = %cleanup.543
  br label %if.end.546

if.end.546:                                       ; preds = %cleanup.cont.545, %if.end.523
  %321 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay547 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %tprocs, i32 0, i32 0
  %322 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext548 = sext i32 %322 to i64
  %add.ptr549 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay547, i64 %idx.ext548
  %323 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %323, i32 0, i32 15
  %324 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !72
  %325 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs550 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %325, i32 0, i32 0
  %326 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs550, align 8, !tbaa !26
  %call551 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %321, %struct.ref_s* %add.ptr549, %struct.gx_transfer_map_s* %324, %struct.gs_state_s* %326, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call551, i32* %code, align 4, !tbaa !25
  %327 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack552 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %327, i32 0, i32 26
  %stack553 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack552, i32 0, i32 0
  %p554 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack553, i32 0, i32 0
  %328 = load %struct.ref_s*, %struct.ref_s** %p554, align 8, !tbaa !13
  store %struct.ref_s* %328, %struct.ref_s** %op, align 8, !tbaa !1
  br label %if.end.555

if.end.555:                                       ; preds = %if.end.546, %sw.bb.500
  br label %sw.epilog.557

sw.default.556:                                   ; preds = %if.end.483
  br label %sw.epilog.557

sw.epilog.557:                                    ; preds = %sw.default.556, %if.end.555, %if.then.498
  %329 = load i32, i32* %code, align 4, !tbaa !25
  %cmp558 = icmp slt i32 %329, 0
  br i1 %cmp558, label %if.then.560, label %if.end.576

if.then.560:                                      ; preds = %sw.epilog.557
  %330 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack561 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %330, i32 0, i32 26
  %stack562 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack561, i32 0, i32 0
  %331 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack563 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %331, i32 0, i32 26
  %stack564 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack563, i32 0, i32 0
  %call565 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack564) #3
  %332 = load i32, i32* %odepth, align 4, !tbaa !25
  %sub = sub i32 %call565, %332
  call void @ref_stack_pop(%struct.ref_stack_s* %stack562, i32 %sub) #3
  %333 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack566 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %333, i32 0, i32 25
  %stack567 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack566, i32 0, i32 0
  %334 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack568 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %334, i32 0, i32 25
  %stack569 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack568, i32 0, i32 0
  %call570 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack569) #3
  %335 = load i32, i32* %edepth, align 4, !tbaa !25
  %sub571 = sub i32 %call570, %335
  call void @ref_stack_pop(%struct.ref_stack_s* %stack567, i32 %sub571) #3
  %336 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack572 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %336, i32 0, i32 26
  %stack573 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack572, i32 0, i32 0
  %p574 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack573, i32 0, i32 0
  %337 = load %struct.ref_s*, %struct.ref_s** %p574, align 8, !tbaa !13
  store %struct.ref_s* %337, %struct.ref_s** %op, align 8, !tbaa !1
  %338 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx575 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %338, i64 -1
  %339 = bitcast %struct.ref_s* %arrayidx575 to i8*
  %340 = bitcast %struct.ref_s* %odict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %339, i8* %340, i64 16, i32 8, i1 false), !tbaa.struct !62
  %341 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %342 = bitcast %struct.ref_s* %341 to i8*
  %343 = bitcast %struct.ref_s* %odict5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %342, i8* %343, i64 16, i32 8, i1 false), !tbaa.struct !62
  store i32 27, i32* %cleanup.dest.slot
  br label %cleanup.577

if.end.576:                                       ; preds = %sw.epilog.557
  store i32 0, i32* %npop, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.577

cleanup.577:                                      ; preds = %if.end.576, %if.then.560, %cleanup.543, %if.then.520
  %344 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %cleanup.dest.578 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.578, label %cleanup.583 [
    i32 0, label %cleanup.cont.579
    i32 27, label %for.end.582
  ]

cleanup.cont.579:                                 ; preds = %cleanup.577
  br label %for.inc.580

for.inc.580:                                      ; preds = %cleanup.cont.579
  %345 = load i32, i32* %j, align 4, !tbaa !25
  %inc581 = add nsw i32 %345, 1
  store i32 %inc581, i32* %j, align 4, !tbaa !25
  br label %for.cond.454

for.end.582:                                      ; preds = %cleanup.577, %for.cond.454
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.583

cleanup.583:                                      ; preds = %for.end.582, %cleanup.577
  %346 = bitcast %struct.ref_s* %odict5 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %346) #1
  %347 = bitcast %struct.ref_s* %odict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %347) #1
  %348 = bitcast i32* %odepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %cleanup.dest.586 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.586, label %cleanup.610 [
    i32 0, label %cleanup.cont.587
  ]

cleanup.cont.587:                                 ; preds = %cleanup.583
  br label %if.end.588

if.end.588:                                       ; preds = %cleanup.cont.587, %if.end.370
  %349 = load i32, i32* %code, align 4, !tbaa !25
  %cmp589 = icmp slt i32 %349, 0
  br i1 %cmp589, label %if.then.591, label %if.end.597

if.then.591:                                      ; preds = %if.end.588
  %350 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs592 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %350, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs592, i32 0, i32 2
  %351 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !73
  %352 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %353 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %354 = bitcast %struct.gx_device_halftone_s* %353 to i8*
  call void %351(%struct.gs_memory_s* %352, i8* %354, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %355 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs593 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %355, i32 0, i32 1
  %free_object594 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs593, i32 0, i32 2
  %356 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object594, align 8, !tbaa !73
  %357 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %358 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %359 = bitcast %struct.gs_halftone_component_s* %358 to i8*
  call void %356(%struct.gs_memory_s* %357, i8* %359, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %360 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs595 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %360, i32 0, i32 1
  %free_object596 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs595, i32 0, i32 2
  %361 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object596, align 8, !tbaa !73
  %362 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %363 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %364 = bitcast %struct.gs_halftone_s* %363 to i8*
  call void %361(%struct.gs_memory_s* %362, i8* %364, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #3
  %365 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %365, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.597:                                       ; preds = %if.end.588
  %366 = load i32, i32* %npop, align 4, !tbaa !25
  %367 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack598 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %367, i32 0, i32 26
  %stack599 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack598, i32 0, i32 0
  %p600 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack599, i32 0, i32 0
  %368 = load %struct.ref_s*, %struct.ref_s** %p600, align 8, !tbaa !13
  %idx.ext601 = sext i32 %366 to i64
  %idx.neg602 = sub i64 0, %idx.ext601
  %add.ptr603 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %368, i64 %idx.neg602
  store %struct.ref_s* %add.ptr603, %struct.ref_s** %p600, align 8, !tbaa !13
  %369 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack604 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %369, i32 0, i32 25
  %stack605 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack604, i32 0, i32 0
  %call606 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack605) #3
  %370 = load i32, i32* %edepth, align 4, !tbaa !25
  %cmp607 = icmp ugt i32 %call606, %370
  %cond609 = select i1 %cmp607, i32 5, i32 0
  store i32 %cond609, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

cleanup.610:                                      ; preds = %if.end.597, %if.then.591, %cleanup.583, %cleanup.294, %cleanup, %if.then.90, %if.then.45, %if.then.37, %if.then.23, %if.then.14, %if.then
  %371 = bitcast i32* %space_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  %374 = bitcast i32* %halftonetype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #1
  %375 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %cname to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast [2 x %struct.ref_s]* %rvalue to i8*
  call void @llvm.lifetime.end(i64 32, i8* %379) #1
  %380 = bitcast i32* %dict_enum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast i32* %edepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #1
  %384 = bitcast [65 x %struct.ref_s]* %tprocs to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %384) #1
  %385 = bitcast [65 x %struct.ref_s]* %sprocs to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %385) #1
  %386 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %386) #1
  %387 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %387) #1
  %388 = bitcast i32* %have_default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast %struct.gs_halftone_component_s** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %391) #1
  %392 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %392) #1
  %393 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #1
  %394 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %394) #1
  %395 = load i32, i32* %retval
  ret i32 %395
}

; Function Attrs: nounwind uwtable
define internal i32 @sethalftone_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %4, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %6, i32 0, i32 4
  %7 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !67
  %tobool = icmp ne %struct.gx_ht_order_component_s* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %8, i32 0, i32 0
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %9, i32 0, i32 4
  %10 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components1, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %10, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %11 = bitcast %struct.gx_ht_order_s* %order to i8*
  %12 = bitcast %struct.gx_ht_order_s* %corder to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 160, i32 8, i1 false), !tbaa.struct !74
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !26
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !29
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct6 = bitcast %union.v* %value5 to %struct.obj_header_s**
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct6, align 8, !tbaa !1
  %18 = bitcast %struct.obj_header_s* %17 to %struct.gs_halftone_s*
  %19 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call = call i32 @gx_ht_install(%struct.gs_state_s* %14, %struct.gs_halftone_s* %18, %struct.gx_device_halftone_s* %19) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %20 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 0
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs9, align 8, !tbaa !26
  %call10 = call i8* @gs_state_client_data(%struct.gs_state_s* %23) #3
  %24 = bitcast i8* %call10 to %struct.int_gstate_s*
  %halftone = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %24, i32 0, i32 9
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !29
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -2
  %27 = bitcast %struct.ref_s* %halftone to i8*
  %28 = bitcast %struct.ref_s* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !62
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !29
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -4
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %p17, align 8, !tbaa !29
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call19 = call i32 @sethalftone_cleanup(%struct.gs_context_state_s* %31) #3
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare i32 @gs_cname_to_colorant_number(%struct.gs_state_s*, i8*, i32, i32) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_spot_params(%struct.ref_s* %pdict, %struct.gs_spot_halftone_s* %psp, %struct.ref_s* %psproc, %struct.ref_s* %ptproc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %psp.addr = alloca %struct.gs_spot_halftone_s*, align 8
  %psproc.addr = alloca %struct.ref_s*, align 8
  %ptproc.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_spot_halftone_s* %psp, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  store %struct.ref_s* %psproc, %struct.ref_s** %psproc.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptproc, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %2, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %5, i32 0, i32 0
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen, i32 0, i32 0
  %call = call i32 @dict_float_param(%struct.ref_s* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), double 0.000000e+00, float* %frequency) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %7 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %screen3 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %7, i32 0, i32 0
  %angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen3, i32 0, i32 1
  %call4 = call i32 @dict_float_param(%struct.ref_s* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double 0.000000e+00, float* %angle) #3
  store i32 %call4, i32* %code, align 4, !tbaa !25
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.20, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %psproc.addr, align 8, !tbaa !1
  %call8 = call i32 @dict_proc_param(%struct.ref_s* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s* %9, i32 0) #3
  store i32 %call8, i32* %code, align 4, !tbaa !25
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %10 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %11) #3
  %12 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %12, i32 0, i32 1
  %call13 = call i32 @dict_bool_param(%struct.ref_s* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %call12, i32* %accurate_screens) #3
  store i32 %call13, i32* %code, align 4, !tbaa !25
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %13 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %call17 = call i32 @dict_proc_param(%struct.ref_s* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %14, i32 0) #3
  store i32 %call17, i32* %code, align 4, !tbaa !25
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %do.end
  %15 = load i32, i32* %code, align 4, !tbaa !25
  %cmp21 = icmp slt i32 %15, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %16 = load i32, i32* %code, align 4, !tbaa !25
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ -21, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %lor.lhs.false.16
  %17 = load i32, i32* %code, align 4, !tbaa !25
  %cmp24 = icmp sgt i32 %17, 0
  %cond26 = select i1 %cmp24, float (double, %struct.gx_transfer_map_s*)* null, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer
  %18 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %18, i32 0, i32 2
  store float (double, %struct.gx_transfer_map_s*)* %cond26, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !75
  %19 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %19, i32 0, i32 3
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* null, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !76
  %20 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %transfer_closure27 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %20, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure27, i32 0, i32 1
  store i8* null, i8** %data, align 8, !tbaa !77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %cond.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal float @spot1_dummy(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !78
  store double %y, double* %y.addr, align 8, !tbaa !78
  %0 = load double, double* %x.addr, align 8, !tbaa !78
  %1 = load double, double* %y.addr, align 8, !tbaa !78
  %add = fadd double %0, %1
  %div = fdiv double %add, 2.000000e+00
  %conv = fptrunc double %div to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_threshold_params(%struct.ref_s* %pdict, %struct.gs_threshold_halftone_s* %ptp, %struct.ref_s* %ptproc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %ptp.addr = alloca %struct.gs_threshold_halftone_s*, align 8
  %ptproc.addr = alloca %struct.ref_s*, align 8
  %tstring = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_threshold_halftone_s* %ptp, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptproc, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %tstring to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_threshold_halftone_s* %3 to %struct.gs_threshold_halftone_common_s*
  %5 = load %struct.ref_s*, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %call = call i32 @dict_threshold_common_params(%struct.ref_s* %2, %struct.gs_threshold_halftone_common_s* %4, %struct.ref_s** %tstring, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %6 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16160
  %cmp1 = icmp eq i32 %and, 4640
  br i1 %cmp1, label %if.end.9, label %if.then.3

if.then.3:                                        ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %11 = bitcast i16* %type_attrs5 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv6 = zext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 18
  %lnot = xor i1 %cmp7, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !65
  %conv11 = zext i32 %14 to i64
  %15 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %15, i32 0, i32 0
  %16 = load i32, i32* %width, align 4, !tbaa !80
  %conv12 = sext i32 %16 to i64
  %17 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %17, i32 0, i32 1
  %18 = load i32, i32* %height, align 4, !tbaa !83
  %conv13 = sext i32 %18 to i64
  %mul = mul nsw i64 %conv12, %conv13
  %cmp14 = icmp ne i64 %conv11, %mul
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.end
  %19 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %21 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %21, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  store i8* %20, i8** %data, align 8, !tbaa !84
  %22 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %23 = load i32, i32* %rsize19, align 4, !tbaa !65
  %24 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds20 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %24, i32 0, i32 3
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds20, i32 0, i32 1
  store i32 %23, i32* %size, align 4, !tbaa !85
  %25 = load i32, i32* %code, align 4, !tbaa !25
  %cmp21 = icmp sgt i32 %25, 0
  %cond23 = select i1 %cmp21, float (double, %struct.gx_transfer_map_s*)* null, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer
  %26 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptp.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %26, i32 0, i32 4
  store float (double, %struct.gx_transfer_map_s*)* %cond23, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.3, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.ref_s** %tstring to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_threshold2_params(%struct.ref_s* %pdict, %struct.gs_threshold2_halftone_s* %ptp, %struct.ref_s* %ptproc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %ptp.addr = alloca %struct.gs_threshold2_halftone_s*, align 8
  %ptproc.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %tstring = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %bps = alloca i32, align 4
  %size = alloca i32, align 4
  %cw2 = alloca i32, align 4
  %ch2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_threshold2_halftone_s* %ptp, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptproc, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %tstring to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_threshold2_halftone_s* %3 to %struct.gs_threshold_halftone_common_s*
  %5 = load %struct.ref_s*, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %call = call i32 @dict_threshold_common_params(%struct.ref_s* %2, %struct.gs_threshold_halftone_common_s* %4, %struct.ref_s** %tstring, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %6 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %cw2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ch2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %12 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %12, i32 0, i32 3
  %call1 = call i32 @dict_int_param(%struct.ref_s* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 32767, i32 0, i32* %width2) #3
  store i32 %call1, i32* %cw2, align 4, !tbaa !25
  store i32 %call1, i32* %code, align 4, !tbaa !25
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %13 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %14 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %14, i32 0, i32 4
  %call4 = call i32 @dict_int_param(%struct.ref_s* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 32767, i32 0, i32* %height2) #3
  store i32 %call4, i32* %ch2, align 4, !tbaa !25
  store i32 %call4, i32* %code, align 4, !tbaa !25
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %15 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call7 = call i32 @dict_int_param(%struct.ref_s* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 8, i32 16, i32 -1, i32* %bps) #3
  store i32 %call7, i32* %code, align 4, !tbaa !25
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %17 = load i32, i32* %bps, align 4, !tbaa !25
  %cmp9 = icmp ne i32 %17, 8
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.11

land.lhs.true:                                    ; preds = %if.end
  %18 = load i32, i32* %bps, align 4, !tbaa !25
  %cmp10 = icmp ne i32 %18, 16
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true, %if.end
  %19 = load i32, i32* %cw2, align 4, !tbaa !25
  %20 = load i32, i32* %ch2, align 4, !tbaa !25
  %cmp12 = icmp ne i32 %19, %20
  br i1 %cmp12, label %if.then.20, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %21 = load i32, i32* %cw2, align 4, !tbaa !25
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end.21, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %lor.lhs.false.13
  %22 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %width215 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %22, i32 0, i32 3
  %23 = load i32, i32* %width215, align 4, !tbaa !87
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.14
  %24 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %height218 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %24, i32 0, i32 4
  %25 = load i32, i32* %height218, align 4, !tbaa !90
  %cmp19 = icmp eq i32 %25, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.14, %lor.lhs.false.11, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.17, %lor.lhs.false.13
  %26 = load i32, i32* %bps, align 4, !tbaa !25
  %div = sdiv i32 %26, 8
  %27 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %bytes_per_sample = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %27, i32 0, i32 5
  store i32 %div, i32* %bytes_per_sample, align 4, !tbaa !91
  %28 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %29 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %30 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 9, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.21
  %31 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %32 = load i32, i32* %rsize, align 4, !tbaa !65
  store i32 %32, i32* %size, align 4, !tbaa !25
  %33 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %34 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %35 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %35, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds, i32 0, i32 0
  store i8* %34, i8** %data, align 8, !tbaa !92
  %36 = load i32, i32* %size, align 4, !tbaa !25
  %37 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds23 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %37, i32 0, i32 6
  %size24 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds23, i32 0, i32 1
  store i32 %36, i32* %size24, align 4, !tbaa !93
  %38 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds25 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %38, i32 0, i32 6
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds25, i32 0, i32 2
  store i8* null, i8** %bytes, align 8, !tbaa !94
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.21
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %40 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !95
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %pstruct = bitcast %union.v* %value27 to %struct.obj_header_s**
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to i8*
  %call28 = call %struct.gs_memory_struct_type_s* %40(%struct.gs_memory_s* %41, i8* %44) #3
  %cmp29 = icmp ne %struct.gs_memory_struct_type_s* %call28, @st_bytes
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.26
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %sw.bb.26
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 14
  %46 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !96
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %pstruct35 = bitcast %union.v* %value34 to %struct.obj_header_s**
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct35, align 8, !tbaa !1
  %50 = bitcast %struct.obj_header_s* %49 to i8*
  %call36 = call i32 %46(%struct.gs_memory_s* %47, i8* %50) #3
  store i32 %call36, i32* %size, align 4, !tbaa !25
  %51 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %pstruct38 = bitcast %union.v* %value37 to %struct.obj_header_s**
  %52 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct38, align 8, !tbaa !1
  %53 = bitcast %struct.obj_header_s* %52 to i8*
  %54 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds39 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %54, i32 0, i32 6
  %bytes40 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds39, i32 0, i32 2
  store i8* %53, i8** %bytes40, align 8, !tbaa !94
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds41 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %55, i32 0, i32 6
  %data42 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds41, i32 0, i32 0
  store i8* %add.ptr, i8** %data42, align 8, !tbaa !92
  %56 = load i32, i32* %size, align 4, !tbaa !25
  %57 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %thresholds43 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %57, i32 0, i32 6
  %size44 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds43, i32 0, i32 1
  store i32 %56, i32* %size44, align 4, !tbaa !93
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.21
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.32, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %58 = load %struct.ref_s*, %struct.ref_s** %tstring, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %59 = load i16, i16* %type_attrs46, align 2, !tbaa !27
  %conv47 = zext i16 %59 to i32
  %and = and i32 %conv47, 32
  %tobool48 = icmp ne i32 %and, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  br label %do.end

do.end:                                           ; preds = %do.cond
  %60 = load i32, i32* %size, align 4, !tbaa !25
  %61 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %61, i32 0, i32 0
  %62 = load i32, i32* %width, align 4, !tbaa !97
  %63 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %63, i32 0, i32 1
  %64 = load i32, i32* %height, align 4, !tbaa !98
  %mul = mul nsw i32 %62, %64
  %65 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %width251 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %65, i32 0, i32 3
  %66 = load i32, i32* %width251, align 4, !tbaa !87
  %67 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %height252 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %67, i32 0, i32 4
  %68 = load i32, i32* %height252, align 4, !tbaa !90
  %mul53 = mul nsw i32 %66, %68
  %add = add nsw i32 %mul, %mul53
  %69 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptp.addr, align 8, !tbaa !1
  %bytes_per_sample54 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %69, i32 0, i32 5
  %70 = load i32, i32* %bytes_per_sample54, align 4, !tbaa !91
  %mul55 = mul nsw i32 %add, %70
  %cmp56 = icmp ne i32 %60, %mul55
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.58, %if.then.49, %sw.default, %if.then.31, %if.then.20, %if.then
  %71 = bitcast i32* %ch2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %cw2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.ref_s** %tstring to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @gs_sethalftone_prepare(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_spot_results(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pdict, %struct.gs_spot_halftone_s* %psp) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %psp.addr = alloca %struct.gs_spot_halftone_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_spot_halftone_s* %psp, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %3, i32 0, i32 0
  %actual_frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen, i32 0, i32 3
  %4 = load float, float* %actual_frequency, align 4, !tbaa !99
  %conv = fpext float %4 to double
  %call = call i32 @dict_real_result(%struct.gs_context_state_s* %1, %struct.ref_s* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), double %conv) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %5 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %9 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psp.addr, align 8, !tbaa !1
  %screen2 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %9, i32 0, i32 0
  %actual_angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen2, i32 0, i32 4
  %10 = load float, float* %actual_angle, align 4, !tbaa !100
  %conv3 = fpext float %10 to double
  %call4 = call i32 @dict_real_result(%struct.gs_context_state_s* %7, %struct.ref_s* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), double %conv3) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @sethalftone_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %pht = alloca %struct.gs_halftone_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %4, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %5 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !29
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 3
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %pstruct6 = bitcast %union.v* %value5 to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct6, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %9, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %10, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !73
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 1
  %memory8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !47
  %15 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_halftone_s* %15 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #3
  %17 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %17, i32 0, i32 1
  %memory10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !37
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !73
  %20 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %20, i32 0, i32 1
  %memory14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !37
  %22 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %23 = bitcast %struct.gs_halftone_s* %22 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #3
  %24 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 0
}

declare i32 @zscreen_enum_init(%struct.gs_context_state_s*, %struct.gx_ht_order_s*, %struct.gs_screen_halftone_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*, i32) #2

declare i32 @zcolor_remap_one(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gx_transfer_map_s*, %struct.gs_state_s*, i32 (%struct.gs_context_state_s*)*) #2

declare i32 @zcolor_remap_one_finish(%struct.gs_context_state_s*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

declare i32 @dict_proc_param(%struct.ref_s*, i8*, %struct.ref_s*, i32) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @gs_currentaccuratescreens(%struct.gs_memory_s*) #2

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_threshold_common_params(%struct.ref_s* %pdict, %struct.gs_threshold_halftone_common_s* %ptp, %struct.ref_s** %pptstring, %struct.ref_s* %ptproc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %ptp.addr = alloca %struct.gs_threshold_halftone_common_s*, align 8
  %pptstring.addr = alloca %struct.ref_s**, align 8
  %ptproc.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_threshold_halftone_common_s* %ptp, %struct.gs_threshold_halftone_common_s** %ptp.addr, align 8, !tbaa !1
  store %struct.ref_s** %pptstring, %struct.ref_s*** %pptstring.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptproc, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %2, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load %struct.gs_threshold_halftone_common_s*, %struct.gs_threshold_halftone_common_s** %ptp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold_halftone_common_s, %struct.gs_threshold_halftone_common_s* %5, i32 0, i32 0
  %call = call i32 @dict_int_param(%struct.ref_s* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 32767, i32 -1, i32* %width) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %7 = load %struct.gs_threshold_halftone_common_s*, %struct.gs_threshold_halftone_common_s** %ptp.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold_halftone_common_s, %struct.gs_threshold_halftone_common_s* %7, i32 0, i32 1
  %call3 = call i32 @dict_int_param(%struct.ref_s* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 32767, i32 -1, i32* %height) #3
  store i32 %call3, i32* %code, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.14, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s**, %struct.ref_s*** %pptstring.addr, align 8, !tbaa !1
  %call7 = call i32 @dict_find_string(%struct.ref_s* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct.ref_s** %9) #3
  store i32 %call7, i32* %code, align 4, !tbaa !25
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %10 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %ptproc.addr, align 8, !tbaa !1
  %call11 = call i32 @dict_proc_param(%struct.ref_s* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %11, i32 0) #3
  store i32 %call11, i32* %code, align 4, !tbaa !25
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !25
  %cmp15 = icmp slt i32 %12, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %13 = load i32, i32* %code, align 4, !tbaa !25
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ -21, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.10
  %14 = load %struct.gs_threshold_halftone_common_s*, %struct.gs_threshold_halftone_common_s** %ptp.addr, align 8, !tbaa !1
  %transfer_closure = getelementptr inbounds %struct.gs_threshold_halftone_common_s, %struct.gs_threshold_halftone_common_s* %14, i32 0, i32 2
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* null, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !101
  %15 = load %struct.gs_threshold_halftone_common_s*, %struct.gs_threshold_halftone_common_s** %ptp.addr, align 8, !tbaa !1
  %transfer_closure18 = getelementptr inbounds %struct.gs_threshold_halftone_common_s, %struct.gs_threshold_halftone_common_s* %15, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure18, i32 0, i32 1
  store i8* null, i8** %data, align 8, !tbaa !103
  %16 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %cond.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_real_result(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pdict, i8* %kstr, double %val) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %val.addr = alloca double, align 8
  %code = alloca i32, align 4
  %ignore = alloca %struct.ref_s*, align 8
  %rval = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store double %val, double* %val.addr, align 8, !tbaa !78
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !25
  %1 = bitcast %struct.ref_s** %ignore to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %ignore) #3
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.ref_s* %rval to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load double, double* %val.addr, align 8, !tbaa !78
  %conv3 = fptrunc double %8 to float
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rval, i32 0, i32 1
  %realval = bitcast %union.v* %value4 to float*
  store float %conv3, float* %realval, align 4, !tbaa !64
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rval, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  store i16 4096, i16* %type_attrs6, align 2, !tbaa !27
  %9 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 24
  %call7 = call i32 @dict_put_string(%struct.ref_s* %9, i8* %10, %struct.ref_s* %rval, %struct.dict_stack_s* %dict_stack) #3
  store i32 %call7, i32* %code, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.2
  %12 = bitcast %struct.ref_s* %rval to i8*
  call void @llvm.lifetime.end(i64 16, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.end.8:                                         ; preds = %cleanup.cont, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %if.end.8, %cleanup
  %14 = bitcast %struct.ref_s** %ignore to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @gx_ht_install(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 192}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !2, i64 120}
!11 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !2, i64 112, !2, i64 120, !12, i64 128, !2, i64 136, !12, i64 144, !12, i64 148, !3, i64 152, !2, i64 168, !12, i64 176, !2, i64 184, !12, i64 192, !2, i64 200, !2, i64 208}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !2, i64 624}
!14 = !{!"gs_context_state_s", !2, i64 0, !15, i64 8, !12, i64 80, !17, i64 88, !17, i64 104, !6, i64 120, !6, i64 128, !6, i64 136, !12, i64 144, !12, i64 148, !17, i64 152, !17, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !20, i64 264, !20, i64 304, !2, i64 344, !12, i64 352, !2, i64 360, !21, i64 368, !23, i64 520, !24, i64 624, !2, i64 720}
!15 = !{!"gs_dual_memory_s", !2, i64 0, !16, i64 8, !12, i64 48, !2, i64 56, !12, i64 64, !12, i64 68}
!16 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!17 = !{!"ref_s", !18, i64 0, !3, i64 8}
!18 = !{!"tas_s", !19, i64 0, !19, i64 2, !12, i64 4}
!19 = !{!"short", !3, i64 0}
!20 = !{!"op_array_table_s", !17, i64 0, !2, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!21 = !{!"dict_stack_s", !22, i64 0, !12, i64 96, !12, i64 100, !12, i64 104, !2, i64 112, !12, i64 120, !2, i64 128, !17, i64 136}
!22 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !17, i64 24, !12, i64 40, !12, i64 44, !17, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !2, i64 80, !2, i64 88}
!23 = !{!"exec_stack_s", !22, i64 0, !2, i64 96}
!24 = !{!"op_stack_s", !22, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!14, !2, i64 0}
!27 = !{!17, !19, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!14, !2, i64 520}
!30 = !{!14, !2, i64 536}
!31 = !{!15, !12, i64 68}
!32 = !{!14, !2, i64 8}
!33 = !{!8, !2, i64 72}
!34 = !{!35, !6, i64 8}
!35 = !{!"gs_halftone_s", !3, i64 0, !36, i64 8, !3, i64 32}
!36 = !{!"rc_header_s", !6, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!35, !2, i64 16}
!38 = !{!35, !2, i64 24}
!39 = !{!8, !2, i64 104}
!40 = !{!41, !6, i64 160}
!41 = !{!"gx_device_halftone_s", !42, i64 0, !36, i64 160, !6, i64 184, !3, i64 192, !2, i64 200, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220}
!42 = !{!"gx_ht_order_s", !43, i64 0, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !12, i64 52, !12, i64 56, !12, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !44, i64 112, !2, i64 144, !12, i64 152}
!43 = !{!"gx_ht_cell_params_s", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !6, i64 16, !19, i64 24, !19, i64 26, !12, i64 28, !12, i64 32, !12, i64 36}
!44 = !{!"gx_ht_order_screen_params_s", !45, i64 0, !6, i64 24}
!45 = !{!"gs_matrix_s", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20}
!46 = !{!"float", !3, i64 0}
!47 = !{!41, !2, i64 168}
!48 = !{!41, !2, i64 176}
!49 = !{!50, !12, i64 4}
!50 = !{!"gs_halftone_component_s", !12, i64 0, !12, i64 4, !3, i64 8, !3, i64 16}
!51 = !{!50, !12, i64 0}
!52 = !{!53, !2, i64 8}
!53 = !{!"gs_spot_halftone_s", !54, i64 0, !12, i64 24, !2, i64 32, !55, i64 40}
!54 = !{!"gs_screen_halftone_s", !46, i64 0, !46, i64 4, !2, i64 8, !46, i64 16, !46, i64 20}
!55 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!56 = !{!50, !3, i64 8}
!57 = !{!35, !3, i64 0}
!58 = !{!59, !2, i64 0}
!59 = !{!"gs_multiple_halftone_s", !2, i64 0, !12, i64 8, !2, i64 16}
!60 = !{!59, !12, i64 8}
!61 = !{!59, !2, i64 16}
!62 = !{i64 0, i64 2, !63, i64 2, i64 2, !63, i64 4, i64 4, !25, i64 8, i64 8, !5, i64 8, i64 2, !63, i64 8, i64 4, !64, i64 8, i64 8, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !5}
!63 = !{!19, !19, i64 0}
!64 = !{!46, !46, i64 0}
!65 = !{!17, !12, i64 4}
!66 = !{!15, !12, i64 48}
!67 = !{!41, !2, i64 200}
!68 = !{!69, !12, i64 160}
!69 = !{!"gx_ht_order_component_s", !42, i64 0, !12, i64 160, !12, i64 164}
!70 = !{!14, !2, i64 640}
!71 = !{!14, !12, i64 688}
!72 = !{!42, !2, i64 104}
!73 = !{!8, !2, i64 24}
!74 = !{i64 0, i64 2, !63, i64 2, i64 2, !63, i64 4, i64 2, !63, i64 6, i64 2, !63, i64 8, i64 2, !63, i64 10, i64 2, !63, i64 16, i64 8, !5, i64 24, i64 2, !63, i64 26, i64 2, !63, i64 28, i64 4, !25, i64 32, i64 4, !25, i64 36, i64 4, !25, i64 40, i64 2, !63, i64 42, i64 2, !63, i64 44, i64 2, !63, i64 46, i64 2, !63, i64 48, i64 2, !63, i64 50, i64 2, !63, i64 52, i64 4, !25, i64 56, i64 4, !25, i64 60, i64 4, !25, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !64, i64 116, i64 4, !64, i64 120, i64 4, !64, i64 124, i64 4, !64, i64 128, i64 4, !64, i64 132, i64 4, !64, i64 136, i64 8, !5, i64 144, i64 8, !1, i64 152, i64 4, !25}
!75 = !{!53, !2, i64 32}
!76 = !{!53, !2, i64 40}
!77 = !{!53, !2, i64 48}
!78 = !{!79, !79, i64 0}
!79 = !{!"double", !3, i64 0}
!80 = !{!81, !12, i64 0}
!81 = !{!"gs_threshold_halftone_s", !12, i64 0, !12, i64 4, !55, i64 8, !82, i64 24, !2, i64 40}
!82 = !{!"gs_const_string_s", !2, i64 0, !12, i64 8}
!83 = !{!81, !12, i64 4}
!84 = !{!81, !2, i64 24}
!85 = !{!81, !12, i64 32}
!86 = !{!81, !2, i64 40}
!87 = !{!88, !12, i64 24}
!88 = !{!"gs_threshold2_halftone_s", !12, i64 0, !12, i64 4, !55, i64 8, !12, i64 24, !12, i64 28, !12, i64 32, !89, i64 40}
!89 = !{!"gs_const_bytestring_s", !2, i64 0, !12, i64 8, !2, i64 16}
!90 = !{!88, !12, i64 28}
!91 = !{!88, !12, i64 32}
!92 = !{!89, !2, i64 0}
!93 = !{!89, !12, i64 8}
!94 = !{!89, !2, i64 16}
!95 = !{!8, !2, i64 128}
!96 = !{!8, !2, i64 120}
!97 = !{!88, !12, i64 0}
!98 = !{!88, !12, i64 4}
!99 = !{!53, !46, i64 16}
!100 = !{!53, !46, i64 20}
!101 = !{!102, !2, i64 8}
!102 = !{!"gs_threshold_halftone_common_s", !12, i64 0, !12, i64 4, !55, i64 8}
!103 = !{!102, !2, i64 16}
