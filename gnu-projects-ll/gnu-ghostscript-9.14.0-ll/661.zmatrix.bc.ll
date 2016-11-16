; ModuleID = './zmatrix.bc'
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
%struct.gs_param_list_s = type opaque
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }

@.str = private unnamed_addr constant [8 x i8] c"1concat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"2dtransform\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3concatmatrix\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"0.currentmatrix\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"1defaultmatrix\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"2idtransform\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"0initmatrix\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"2invertmatrix\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"2itransform\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1rotate\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"2scale\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"6.setmatrix\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"1.setdefaultmatrix\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"2transform\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"2translate\00", align 1
@zmatrix_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zconcat }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdtransform }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zconcatmatrix }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentmatrix }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdefaultmatrix }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zidtransform }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinitmatrix }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinvertmatrix }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zitransform }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrotate }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zscale }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetmatrix }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdefaultmatrix }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztransform }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztranslate }, %struct.op_def zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [17 x i8] c"2.bbox_transform\00", align 1
@zmatrix2_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbbox_transform }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @zconcat(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %7, %struct.ref_s* %8, %struct.gs_matrix_s* %mat) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call1 = call i32 @gs_concat(%struct.gs_state_s* %12, %struct.gs_matrix_s* %mat) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %13 = load i32, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p7, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zdtransform(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_transform(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_dtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_distance_transform) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zconcatmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %m1 = alloca %struct.gs_matrix_s, align 4
  %m2 = alloca %struct.gs_matrix_s, align 4
  %mp = alloca %struct.gs_matrix_s, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.gs_matrix_s* %m2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.gs_matrix_s* %mp to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %call = call i32 @read_matrix(%struct.gs_memory_s* %9, %struct.ref_s* %add.ptr, %struct.gs_matrix_s* %m1) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %call4 = call i32 @read_matrix(%struct.gs_memory_s* %13, %struct.ref_s* %add.ptr3, %struct.gs_matrix_s* %m2) #3
  store i32 %call4, i32* %code, align 4, !tbaa !20
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %call7 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %m1, %struct.gs_matrix_s* %m2, %struct.gs_matrix_s* %mp) #3
  store i32 %call7, i32* %code, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %call11 = call i32 @write_matrix_in(%struct.ref_s* %15, %struct.gs_matrix_s* %mp, %struct.gs_dual_memory_s* %memory10, %struct.gs_ref_memory_s* null) #3
  store i32 %call11, i32* %code, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false, %entry
  %17 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.9
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = bitcast %struct.ref_s* %arrayidx to i8*
  %21 = bitcast %struct.ref_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false), !tbaa.struct !22
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  store %struct.ref_s* %add.ptr16, %struct.ref_s** %p15, align 8, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_matrix_s* %mp to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #1
  %27 = bitcast %struct.gs_matrix_s* %m2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_currentmatrix(%struct.gs_state_s* %6, %struct.gs_matrix_s* %mat) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %7 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %11
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 6, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %13, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -5
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %call12 = call i32 @make_floats(%struct.ref_s* %add.ptr11, float* %xx, i32 6) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %16 = load i32, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %16, 0
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !5
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -6
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %p17, align 8, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.4, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zdefaultmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_defaultmatrix(%struct.gs_state_s* %5, %struct.gs_matrix_s* %mat) #3
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %call1 = call i32 @write_matrix_in(%struct.ref_s* %6, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory, %struct.gs_ref_memory_s* null) #3
  %8 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  %9 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @zidtransform(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_transform(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_idtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_distance_transform_inverse) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_initmatrix(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinvertmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %7, %struct.ref_s* %add.ptr, %struct.gs_matrix_s* %m) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %call5 = call i32 @write_matrix_in(%struct.ref_s* %9, %struct.gs_matrix_s* %m, %struct.gs_dual_memory_s* %memory4, %struct.gs_ref_memory_s* null) #3
  store i32 %call5, i32* %code, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %arrayidx to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !22
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !5
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %p9, align 8, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %20) #1
  %21 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zitransform(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_transform(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_itransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform_inverse) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zrotate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ang = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %4 = bitcast double* %ang to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %ang) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %8 = load double, double* %ang, align 8, !tbaa !29
  %call1 = call i32 @gs_rotate(%struct.gs_state_s* %7, double %8) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end:                                           ; preds = %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %11 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 1
  %14 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !31
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 0
  %cmp6 = icmp ult %struct.ref_s* %12, %add.ptr
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.else
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %call10 = call i32 @num_params(%struct.ref_s* %add.ptr9, i32 1, double* %ang) #3
  store i32 %call10, i32* %code, align 4, !tbaa !20
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %16 = load double, double* %ang, align 8, !tbaa !29
  %call12 = call i32 @gs_make_rotation(double %16, %struct.gs_matrix_s* %mat) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %call15 = call i32 @write_matrix_in(%struct.ref_s* %17, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory, %struct.gs_ref_memory_s* null) #3
  store i32 %call15, i32* %code, align 4, !tbaa !20
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %if.end.8
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %bot20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 1
  %21 = load %struct.ref_s*, %struct.ref_s** %bot20, align 8, !tbaa !31
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  %cmp22 = icmp ult %struct.ref_s* %19, %add.ptr21
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.17
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.17
  %22 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false.14
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %25 = bitcast %struct.ref_s* %arrayidx to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.end.24, %if.then.23, %if.then.7
  %27 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont, %if.end
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !5
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  store %struct.ref_s* %add.ptr30, %struct.ref_s** %p29, align 8, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %if.end.26, %cleanup, %if.then.3
  %31 = bitcast double* %ang to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @zscale(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca [2 x double], align 16
  %cleanup.dest.slot = alloca i32
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %4 = bitcast [2 x double]* %scale to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 2, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i64 0
  %8 = load double, double* %arrayidx, align 8, !tbaa !29
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i64 1
  %9 = load double, double* %arrayidx1, align 8, !tbaa !29
  %call2 = call i32 @gs_scale(%struct.gs_state_s* %7, double %8, double %9) #3
  store i32 %call2, i32* %code, align 4, !tbaa !20
  %10 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end:                                           ; preds = %if.then
  br label %if.end.31

if.else:                                          ; preds = %entry
  %12 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 1
  %15 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !31
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  %cmp7 = icmp ult %struct.ref_s* %13, %add.ptr
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.else
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %arraydecay11 = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i32 0
  %call12 = call i32 @num_params(%struct.ref_s* %add.ptr10, i32 2, double* %arraydecay11) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i64 0
  %17 = load double, double* %arrayidx14, align 8, !tbaa !29
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %scale, i32 0, i64 1
  %18 = load double, double* %arrayidx15, align 8, !tbaa !29
  %call16 = call i32 @gs_make_scaling(double %17, double %18, %struct.gs_matrix_s* %mat) #3
  store i32 %call16, i32* %code, align 4, !tbaa !20
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %call19 = call i32 @write_matrix_in(%struct.ref_s* %19, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory, %struct.gs_ref_memory_s* null) #3
  store i32 %call19, i32* %code, align 4, !tbaa !20
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.end.9
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %bot24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 1
  %23 = load %struct.ref_s*, %struct.ref_s** %bot24, align 8, !tbaa !31
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  %cmp26 = icmp ult %struct.ref_s* %21, %add.ptr25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.21
  %24 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false.18
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %arrayidx30 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.end.28, %if.then.27, %if.then.8
  %29 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !5
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %p34, align 8, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.31, %cleanup, %if.then.4
  %33 = bitcast [2 x double]* %scale to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %call = call i32 @float_params(%struct.ref_s* %5, i32 6, float* %xx) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %6 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call1 = call i32 @gs_setmatrix(%struct.gs_state_s* %9, %struct.gs_matrix_s* %mat) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p7, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdefaultmatrix(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_setdefaultmatrix(%struct.gs_state_s* %8, %struct.gs_matrix_s* null) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  br label %if.end.8

if.else:                                          ; preds = %entry
  %9 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @read_matrix(%struct.gs_memory_s* %12, %struct.ref_s* %13, %struct.gs_matrix_s* %mat) #3
  store i32 %call2, i32* %code, align 4, !tbaa !20
  %14 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %15 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 0
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs6, align 8, !tbaa !21
  %call7 = call i32 @gs_setdefaultmatrix(%struct.gs_state_s* %17, %struct.gs_matrix_s* %mat) #3
  store i32 %call7, i32* %code, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %18 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.end.8:                                         ; preds = %cleanup.cont, %if.then
  %19 = load i32, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %20 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.12:                                        ; preds = %if.end.8
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p15, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.12, %if.then.11, %cleanup
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @ztransform(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_transform(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_transform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ztranslate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %trans = alloca [2 x double], align 16
  %cleanup.dest.slot = alloca i32
  %mat = alloca %struct.gs_matrix_s, align 4
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
  %4 = bitcast [2 x double]* %trans to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 2, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i64 0
  %8 = load double, double* %arrayidx, align 8, !tbaa !29
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i64 1
  %9 = load double, double* %arrayidx1, align 8, !tbaa !29
  %call2 = call i32 @gs_translate(%struct.gs_state_s* %7, double %8, double %9) #3
  store i32 %call2, i32* %code, align 4, !tbaa !20
  %10 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end:                                           ; preds = %if.then
  br label %if.end.31

if.else:                                          ; preds = %entry
  %12 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 1
  %15 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !31
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  %cmp7 = icmp ult %struct.ref_s* %13, %add.ptr
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.else
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %arraydecay11 = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i32 0
  %call12 = call i32 @num_params(%struct.ref_s* %add.ptr10, i32 2, double* %arraydecay11) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i64 0
  %17 = load double, double* %arrayidx14, align 8, !tbaa !29
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %trans, i32 0, i64 1
  %18 = load double, double* %arrayidx15, align 8, !tbaa !29
  %call16 = call i32 @gs_make_translation(double %17, double %18, %struct.gs_matrix_s* %mat) #3
  store i32 %call16, i32* %code, align 4, !tbaa !20
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %call19 = call i32 @write_matrix_in(%struct.ref_s* %19, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory, %struct.gs_ref_memory_s* null) #3
  store i32 %call19, i32* %code, align 4, !tbaa !20
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.end.9
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %bot24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 1
  %23 = load %struct.ref_s*, %struct.ref_s** %bot24, align 8, !tbaa !31
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  %cmp26 = icmp ult %struct.ref_s* %21, %add.ptr25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.21
  %24 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false.18
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %arrayidx30 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.end.28, %if.then.27, %if.then.8
  %29 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !5
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %p34, align 8, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.31, %cleanup, %if.then.4
  %33 = bitcast [2 x double]* %trans to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zbbox_transform(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %bbox = alloca [4 x float], align 16
  %aa = alloca %struct.gs_point_s, align 8
  %az = alloca %struct.gs_point_s, align 8
  %za = alloca %struct.gs_point_s, align 8
  %zz = alloca %struct.gs_point_s, align 8
  %temp = alloca double, align 8
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
  %3 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_point_s* %aa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_point_s* %az to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.gs_point_s* %za to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_point_s* %zz to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %13, %struct.ref_s* %14, %struct.gs_matrix_s* %m) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = load i16, i16* %type_attrs, align 2, !tbaa !33
  %conv = zext i16 %17 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %call5 = call i32 @check_type_failed(%struct.ref_s* %add.ptr4) #3
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %20 = load i16, i16* %type_attrs8, align 2, !tbaa !33
  %conv9 = zext i16 %20 to i32
  %and10 = and i32 %conv9, 32
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !34
  %cmp15 = icmp ne i32 %22, 4
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !19
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %call22 = call i32 @process_float_array(%struct.gs_memory_s* %25, %struct.ref_s* %add.ptr21, i32 4, float* %arraydecay) #3
  %cmp23 = icmp slt i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, i32* %code, align 4, !tbaa !20
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  %27 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.18
  %arrayidx27 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  %28 = load float, float* %arrayidx27, align 4, !tbaa !25
  %conv28 = fpext float %28 to double
  %arrayidx29 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  %29 = load float, float* %arrayidx29, align 4, !tbaa !25
  %conv30 = fpext float %29 to double
  %call31 = call i32 @gs_point_transform(double %conv28, double %conv30, %struct.gs_matrix_s* %m, %struct.gs_point_s* %aa) #3
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  %30 = load float, float* %arrayidx32, align 4, !tbaa !25
  %conv33 = fpext float %30 to double
  %arrayidx34 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  %31 = load float, float* %arrayidx34, align 4, !tbaa !25
  %conv35 = fpext float %31 to double
  %call36 = call i32 @gs_point_transform(double %conv33, double %conv35, %struct.gs_matrix_s* %m, %struct.gs_point_s* %az) #3
  %arrayidx37 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  %32 = load float, float* %arrayidx37, align 4, !tbaa !25
  %conv38 = fpext float %32 to double
  %arrayidx39 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  %33 = load float, float* %arrayidx39, align 4, !tbaa !25
  %conv40 = fpext float %33 to double
  %call41 = call i32 @gs_point_transform(double %conv38, double %conv40, %struct.gs_matrix_s* %m, %struct.gs_point_s* %za) #3
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  %34 = load float, float* %arrayidx42, align 4, !tbaa !25
  %conv43 = fpext float %34 to double
  %arrayidx44 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  %35 = load float, float* %arrayidx44, align 4, !tbaa !25
  %conv45 = fpext float %35 to double
  %call46 = call i32 @gs_point_transform(double %conv43, double %conv45, %struct.gs_matrix_s* %m, %struct.gs_point_s* %zz) #3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  %36 = load double, double* %x, align 8, !tbaa !35
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 0
  %37 = load double, double* %x47, align 8, !tbaa !35
  %cmp48 = fcmp ogt double %36, %37
  br i1 %cmp48, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %if.end.26
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  %38 = load double, double* %x51, align 8, !tbaa !35
  store double %38, double* %temp, align 8, !tbaa !29
  %x52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 0
  %39 = load double, double* %x52, align 8, !tbaa !35
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  store double %39, double* %x53, align 8, !tbaa !35
  %40 = load double, double* %temp, align 8, !tbaa !29
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 0
  store double %40, double* %x54, align 8, !tbaa !35
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %if.end.26
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 0
  %41 = load double, double* %x56, align 8, !tbaa !35
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  %42 = load double, double* %x57, align 8, !tbaa !35
  %cmp58 = fcmp ogt double %41, %42
  br i1 %cmp58, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %if.end.55
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 0
  %43 = load double, double* %x61, align 8, !tbaa !35
  store double %43, double* %temp, align 8, !tbaa !29
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  %44 = load double, double* %x62, align 8, !tbaa !35
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 0
  store double %44, double* %x63, align 8, !tbaa !35
  %45 = load double, double* %temp, align 8, !tbaa !29
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  store double %45, double* %x64, align 8, !tbaa !35
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %if.end.55
  %x66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 0
  %46 = load double, double* %x66, align 8, !tbaa !35
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  %47 = load double, double* %x67, align 8, !tbaa !35
  %cmp68 = fcmp olt double %46, %47
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.65
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 0
  %48 = load double, double* %x71, align 8, !tbaa !35
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  store double %48, double* %x72, align 8, !tbaa !35
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.65
  %x74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 0
  %49 = load double, double* %x74, align 8, !tbaa !35
  %x75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  %50 = load double, double* %x75, align 8, !tbaa !35
  %cmp76 = fcmp ogt double %49, %50
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.73
  %x79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 0
  %51 = load double, double* %x79, align 8, !tbaa !35
  %x80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  store double %51, double* %x80, align 8, !tbaa !35
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.73
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  %52 = load double, double* %y, align 8, !tbaa !37
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 1
  %53 = load double, double* %y82, align 8, !tbaa !37
  %cmp83 = fcmp ogt double %52, %53
  br i1 %cmp83, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %if.end.81
  %y86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  %54 = load double, double* %y86, align 8, !tbaa !37
  store double %54, double* %temp, align 8, !tbaa !29
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 1
  %55 = load double, double* %y87, align 8, !tbaa !37
  %y88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  store double %55, double* %y88, align 8, !tbaa !37
  %56 = load double, double* %temp, align 8, !tbaa !29
  %y89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 1
  store double %56, double* %y89, align 8, !tbaa !37
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %if.end.81
  %y91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 1
  %57 = load double, double* %y91, align 8, !tbaa !37
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  %58 = load double, double* %y92, align 8, !tbaa !37
  %cmp93 = fcmp ogt double %57, %58
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %if.end.90
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 1
  %59 = load double, double* %y96, align 8, !tbaa !37
  store double %59, double* %temp, align 8, !tbaa !29
  %y97 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  %60 = load double, double* %y97, align 8, !tbaa !37
  %y98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 1
  store double %60, double* %y98, align 8, !tbaa !37
  %61 = load double, double* %temp, align 8, !tbaa !29
  %y99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  store double %61, double* %y99, align 8, !tbaa !37
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %if.end.90
  %y101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 1
  %62 = load double, double* %y101, align 8, !tbaa !37
  %y102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  %63 = load double, double* %y102, align 8, !tbaa !37
  %cmp103 = fcmp olt double %62, %63
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.100
  %y106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %za, i32 0, i32 1
  %64 = load double, double* %y106, align 8, !tbaa !37
  %y107 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  store double %64, double* %y107, align 8, !tbaa !37
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.end.100
  %y109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 1
  %65 = load double, double* %y109, align 8, !tbaa !37
  %y110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  %66 = load double, double* %y110, align 8, !tbaa !37
  %cmp111 = fcmp ogt double %65, %66
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.108
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %az, i32 0, i32 1
  %67 = load double, double* %y114, align 8, !tbaa !37
  %y115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  store double %67, double* %y115, align 8, !tbaa !37
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.108
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 2
  store %struct.ref_s* %add.ptr118, %struct.ref_s** %op, align 8, !tbaa !1
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 26
  %stack120 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack119, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack120, i32 0, i32 2
  %70 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp121 = icmp ugt %struct.ref_s* %add.ptr118, %70
  br i1 %cmp121, label %if.then.123, label %if.else

if.then.123:                                      ; preds = %do.body.117
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack125 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack124, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack125, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.117
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 26
  %stack127 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack126, i32 0, i32 0
  %p128 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack127, i32 0, i32 0
  store %struct.ref_s* %72, %struct.ref_s** %p128, align 8, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.else
  br label %do.cond.130

do.cond.130:                                      ; preds = %if.end.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  %x132 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 0
  %74 = load double, double* %x132, align 8, !tbaa !35
  %conv133 = fptrunc double %74 to float
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr134, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv133, float* %realval, align 4, !tbaa !25
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -3
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr135, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  store i16 4096, i16* %type_attrs137, align 2, !tbaa !33
  %y138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %aa, i32 0, i32 1
  %77 = load double, double* %y138, align 8, !tbaa !37
  %conv139 = fptrunc double %77 to float
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -2
  %value141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr140, i32 0, i32 1
  %realval142 = bitcast %union.v* %value141 to float*
  store float %conv139, float* %realval142, align 4, !tbaa !25
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -2
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr143, i32 0, i32 0
  %type_attrs145 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 0
  store i16 4096, i16* %type_attrs145, align 2, !tbaa !33
  %x146 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 0
  %80 = load double, double* %x146, align 8, !tbaa !35
  %conv147 = fptrunc double %80 to float
  %81 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -1
  %value149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr148, i32 0, i32 1
  %realval150 = bitcast %union.v* %value149 to float*
  store float %conv147, float* %realval150, align 4, !tbaa !25
  %82 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -1
  %tas152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr151, i32 0, i32 0
  %type_attrs153 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas152, i32 0, i32 0
  store i16 4096, i16* %type_attrs153, align 2, !tbaa !33
  %y154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %zz, i32 0, i32 1
  %83 = load double, double* %y154, align 8, !tbaa !37
  %conv155 = fptrunc double %83 to float
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %realval157 = bitcast %union.v* %value156 to float*
  store float %conv155, float* %realval157, align 4, !tbaa !25
  %85 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %type_attrs159 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas158, i32 0, i32 0
  store i16 4096, i16* %type_attrs159, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.131, %if.then.123, %if.then.25, %if.then.17, %if.then.11, %if.then.3, %if.then
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.gs_point_s* %zz to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #1
  %89 = bitcast %struct.gs_point_s* %za to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #1
  %90 = bitcast %struct.gs_point_s* %az to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #1
  %91 = bitcast %struct.gs_point_s* %aa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #1
  %92 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %92) #1
  %93 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %93) #1
  %94 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @common_transform(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* %ptproc, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %matproc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ptproc.addr = alloca i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, align 8
  %matproc.addr = alloca i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opxy = alloca [2 x double], align 16
  %pt = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* %ptproc, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %ptproc.addr, align 8, !tbaa !1
  store i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %matproc, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %matproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [2 x double]* %opxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.3
    i32 4, label %sw.bb.7
    i32 6, label %sw.bb.7
    i32 5, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %10 = load float, float* %realval, align 4, !tbaa !25
  %conv1 = fpext float %10 to double
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 1
  store double %conv1, double* %arrayidx2, align 8, !tbaa !29
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value4 to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !24
  %conv5 = sitofp i64 %12 to double
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 1
  store double %conv5, double* %arrayidx6, align 8, !tbaa !29
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry, %entry
  %13 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %17, %struct.ref_s* %18, %struct.gs_matrix_s* %19) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.7
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i32 0
  %call9 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, double* %arraydecay) #3
  store i32 %call9, i32* %code, align 4, !tbaa !20
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %21 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %matproc.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 0
  %22 = load double, double* %arrayidx13, align 8, !tbaa !29
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 1
  %23 = load double, double* %arrayidx14, align 8, !tbaa !29
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %call15 = call i32 %21(double %22, double %23, %struct.gs_matrix_s* %24, %struct.gs_point_s* %pt) #3
  store i32 %call15, i32* %code, align 4, !tbaa !20
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.end.24

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %sw.bb.7
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 1
  %27 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !31
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  %cmp21 = icmp ult %struct.ref_s* %25, %add.ptr20
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %28 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.12
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !5
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %add.ptr28, %struct.ref_s** %p27, align 8, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.end, %if.then.23
  %32 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.71 [
    i32 3, label %out
  ]

sw.default:                                       ; preds = %entry
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call30 = call i32 @check_type_failed(%struct.ref_s* %34) #3
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %36 = bitcast i16* %type_attrs33 to i8*
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx34, align 1, !tbaa !32
  %conv35 = zext i8 %37 to i32
  switch i32 %conv35, label %sw.default.48 [
    i32 16, label %sw.bb.36
    i32 11, label %sw.bb.42
  ]

sw.bb.36:                                         ; preds = %sw.epilog
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i32 0, i32 1
  %realval39 = bitcast %union.v* %value38 to float*
  %39 = load float, float* %realval39, align 4, !tbaa !25
  %conv40 = fpext float %39 to double
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 0
  store double %conv40, double* %arrayidx41, align 8, !tbaa !29
  br label %sw.epilog.51

sw.bb.42:                                         ; preds = %sw.epilog
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr43, i32 0, i32 1
  %intval45 = bitcast %union.v* %value44 to i64*
  %41 = load i64, i64* %intval45, align 8, !tbaa !24
  %conv46 = sitofp i64 %41 to double
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 0
  store double %conv46, double* %arrayidx47, align 8, !tbaa !29
  br label %sw.epilog.51

sw.default.48:                                    ; preds = %sw.epilog
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  %call50 = call i32 @check_type_failed(%struct.ref_s* %add.ptr49) #3
  store i32 %call50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

sw.epilog.51:                                     ; preds = %sw.bb.42, %sw.bb.36
  %43 = load i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %ptproc.addr, align 8, !tbaa !1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 0
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %arrayidx52 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 0
  %46 = load double, double* %arrayidx52, align 8, !tbaa !29
  %arrayidx53 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 1
  %47 = load double, double* %arrayidx53, align 8, !tbaa !29
  %call54 = call i32 %43(%struct.gs_state_s* %45, double %46, double %47, %struct.gs_point_s* %pt) #3
  store i32 %call54, i32* %code, align 4, !tbaa !20
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.epilog.51
  %48 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.58:                                        ; preds = %sw.epilog.51
  br label %out

out:                                              ; preds = %if.end.58, %cleanup
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %49 = load double, double* %x, align 8, !tbaa !35
  %conv59 = fptrunc double %49 to float
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 1
  %realval62 = bitcast %union.v* %value61 to float*
  store float %conv59, float* %realval62, align 4, !tbaa !25
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr63, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  store i16 4096, i16* %type_attrs65, align 2, !tbaa !33
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %52 = load double, double* %y, align 8, !tbaa !37
  %conv66 = fptrunc double %52 to float
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %realval68 = bitcast %union.v* %value67 to float*
  store float %conv66, float* %realval68, align 4, !tbaa !25
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  store i16 4096, i16* %type_attrs70, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %out, %cleanup, %if.then.57, %sw.default.48, %sw.default
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast [2 x double]* %opxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  %58 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @gs_dtransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @write_matrix_in(%struct.ref_s*, %struct.gs_matrix_s*, %struct.gs_dual_memory_s*, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @make_floats(%struct.ref_s*, float*, i32) #2

declare i32 @gs_defaultmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_idtransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @gs_initmatrix(%struct.gs_state_s*) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_itransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @gs_rotate(%struct.gs_state_s*, double) #2

declare i32 @gs_make_rotation(double, %struct.gs_matrix_s*) #2

declare i32 @gs_scale(%struct.gs_state_s*, double, double) #2

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #2

declare i32 @float_params(%struct.ref_s*, i32, float*) #2

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_setdefaultmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_transform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @gs_translate(%struct.gs_state_s*, double, double) #2

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #2

declare i32 @process_float_array(%struct.gs_memory_s*, %struct.ref_s*, i32, float*) #2

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
!19 = !{!6, !2, i64 8}
!20 = !{!9, !9, i64 0}
!21 = !{!6, !2, i64 0}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 4, !20, i64 8, i64 8, !24, i64 8, i64 2, !23, i64 8, i64 4, !25, i64 8, i64 8, !24, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !24}
!23 = !{!12, !12, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!6, !2, i64 640}
!28 = !{!6, !9, i64 688}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !3, i64 0}
!31 = !{!6, !2, i64 632}
!32 = !{!3, !3, i64 0}
!33 = !{!10, !12, i64 0}
!34 = !{!10, !9, i64 4}
!35 = !{!36, !30, i64 0}
!36 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!37 = !{!36, !30, i64 8}
