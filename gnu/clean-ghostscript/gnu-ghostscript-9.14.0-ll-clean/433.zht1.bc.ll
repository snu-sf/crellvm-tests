; ModuleID = './zht1.bc'
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
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
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

@.str = private unnamed_addr constant [16 x i8] c"<setcolorscreen\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0%setcolorscreen_finish\00", align 1
@zht1_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcolorscreen }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @setcolorscreen_finish }, %struct.op_def zeroinitializer], align 16
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"setcolorscreen(halftone)\00", align 1
@st_device_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"setcolorscreen(device halftone)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"setcolorscreen_cleanup(device halftone)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"setcolorscreen_cleanup(halftone)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolorscreen(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cscreen = alloca %struct.gs_colorscreen_halftone_s, align 8
  %sprocs = alloca [4 x %struct.ref_s], align 16
  %pht = alloca %struct.gs_halftone_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %space = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %code2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  %esp0 = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_colorscreen_halftone_s* %cscreen to i8*
  call void @llvm.lifetime.start(i64 96, i8* %3) #1
  %4 = bitcast [4 x %struct.ref_s]* %sprocs to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %9 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %space, align 4, !tbaa !19
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp slt i32 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -9
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %mul = mul nsw i32 %14, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.ext
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op1, align 8, !tbaa !1
  %15 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %17 to i64
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %cscreen, i32 0, i32 0
  %indexed = bitcast %union._css* %screens to [4 x %struct.gs_screen_halftone_s]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], [4 x %struct.gs_screen_halftone_s]* %indexed, i32 0, i64 %idxprom
  %call = call i32 @zscreen_params(%struct.ref_s* %16, %struct.gs_screen_halftone_s* %arrayidx) #4
  store i32 %call, i32* %code2, align 4, !tbaa !19
  %18 = load i32, i32* %code2, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %code2, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom4 = sext i32 %20 to i64
  %screens5 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %cscreen, i32 0, i32 0
  %indexed6 = bitcast %union._css* %screens5 to [4 x %struct.gs_screen_halftone_s]*
  %arrayidx7 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], [4 x %struct.gs_screen_halftone_s]* %indexed6, i32 0, i64 %idxprom4
  %spot_function = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %arrayidx7, i32 0, i32 2
  store float (double, double)* @spot_dummy, float (double, double)** %spot_function, align 8, !tbaa !20
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %sprocs, i32 0, i64 %idxprom8
  %22 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %arrayidx9 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !23
  %25 = load i32, i32* %space, align 4, !tbaa !19
  %26 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %27 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %27 to i32
  %and = and i32 %conv, 12
  %shr = ashr i32 %and, 2
  %cmp10 = icmp sgt i32 %25, %shr
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i32, i32* %space, align 4, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %29 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %30 = load i16, i16* %type_attrs13, align 2, !tbaa !27
  %conv14 = zext i16 %30 to i32
  %and15 = and i32 %conv14, 12
  %shr16 = ashr i32 %and15, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %shr16, %cond.false ]
  store i32 %cond, i32* %space, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %31 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.199 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %space, align 4, !tbaa !19
  %idxprom18 = sext i32 %34 to i64
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed19 = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx20 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed19, i32 0, i64 %idxprom18
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx20, align 8, !tbaa !1
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %37, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !28
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 2
  %41 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !29
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -8
  %cmp26 = icmp ugt %struct.ref_s* %39, %add.ptr25
  br i1 %cmp26, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %for.end
  %42 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %call31 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack30, i32 8) #4
  store i32 %call31, i32* %es_code_, align 4, !tbaa !19
  %44 = load i32, i32* %es_code_, align 4, !tbaa !19
  %cmp32 = icmp slt i32 %44, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.28
  %45 = load i32, i32* %es_code_, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.35:                                        ; preds = %if.then.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %if.then.34
  %46 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest.37 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.37, label %cleanup.199 [
    i32 0, label %cleanup.cont.38
  ]

cleanup.cont.38:                                  ; preds = %cleanup.36
  br label %if.end.39

