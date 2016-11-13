; ModuleID = './zstack.bc'
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
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
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

@.str = private unnamed_addr constant [11 x i8] c"2.argindex\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0mark\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1
@zstack_op_defs = constant [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zargindex }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclear_stack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcleartomark }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcount }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcounttomark }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdup }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexch }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zindex }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmark }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zroll }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define i32 @zpop(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %cmp = icmp ult %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zexch(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %next = alloca %struct.ref_s, align 8
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
  %3 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  %cmp = icmp ult %struct.ref_s* %4, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %8 = bitcast %struct.ref_s* %next to i8*
  %9 = bitcast %struct.ref_s* %add.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !tbaa.struct !20
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %add.ptr4 to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !20
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %14 to i8*
  %16 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @zdup(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %cmp = icmp ult %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %cmp6 = icmp ugt %struct.ref_s* %add.ptr3, %8
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !27
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p12, align 8, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %14 = bitcast %struct.ref_s* %12 to i8*
  %15 = bitcast %struct.ref_s* %add.ptr14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @zindex(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opn = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %elt = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %opn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 1
  %12 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp4 = icmp uge i64 %9, %sub.ptr.div
  br i1 %cmp4, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.end
  %13 = bitcast %struct.ref_s** %elt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %15 = load i64, i64* %intval8, align 8, !tbaa !23
  %cmp9 = icmp slt i64 %15, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.6
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval16 = bitcast %union.v* %value15 to i64*
  %18 = load i64, i64* %intval16, align 8, !tbaa !23
  %add = add nsw i64 %18, 1
  %call17 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack14, i64 %add) #4
  store %struct.ref_s* %call17, %struct.ref_s** %elt, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %elt, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.ref_s* %19, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.12
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.12
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %elt, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s* %20 to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.11
  %24 = bitcast %struct.ref_s** %elt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %cleanup.26

if.end.22:                                        ; preds = %if.end
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval24 = bitcast %union.v* %value23 to i64*
  %27 = load i64, i64* %intval24, align 8, !tbaa !23
  %conv25 = trunc i64 %27 to i32
  %neg = xor i32 %conv25, -1
  %idx.ext = sext i32 %neg to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opn, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %opn, align 8, !tbaa !1
  %30 = bitcast %struct.ref_s* %28 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.22, %cleanup, %if.then
  %32 = bitcast %struct.ref_s** %opn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @zroll(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %mod = alloca i32, align 4
  %from = alloca %struct.ref_s*, align 8
  %to = alloca %struct.ref_s*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %left = alloca i32, align 4
  %i = alloca i32, align 4
  %elt = alloca %struct.ref_s*, align 8
  %save = alloca %struct.ref_s, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %next = alloca %struct.ref_s*, align 8
  %top = alloca %struct.ref_s, align 8
  %bot120 = alloca %struct.ref_s, align 8
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
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %13) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %15 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx4, align 1, !tbaa !28
  %conv5 = zext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv5, 11
  br i1 %cmp6, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @check_type_failed(%struct.ref_s* %17) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.10:                                        ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %19 = load i64, i64* %intval, align 8, !tbaa !23
  %conv11 = trunc i64 %19 to i32
  %20 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 1
  %22 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv14 = trunc i64 %sub.ptr.div to i32
  %cmp15 = icmp ugt i32 %conv11, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.87

if.then.17:                                       ; preds = %if.end.10
  %23 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval19 = bitcast %union.v* %value18 to i64*
  %26 = load i64, i64* %intval19, align 8, !tbaa !23
  %cmp20 = icmp slt i64 %26, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.17
  %27 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  %28 = load i64, i64* %intval25, align 8, !tbaa !23
  %add = add nsw i64 %28, 2
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %call28 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack27) #4
  %conv29 = sext i32 %call28 to i64
  %cmp30 = icmp sgt i64 %add, %conv29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.23
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.23
  %30 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %intval35 = bitcast %union.v* %value34 to i64*
  %31 = load i64, i64* %intval35, align 8, !tbaa !23
  %conv36 = trunc i64 %31 to i32
  store i32 %conv36, i32* %count, align 4, !tbaa !22
  %32 = load i32, i32* %count, align 4, !tbaa !22
  %cmp37 = icmp sle i32 %32, 1
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.33
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack41 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !5
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  store %struct.ref_s* %add.ptr43, %struct.ref_s** %p42, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.33
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %intval46 = bitcast %union.v* %value45 to i64*
  %36 = load i64, i64* %intval46, align 8, !tbaa !23
  %conv47 = trunc i64 %36 to i32
  store i32 %conv47, i32* %mod, align 4, !tbaa !22
  %37 = load i32, i32* %mod, align 4, !tbaa !22
  %38 = load i32, i32* %count, align 4, !tbaa !22
  %cmp48 = icmp sge i32 %37, %38
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.44
  %39 = load i32, i32* %count, align 4, !tbaa !22
  %40 = load i32, i32* %mod, align 4, !tbaa !22
  %rem = srem i32 %40, %39
  store i32 %rem, i32* %mod, align 4, !tbaa !22
  br label %if.end.61

if.else:                                          ; preds = %if.end.44
  %41 = load i32, i32* %mod, align 4, !tbaa !22
  %cmp51 = icmp slt i32 %41, 0
  br i1 %cmp51, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.else
  %42 = load i32, i32* %count, align 4, !tbaa !22
  %43 = load i32, i32* %mod, align 4, !tbaa !22
  %rem54 = srem i32 %43, %42
  store i32 %rem54, i32* %mod, align 4, !tbaa !22
  %44 = load i32, i32* %mod, align 4, !tbaa !22
  %cmp55 = icmp slt i32 %44, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.53
  %45 = load i32, i32* %count, align 4, !tbaa !22
  %46 = load i32, i32* %mod, align 4, !tbaa !22
  %add58 = add nsw i32 %46, %45
  store i32 %add58, i32* %mod, align 4, !tbaa !22
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.else
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.50
  store i32 0, i32* %i, align 4, !tbaa !22
  %47 = load i32, i32* %count, align 4, !tbaa !22
  store i32 %47, i32* %left, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.61
  %48 = load i32, i32* %left, align 4, !tbaa !22
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %49 = bitcast %struct.ref_s** %elt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack63 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack62, i32 0, i32 0
  %51 = load i32, i32* %i, align 4, !tbaa !22
  %add64 = add nsw i32 %51, 2
  %conv65 = sext i32 %add64 to i64
  %call66 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack63, i64 %conv65) #4
  store %struct.ref_s* %call66, %struct.ref_s** %elt, align 8, !tbaa !1
  %52 = bitcast %struct.ref_s* %save to i8*
  call void @llvm.lifetime.start(i64 16, i8* %52) #1
  %53 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast %struct.ref_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load %struct.ref_s*, %struct.ref_s** %elt, align 8, !tbaa !1
  %57 = bitcast %struct.ref_s* %save to i8*
  %58 = bitcast %struct.ref_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !tbaa.struct !20
  %59 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %59, i32* %j, align 4, !tbaa !22
  %60 = load i32, i32* %left, align 4, !tbaa !22
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %left, align 4, !tbaa !22
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc, %for.body
  %61 = load i32, i32* %j, align 4, !tbaa !22
  %62 = load i32, i32* %mod, align 4, !tbaa !22
  %add68 = add nsw i32 %61, %62
  %63 = load i32, i32* %count, align 4, !tbaa !22
  %rem69 = srem i32 %add68, %63
  store i32 %rem69, i32* %k, align 4, !tbaa !22
  %64 = load i32, i32* %k, align 4, !tbaa !22
  %65 = load i32, i32* %i, align 4, !tbaa !22
  %cmp70 = icmp eq i32 %64, %65
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.cond.67
  br label %for.end

if.end.73:                                        ; preds = %for.cond.67
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 26
  %stack75 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack74, i32 0, i32 0
  %67 = load i32, i32* %k, align 4, !tbaa !22
  %add76 = add nsw i32 %67, 2
  %conv77 = sext i32 %add76 to i64
  %call78 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack75, i64 %conv77) #4
  store %struct.ref_s* %call78, %struct.ref_s** %next, align 8, !tbaa !1
  %68 = load %struct.ref_s*, %struct.ref_s** %elt, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %72 = load i32, i32* %k, align 4, !tbaa !22
  store i32 %72, i32* %j, align 4, !tbaa !22
  %73 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  store %struct.ref_s* %73, %struct.ref_s** %elt, align 8, !tbaa !1
  %74 = load i32, i32* %left, align 4, !tbaa !22
  %dec79 = add nsw i32 %74, -1
  store i32 %dec79, i32* %left, align 4, !tbaa !22
  br label %for.cond.67

