; ModuleID = './zstring.bc'
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
%struct.obj_header_s = type opaque
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"1.bytestring\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"2anchorsearch\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"1.namestring\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"2search\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1string\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"2.stringbreak\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"2.stringmatch\00", align 1
@zstring_op_defs = constant [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbytestring }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zanchorsearch }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znamestring }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstring }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstringbreak }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstringmatch }, %struct.op_def zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c".bytestring\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %sbody = alloca i8*, align 8
  %size = alloca i32, align 4
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
  %3 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp2 = icmp slt i64 %10, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %12 = load i64, i64* %intval7, align 8, !tbaa !20
  %cmp8 = icmp sgt i64 %12, 16777216
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval13 = bitcast %union.v* %value12 to i64*
  %14 = load i64, i64* %intval13, align 8, !tbaa !20
  %conv14 = trunc i64 %14 to i32
  store i32 %conv14, i32* %size, align 4, !tbaa !21
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !23
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !22
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %22 = load i32, i32* %size, align 4, !tbaa !21
  %call17 = call i8* %18(%struct.gs_memory_s* %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call17, i8** %sbody, align 8, !tbaa !1
  %23 = load i8*, i8** %sbody, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %23, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.11
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.11
  %24 = load i8*, i8** %sbody, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %bytes = bitcast %union.v* %value22 to i8**
  store i8* %24, i8** %bytes, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory23, i32 0, i32 2
  %27 = load i32, i32* %current_space, align 4, !tbaa !26
  %or = or i32 112, %27
  %add = add i32 4608, %or
  %conv24 = trunc i32 %add to i16
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 %conv24, i16* %type_attrs26, align 2, !tbaa !27
  %29 = load i32, i32* %size, align 4, !tbaa !21
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  store i32 %29, i32* %rsize, align 4, !tbaa !28
  %31 = load i8*, i8** %sbody, align 8, !tbaa !1
  %32 = load i32, i32* %size, align 4, !tbaa !21
  %conv28 = zext i32 %32 to i64
  %call29 = call i8* @memset(i8* %31, i32 0, i64 %conv28) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.10, %if.then.4, %if.then
  %33 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbytestring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %sbody = alloca i8*, align 8
  %size = alloca i32, align 4
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
  %3 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp2 = icmp ugt i64 %10, 2147483647
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %12 = load i64, i64* %intval7, align 8, !tbaa !20
  %conv8 = trunc i64 %12 to i32
  store i32 %conv8, i32* %size, align 4, !tbaa !21
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !29
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current10 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory9, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current10, align 8, !tbaa !22
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load i32, i32* %size, align 4, !tbaa !21
  %call11 = call i8* %16(%struct.gs_memory_s* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call11, i8** %sbody, align 8, !tbaa !1
  %21 = load i8*, i8** %sbody, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %21, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %do.end
  %22 = load i8*, i8** %sbody, align 8, !tbaa !1
  %23 = bitcast i8* %22 to %struct.obj_header_s*
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pstruct = bitcast %union.v* %value16 to %struct.obj_header_s**
  store %struct.obj_header_s* %23, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory17, i32 0, i32 2
  %26 = load i32, i32* %current_space, align 4, !tbaa !26
  %or = or i32 112, %26
  %add = add i32 2304, %or
  %conv18 = trunc i32 %add to i16
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  store i16 %conv18, i16* %type_attrs20, align 2, !tbaa !27
  %28 = load i8*, i8** %sbody, align 8, !tbaa !1
  %29 = load i32, i32* %size, align 4, !tbaa !21
  %conv21 = zext i32 %29 to i64
  %call22 = call i8* @memset(i8* %28, i32 0, i64 %conv21) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.4, %if.then
  %30 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @zanchorsearch(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %op0 = alloca %struct.ref_s*, align 8
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
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !28
  store i32 %7, i32* %size, align 4, !tbaa !21
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %11 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 18
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %13) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %15 = load i16, i16* %type_attrs9, align 2, !tbaa !27
  %conv10 = zext i16 %15 to i32
  %and11 = and i32 %conv10, 16160
  %cmp12 = icmp eq i32 %and11, 4640
  br i1 %cmp12, label %if.end.26, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %17 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %cond.false.23, label %cond.true.21

cond.true.21:                                     ; preds = %if.then.14
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call22 = call i32 @check_type_failed(%struct.ref_s* %19) #5
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then.14
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %call22, %cond.true.21 ], [ -7, %cond.false.23 ]
  store i32 %cond25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.26:                                        ; preds = %if.end
  %20 = load i32, i32* %size, align 4, !tbaa !21
  %21 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  %22 = load i32, i32* %rsize28, align 4, !tbaa !28
  %cmp29 = icmp ule i32 %20, %22
  br i1 %cmp29, label %land.lhs.true, label %if.else.58

land.lhs.true:                                    ; preds = %if.end.26
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %24 = load i8*, i8** %bytes, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %bytes32 = bitcast %union.v* %value31 to i8**
  %26 = load i8*, i8** %bytes32, align 8, !tbaa !1
  %27 = load i32, i32* %size, align 4, !tbaa !21
  %conv33 = zext i32 %27 to i64
  %call34 = call i32 @memcmp(i8* %24, i8* %26, i64 %conv33) #7
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.else.58, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true
  %28 = bitcast %struct.ref_s** %op0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %29, %struct.ref_s** %op0, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.35
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 1
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 2
  %32 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp39 = icmp ugt %struct.ref_s* %add.ptr36, %32
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.body
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack43 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack42, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 26
  %stack45 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  store %struct.ref_s* %34, %struct.ref_s** %p46, align 8, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.ref_s*, %struct.ref_s** %op0, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %38 = bitcast %struct.ref_s* %36 to i8*
  %39 = bitcast %struct.ref_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false), !tbaa.struct !32
  %40 = load i32, i32* %size, align 4, !tbaa !21
  %41 = load %struct.ref_s*, %struct.ref_s** %op0, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %rsize49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 2
  store i32 %40, i32* %rsize49, align 4, !tbaa !28
  %42 = load i32, i32* %size, align 4, !tbaa !21
  %43 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %bytes51 = bitcast %union.v* %value50 to i8**
  %44 = load i8*, i8** %bytes51, align 8, !tbaa !1
  %idx.ext = zext i32 %42 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr52, i8** %bytes51, align 8, !tbaa !1
  %45 = load i32, i32* %size, align 4, !tbaa !21
  %46 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  %47 = load i32, i32* %rsize54, align 4, !tbaa !28
  %sub = sub i32 %47, %45
  store i32 %sub, i32* %rsize54, align 4, !tbaa !28
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %boolval = bitcast %union.v* %value55 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !33
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  store i16 256, i16* %type_attrs57, align 2, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.41
  %50 = bitcast %struct.ref_s** %op0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.else.58:                                       ; preds = %land.lhs.true, %if.end.26
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %boolval60 = bitcast %union.v* %value59 to i16*
  store i16 0, i16* %boolval60, align 2, !tbaa !33
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  store i16 256, i16* %type_attrs62, align 2, !tbaa !27
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %cleanup, %cond.end.24, %cond.end
  %53 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @znamestring(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 2
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !36
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 16
  %11 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !37
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %11, %struct.ref_s* %12, %struct.ref_s* %13) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsearch(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  %pat = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %ch = alloca i8, align 1
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
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !28
  store i32 %7, i32* %size, align 4, !tbaa !21
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %12 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %14 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %15 to i32
  %cmp6 = icmp eq i32 %conv5, 18
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %16) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %18 = load i16, i16* %type_attrs9, align 2, !tbaa !27
  %conv10 = zext i16 %18 to i32
  %and11 = and i32 %conv10, 16160
  %cmp12 = icmp eq i32 %and11, 4640
  br i1 %cmp12, label %if.end.26, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %20 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %cond.false.23, label %cond.true.21

