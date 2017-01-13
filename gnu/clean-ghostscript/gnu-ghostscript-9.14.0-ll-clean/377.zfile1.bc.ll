; ModuleID = './zfile1.bc'
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

@.str = private unnamed_addr constant [20 x i8] c"0.file_name_combine\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0.file_name_is_absolute\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"0.file_name_separator\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"0.file_name_directory_separator\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"0.file_name_current\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"0.file_name_parent\00", align 1
@zfile1_op_defs = constant [7 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_combine }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_is_absolute }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_separator }, %struct.op_def { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_directory_separator }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_current }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile_name_parent }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [19 x i8] c"zfile_name_combine\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zfile_name_combine(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %plen = alloca i32, align 4
  %flen = alloca i32, align 4
  %blen = alloca i32, align 4
  %blen0 = alloca i32, align 4
  %prefix = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %op = alloca %struct.ref_s*, align 8
  %no_sibling = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %blen0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %9, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = bitcast i32* %no_sibling to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 0
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %16 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx7, align 1, !tbaa !19
  %conv8 = zext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv8, 18
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %call13 = call i32 @check_type_failed(%struct.ref_s* %arrayidx12) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %20 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx18, align 1, !tbaa !19
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 18
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.14
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #4
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.14
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %24 = load i32, i32* %rsize, align 4, !tbaa !20
  store i32 %24, i32* %plen, align 4, !tbaa !21
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 0
  %rsize29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  %26 = load i32, i32* %rsize29, align 4, !tbaa !20
  store i32 %26, i32* %flen, align 4, !tbaa !21
  %27 = load i32, i32* %plen, align 4, !tbaa !21
  %28 = load i32, i32* %flen, align 4, !tbaa !21
  %add = add i32 %27, %28
  %add30 = add i32 %add, 2
  store i32 %add30, i32* %blen0, align 4, !tbaa !21
  store i32 %add30, i32* %blen, align 4, !tbaa !21
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %32 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !23
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !22
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %36 = load i32, i32* %blen, align 4, !tbaa !21
  %call33 = call i8* %32(%struct.gs_memory_s* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call33, i8** %buffer, align 8, !tbaa !1
  %37 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp34 = icmp eq i8* %37, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.25
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.25
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx38, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %39 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %39, i8** %prefix, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx39, i32 0, i32 1
  %const_bytes41 = bitcast %union.v* %value40 to i8**
  %41 = load i8*, i8** %const_bytes41, align 8, !tbaa !1
  store i8* %41, i8** %fname, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 0
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx42, i32 0, i32 1
  %boolval = bitcast %union.v* %value43 to i16*
  %43 = load i16, i16* %boolval, align 2, !tbaa !26
  %conv44 = zext i16 %43 to i32
  store i32 %conv44, i32* %no_sibling, align 4, !tbaa !21
  %44 = load i8*, i8** %prefix, align 8, !tbaa !1
  %45 = load i32, i32* %plen, align 4, !tbaa !21
  %46 = load i8*, i8** %fname, align 8, !tbaa !1
  %47 = load i32, i32* %flen, align 4, !tbaa !21
  %48 = load i32, i32* %no_sibling, align 4, !tbaa !21
  %49 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call45 = call i32 @gp_file_name_combine(i8* %44, i32 %45, i8* %46, i32 %47, i32 %48, i8* %49, i32* %blen) #4
  %cmp46 = icmp ne i32 %call45, 1
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.37
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  %boolval50 = bitcast %union.v* %value49 to i16*
  store i16 0, i16* %boolval50, align 2, !tbaa !26
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 256, i16* %type_attrs52, align 2, !tbaa !27
  br label %if.end.84

if.else:                                          ; preds = %if.end.37
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 1
  %current54 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 0
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current54, align 8, !tbaa !22
  %54 = bitcast %struct.gs_ref_memory_s* %53 to %struct.gs_memory_s*
  %procs55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs55, i32 0, i32 18
  %55 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !28
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !22
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %59 = load i8*, i8** %buffer, align 8, !tbaa !1
  %60 = load i32, i32* %blen0, align 4, !tbaa !21
  %61 = load i32, i32* %blen, align 4, !tbaa !21
  %call58 = call i8* %55(%struct.gs_memory_s* %58, i8* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call58, i8** %buffer, align 8, !tbaa !1
  %62 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp59 = icmp eq i8* %62, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.else
  %63 = load i8*, i8** %buffer, align 8, !tbaa !1
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -2
  %value64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr63, i32 0, i32 1
  %bytes = bitcast %union.v* %value64 to i8**
  store i8* %63, i8** %bytes, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 2
  %66 = load i32, i32* %current_space, align 4, !tbaa !29
  %or = or i32 112, %66
  %add66 = add i32 4608, %or
  %conv67 = trunc i32 %add66 to i16
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr68, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  store i16 %conv67, i16* %type_attrs70, align 2, !tbaa !27
  %68 = load i32, i32* %blen, align 4, !tbaa !21
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -2
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 0
  %rsize73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 2
  store i32 %68, i32* %rsize73, align 4, !tbaa !20
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr74, i32 0, i32 1
  %boolval76 = bitcast %union.v* %value75 to i16*
  store i16 1, i16* %boolval76, align 2, !tbaa !26
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr77, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  store i16 256, i16* %type_attrs79, align 2, !tbaa !27
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 26
  %stack81 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p82, align 8, !tbaa !5
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -1
  store %struct.ref_s* %add.ptr83, %struct.ref_s** %p82, align 8, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.62, %if.then.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then.61, %if.then.36, %if.then.22, %if.then.11, %if.then
  %74 = bitcast i32* %no_sibling to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %blen0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %flen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @zfile_name_is_absolute(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 0
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !20
  %call5 = call i32 @gp_file_name_is_absolute(i8* %8, i32 %10) #4
  %conv6 = trunc i32 %call5 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value7 to i16*
  store i16 %conv6, i16* %boolval, align 2, !tbaa !26
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  store i16 256, i16* %type_attrs9, align 2, !tbaa !27
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
define internal i32 @zfile_name_separator(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i8* @gp_file_name_separator() #4
  %call1 = call i32 @push_string(%struct.gs_context_state_s* %0, i8* %call) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @zfile_name_directory_separator(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i8* @gp_file_name_directory_separator() #4
  %call1 = call i32 @push_string(%struct.gs_context_state_s* %0, i8* %call) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @zfile_name_current(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i8* @gp_file_name_current() #4
  %call1 = call i32 @push_string(%struct.gs_context_state_s* %0, i8* %call) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @zfile_name_parent(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i8* @gp_file_name_parent() #4
  %call1 = call i32 @push_string(%struct.gs_context_state_s* %0, i8* %call) #4
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gp_file_name_combine(i8*, i32, i8*, i32, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gp_file_name_is_absolute(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @push_string(%struct.gs_context_state_s* %i_ctx_p, i8* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %v.addr = alloca i8*, align 8
  %op = alloca %struct.ref_s*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  store %struct.ref_s* %9, %struct.ref_s** %p8, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* %11, i8** %const_bytes, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !27
  %14 = load i32, i32* %len, align 4, !tbaa !21
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  store i32 %14, i32* %rsize, align 4, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i8* @gp_file_name_separator() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @gp_file_name_directory_separator() #2

declare i8* @gp_file_name_current() #2

declare i8* @gp_file_name_parent() #2

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
!19 = !{!3, !3, i64 0}
!20 = !{!10, !9, i64 4}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 8}
!23 = !{!24, !2, i64 136}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!12, !12, i64 0}
!27 = !{!10, !12, i64 0}
!28 = !{!24, !2, i64 152}
!29 = !{!7, !9, i64 48}
!30 = !{!6, !2, i64 640}
!31 = !{!6, !9, i64 688}
