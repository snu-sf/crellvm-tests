; ModuleID = './zht.bc'
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
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.obj_header_s = type opaque
%struct.gs_point_s = type { double, double }
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
%struct._csc = type { %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s }

@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"0.currenthalftone\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"0.currentscreenlevels\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"0%screen_sample\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"1%set_screen_continue\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"0%setscreen_finish\00", align 1
@zht_op_defs = constant [7 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrenthalftone }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentscreenlevels }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetscreen }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @screen_sample }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @set_screen_continue }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @setscreen_finish }, %struct.op_def zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [15 x i8] c"screen_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zscreen_enum_init(%struct.gs_context_state_s* %i_ctx_p, %struct.gx_ht_order_s* %porder, %struct.gs_screen_halftone_s* %psp, %struct.ref_s* %pproc, i32 %npop, i32 (%struct.gs_context_state_s*)* %finish_proc, i32 %space_index) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %psp.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %npop.addr = alloca i32, align 4
  %finish_proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %space_index.addr = alloca i32, align 4
  %penum = alloca %struct.gs_screen_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %psp, %struct.gs_screen_halftone_s** %psp.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %finish_proc, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  store i32 %space_index, i32* %space_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %space_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %5 = bitcast %struct.gs_ref_memory_s* %4 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -5
  %cmp = icmp ugt %struct.ref_s* %8, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %11 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack4, i32 5) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !5
  %13 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %14 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %15 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.89 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call8 = call %struct.gs_screen_enum_s* @gs_screen_enum_alloc(%struct.gs_memory_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #3
  store %struct.gs_screen_enum_s* %call8, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %17 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_screen_enum_s* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.11:                                        ; preds = %if.end.7
  %18 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %19 = bitcast %struct.gs_screen_enum_s* %18 to %struct.obj_header_s*
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !7
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %19, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %22 = load i32, i32* %space_index.addr, align 4, !tbaa !5
  %shl = shl i32 %22, 2
  %add = add nsw i32 2048, %shl
  %conv = trunc i32 %add to i16
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !7
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !21
  %25 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %26 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %29 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %psp.addr, align 8, !tbaa !1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call20 = call i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s* %25, %struct.gx_ht_order_s* %26, %struct.gs_state_s* %28, %struct.gs_screen_halftone_s* %29, %struct.gs_memory_s* %30) #3
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %31, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.11
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call24 = call i32 @screen_cleanup(%struct.gs_context_state_s* %32) #3
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.25:                                        ; preds = %if.end.11
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p28, align 8, !tbaa !7
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 1
  %opproc = bitcast %union.v* %value30 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @screen_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 25
  %stack32 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack31, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !7
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 3712, i16* %type_attrs36, align 2, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !7
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !23
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !7
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 4
  store %struct.ref_s* %add.ptr45, %struct.ref_s** %p44, align 8, !tbaa !7
  %42 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %finish_proc.addr, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !7
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -2
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr49, i32 0, i32 1
  %opproc51 = bitcast %union.v* %value50 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %42, i32 (%struct.gs_context_state_s*)** %opproc51, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack53 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 0
  %p54 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack53, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p54, align 8, !tbaa !7
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -2
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr55, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  store i16 3968, i16* %type_attrs57, align 2, !tbaa !21
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack59 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack58, i32 0, i32 0
  %p60 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack59, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p60, align 8, !tbaa !7
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 0
  %rsize63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 2
  store i32 0, i32* %rsize63, align 4, !tbaa !23
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack65 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack64, i32 0, i32 0
  %p66 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack65, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p66, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %51 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %52 = bitcast %struct.ref_s* %arrayidx67 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !24
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack69 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack68, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack69, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p70, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p70, align 8, !tbaa !7
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack72 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack71, i32 0, i32 0
  %p73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p73, align 8, !tbaa !7
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %opproc75 = bitcast %union.v* %value74 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @screen_sample, i32 (%struct.gs_context_state_s*)** %opproc75, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 25
  %stack77 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !7
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %type_attrs80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 0
  store i16 3968, i16* %type_attrs80, align 2, !tbaa !21
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack82 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack81, i32 0, i32 0
  %p83 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack82, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p83, align 8, !tbaa !7
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %rsize85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 2
  store i32 0, i32* %rsize85, align 4, !tbaa !23
  %62 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack86 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p87, align 8, !tbaa !29
  %idx.ext = sext i32 %62 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 %idx.neg
  store %struct.ref_s* %add.ptr88, %struct.ref_s** %p87, align 8, !tbaa !29
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.25, %if.then.23, %if.then.10, %cleanup
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_screen_enum_s* @gs_screen_enum_alloc(%struct.gs_memory_s*, i8*) #2