cond.true.21:                                     ; preds = %if.then.14
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call22 = call i32 @check_type_failed(%struct.ref_s* %22) #5
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then.14
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %call22, %cond.true.21 ], [ -7, %cond.false.23 ]
  store i32 %cond25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end
  %23 = load i32, i32* %size, align 4, !tbaa !21
  %24 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  %25 = load i32, i32* %rsize28, align 4, !tbaa !28
  %cmp29 = icmp ugt i32 %23, %25
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.26
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !33
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 256, i16* %type_attrs33, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.26
  %28 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %29 = load i32, i32* %rsize36, align 4, !tbaa !28
  %30 = load i32, i32* %size, align 4, !tbaa !21
  %sub = sub i32 %29, %30
  store i32 %sub, i32* %count, align 4, !tbaa !21
  %31 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %bytes = bitcast %union.v* %value37 to i8**
  %32 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %32, i8** %ptr, align 8, !tbaa !1
  %33 = load i32, i32* %size, align 4, !tbaa !21
  %cmp38 = icmp eq i32 %33, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.34
  br label %found

if.end.41:                                        ; preds = %if.end.34
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %bytes43 = bitcast %union.v* %value42 to i8**
  %35 = load i8*, i8** %bytes43, align 8, !tbaa !1
  store i8* %35, i8** %pat, align 8, !tbaa !1
  %36 = load i8*, i8** %pat, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx44, align 1, !tbaa !19
  store i8 %37, i8* %ch, align 1, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.41
  %38 = load i8*, i8** %ptr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !19
  %conv45 = zext i8 %39 to i32
  %40 = load i8, i8* %ch, align 1, !tbaa !19
  %conv46 = zext i8 %40 to i32
  %cmp47 = icmp eq i32 %conv45, %conv46
  br i1 %cmp47, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %do.body
  %41 = load i32, i32* %size, align 4, !tbaa !21
  %cmp49 = icmp eq i32 %41, 1
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %42 = load i8*, i8** %ptr, align 8, !tbaa !1
  %43 = load i8*, i8** %pat, align 8, !tbaa !1
  %44 = load i32, i32* %size, align 4, !tbaa !21
  %conv51 = zext i32 %44 to i64
  %call52 = call i32 @memcmp(i8* %42, i8* %43, i64 %conv51) #7
  %tobool = icmp ne i32 %call52, 0
  br i1 %tobool, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %found

