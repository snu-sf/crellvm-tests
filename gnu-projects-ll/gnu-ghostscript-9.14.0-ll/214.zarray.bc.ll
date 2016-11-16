; ModuleID = './zarray.bc'
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

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1aload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1astore\00", align 1
@zarray_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zaload }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zarray }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zastore }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"astore\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zarray(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
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
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
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
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
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
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load i32, i32* %size, align 4, !tbaa !21
  %call15 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %16, %struct.ref_s* %17, i32 112, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call15, i32* %code, align 4, !tbaa !21
  %19 = load i32, i32* %code, align 4, !tbaa !21
  %cmp16 = icmp slt i32 %19, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.11
  %20 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.11
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %refs = bitcast %union.v* %value20 to %struct.ref_s**
  %22 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !21
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 5
  %25 = load i32, i32* %new_mask, align 4, !tbaa !23
  call void @refset_null_new(%struct.ref_s* %22, i32 %23, i32 %25) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.10, %if.then.4, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zaload(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %aref = alloca %struct.ref_s, align 8
  %asize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %packed = alloca i16*, align 8
  %i48 = alloca i32, align 4
  %packed49 = alloca i16*, align 8
  %pdest = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s* %aref to i8*
  %7 = bitcast %struct.ref_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !24
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = load i16, i16* %type_attrs3, align 2, !tbaa !28
  %conv4 = zext i16 %10 to i32
  %and5 = and i32 %conv4, 32
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.7:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %11, i32* %asize, align 4, !tbaa !21
  %12 = load i32, i32* %asize, align 4, !tbaa !21
  %conv9 = zext i32 %12 to i64
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 2
  %14 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp12 = icmp sgt i64 %conv9, %sub.ptr.div
  br i1 %cmp12, label %if.then.14, label %if.end.38

if.then.14:                                       ; preds = %do.end
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %18 = load i32, i32* %asize, align 4, !tbaa !21
  %call17 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack16, i32 %18) #4
  store i32 %call17, i32* %code, align 4, !tbaa !21
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 1
  %packed18 = bitcast %union.v* %value to i16**
  %21 = load i16*, i16** %packed18, align 8, !tbaa !1
  store i16* %21, i16** %packed, align 8, !tbaa !1
  %22 = load i32, i32* %code, align 4, !tbaa !21
  %cmp19 = icmp slt i32 %22, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.14
  %23 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.14
  %24 = load i32, i32* %asize, align 4, !tbaa !21
  store i32 %24, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.22
  %25 = load i32, i32* %i, align 4, !tbaa !21
  %cmp23 = icmp ugt i32 %25, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load i16*, i16** %packed, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %31 = load i32, i32* %i, align 4, !tbaa !21
  %conv27 = zext i32 %31 to i64
  %call28 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack26, i64 %conv27) #4
  call void @packed_get(%struct.gs_memory_s* %28, i16* %29, %struct.ref_s* %call28) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add i32 %32, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  %33 = load i16*, i16** %packed, align 8, !tbaa !1
  %34 = load i16, i16* %33, align 2, !tbaa !25
  %conv29 = zext i16 %34 to i32
  %cmp30 = icmp sge i32 %conv29, 16384
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %35, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  %36 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i16, i16* %36, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr, %cond.true ], [ %add.ptr32, %cond.false ]
  store i16* %cond, i16** %packed, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !5
  %39 = bitcast %struct.ref_s* %38 to i8*
  %40 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.21
  %41 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %cleanup.87

if.end.38:                                        ; preds = %do.end
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %44 = bitcast i16* %type_attrs40 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv41 = zext i8 %45 to i32
  %cmp42 = icmp eq i32 %conv41, 4
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.38
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %47 = bitcast %struct.ref_s* %46 to i8*
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 1
  %refs = bitcast %union.v* %value45 to %struct.ref_s**
  %48 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %49 = bitcast %struct.ref_s* %48 to i8*
  %50 = load i32, i32* %asize, align 4, !tbaa !21
  %conv46 = zext i32 %50 to i64
  %mul = mul i64 %conv46, 16
  %call47 = call i8* @memcpy(i8* %47, i8* %49, i64 %mul) #5
  br label %if.end.69