declare i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s*, %struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @screen_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum = alloca %struct.gs_screen_enum_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %4, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %5 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %5, i32 0, i32 0
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %halftone1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 0
  %rc2 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %halftone1, i32 0, i32 1
  %memory3 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !30
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %11 = bitcast %struct.gs_screen_enum_s* %10 to i8*
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #3
  %12 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @screen_sample(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_screen_enum_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %proc = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %7, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8, !tbaa !1
  %call = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %10, %struct.gs_point_s* %pt) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.20
  ]

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %opproc = bitcast %union.v* %value6 to i32 (%struct.gs_context_state_s*)**
  %16 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp = icmp ne i32 (%struct.gs_context_state_s*)* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !7
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %opproc12 = bitcast %union.v* %value11 to i32 (%struct.gs_context_state_s*)**
  %19 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc12, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call13 = call i32 %19(%struct.gs_context_state_s* %20) #3
  store i32 %call13, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !7
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -4
  store %struct.ref_s* %add.ptr17, %struct.ref_s** %p16, align 8, !tbaa !7
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call18 = call i32 @screen_cleanup(%struct.gs_context_state_s* %23) #3
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %24, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ 14, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.20
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 2
  store %struct.ref_s* %add.ptr21, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 2
  %28 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !41
  %cmp24 = icmp ugt %struct.ref_s* %add.ptr21, %28
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !42
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack29 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  store %struct.ref_s* %30, %struct.ref_s** %p30, align 8, !tbaa !29
  br label %if.end.31