if.end.54:                                        ; preds = %lor.lhs.false, %do.body
  %45 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.54
  %46 = load i32, i32* %count, align 4, !tbaa !21
  %dec = add i32 %46, -1
  store i32 %dec, i32* %count, align 4, !tbaa !21
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %boolval57 = bitcast %union.v* %value56 to i16*
  store i16 0, i16* %boolval57, align 2, !tbaa !33
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  store i16 256, i16* %type_attrs59, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

found:                                            ; preds = %if.then.53, %if.then.40
  %49 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  %50 = load i16, i16* %type_attrs61, align 2, !tbaa !27
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  store i16 %50, i16* %type_attrs63, align 2, !tbaa !27
  %52 = load i8*, i8** %ptr, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %bytes65 = bitcast %union.v* %value64 to i8**
  store i8* %52, i8** %bytes65, align 8, !tbaa !1
  %54 = load i32, i32* %size, align 4, !tbaa !21
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %rsize67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 2
  store i32 %54, i32* %rsize67, align 4, !tbaa !28
  br label %do.body.68

do.body.68:                                       ; preds = %found
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 2
  store %struct.ref_s* %add.ptr69, %struct.ref_s** %op, align 8, !tbaa !1
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 2
  %58 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp72 = icmp ugt %struct.ref_s* %add.ptr69, %58
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %do.body.68
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 26
  %stack76 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack75, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack76, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.68
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 26
  %stack78 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack77, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack78, i32 0, i32 0
  store %struct.ref_s* %60, %struct.ref_s** %p79, align 8, !tbaa !5
  br label %if.end.80