for.end:                                          ; preds = %if.then.72
  %75 = load %struct.ref_s*, %struct.ref_s** %elt, align 8, !tbaa !1
  %76 = bitcast %struct.ref_s* %75 to i8*
  %77 = bitcast %struct.ref_s* %save to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 16, i32 8, i1 false), !tbaa.struct !20
  %78 = bitcast %struct.ref_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.ref_s* %save to i8*
  call void @llvm.lifetime.end(i64 16, i8* %81) #1
  %82 = bitcast %struct.ref_s** %elt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %83 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 26
  %stack83 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack82, i32 0, i32 0
  %p84 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack83, i32 0, i32 0
  %85 = load %struct.ref_s*, %struct.ref_s** %p84, align 8, !tbaa !5
  %add.ptr85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -2
  store %struct.ref_s* %add.ptr85, %struct.ref_s** %p84, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.81, %if.then.39, %if.then.32, %if.then.22
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %cleanup.228

if.end.87:                                        ; preds = %if.end.10
  %88 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 1
  %intval89 = bitcast %union.v* %value88 to i64*
  %89 = load i64, i64* %intval89, align 8, !tbaa !23
  %conv90 = trunc i64 %89 to i32
  store i32 %conv90, i32* %count, align 4, !tbaa !22
  %90 = load i32, i32* %count, align 4, !tbaa !22
  %cmp91 = icmp sle i32 %90, 1
  br i1 %cmp91, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %if.end.87
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 0
  %92 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !5
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -2
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p96, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.98:                                        ; preds = %if.end.87
  %93 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 1
  %intval100 = bitcast %union.v* %value99 to i64*
  %94 = load i64, i64* %intval100, align 8, !tbaa !23
  %conv101 = trunc i64 %94 to i32
  store i32 %conv101, i32* %mod, align 4, !tbaa !22
  %95 = load i32, i32* %mod, align 4, !tbaa !22
  switch i32 %95, label %sw.epilog [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %if.end.98
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 26
  %stack103 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack102, i32 0, i32 0
  %p104 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack103, i32 0, i32 0
  %97 = load %struct.ref_s*, %struct.ref_s** %p104, align 8, !tbaa !5
  %add.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 -2
  store %struct.ref_s* %add.ptr105, %struct.ref_s** %p104, align 8, !tbaa !5
  %98 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 -2
  store %struct.ref_s* %add.ptr106, %struct.ref_s** %op, align 8, !tbaa !1
  %99 = bitcast %struct.ref_s* %top to i8*
  call void @llvm.lifetime.start(i64 16, i8* %99) #1
  %100 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %101 = bitcast %struct.ref_s* %top to i8*
  %102 = bitcast %struct.ref_s* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 16, i32 8, i1 false), !tbaa.struct !20
  %103 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %103, %struct.ref_s** %from, align 8, !tbaa !1
  %104 = load i32, i32* %count, align 4, !tbaa !22
  store i32 %104, i32* %n, align 4, !tbaa !22
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.112, %sw.bb
  %105 = load i32, i32* %n, align 4, !tbaa !22
  %dec108 = add nsw i32 %105, -1
  store i32 %dec108, i32* %n, align 4, !tbaa !22
  %tobool109 = icmp ne i32 %dec108, 0
  br i1 %tobool109, label %for.body.110, label %for.end.113