if.end.39:                                        ; preds = %cleanup.cont.38, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end.39
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %48 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !30
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call40 = call i8* %48(%struct.gs_memory_s* %49, %struct.gs_memory_struct_type_s* @st_halftone, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #4
  %50 = bitcast i8* %call40 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %50, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.gs_halftone_s* %50, null
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %do.body
  store %struct.gs_halftone_s* null, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  br label %if.end.51

if.else:                                          ; preds = %do.body
  br label %do.body.44

do.body.44:                                       ; preds = %if.else
  %51 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %51, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 0, i64* %ref_count, align 8, !tbaa !33
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc45 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %53, i32 0, i32 1
  %memory46 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc45, i32 0, i32 1
  store %struct.gs_memory_s* %52, %struct.gs_memory_s** %memory46, align 8, !tbaa !36
  %54 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc47 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %54, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc47, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  br label %do.body.48

do.body.48:                                       ; preds = %do.body.44
  br label %do.cond

do.cond:                                          ; preds = %do.body.48
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.end
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %if.then.43
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %alloc_struct56 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs55, i32 0, i32 8
  %56 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct56, align 8, !tbaa !30
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call57 = call i8* %56(%struct.gs_memory_s* %57, %struct.gs_memory_struct_type_s* @st_device_halftone, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  %58 = bitcast i8* %call57 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %58, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp58 = icmp eq %struct.gx_device_halftone_s* %58, null
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.54
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  br label %if.end.74

if.else.61:                                       ; preds = %do.body.54
  br label %do.body.62

do.body.62:                                       ; preds = %if.else.61
  %59 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc63 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %59, i32 0, i32 1
  %ref_count64 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc63, i32 0, i32 0
  store i64 0, i64* %ref_count64, align 8, !tbaa !38
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %61 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc65 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %61, i32 0, i32 1
  %memory66 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc65, i32 0, i32 1
  store %struct.gs_memory_s* %60, %struct.gs_memory_s** %memory66, align 8, !tbaa !44
  %62 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc67 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %62, i32 0, i32 1
  %free68 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc67, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free68, align 8, !tbaa !45
  br label %do.body.69

do.body.69:                                       ; preds = %do.body.62
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %if.then.60
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %63 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %cmp77 = icmp eq %struct.gs_halftone_s* %63, null
  br i1 %cmp77, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.76
  %64 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp79 = icmp eq %struct.gx_device_halftone_s* %64, null
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %lor.lhs.false, %do.end.76
  store i32 -25, i32* %code, align 4, !tbaa !19
  br label %if.end.84

if.else.82:                                       ; preds = %lor.lhs.false
  %65 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %65, i32 0, i32 0
  store i32 2, i32* %type, align 4, !tbaa !46
  %66 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %66, i32 0, i32 2
  %colorscreen = bitcast %union.anon.2* %params to %struct.gs_colorscreen_halftone_s*
  %67 = bitcast %struct.gs_colorscreen_halftone_s* %colorscreen to i8*
  %68 = bitcast %struct.gs_colorscreen_halftone_s* %cscreen to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 96, i32 8, i1 false), !tbaa.struct !47
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 0
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !49
  %71 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %72 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call83 = call i32 @gs_sethalftone_prepare(%struct.gs_state_s* %70, %struct.gs_halftone_s* %71, %struct.gx_device_halftone_s* %72) #4
  store i32 %call83, i32* %code, align 4, !tbaa !19
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.81
  %73 = load i32, i32* %code, align 4, !tbaa !19
  %cmp85 = icmp sge i32 %73, 0
  br i1 %cmp85, label %if.then.87, label %if.end.187

if.then.87:                                       ; preds = %if.end.84
  %74 = bitcast %struct.ref_s** %esp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %76 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !28
  store %struct.ref_s* %76, %struct.ref_s** %esp0, align 8, !tbaa !1
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 25
  %stack92 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack91, i32 0, i32 0
  %p93 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack92, i32 0, i32 0
  %78 = load %struct.ref_s*, %struct.ref_s** %p93, align 8, !tbaa !28
  %add.ptr94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 8
  store %struct.ref_s* %add.ptr94, %struct.ref_s** %p93, align 8, !tbaa !28
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 25
  %stack96 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %80 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !28
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 -7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr98, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @setcolorscreen_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 25
  %stack100 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack99, i32 0, i32 0
  %p101 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack100, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p101, align 8, !tbaa !28
  %add.ptr102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -7
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr102, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  store i16 3712, i16* %type_attrs104, align 2, !tbaa !27
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack106 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack105, i32 0, i32 0
  %p107 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 0
  %84 = load %struct.ref_s*, %struct.ref_s** %p107, align 8, !tbaa !28
  %add.ptr108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 -7
  %tas109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr108, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas109, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !50
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 25
  %stack111 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack110, i32 0, i32 0
  %p112 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack111, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p112, align 8, !tbaa !28
  %add.ptr113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 -6
  %87 = bitcast %struct.ref_s* %add.ptr113 to i8*
  %arraydecay = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %sprocs, i32 0, i32 0
  %88 = bitcast %struct.ref_s* %arraydecay to i8*
  %call114 = call i8* @memcpy(i8* %87, i8* %88, i64 64) #5
  %89 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %90 = bitcast %struct.gs_halftone_s* %89 to %struct.obj_header_s*
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 25
  %stack116 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack115, i32 0, i32 0
  %p117 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack116, i32 0, i32 0
  %92 = load %struct.ref_s*, %struct.ref_s** %p117, align 8, !tbaa !28
  %add.ptr118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -2
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr118, i32 0, i32 1
  %pstruct = bitcast %union.v* %value119 to %struct.obj_header_s**
  store %struct.obj_header_s* %90, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory120, i32 0, i32 2
  %94 = load i32, i32* %current_space, align 4, !tbaa !51
  %or = or i32 0, %94
  %add = add i32 2048, %or
  %conv121 = trunc i32 %add to i16
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 25
  %stack123 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 0
  %96 = load %struct.ref_s*, %struct.ref_s** %p124, align 8, !tbaa !28
  %add.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -2
  %tas126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr125, i32 0, i32 0
  %type_attrs127 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas126, i32 0, i32 0
  store i16 %conv121, i16* %type_attrs127, align 2, !tbaa !27
  %97 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %98 = bitcast %struct.gx_device_halftone_s* %97 to %struct.obj_header_s*
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 25
  %stack129 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack128, i32 0, i32 0
  %p130 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack129, i32 0, i32 0
  %100 = load %struct.ref_s*, %struct.ref_s** %p130, align 8, !tbaa !28
  %add.ptr131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -1
  %value132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr131, i32 0, i32 1
  %pstruct133 = bitcast %union.v* %value132 to %struct.obj_header_s**
  store %struct.obj_header_s* %98, %struct.obj_header_s** %pstruct133, align 8, !tbaa !1
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %101, i32 0, i32 1
  %current_space135 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory134, i32 0, i32 2
  %102 = load i32, i32* %current_space135, align 4, !tbaa !51
  %or136 = or i32 0, %102
  %add137 = add i32 2048, %or136
  %conv138 = trunc i32 %add137 to i16
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 25
  %stack140 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack139, i32 0, i32 0
  %p141 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack140, i32 0, i32 0
  %104 = load %struct.ref_s*, %struct.ref_s** %p141, align 8, !tbaa !28
  %add.ptr142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 -1
  %tas143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr142, i32 0, i32 0
  %type_attrs144 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas143, i32 0, i32 0
  store i16 %conv138, i16* %type_attrs144, align 2, !tbaa !27
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack145 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 25
  %stack146 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack145, i32 0, i32 0
  %p147 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack146, i32 0, i32 0
  %106 = load %struct.ref_s*, %struct.ref_s** %p147, align 8, !tbaa !28
  %value148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 1
  %opproc149 = bitcast %union.v* %value148 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @setcolorscreen_finish, i32 (%struct.gs_context_state_s*)** %opproc149, align 8, !tbaa !1
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack150 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 25
  %stack151 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack150, i32 0, i32 0
  %p152 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack151, i32 0, i32 0
  %108 = load %struct.ref_s*, %struct.ref_s** %p152, align 8, !tbaa !28
  %tas153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %type_attrs154 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas153, i32 0, i32 0
  store i16 3968, i16* %type_attrs154, align 2, !tbaa !27
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 25
  %stack156 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack155, i32 0, i32 0
  %p157 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack156, i32 0, i32 0
  %110 = load %struct.ref_s*, %struct.ref_s** %p157, align 8, !tbaa !28
  %tas158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 0
  %rsize159 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas158, i32 0, i32 2
  store i32 0, i32* %rsize159, align 4, !tbaa !50
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.184, %if.then.87
  %111 = load i32, i32* %i, align 4, !tbaa !19
  %cmp161 = icmp slt i32 %111, 4
  br i1 %cmp161, label %for.body.163, label %for.end.186

for.body.163:                                     ; preds = %for.cond.160
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %113 = load i32, i32* %i, align 4, !tbaa !19
  %add164 = add nsw i32 %113, 1
  %and165 = and i32 %add164, 3
  %idxprom166 = sext i32 %and165 to i64
  %114 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %114, i32 0, i32 4
  %115 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !52
  %arrayidx167 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %115, i64 %idxprom166
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx167, i32 0, i32 0
  %116 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom168 = sext i32 %116 to i64
  %117 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params169 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %117, i32 0, i32 2
  %colorscreen170 = bitcast %union.anon.2* %params169 to %struct.gs_colorscreen_halftone_s*
  %screens171 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen170, i32 0, i32 0
  %indexed172 = bitcast %union._css* %screens171 to [4 x %struct.gs_screen_halftone_s]*
  %arrayidx173 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], [4 x %struct.gs_screen_halftone_s]* %indexed172, i32 0, i64 %idxprom168
  %118 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom174 = sext i32 %118 to i64
  %arrayidx175 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %sprocs, i32 0, i64 %idxprom174
  %119 = load i32, i32* %space, align 4, !tbaa !19
  %call176 = call i32 @zscreen_enum_init(%struct.gs_context_state_s* %112, %struct.gx_ht_order_s* %corder, %struct.gs_screen_halftone_s* %arrayidx173, %struct.ref_s* %arrayidx175, i32 0, i32 (%struct.gs_context_state_s*)* null, i32 %119) #4
  store i32 %call176, i32* %code, align 4, !tbaa !19
  %120 = load i32, i32* %code, align 4, !tbaa !19
  %cmp177 = icmp slt i32 %120, 0
  br i1 %cmp177, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %for.body.163
  %121 = load %struct.ref_s*, %struct.ref_s** %esp0, align 8, !tbaa !1
  %122 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack180 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %122, i32 0, i32 25
  %stack181 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack180, i32 0, i32 0
  %p182 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack181, i32 0, i32 0
  store %struct.ref_s* %121, %struct.ref_s** %p182, align 8, !tbaa !28
  br label %for.end.186