if.end.31:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %32 = load double, double* %x, align 8, !tbaa !43
  %conv = fptrunc double %32 to float
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr32, i32 0, i32 1
  %realval = bitcast %union.v* %value33 to float*
  store float %conv, float* %realval, align 4, !tbaa !27
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !21
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %35 = load double, double* %y, align 8, !tbaa !46
  %conv35 = fptrunc double %35 to float
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %realval37 = bitcast %union.v* %value36 to float*
  store float %conv35, float* %realval37, align 4, !tbaa !27
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  store i16 4096, i16* %type_attrs39, align 2, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %40 = bitcast %struct.ref_s* %proc to i8*
  %41 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !24
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p45, align 8, !tbaa !7
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !7
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %opproc50 = bitcast %union.v* %value49 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @set_screen_continue, i32 (%struct.gs_context_state_s*)** %opproc50, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack52 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack51, i32 0, i32 0
  %p53 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack52, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p53, align 8, !tbaa !7
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 0
  store i16 3968, i16* %type_attrs55, align 2, !tbaa !21
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack57 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack56, i32 0, i32 0
  %p58 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack57, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p58, align 8, !tbaa !7
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !23
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack61 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack60, i32 0, i32 0
  %p62 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack61, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p62, align 8, !tbaa !7
  %incdec.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 1
  store %struct.ref_s* %incdec.ptr63, %struct.ref_s** %p62, align 8, !tbaa !7
  %52 = bitcast %struct.ref_s* %incdec.ptr63 to i8*
  %53 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.25, %cond.end, %sw.default
  %54 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #1
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast %struct.gs_screen_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @zscreen_params(%struct.ref_s* %op, %struct.gs_screen_halftone_s* %phs) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %phs.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %fa = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %phs, %struct.gs_screen_halftone_s** %phs.addr, align 8, !tbaa !1
  %0 = bitcast [2 x double]* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %fa, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 15552
  %cmp1 = icmp eq i32 %and, 1216
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call4 = call i32 @check_proc_failed(%struct.ref_s* %7) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %fa, i32 0, i64 0
  %8 = load double, double* %arrayidx, align 8, !tbaa !47
  %conv6 = fptrunc double %8 to float
  %9 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phs.addr, align 8, !tbaa !1
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %9, i32 0, i32 0
  store float %conv6, float* %frequency, align 4, !tbaa !48
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %fa, i32 0, i64 1
  %10 = load double, double* %arrayidx7, align 8, !tbaa !47
  %conv8 = fptrunc double %10 to float
  %11 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %phs.addr, align 8, !tbaa !1
  %angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %11, i32 0, i32 1
  store float %conv8, float* %angle, align 4, !tbaa !50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.3, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast [2 x double]* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrenthalftone(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ht = alloca %struct.gs_halftone_s, align 8
  %cleanup.dest.slot = alloca i32
  %opc = alloca %struct.ref_s*, align 8
  %pht = alloca %struct.gs_screen_halftone_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_currenthalftone(%struct.gs_state_s* %5, %struct.gs_halftone_s* %ht) #3
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 0
  %6 = load i32, i32* %type, align 4, !tbaa !51
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %9 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !41
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !42
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %11, %struct.ref_s** %p7, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %screen = bitcast %union.anon.2* %params to %struct.gs_screen_halftone_s*
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen, i32 0, i32 0
  %13 = load float, float* %frequency, align 4, !tbaa !48
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %13, float* %realval, align 4, !tbaa !27
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !21
  %params10 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %screen11 = bitcast %union.anon.2* %params10 to %struct.gs_screen_halftone_s*
  %angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen11, i32 0, i32 1
  %16 = load float, float* %angle, align 4, !tbaa !50
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 1
  %realval14 = bitcast %union.v* %value13 to float*
  store float %16, float* %realval14, align 4, !tbaa !27
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 4096, i16* %type_attrs17, align 2, !tbaa !21
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs18, align 8, !tbaa !22
  %call19 = call i8* @gs_state_client_data(%struct.gs_state_s* %21) #3
  %22 = bitcast i8* %call19 to %struct.int_gstate_s*
  %screen_procs = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %22, i32 0, i32 1
  %gray = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs, i32 0, i32 3
  %23 = bitcast %struct.ref_s* %arrayidx to i8*
  %24 = bitcast %struct.ref_s* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !24
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval = bitcast %union.v* %value20 to i64*
  store i64 1, i64* %intval, align 8, !tbaa !26
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  store i16 2816, i16* %type_attrs22, align 2, !tbaa !21
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  br label %do.body.24

do.body.24:                                       ; preds = %sw.bb.23
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 13
  store %struct.ref_s* %add.ptr25, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %top28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 2
  %29 = load %struct.ref_s*, %struct.ref_s** %top28, align 8, !tbaa !41
  %cmp29 = icmp ugt %struct.ref_s* %add.ptr25, %29
  br i1 %cmp29, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %do.body.24
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %requested33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 7
  store i32 13, i32* %requested33, align 4, !tbaa !42
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.34:                                       ; preds = %do.body.24
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %31, %struct.ref_s** %p37, align 8, !tbaa !29
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %33 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -12
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %opc, align 8, !tbaa !1
  %35 = bitcast %struct.gs_screen_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %params42 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %colorscreen = bitcast %union.anon.2* %params42 to %struct.gs_colorscreen_halftone_s*
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen, i32 0, i32 0
  %colored = bitcast %union._css* %screens to %struct._csc*
  %red = getelementptr inbounds %struct._csc, %struct._csc* %colored, i32 0, i32 0
  store %struct.gs_screen_halftone_s* %red, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %36 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %frequency43 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %36, i32 0, i32 0
  %37 = load float, float* %frequency43, align 4, !tbaa !48
  %38 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %realval45 = bitcast %union.v* %value44 to float*
  store float %37, float* %realval45, align 4, !tbaa !27
  %39 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 4096, i16* %type_attrs47, align 2, !tbaa !21
  %40 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %angle48 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %40, i32 0, i32 1
  %41 = load float, float* %angle48, align 4, !tbaa !50
  %42 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr49, i32 0, i32 1
  %realval51 = bitcast %union.v* %value50 to float*
  store float %41, float* %realval51, align 4, !tbaa !27
  %43 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 4096, i16* %type_attrs54, align 2, !tbaa !21
  %44 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 2
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 0
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs56, align 8, !tbaa !22
  %call57 = call i8* @gs_state_client_data(%struct.gs_state_s* %46) #3
  %47 = bitcast i8* %call57 to %struct.int_gstate_s*
  %screen_procs58 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %47, i32 0, i32 1
  %red59 = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs58, i32 0, i32 0
  %48 = bitcast %struct.ref_s* %arrayidx55 to i8*
  %49 = bitcast %struct.ref_s* %red59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false), !tbaa.struct !24
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -9
  store %struct.ref_s* %add.ptr60, %struct.ref_s** %opc, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %colorscreen62 = bitcast %union.anon.2* %params61 to %struct.gs_colorscreen_halftone_s*
  %screens63 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen62, i32 0, i32 0
  %colored64 = bitcast %union._css* %screens63 to %struct._csc*
  %green = getelementptr inbounds %struct._csc, %struct._csc* %colored64, i32 0, i32 1
  store %struct.gs_screen_halftone_s* %green, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %51 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %frequency65 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %51, i32 0, i32 0
  %52 = load float, float* %frequency65, align 4, !tbaa !48
  %53 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %realval67 = bitcast %union.v* %value66 to float*
  store float %52, float* %realval67, align 4, !tbaa !27
  %54 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  store i16 4096, i16* %type_attrs69, align 2, !tbaa !21
  %55 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %angle70 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %55, i32 0, i32 1
  %56 = load float, float* %angle70, align 4, !tbaa !50
  %57 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 1
  %realval73 = bitcast %union.v* %value72 to float*
  store float %56, float* %realval73, align 4, !tbaa !27
  %58 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 1
  %tas75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr74, i32 0, i32 0
  %type_attrs76 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas75, i32 0, i32 0
  store i16 4096, i16* %type_attrs76, align 2, !tbaa !21
  %59 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 2
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 0
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs78, align 8, !tbaa !22
  %call79 = call i8* @gs_state_client_data(%struct.gs_state_s* %61) #3
  %62 = bitcast i8* %call79 to %struct.int_gstate_s*
  %screen_procs80 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %62, i32 0, i32 1
  %green81 = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs80, i32 0, i32 1
  %63 = bitcast %struct.ref_s* %arrayidx77 to i8*
  %64 = bitcast %struct.ref_s* %green81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false), !tbaa.struct !24
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -6
  store %struct.ref_s* %add.ptr82, %struct.ref_s** %opc, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %colorscreen84 = bitcast %union.anon.2* %params83 to %struct.gs_colorscreen_halftone_s*
  %screens85 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen84, i32 0, i32 0
  %colored86 = bitcast %union._css* %screens85 to %struct._csc*
  %blue = getelementptr inbounds %struct._csc, %struct._csc* %colored86, i32 0, i32 2
  store %struct.gs_screen_halftone_s* %blue, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %66 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %frequency87 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %66, i32 0, i32 0
  %67 = load float, float* %frequency87, align 4, !tbaa !48
  %68 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  %realval89 = bitcast %union.v* %value88 to float*
  store float %67, float* %realval89, align 4, !tbaa !27
  %69 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %type_attrs91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 0
  store i16 4096, i16* %type_attrs91, align 2, !tbaa !21
  %70 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %angle92 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %70, i32 0, i32 1
  %71 = load float, float* %angle92, align 4, !tbaa !50
  %72 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 1
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr93, i32 0, i32 1
  %realval95 = bitcast %union.v* %value94 to float*
  store float %71, float* %realval95, align 4, !tbaa !27
  %73 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 1
  %tas97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr96, i32 0, i32 0
  %type_attrs98 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas97, i32 0, i32 0
  store i16 4096, i16* %type_attrs98, align 2, !tbaa !21
  %74 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 2
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs100 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 0
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs100, align 8, !tbaa !22
  %call101 = call i8* @gs_state_client_data(%struct.gs_state_s* %76) #3
  %77 = bitcast i8* %call101 to %struct.int_gstate_s*
  %screen_procs102 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %77, i32 0, i32 1
  %blue103 = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs102, i32 0, i32 2
  %78 = bitcast %struct.ref_s* %arrayidx99 to i8*
  %79 = bitcast %struct.ref_s* %blue103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false), !tbaa.struct !24
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 -3
  store %struct.ref_s* %add.ptr104, %struct.ref_s** %opc, align 8, !tbaa !1
  %params105 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %ht, i32 0, i32 2
  %colorscreen106 = bitcast %union.anon.2* %params105 to %struct.gs_colorscreen_halftone_s*
  %screens107 = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %colorscreen106, i32 0, i32 0
  %colored108 = bitcast %union._css* %screens107 to %struct._csc*
  %gray109 = getelementptr inbounds %struct._csc, %struct._csc* %colored108, i32 0, i32 3
  store %struct.gs_screen_halftone_s* %gray109, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %81 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %frequency110 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %81, i32 0, i32 0
  %82 = load float, float* %frequency110, align 4, !tbaa !48
  %83 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %value111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  %realval112 = bitcast %union.v* %value111 to float*
  store float %82, float* %realval112, align 4, !tbaa !27
  %84 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs114 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas113, i32 0, i32 0
  store i16 4096, i16* %type_attrs114, align 2, !tbaa !21
  %85 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %pht, align 8, !tbaa !1
  %angle115 = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %85, i32 0, i32 1
  %86 = load float, float* %angle115, align 4, !tbaa !50
  %87 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 1
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr116, i32 0, i32 1
  %realval118 = bitcast %union.v* %value117 to float*
  store float %86, float* %realval118, align 4, !tbaa !27
  %88 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 1
  %tas120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr119, i32 0, i32 0
  %type_attrs121 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas120, i32 0, i32 0
  store i16 4096, i16* %type_attrs121, align 2, !tbaa !21
  %89 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 2
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 0
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs123, align 8, !tbaa !22
  %call124 = call i8* @gs_state_client_data(%struct.gs_state_s* %91) #3
  %92 = bitcast i8* %call124 to %struct.int_gstate_s*
  %screen_procs125 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %92, i32 0, i32 1
  %gray126 = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs125, i32 0, i32 3
  %93 = bitcast %struct.ref_s* %arrayidx122 to i8*
  %94 = bitcast %struct.ref_s* %gray126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 16, i32 8, i1 false), !tbaa.struct !24
  %95 = bitcast %struct.gs_screen_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 1
  %intval128 = bitcast %union.v* %value127 to i64*
  store i64 2, i64* %intval128, align 8, !tbaa !26
  %98 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 0
  %type_attrs130 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas129, i32 0, i32 0
  store i16 2816, i16* %type_attrs130, align 2, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.131