for.body.110:                                     ; preds = %for.cond.107
  %106 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %107 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 -1
  %108 = bitcast %struct.ref_s* %106 to i8*
  %109 = bitcast %struct.ref_s* %add.ptr111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.110
  %110 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %from, align 8, !tbaa !1
  br label %for.cond.107

for.end.113:                                      ; preds = %for.cond.107
  %111 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %112 = bitcast %struct.ref_s* %111 to i8*
  %113 = bitcast %struct.ref_s* %top to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 16, i32 8, i1 false), !tbaa.struct !20
  %114 = bitcast %struct.ref_s* %top to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

sw.bb.114:                                        ; preds = %if.end.98
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 26
  %stack116 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack115, i32 0, i32 0
  %p117 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack116, i32 0, i32 0
  %116 = load %struct.ref_s*, %struct.ref_s** %p117, align 8, !tbaa !5
  %add.ptr118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i64 -2
  store %struct.ref_s* %add.ptr118, %struct.ref_s** %p117, align 8, !tbaa !5
  %117 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i64 -2
  store %struct.ref_s* %add.ptr119, %struct.ref_s** %op, align 8, !tbaa !1
  %118 = bitcast %struct.ref_s* %bot120 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %118) #1
  %119 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %120 = load i32, i32* %count, align 4, !tbaa !22
  %idx.ext = sext i32 %120 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i64 %idx.neg
  %add.ptr122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr121, i64 1
  store %struct.ref_s* %add.ptr122, %struct.ref_s** %to, align 8, !tbaa !1
  %121 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %122 = bitcast %struct.ref_s* %bot120 to i8*
  %123 = bitcast %struct.ref_s* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 16, i32 8, i1 false), !tbaa.struct !20
  %124 = load i32, i32* %count, align 4, !tbaa !22
  store i32 %124, i32* %n, align 4, !tbaa !22
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.128, %sw.bb.114
  %125 = load i32, i32* %n, align 4, !tbaa !22
  %dec124 = add nsw i32 %125, -1
  store i32 %dec124, i32* %n, align 4, !tbaa !22
  %tobool125 = icmp ne i32 %dec124, 0
  br i1 %tobool125, label %for.body.126, label %for.end.130