if.end.183:                                       ; preds = %for.body.163
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %123 = load i32, i32* %i, align 4, !tbaa !19
  %inc185 = add nsw i32 %123, 1
  store i32 %inc185, i32* %i, align 4, !tbaa !19
  br label %for.cond.160

for.end.186:                                      ; preds = %if.then.179, %for.cond.160
  %124 = bitcast %struct.ref_s** %esp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  br label %if.end.187

if.end.187:                                       ; preds = %for.end.186, %if.end.84
  %125 = load i32, i32* %code, align 4, !tbaa !19
  %cmp188 = icmp slt i32 %125, 0
  br i1 %cmp188, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %if.end.187
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs191 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs191, i32 0, i32 2
  %127 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %129 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_halftone_s* %129 to i8*
  call void %127(%struct.gs_memory_s* %128, i8* %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs192 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %free_object193 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs192, i32 0, i32 2
  %132 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object193, align 8, !tbaa !53
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %134 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %135 = bitcast %struct.gs_halftone_s* %134 to i8*
  call void %132(%struct.gs_memory_s* %133, i8* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #4
  %136 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

if.end.194:                                       ; preds = %if.end.187
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack195 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 26
  %stack196 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack195, i32 0, i32 0
  %p197 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack196, i32 0, i32 0
  %138 = load %struct.ref_s*, %struct.ref_s** %p197, align 8, !tbaa !5
  %add.ptr198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i64 -12
  store %struct.ref_s* %add.ptr198, %struct.ref_s** %p197, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

cleanup.199:                                      ; preds = %if.end.194, %if.then.190, %cleanup.36, %cleanup
  %139 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast [4 x %struct.ref_s]* %sprocs to i8*
  call void @llvm.lifetime.end(i64 64, i8* %145) #1
  %146 = bitcast %struct.gs_colorscreen_halftone_s* %cscreen to i8*
  call void @llvm.lifetime.end(i64 96, i8* %146) #1
  %147 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal i32 @setcolorscreen_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !28
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %4, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %6, i32 0, i32 0
  %7 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %7, i32 0, i32 4
  %8 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !52
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %8, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %9 = bitcast %struct.gx_ht_order_s* %order to i8*
  %10 = bitcast %struct.gx_ht_order_s* %corder to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 160, i32 8, i1 false), !tbaa.struct !54
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !49
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !28
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct5 = bitcast %union.v* %value4 to %struct.obj_header_s**
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct5, align 8, !tbaa !1
  %16 = bitcast %struct.obj_header_s* %15 to %struct.gs_halftone_s*
  %17 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call = call i32 @gx_ht_install(%struct.gs_state_s* %12, %struct.gs_halftone_s* %16, %struct.gx_device_halftone_s* %17) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs6, align 8, !tbaa !49
  %call7 = call i8* @gs_state_client_data(%struct.gs_state_s* %21) #4
  %22 = bitcast i8* %call7 to %struct.int_gstate_s*
  %screen_procs = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %22, i32 0, i32 1
  %red = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs, i32 0, i32 0
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !28
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -5
  %25 = bitcast %struct.ref_s* %red to i8*
  %26 = bitcast %struct.ref_s* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !23
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs12, align 8, !tbaa !49
  %call13 = call i8* @gs_state_client_data(%struct.gs_state_s* %28) #4
  %29 = bitcast i8* %call13 to %struct.int_gstate_s*
  %screen_procs14 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %29, i32 0, i32 1
  %green = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs14, i32 0, i32 1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !28
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -4
  %32 = bitcast %struct.ref_s* %green to i8*
  %33 = bitcast %struct.ref_s* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !23
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 0
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs19, align 8, !tbaa !49
  %call20 = call i8* @gs_state_client_data(%struct.gs_state_s* %35) #4
  %36 = bitcast i8* %call20 to %struct.int_gstate_s*
  %screen_procs21 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %36, i32 0, i32 1
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs21, i32 0, i32 2
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !28
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  %39 = bitcast %struct.ref_s* %blue to i8*
  %40 = bitcast %struct.ref_s* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !23
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !49
  %call27 = call i8* @gs_state_client_data(%struct.gs_state_s* %42) #4
  %43 = bitcast i8* %call27 to %struct.int_gstate_s*
  %screen_procs28 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %43, i32 0, i32 1
  %gray = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs28, i32 0, i32 3
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !28
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -2
  %46 = bitcast %struct.ref_s* %gray to i8*
  %47 = bitcast %struct.ref_s* %arrayidx32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false), !tbaa.struct !23
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 0
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs33, align 8, !tbaa !49
  %call34 = call i8* @gs_state_client_data(%struct.gs_state_s* %49) #4
  %50 = bitcast i8* %call34 to %struct.int_gstate_s*
  %halftone = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %50, i32 0, i32 9
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %halftone, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !27
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !28
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -7
  store %struct.ref_s* %add.ptr38, %struct.ref_s** %p37, align 8, !tbaa !28
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call39 = call i32 @setcolorscreen_cleanup(%struct.gs_context_state_s* %53) #4
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @zscreen_params(%struct.ref_s*, %struct.gs_screen_halftone_s*) #2