do.body.131:                                      ; preds = %sw.default
  %99 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 2
  store %struct.ref_s* %add.ptr132, %struct.ref_s** %op, align 8, !tbaa !1
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack133 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 26
  %stack134 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack133, i32 0, i32 0
  %top135 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack134, i32 0, i32 2
  %101 = load %struct.ref_s*, %struct.ref_s** %top135, align 8, !tbaa !41
  %cmp136 = icmp ugt %struct.ref_s* %add.ptr132, %101
  br i1 %cmp136, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %do.body.131
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 26
  %stack139 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack138, i32 0, i32 0
  %requested140 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack139, i32 0, i32 7
  store i32 2, i32* %requested140, align 4, !tbaa !42
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.141:                                      ; preds = %do.body.131
  %103 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %104, i32 0, i32 26
  %stack143 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack142, i32 0, i32 0
  %p144 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack143, i32 0, i32 0
  store %struct.ref_s* %103, %struct.ref_s** %p144, align 8, !tbaa !29
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.141
  br label %do.cond.146

do.cond.146:                                      ; preds = %if.end.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  %105 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 -1
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs149 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 0
  %107 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs149, align 8, !tbaa !22
  %call150 = call i8* @gs_state_client_data(%struct.gs_state_s* %107) #3
  %108 = bitcast i8* %call150 to %struct.int_gstate_s*
  %halftone = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %108, i32 0, i32 9
  %109 = bitcast %struct.ref_s* %arrayidx148 to i8*
  %110 = bitcast %struct.ref_s* %halftone to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 16, i32 8, i1 false), !tbaa.struct !24
  %111 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  %intval152 = bitcast %union.v* %value151 to i64*
  store i64 0, i64* %intval152, align 8, !tbaa !26
  %112 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %type_attrs154 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas153, i32 0, i32 0
  store i16 2816, i16* %type_attrs154, align 2, !tbaa !21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.147, %do.end.40, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.137, %if.then.30, %if.then
  %113 = bitcast %struct.gs_halftone_s* %ht to i8*
  call void @llvm.lifetime.end(i64 128, i8* %113) #1
  %114 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentscreenlevels(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !41
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !42
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call i32 @gs_currentscreenlevels(%struct.gs_state_s* %10) #3
  %conv = sext i32 %call to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !26
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
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
define internal i32 @zsetscreen(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %screen = alloca %struct.gs_screen_halftone_s, align 8
  %order = alloca %struct.gx_ht_order_s, align 8
  %code = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %space_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_screen_halftone_s* %screen to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zscreen_params(%struct.ref_s* %6, %struct.gs_screen_halftone_s* %screen) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %space_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 12
  %shr = ashr i32 %and, 2
  store i32 %shr, i32* %space_index, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %space_index, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call2 = call i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %19) #3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call3 = call i32 @gs_screen_order_init_memory(%struct.gx_ht_order_s* %order, %struct.gs_state_s* %18, %struct.gs_screen_halftone_s* %screen, i32 %call2, %struct.gs_memory_s* %20) #3
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %21, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %25 = load i32, i32* %space_index, align 4, !tbaa !5
  %call8 = call i32 @zscreen_enum_init(%struct.gs_context_state_s* %23, %struct.gx_ht_order_s* %order, %struct.gs_screen_halftone_s* %screen, %struct.ref_s* %24, i32 3, i32 (%struct.gs_context_state_s*)* @setscreen_finish, i32 %25) #3
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %26 = bitcast i32* %space_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %29) #1
  %30 = bitcast %struct.gs_screen_halftone_s* %screen to i8*
  call void @llvm.lifetime.end(i64 24, i8* %30) #1
  %31 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @set_screen_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %value = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !29
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %value) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !7
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pstruct = bitcast %union.v* %value3 to %struct.obj_header_s**
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s* %10 to %struct.gs_screen_enum_s*
  %12 = load double, double* %value, align 8, !tbaa !47
  %call4 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* %11, double %12) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !29
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !29
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call11 = call i32 @screen_sample(%struct.gs_context_state_s* %17) #3
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @setscreen_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %2 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s* %2 to %struct.gs_screen_enum_s*
  %call = call i32 @gs_screen_install(%struct.gs_screen_enum_s* %3) #3
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call1 = call i8* @gs_state_client_data(%struct.gs_state_s* %5) #3
  %6 = bitcast i8* %call1 to %struct.int_gstate_s*
  %screen_procs = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %6, i32 0, i32 1
  %red = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs, i32 0, i32 0
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %9 = bitcast %struct.ref_s* %red to i8*
  %10 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !24
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !22
  %call6 = call i8* @gs_state_client_data(%struct.gs_state_s* %12) #3
  %13 = bitcast i8* %call6 to %struct.int_gstate_s*
  %screen_procs7 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %13, i32 0, i32 1
  %green = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs7, i32 0, i32 1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %16 = bitcast %struct.ref_s* %green to i8*
  %17 = bitcast %struct.ref_s* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !24
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 0
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs12, align 8, !tbaa !22
  %call13 = call i8* @gs_state_client_data(%struct.gs_state_s* %19) #3
  %20 = bitcast i8* %call13 to %struct.int_gstate_s*
  %screen_procs14 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %20, i32 0, i32 1
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs14, i32 0, i32 2
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %23 = bitcast %struct.ref_s* %blue to i8*
  %24 = bitcast %struct.ref_s* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !24
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs19, align 8, !tbaa !22
  %call20 = call i8* @gs_state_client_data(%struct.gs_state_s* %26) #3
  %27 = bitcast i8* %call20 to %struct.int_gstate_s*
  %screen_procs21 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %27, i32 0, i32 1
  %gray = getelementptr inbounds %struct.anon, %struct.anon* %screen_procs21, i32 0, i32 3
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %30 = bitcast %struct.ref_s* %gray to i8*
  %31 = bitcast %struct.ref_s* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !24
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 0
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !22
  %call27 = call i8* @gs_state_client_data(%struct.gs_state_s* %33) #3
  %34 = bitcast i8* %call27 to %struct.int_gstate_s*
  %halftone = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %34, i32 0, i32 9
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %halftone, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !21
  ret i32 0
}