for.body.126:                                     ; preds = %for.cond.123
  %126 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %127 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i64 1
  %128 = bitcast %struct.ref_s* %126 to i8*
  %129 = bitcast %struct.ref_s* %add.ptr127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.126
  %130 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i32 1
  store %struct.ref_s* %incdec.ptr129, %struct.ref_s** %to, align 8, !tbaa !1
  br label %for.cond.123

for.end.130:                                      ; preds = %for.cond.123
  %131 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %132 = bitcast %struct.ref_s* %131 to i8*
  %133 = bitcast %struct.ref_s* %bot120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 8, i1 false), !tbaa.struct !20
  %134 = bitcast %struct.ref_s* %bot120 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %134) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

sw.epilog:                                        ; preds = %if.end.98
  %135 = load i32, i32* %mod, align 4, !tbaa !22
  %cmp131 = icmp slt i32 %135, 0
  br i1 %cmp131, label %if.then.133, label %if.else.145

if.then.133:                                      ; preds = %sw.epilog
  %136 = load i32, i32* %count, align 4, !tbaa !22
  %137 = load i32, i32* %mod, align 4, !tbaa !22
  %add134 = add nsw i32 %137, %136
  store i32 %add134, i32* %mod, align 4, !tbaa !22
  %138 = load i32, i32* %mod, align 4, !tbaa !22
  %cmp135 = icmp slt i32 %138, 0
  br i1 %cmp135, label %if.then.137, label %if.end.144