; Function Attrs: nounwind uwtable
define internal float @spot_dummy(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !55
  store double %y, double* %y.addr, align 8, !tbaa !55
  %0 = load double, double* %x.addr, align 8, !tbaa !55
  %1 = load double, double* %y.addr, align 8, !tbaa !55
  %add = fadd double %0, %1
  %div = fdiv double %add, 2.000000e+00
  %conv = fptrunc double %div to float
  ret float %conv
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare i32 @gs_sethalftone_prepare(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @setcolorscreen_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pht = alloca %struct.gs_halftone_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !28
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_halftone_s*
  store %struct.gs_halftone_s* %4, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !28
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 7
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 1
  %pstruct6 = bitcast %union.v* %value5 to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct6, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %9, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %10, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !44
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 1
  %memory8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !44
  %15 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_halftone_s* %15 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)) #4
  %17 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %17, i32 0, i32 1
  %memory10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !36
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !53
  %20 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %20, i32 0, i32 1
  %memory14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !36
  %22 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %23 = bitcast %struct.gs_halftone_s* %22 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0)) #4
  %24 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @zscreen_enum_init(%struct.gs_context_state_s*, %struct.gx_ht_order_s*, %struct.gs_screen_halftone_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*, i32) #2

declare i32 @gx_ht_install(%struct.gs_state_s*, %struct.gs_halftone_s*, %struct.gx_device_halftone_s*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

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
!19 = !{!9, !9, i64 0}
!20 = !{!21, !2, i64 8}
!21 = !{!"gs_screen_halftone_s", !22, i64 0, !22, i64 4, !2, i64 8, !22, i64 16, !22, i64 20}
!22 = !{!"float", !3, i64 0}
!23 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 4, !19, i64 8, i64 8, !25, i64 8, i64 2, !24, i64 8, i64 4, !26, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25}
!24 = !{!12, !12, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!22, !22, i64 0}
!27 = !{!10, !12, i64 0}
!28 = !{!6, !2, i64 520}
!29 = !{!6, !2, i64 536}
!30 = !{!31, !2, i64 72}
!31 = !{!"gs_memory_s", !2, i64 0, !32, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!33 = !{!34, !13, i64 8}
!34 = !{!"gs_halftone_s", !3, i64 0, !35, i64 8, !3, i64 32}
!35 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!36 = !{!34, !2, i64 16}
!37 = !{!34, !2, i64 24}
!38 = !{!39, !13, i64 160}
!39 = !{!"gx_device_halftone_s", !40, i64 0, !35, i64 160, !13, i64 184, !3, i64 192, !2, i64 200, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220}
!40 = !{!"gx_ht_order_s", !41, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !9, i64 52, !9, i64 56, !9, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !42, i64 112, !2, i64 144, !9, i64 152}
!41 = !{!"gx_ht_cell_params_s", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !13, i64 16, !12, i64 24, !12, i64 26, !9, i64 28, !9, i64 32, !9, i64 36}
!42 = !{!"gx_ht_order_screen_params_s", !43, i64 0, !13, i64 24}
!43 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!44 = !{!39, !2, i64 168}
!45 = !{!39, !2, i64 176}
!46 = !{!34, !3, i64 0}
!47 = !{i64 0, i64 96, !48, i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 8, !1, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !26, i64 28, i64 4, !26, i64 32, i64 8, !1, i64 40, i64 4, !26, i64 44, i64 4, !26, i64 48, i64 4, !26, i64 52, i64 4, !26, i64 56, i64 8, !1, i64 64, i64 4, !26, i64 68, i64 4, !26, i64 72, i64 4, !26, i64 76, i64 4, !26, i64 80, i64 8, !1, i64 88, i64 4, !26, i64 92, i64 4, !26}
!48 = !{!3, !3, i64 0}
!49 = !{!6, !2, i64 0}
!50 = !{!10, !9, i64 4}
!51 = !{!7, !9, i64 48}
!52 = !{!39, !2, i64 200}
!53 = !{!31, !2, i64 24}
!54 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 2, !24, i64 6, i64 2, !24, i64 8, i64 2, !24, i64 10, i64 2, !24, i64 16, i64 8, !25, i64 24, i64 2, !24, i64 26, i64 2, !24, i64 28, i64 4, !19, i64 32, i64 4, !19, i64 36, i64 4, !19, i64 40, i64 2, !24, i64 42, i64 2, !24, i64 44, i64 2, !24, i64 46, i64 2, !24, i64 48, i64 2, !24, i64 50, i64 2, !24, i64 52, i64 4, !19, i64 56, i64 4, !19, i64 60, i64 4, !19, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !26, i64 116, i64 4, !26, i64 120, i64 4, !26, i64 124, i64 4, !26, i64 128, i64 4, !26, i64 132, i64 4, !26, i64 136, i64 8, !25, i64 144, i64 8, !1, i64 152, i64 4, !19}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !3, i64 0}