if.else:                                          ; preds = %if.end.38
  %51 = bitcast i32* %i48 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i16** %packed49 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 1
  %packed51 = bitcast %union.v* %value50 to i16**
  %53 = load i16*, i16** %packed51, align 8, !tbaa !1
  store i16* %53, i16** %packed49, align 8, !tbaa !1
  %54 = bitcast %struct.ref_s** %pdest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %55, %struct.ref_s** %pdest, align 8, !tbaa !1
  store i32 0, i32* %i48, align 4, !tbaa !21
  br label %for.cond.52

for.cond.52:                                      ; preds = %cond.end.66, %if.else
  %56 = load i32, i32* %i48, align 4, !tbaa !21
  %57 = load i32, i32* %asize, align 4, !tbaa !21
  %cmp53 = icmp ult i32 %56, %57
  br i1 %cmp53, label %for.body.55, label %for.end.68

for.body.55:                                      ; preds = %for.cond.52
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !22
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  %61 = load i16*, i16** %packed49, align 8, !tbaa !1
  %62 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %60, i16* %61, %struct.ref_s* %62) #4
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.55
  %63 = load i32, i32* %i48, align 4, !tbaa !21
  %inc = add i32 %63, 1
  store i32 %inc, i32* %i48, align 4, !tbaa !21
  %64 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pdest, align 8, !tbaa !1
  %65 = load i16*, i16** %packed49, align 8, !tbaa !1
  %66 = load i16, i16* %65, align 2, !tbaa !25
  %conv59 = zext i16 %66 to i32
  %cmp60 = icmp sge i32 %conv59, 16384
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %for.inc.58
  %67 = load i16*, i16** %packed49, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i16, i16* %67, i64 1
  br label %cond.end.66

cond.false.64:                                    ; preds = %for.inc.58
  %68 = load i16*, i16** %packed49, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds i16, i16* %68, i64 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.62
  %cond67 = phi i16* [ %add.ptr63, %cond.true.62 ], [ %add.ptr65, %cond.false.64 ]
  store i16* %cond67, i16** %packed49, align 8, !tbaa !1
  br label %for.cond.52