if.then.137:                                      ; preds = %if.then.133
  %139 = load i32, i32* %count, align 4, !tbaa !22
  %140 = load i32, i32* %mod, align 4, !tbaa !22
  %rem138 = srem i32 %140, %139
  store i32 %rem138, i32* %mod, align 4, !tbaa !22
  %141 = load i32, i32* %mod, align 4, !tbaa !22
  %cmp139 = icmp slt i32 %141, 0
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.then.137
  %142 = load i32, i32* %count, align 4, !tbaa !22
  %143 = load i32, i32* %mod, align 4, !tbaa !22
  %add142 = add nsw i32 %143, %142
  store i32 %add142, i32* %mod, align 4, !tbaa !22
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.then.137
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.133
  br label %if.end.151

if.else.145:                                      ; preds = %sw.epilog
  %144 = load i32, i32* %mod, align 4, !tbaa !22
  %145 = load i32, i32* %count, align 4, !tbaa !22
  %cmp146 = icmp sge i32 %144, %145
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.else.145
  %146 = load i32, i32* %count, align 4, !tbaa !22
  %147 = load i32, i32* %mod, align 4, !tbaa !22
  %rem149 = srem i32 %147, %146
  store i32 %rem149, i32* %mod, align 4, !tbaa !22
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.else.145
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.144
  %148 = load i32, i32* %mod, align 4, !tbaa !22
  %149 = load i32, i32* %count, align 4, !tbaa !22
  %shr = ashr i32 %149, 1
  %cmp152 = icmp sle i32 %148, %shr
  br i1 %cmp152, label %if.then.154, label %if.else.188

if.then.154:                                      ; preds = %if.end.151
  %150 = load i32, i32* %mod, align 4, !tbaa !22
  %conv155 = sext i32 %150 to i64
  %151 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %151, i32 0, i32 26
  %stack157 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack156, i32 0, i32 0
  %top158 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack157, i32 0, i32 2
  %152 = load %struct.ref_s*, %struct.ref_s** %top158, align 8, !tbaa !26
  %153 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %sub.ptr.lhs.cast159 = ptrtoint %struct.ref_s* %152 to i64
  %sub.ptr.rhs.cast160 = ptrtoint %struct.ref_s* %153 to i64
  %sub.ptr.sub161 = sub i64 %sub.ptr.lhs.cast159, %sub.ptr.rhs.cast160
  %sub.ptr.div162 = sdiv exact i64 %sub.ptr.sub161, 16
  %cmp163 = icmp sge i64 %conv155, %sub.ptr.div162
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.then.154
  %154 = load i32, i32* %mod, align 4, !tbaa !22
  %155 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack166 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %155, i32 0, i32 26
  %stack167 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack166, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack167, i32 0, i32 7
  store i32 %154, i32* %requested, align 4, !tbaa !27
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.168:                                       ; preds = %if.then.154
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack169 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 26
  %stack170 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack169, i32 0, i32 0
  %p171 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack170, i32 0, i32 0
  %157 = load %struct.ref_s*, %struct.ref_s** %p171, align 8, !tbaa !5
  %add.ptr172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i64 -2
  store %struct.ref_s* %add.ptr172, %struct.ref_s** %p171, align 8, !tbaa !5
  %158 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i64 -2
  store %struct.ref_s* %add.ptr173, %struct.ref_s** %op, align 8, !tbaa !1
  %159 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %160 = load i32, i32* %mod, align 4, !tbaa !22
  %idx.ext174 = sext i32 %160 to i64
  %add.ptr175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i64 %idx.ext174
  store %struct.ref_s* %add.ptr175, %struct.ref_s** %to, align 8, !tbaa !1
  %161 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %161, %struct.ref_s** %from, align 8, !tbaa !1
  %162 = load i32, i32* %count, align 4, !tbaa !22
  store i32 %162, i32* %n, align 4, !tbaa !22
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.180, %if.end.168
  %163 = load i32, i32* %n, align 4, !tbaa !22
  %dec177 = add nsw i32 %163, -1
  store i32 %dec177, i32* %n, align 4, !tbaa !22
  %tobool178 = icmp ne i32 %163, 0
  br i1 %tobool178, label %for.body.179, label %for.end.183