declare i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s*, %struct.gs_point_s*) #2

declare i32 @gs_currenthalftone(%struct.gs_state_s*, %struct.gs_halftone_s*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

declare i32 @gs_currentscreenlevels(%struct.gs_state_s*) #2

declare i32 @gs_screen_order_init_memory(%struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, i32, %struct.gs_memory_s*) #2

declare i32 @gs_currentaccuratescreens(%struct.gs_memory_s*) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @gs_screen_next(%struct.gs_screen_enum_s*, double) #2

declare i32 @gs_screen_install(%struct.gs_screen_enum_s*) #2

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
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 520}
!8 = !{!"gs_context_state_s", !2, i64 0, !9, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!9 = !{!"gs_dual_memory_s", !2, i64 0, !10, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!10 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!8, !2, i64 536}
!21 = !{!11, !13, i64 0}
!22 = !{!8, !2, i64 0}
!23 = !{!11, !6, i64 4}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 4, i64 4, !5, i64 8, i64 8, !26, i64 8, i64 2, !25, i64 8, i64 4, !27, i64 8, i64 8, !26, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !26}
!25 = !{!13, !13, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!8, !2, i64 624}
!30 = !{!31, !2, i64 16}
!31 = !{!"gs_screen_enum_s", !32, i64 0, !34, i64 128, !37, i64 288, !37, i64 312, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !2, i64 352}
!32 = !{!"gs_halftone_s", !3, i64 0, !33, i64 8, !3, i64 32}
!33 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!34 = !{!"gx_ht_order_s", !35, i64 0, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !36, i64 112, !2, i64 144, !6, i64 152}
!35 = !{!"gx_ht_cell_params_s", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !14, i64 16, !13, i64 24, !13, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!36 = !{!"gx_ht_order_screen_params_s", !37, i64 0, !14, i64 24}
!37 = !{!"gs_matrix_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_memory_s", !2, i64 0, !40, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!40 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!41 = !{!8, !2, i64 640}
!42 = !{!8, !6, i64 688}
!43 = !{!44, !45, i64 0}
!44 = !{!"gs_point_s", !45, i64 0, !45, i64 8}
!45 = !{!"double", !3, i64 0}
!46 = !{!44, !45, i64 8}
!47 = !{!45, !45, i64 0}
!48 = !{!49, !28, i64 0}
!49 = !{!"gs_screen_halftone_s", !28, i64 0, !28, i64 4, !2, i64 8, !28, i64 16, !28, i64 20}
!50 = !{!49, !28, i64 4}
!51 = !{!32, !3, i64 0}