for.end.68:                                       ; preds = %for.cond.52
  %69 = bitcast %struct.ref_s** %pdest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i16** %packed49 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %i48 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %if.then.44
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %72 = load i32, i32* %asize, align 4, !tbaa !21
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = zext i32 %72 to i64
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 %idx.ext
  store %struct.ref_s* %add.ptr71, %struct.ref_s** %op, align 8, !tbaa !1
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack73 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack72, i32 0, i32 0
  %top74 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack73, i32 0, i32 2
  %75 = load %struct.ref_s*, %struct.ref_s** %top74, align 8, !tbaa !30
  %cmp75 = icmp ugt %struct.ref_s* %add.ptr71, %75
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %do.body.70
  %76 = load i32, i32* %asize, align 4, !tbaa !21
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 26
  %stack79 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack78, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack79, i32 0, i32 7
  store i32 %76, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.else.80:                                       ; preds = %do.body.70
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 26
  %stack82 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack81, i32 0, i32 0
  %p83 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack82, i32 0, i32 0
  store %struct.ref_s* %78, %struct.ref_s** %p83, align 8, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80
  br label %do.cond.85

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %81 = bitcast %struct.ref_s* %80 to i8*
  %82 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %do.end.86, %if.then.77, %cleanup, %if.then.6, %if.then
  %83 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %84) #1
  %85 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @zastore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %arr = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %9, i32* %size, align 4, !tbaa !21
  %10 = load i32, i32* %size, align 4, !tbaa !21
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %12 = load i16, i16* %type_attrs8, align 2, !tbaa !28
  %conv9 = zext i16 %12 to i32
  %and10 = and i32 %conv9, 16144
  %cmp11 = icmp eq i32 %and10, 1040
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.14:                                        ; preds = %if.end.6
  %13 = load i32, i32* %size, align 4, !tbaa !21
  %conv15 = zext i32 %13 to i64
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 1
  %16 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !32
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp18 = icmp sgt i64 %conv15, %sub.ptr.div
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.14
  %17 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load i32, i32* %size, align 4, !tbaa !21
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack22 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack21, i32 0, i32 0
  %call23 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack22) #4
  %cmp24 = icmp uge i32 %18, %call23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.20
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = bitcast %struct.ref_s* %arr to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !24
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack29 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack28, i32 0, i32 0
  %24 = load i32, i32* %size, align 4, !tbaa !21
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %call30 = call i32 @ref_stack_store(%struct.ref_stack_s* %stack29, %struct.ref_s* %arr, i32 %24, i32 1, i32 0, i32 1, %struct.gs_dual_memory_s* %memory, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 %call30, i32* %code, align 4, !tbaa !21
  %26 = load i32, i32* %code, align 4, !tbaa !21
  %cmp31 = icmp slt i32 %26, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  %27 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.27
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %29 = load i32, i32* %size, align 4, !tbaa !21
  call void @ref_stack_pop(%struct.ref_stack_s* %stack36, i32 %29) #4
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %call39 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack38, i64 0) #4
  %31 = bitcast %struct.ref_s* %call39 to i8*
  %32 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.26
  %33 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.else:                                          ; preds = %if.end.14
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %36 = load i32, i32* %size, align 4, !tbaa !21
  %idx.ext = zext i32 %36 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 %idx.neg
  %37 = load i32, i32* %size, align 4, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 1
  %call41 = call i32 @refcpy_to_old(%struct.ref_s* %34, i32 0, %struct.ref_s* %add.ptr, i32 %37, %struct.gs_dual_memory_s* %memory40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 %call41, i32* %code, align 4, !tbaa !21
  %39 = load i32, i32* %code, align 4, !tbaa !21
  %cmp42 = icmp slt i32 %39, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else
  %40 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.45:                                        ; preds = %if.else
  %41 = load i32, i32* %size, align 4, !tbaa !21
  %sub = sub nsw i32 0, %41
  %idxprom = sext i32 %sub to i64
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %idxprom
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %44 = bitcast %struct.ref_s* %arrayidx to i8*
  %45 = bitcast %struct.ref_s* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !24
  %46 = load i32, i32* %size, align 4, !tbaa !21
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack47 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !5
  %idx.ext49 = zext i32 %46 to i64
  %idx.neg50 = sub i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 %idx.neg50
  store %struct.ref_s* %add.ptr51, %struct.ref_s** %p48, align 8, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.45, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.52, %if.then.44, %cleanup, %if.then.13, %if.then.5, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @ref_stack_store(%struct.ref_stack_s*, %struct.ref_s*, i32, i32, i32, i32, %struct.gs_dual_memory_s*, i8*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @refcpy_to_old(%struct.ref_s*, i32, %struct.ref_s*, i32, %struct.gs_dual_memory_s*, i8*) #2

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
!19 = !{!3, !3, i64 0}
!20 = !{!13, !13, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 8}
!23 = !{!7, !9, i64 68}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 4, i64 4, !21, i64 8, i64 8, !20, i64 8, i64 2, !25, i64 8, i64 4, !26, i64 8, i64 8, !20, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !20}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !3, i64 0}
!28 = !{!10, !12, i64 0}
!29 = !{!10, !9, i64 4}
!30 = !{!6, !2, i64 640}
!31 = !{!6, !9, i64 688}
!32 = !{!6, !2, i64 632}