for.body.179:                                     ; preds = %for.cond.176
  %164 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %165 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %166 = bitcast %struct.ref_s* %164 to i8*
  %167 = bitcast %struct.ref_s* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.179
  %168 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 -1
  store %struct.ref_s* %incdec.ptr181, %struct.ref_s** %to, align 8, !tbaa !1
  %169 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %169, i32 -1
  store %struct.ref_s* %incdec.ptr182, %struct.ref_s** %from, align 8, !tbaa !1
  br label %for.cond.176

for.end.183:                                      ; preds = %for.cond.176
  %170 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %add.ptr184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i64 1
  %171 = bitcast %struct.ref_s* %add.ptr184 to i8*
  %172 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i64 1
  %173 = bitcast %struct.ref_s* %add.ptr185 to i8*
  %174 = load i32, i32* %mod, align 4, !tbaa !22
  %conv186 = sext i32 %174 to i64
  %mul = mul i64 %conv186, 16
  %call187 = call i8* @memcpy(i8* %171, i8* %173, i64 %mul) #5
  br label %if.end.227

if.else.188:                                      ; preds = %if.end.151
  %175 = load i32, i32* %count, align 4, !tbaa !22
  %176 = load i32, i32* %mod, align 4, !tbaa !22
  %sub = sub nsw i32 %175, %176
  store i32 %sub, i32* %mod, align 4, !tbaa !22
  %177 = load i32, i32* %mod, align 4, !tbaa !22
  %conv189 = sext i32 %177 to i64
  %178 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack190 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %178, i32 0, i32 26
  %stack191 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack190, i32 0, i32 0
  %top192 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack191, i32 0, i32 2
  %179 = load %struct.ref_s*, %struct.ref_s** %top192, align 8, !tbaa !26
  %180 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %sub.ptr.lhs.cast193 = ptrtoint %struct.ref_s* %179 to i64
  %sub.ptr.rhs.cast194 = ptrtoint %struct.ref_s* %180 to i64
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %sub.ptr.div196 = sdiv exact i64 %sub.ptr.sub195, 16
  %cmp197 = icmp sge i64 %conv189, %sub.ptr.div196
  br i1 %cmp197, label %if.then.199, label %if.end.203

if.then.199:                                      ; preds = %if.else.188
  %181 = load i32, i32* %mod, align 4, !tbaa !22
  %182 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack200 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %182, i32 0, i32 26
  %stack201 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack200, i32 0, i32 0
  %requested202 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack201, i32 0, i32 7
  store i32 %181, i32* %requested202, align 4, !tbaa !27
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.203:                                       ; preds = %if.else.188
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack204 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %183, i32 0, i32 26
  %stack205 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack204, i32 0, i32 0
  %p206 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack205, i32 0, i32 0
  %184 = load %struct.ref_s*, %struct.ref_s** %p206, align 8, !tbaa !5
  %add.ptr207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %184, i64 -2
  store %struct.ref_s* %add.ptr207, %struct.ref_s** %p206, align 8, !tbaa !5
  %185 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i64 -2
  store %struct.ref_s* %add.ptr208, %struct.ref_s** %op, align 8, !tbaa !1
  %186 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %187 = load i32, i32* %count, align 4, !tbaa !22
  %idx.ext209 = sext i32 %187 to i64
  %idx.neg210 = sub i64 0, %idx.ext209
  %add.ptr211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %186, i64 %idx.neg210
  %add.ptr212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr211, i64 1
  store %struct.ref_s* %add.ptr212, %struct.ref_s** %to, align 8, !tbaa !1
  %188 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %188, i64 1
  %189 = bitcast %struct.ref_s* %add.ptr213 to i8*
  %190 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %191 = bitcast %struct.ref_s* %190 to i8*
  %192 = load i32, i32* %mod, align 4, !tbaa !22
  %conv214 = sext i32 %192 to i64
  %mul215 = mul i64 %conv214, 16
  %call216 = call i8* @memcpy(i8* %189, i8* %191, i64 %mul215) #5
  %193 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %194 = load i32, i32* %mod, align 4, !tbaa !22
  %idx.ext217 = sext i32 %194 to i64
  %add.ptr218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %193, i64 %idx.ext217
  store %struct.ref_s* %add.ptr218, %struct.ref_s** %from, align 8, !tbaa !1
  %195 = load i32, i32* %count, align 4, !tbaa !22
  store i32 %195, i32* %n, align 4, !tbaa !22
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.223, %if.end.203
  %196 = load i32, i32* %n, align 4, !tbaa !22
  %dec220 = add nsw i32 %196, -1
  store i32 %dec220, i32* %n, align 4, !tbaa !22
  %tobool221 = icmp ne i32 %196, 0
  br i1 %tobool221, label %for.body.222, label %for.end.226