if.end.80:                                        ; preds = %if.else
  br label %do.cond.81

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %63 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %arrayidx83 to i8*
  %65 = bitcast %struct.ref_s* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !32
  %66 = load i8*, i8** %ptr, align 8, !tbaa !1
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx84, i32 0, i32 1
  %bytes86 = bitcast %union.v* %value85 to i8**
  %68 = load i8*, i8** %bytes86, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv87 = trunc i64 %sub.ptr.sub to i32
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %tas89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr88, i32 0, i32 0
  %rsize90 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas89, i32 0, i32 2
  store i32 %conv87, i32* %rsize90, align 4, !tbaa !28
  %70 = load i8*, i8** %ptr, align 8, !tbaa !1
  %71 = load i32, i32* %size, align 4, !tbaa !21
  %idx.ext = zext i32 %71 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  %72 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  %bytes93 = bitcast %union.v* %value92 to i8**
  store i8* %add.ptr91, i8** %bytes93, align 8, !tbaa !1
  %73 = load i32, i32* %count, align 4, !tbaa !21
  %74 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 2
  store i32 %73, i32* %rsize95, align 4, !tbaa !28
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 1
  %boolval97 = bitcast %union.v* %value96 to i16*
  store i16 1, i16* %boolval97, align 2, !tbaa !33
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %type_attrs99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 0
  store i16 256, i16* %type_attrs99, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.82, %if.then.74, %do.end, %if.then.31, %cond.end.24, %cond.end
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %77 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @zstringbreak(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 18
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #5
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
  %12 = load i16, i16* %type_attrs11, align 2, !tbaa !27
  %conv12 = zext i16 %12 to i32
  %and13 = and i32 %conv12, 16160
  %cmp14 = icmp eq i32 %and13, 4640
  br i1 %cmp14, label %if.end.28, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %14 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx19, align 1, !tbaa !19
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 18
  br i1 %cmp21, label %cond.false.25, label %cond.true.23

cond.true.23:                                     ; preds = %if.then.16
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call24 = call i32 @check_type_failed(%struct.ref_s* %16) #5
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.then.16
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.23
  %cond27 = phi i32 [ %call24, %cond.true.23 ], [ -7, %cond.false.25 ]
  store i32 %cond27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.end.28
  %17 = load i32, i32* %i, align 4, !tbaa !21
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !28
  %cmp30 = icmp ult i32 %17, %19
  br i1 %cmp30, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !21
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !21
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  %22 = load i32, i32* %rsize34, align 4, !tbaa !28
  %cmp35 = icmp ult i32 %20, %22
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.32
  %23 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx38, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %25 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx39, align 1, !tbaa !19
  %conv40 = zext i8 %26 to i32
  %27 = load i32, i32* %j, align 4, !tbaa !21
  %idxprom41 = zext i32 %27 to i64
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %const_bytes43 = bitcast %union.v* %value42 to i8**
  %29 = load i8*, i8** %const_bytes43, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %29, i64 %idxprom41
  %30 = load i8, i8* %arrayidx44, align 1, !tbaa !19
  %conv45 = zext i8 %30 to i32
  %cmp46 = icmp eq i32 %conv40, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %for.body.37
  %31 = load i32, i32* %i, align 4, !tbaa !21
  %conv49 = zext i32 %31 to i64
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr50, i32 0, i32 1
  %intval = bitcast %union.v* %value51 to i64*
  store i64 %conv49, i64* %intval, align 8, !tbaa !20
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 2816, i16* %type_attrs54, align 2, !tbaa !27
  br label %done

if.end.55:                                        ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %34 = load i32, i32* %j, align 4, !tbaa !21
  %inc = add i32 %34, 1
  store i32 %inc, i32* %j, align 4, !tbaa !21
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !21
  %inc57 = add i32 %35, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 3584, i16* %type_attrs61, align 2, !tbaa !27
  br label %done

done:                                             ; preds = %for.end.58, %if.then.48
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack63 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !5
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  store %struct.ref_s* %add.ptr65, %struct.ref_s** %p64, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %done, %cond.end.26, %cond.end
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @zstringmatch(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %result = alloca i32, align 4
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
  %5 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %9 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %13 = bitcast i16* %type_attrs8 to i8*
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx9, align 1, !tbaa !19
  %conv10 = zext i8 %14 to i32
  switch i32 %conv10, label %sw.default [
    i32 18, label %sw.bb
    i32 13, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %16 = load i16, i16* %type_attrs12, align 2, !tbaa !27
  %conv13 = zext i16 %16 to i32
  %and14 = and i32 %conv13, 32
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %cmp.18

sw.bb.17:                                         ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 2
  %20 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !36
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %20, i32 0, i32 16
  %21 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !37
  %22 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %21, %struct.ref_s* %22, %struct.ref_s* %23) #5
  br label %cmp.18

cmp.18:                                           ; preds = %sw.bb.17, %do.end
  %24 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %25 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  %27 = load i32, i32* %rsize, align 4, !tbaa !28
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %const_bytes21 = bitcast %union.v* %value20 to i8**
  %29 = load i8*, i8** %const_bytes21, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %31 = load i32, i32* %rsize23, align 4, !tbaa !28
  %call24 = call i32 @string_match(i8* %25, i32 %27, i8* %29, i32 %31, %struct.string_match_params_s* null) #5
  store i32 %call24, i32* %result, align 4, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %rsize26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %33 = load i32, i32* %rsize26, align 4, !tbaa !28
  %cmp27 = icmp eq i32 %33, 1
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.default
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %bytes = bitcast %union.v* %value29 to i8**
  %35 = load i8*, i8** %bytes, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !19
  %conv30 = zext i8 %36 to i32
  %cmp31 = icmp eq i32 %conv30, 42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.default
  %37 = phi i1 [ false, %sw.default ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  store i32 %land.ext, i32* %result, align 4, !tbaa !21
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end, %cmp.18
  %38 = load i32, i32* %result, align 4, !tbaa !21
  %conv33 = trunc i32 %38 to i16
  %39 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %boolval = bitcast %union.v* %value34 to i16*
  store i16 %conv33, i16* %boolval, align 2, !tbaa !33
  %40 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 256, i16* %type_attrs36, align 2, !tbaa !27
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !5
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  store %struct.ref_s* %add.ptr40, %struct.ref_s** %p39, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.15, %cond.end
  %43 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!20 = !{!13, !13, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 8}
!23 = !{!24, !2, i64 136}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!7, !9, i64 48}
!27 = !{!10, !12, i64 0}
!28 = !{!10, !9, i64 4}
!29 = !{!24, !2, i64 64}
!30 = !{!6, !2, i64 640}
!31 = !{!6, !9, i64 688}
!32 = !{i64 0, i64 2, !33, i64 2, i64 2, !33, i64 4, i64 4, !21, i64 8, i64 8, !20, i64 8, i64 2, !33, i64 8, i64 4, !34, i64 8, i64 8, !20, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !20}
!33 = !{!12, !12, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !3, i64 0}
!36 = !{!24, !2, i64 192}
!37 = !{!38, !2, i64 120}
!38 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