for.body.222:                                     ; preds = %for.cond.219
  %197 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %198 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %199 = bitcast %struct.ref_s* %197 to i8*
  %200 = bitcast %struct.ref_s* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* %200, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.222
  %201 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %201, i32 1
  store %struct.ref_s* %incdec.ptr224, %struct.ref_s** %to, align 8, !tbaa !1
  %202 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %202, i32 1
  store %struct.ref_s* %incdec.ptr225, %struct.ref_s** %from, align 8, !tbaa !1
  br label %for.cond.219

for.end.226:                                      ; preds = %for.cond.219
  br label %if.end.227

if.end.227:                                       ; preds = %for.end.226, %for.end.183
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

cleanup.228:                                      ; preds = %if.end.227, %if.then.199, %if.then.165, %for.end.130, %for.end.113, %if.then.93, %cleanup, %if.then.8, %if.then
  %203 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast %struct.ref_s** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = load i32, i32* %retval
  ret i32 %210
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @zcleartomark(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack) #4
  store i32 %call, i32* %count, align 4, !tbaa !22
  %2 = load i32, i32* %count, align 4, !tbaa !22
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %4 = load i32, i32* %count, align 4, !tbaa !22
  call void @ref_stack_pop(%struct.ref_stack_s* %stack2, i32 %4) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zargindex(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zindex(%struct.gs_context_state_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !22
  %2 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp eq i32 %2, -15
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8, !tbaa !23
  %cmp1 = icmp sge i64 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -17, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !22
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @zclear_stack(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack2) #4
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 %call) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zcount(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !27
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
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack9) #4
  %sub = sub i32 %call, 1
  %conv = zext i32 %sub to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !23
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zcounttomark(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
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
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack2) #4
  store i32 %call, i32* %count, align 4, !tbaa !22
  %5 = load i32, i32* %count, align 4, !tbaa !22
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %cmp5 = icmp ugt %struct.ref_s* %add.ptr, %8
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !27
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p11, align 8, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load i32, i32* %count, align 4, !tbaa !22
  %sub = sub i32 %12, 1
  %conv = zext i32 %sub to i64
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !23
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %if.then
  %15 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zmark(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !27
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
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3072, i16* %type_attrs, align 2, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

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
!19 = !{!6, !2, i64 632}
!20 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !22, i64 8, i64 8, !23, i64 8, i64 2, !21, i64 8, i64 4, !24, i64 8, i64 8, !23, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !23}
!21 = !{!12, !12, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!6, !2, i64 640}
!27 = !{!6, !9, i64 688}
!28 = !{!3, !3, i64 0}
!29 = !{!10, !12, i64 0}
