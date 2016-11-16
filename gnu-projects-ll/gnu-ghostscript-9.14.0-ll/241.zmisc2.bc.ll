; ModuleID = './zmisc2.bc'
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

@.str = private unnamed_addr constant [16 x i8] c"0.languagelevel\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"1.setlanguagelevel\00", align 1
@zmisc2_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlanguagelevel }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetlanguagelevel }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"globaldict\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zlanguagelevel(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
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
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 2
  %10 = load i32, i32* %language_level, align 4, !tbaa !21
  %conv = sext i32 %10 to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !23
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
define internal i32 @zsetlanguagelevel(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  store i32 0, i32* %code, align 4, !tbaa !24
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !22
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 2
  %11 = load i32, i32* %language_level, align 4, !tbaa !21
  %conv2 = sext i32 %11 to i64
  %cmp3 = icmp ne i64 %9, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %14 = load i64, i64* %intval7, align 8, !tbaa !22
  %conv8 = trunc i64 %14 to i32
  %call9 = call i32 @set_language_level(%struct.gs_context_state_s* %12, i32 %conv8) #3
  store i32 %call9, i32* %code, align 4, !tbaa !24
  %15 = load i32, i32* %code, align 4, !tbaa !24
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.5
  %16 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval16 = bitcast %union.v* %value15 to i64*
  %18 = load i64, i64* %intval16, align 8, !tbaa !22
  %conv17 = trunc i64 %18 to i32
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 2
  store i32 %conv17, i32* %language_level18, align 4, !tbaa !21
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p21, align 8, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_language_level(%struct.gs_context_state_s* %i_ctx_p, i32 %new_level) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %new_level.addr = alloca i32, align 4
  %old_level = alloca i32, align 4
  %pgdict = alloca %struct.ref_s*, align 8
  %level2dict = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdict = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  %elt = alloca [2 x %struct.ref_s], align 16
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %new_level, i32* %new_level.addr, align 4, !tbaa !24
  %0 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 2
  %2 = load i32, i32* %language_level, align 4, !tbaa !21
  store i32 %2, i32* %old_level, align 4, !tbaa !24
  %3 = bitcast %struct.ref_s** %pgdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 24
  %stack2 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack2) #3
  %sub = sub i32 %call, 2
  %conv = zext i32 %sub to i64
  %call3 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %conv) #3
  store %struct.ref_s* %call3, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %level2dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code, align 4, !tbaa !24
  %8 = load i32, i32* %new_level.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %new_level.addr, align 4, !tbaa !24
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack5, i32 0, i32 7
  %call6 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %level2dict) #3
  %cmp7 = icmp sgt i32 %call6, 0
  %cond = select i1 %cmp7, i32 3, i32 2
  %cmp9 = icmp sgt i32 %9, %cond
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 24
  %system_dict12 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack11, i32 0, i32 7
  %call13 = call i32 @dict_find_string(%struct.ref_s* %system_dict12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %level2dict) #3
  %cmp14 = icmp sle i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.17:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.34, %if.end.17
  %12 = load i32, i32* %new_level.addr, align 4, !tbaa !24
  %13 = load i32, i32* %old_level, align 4, !tbaa !24
  %cmp18 = icmp ne i32 %12, %13
  br i1 %cmp18, label %while.body, label %while.end.73

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %old_level, align 4, !tbaa !24
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %while.body
  %15 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %level2dict, align 8, !tbaa !1
  %call20 = call i32 @dict_find_string(%struct.ref_s* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pdict) #3
  store i32 %call20, i32* %code, align 4, !tbaa !24
  %17 = load i32, i32* %code, align 4, !tbaa !24
  %cmp21 = icmp sgt i32 %17, 0
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %sw.bb
  %18 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %19 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv24 = zext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 2
  br i1 %cmp25, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.23
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.23
  %21 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %21 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %sw.bb
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 2
  %28 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %dict_auto_expand = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %28, i32 0, i32 17
  store i32 1, i32* %dict_auto_expand, align 4, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.27
  %29 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call30 = call i32 @swap_level_dict(%struct.gs_context_state_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 %call30, i32* %code, align 4, !tbaa !24
  %31 = load i32, i32* %code, align 4, !tbaa !24
  %cmp31 = icmp slt i32 %31, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cleanup.cont
  %32 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.34:                                        ; preds = %cleanup.cont
  %33 = load i32, i32* %old_level, align 4, !tbaa !24
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %old_level, align 4, !tbaa !24
  br label %while.cond

sw.bb.35:                                         ; preds = %while.body
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call36 = call i32 @swap_level_dict(%struct.gs_context_state_s* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 %call36, i32* %code, align 4, !tbaa !24
  %35 = load i32, i32* %code, align 4, !tbaa !24
  %cmp37 = icmp slt i32 %35, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.35
  %36 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.40:                                        ; preds = %sw.bb.35
  %37 = load i32, i32* %old_level, align 4, !tbaa !24
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %old_level, align 4, !tbaa !24
  br label %while.cond

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %38 = load i32, i32* %new_level.addr, align 4, !tbaa !24
  switch i32 %38, label %sw.default.71 [
    i32 1, label %sw.bb.41
    i32 3, label %sw.bb.69
  ]

sw.bb.41:                                         ; preds = %sw.epilog
  %39 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %call42 = call i32 @dict_first(%struct.ref_s* %40) #3
  store i32 %call42, i32* %index, align 4, !tbaa !24
  %41 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %41) #1
  br label %while.cond.43

while.cond.43:                                    ; preds = %if.end.61, %sw.bb.41
  %42 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %43 = load i32, i32* %index, align 4, !tbaa !24
  %arrayidx44 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call45 = call i32 @dict_next(%struct.ref_s* %42, i32 %43, %struct.ref_s* %arrayidx44) #3
  store i32 %call45, i32* %index, align 4, !tbaa !24
  %cmp46 = icmp sge i32 %call45, 0
  br i1 %cmp46, label %while.body.48, label %while.end

while.body.48:                                    ; preds = %while.cond.43
  %arrayidx49 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx49, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %44 = bitcast i16* %type_attrs51 to i8*
  %arrayidx52 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx52, align 1, !tbaa !25
  %conv53 = zext i8 %45 to i32
  %cmp54 = icmp eq i32 %conv53, 13
  br i1 %cmp54, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %while.body.48
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current58 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory57, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current58, align 8, !tbaa !30
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %gs_lib_ctx59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 2
  %49 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx59, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %49, i32 0, i32 16
  %50 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !36
  %arrayidx60 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  call void @names_invalidate_value_cache(%struct.name_table_s* %50, %struct.ref_s* %arrayidx60) #3
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %while.body.48
  br label %while.cond.43

while.end:                                        ; preds = %while.cond.43
  %51 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 24
  %system_dict63 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack62, i32 0, i32 7
  %53 = bitcast %struct.ref_s* %51 to i8*
  %54 = bitcast %struct.ref_s* %system_dict63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !26
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current65 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory64, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current65, align 8, !tbaa !30
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %gs_lib_ctx66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 2
  %58 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx66, align 8, !tbaa !31
  %dict_auto_expand67 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %58, i32 0, i32 17
  store i32 0, i32* %dict_auto_expand67, align 4, !tbaa !34
  %59 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %59) #1
  %60 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call68 = call i32 @swap_level_dict(%struct.gs_context_state_s* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 %call68, i32* %code, align 4, !tbaa !24
  br label %sw.epilog.72

sw.bb.69:                                         ; preds = %sw.epilog
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call70 = call i32 @swap_level_dict(%struct.gs_context_state_s* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 %call70, i32* %code, align 4, !tbaa !24
  br label %sw.epilog.72

sw.default.71:                                    ; preds = %sw.epilog
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.epilog.72:                                     ; preds = %sw.bb.69, %while.end
  br label %while.end.73

while.end.73:                                     ; preds = %sw.epilog.72, %while.cond
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack74) #3
  %64 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %while.end.73, %sw.default.71, %if.then.39, %if.then.33, %cleanup, %if.then.16, %if.then
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.ref_s** %level2dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s** %pgdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @swap_level_dict(%struct.gs_context_state_s* %i_ctx_p, i8* %dict_name) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dict_name.addr = alloca i8*, align 8
  %pleveldict = alloca %struct.ref_s*, align 8
  %rleveldict = alloca %struct.ref_s, align 8
  %index = alloca i32, align 4
  %elt = alloca [2 x %struct.ref_s], align 16
  %psubdict = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %isub = alloca i32, align 4
  %subelt = alloca [2 x %struct.ref_s], align 16
  %found = alloca i32, align 4
  %rsubdict = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %code54 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %dict_name, i8** %dict_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pleveldict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %rleveldict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.ref_s** %psubdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %6 = load i8*, i8** %dict_name.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* %6, %struct.ref_s** %pleveldict) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pleveldict, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s* %rleveldict to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !tbaa.struct !26
  %call1 = call i32 @dict_first(%struct.ref_s* %rleveldict) #3
  store i32 %call1, i32* %index, align 4, !tbaa !24
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %cleanup.48, %if.end
  %10 = load i32, i32* %index, align 4, !tbaa !24
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call2 = call i32 @dict_next(%struct.ref_s* %rleveldict, i32 %10, %struct.ref_s* %arrayidx) #3
  store i32 %call2, i32* %index, align 4, !tbaa !24
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end.67

while.body:                                       ; preds = %while.cond
  %arrayidx4 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !25
  %conv = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 2
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %arrayidx8 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call10 = call i32 @dict_find(%struct.ref_s* %arrayidx8, %struct.ref_s* %arrayidx9, %struct.ref_s** %psubdict) #3
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %arrayidx14 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %16 = load %struct.ref_s*, %struct.ref_s** %psubdict, align 8, !tbaa !1
  %call15 = call i32 @obj_eq(%struct.gs_memory_s* %15, %struct.ref_s* %arrayidx14, %struct.ref_s* %16) #3
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.13
  %17 = bitcast i32* %isub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %arrayidx17 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %call18 = call i32 @dict_first(%struct.ref_s* %arrayidx17) #3
  store i32 %call18, i32* %isub, align 4, !tbaa !24
  %18 = bitcast [2 x %struct.ref_s]* %subelt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %18) #1
  %19 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 24
  %system_dict20 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack19, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call22 = call i32 @dict_find(%struct.ref_s* %system_dict20, %struct.ref_s* %arrayidx21, %struct.ref_s** %psubdict) #3
  store i32 %call22, i32* %found, align 4, !tbaa !24
  %21 = bitcast %struct.ref_s* %rsubdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = load i32, i32* %found, align 4, !tbaa !24
  %cmp23 = icmp sle i32 %22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.26:                                        ; preds = %if.then.16
  %23 = load %struct.ref_s*, %struct.ref_s** %psubdict, align 8, !tbaa !1
  %24 = bitcast %struct.ref_s* %rsubdict to i8*
  %25 = bitcast %struct.ref_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.47, %if.end.26
  %arrayidx28 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %26 = load i32, i32* %isub, align 4, !tbaa !24
  %arrayidx29 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %subelt, i32 0, i64 0
  %call30 = call i32 @dict_next(%struct.ref_s* %arrayidx28, i32 %26, %struct.ref_s* %arrayidx29) #3
  store i32 %call30, i32* %isub, align 4, !tbaa !24
  %cmp31 = icmp sge i32 %call30, 0
  br i1 %cmp31, label %while.body.33, label %while.end

while.body.33:                                    ; preds = %while.cond.27
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !30
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %arrayidx36 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %subelt, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call38 = call i32 @obj_eq(%struct.gs_memory_s* %29, %struct.ref_s* %arrayidx36, %struct.ref_s* %arrayidx37) #3
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.47, label %if.then.40

if.then.40:                                       ; preds = %while.body.33
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %subelt, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %call42 = call i32 @swap_entry(%struct.gs_context_state_s* %31, %struct.ref_s* %arraydecay, %struct.ref_s* %rsubdict, %struct.ref_s* %arrayidx41) #3
  store i32 %call42, i32* %code, align 4, !tbaa !24
  %32 = load i32, i32* %code, align 4, !tbaa !24
  %cmp43 = icmp slt i32 %32, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %33 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.then.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont, %while.body.33
  br label %while.cond.27

while.end:                                        ; preds = %while.cond.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %while.end, %cleanup, %if.then.25
  %35 = bitcast %struct.ref_s* %rsubdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %36 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [2 x %struct.ref_s]* %subelt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %37) #1
  %38 = bitcast i32* %isub to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %cleanup.68 [
    i32 0, label %cleanup.cont.53
    i32 2, label %while.cond
  ]

cleanup.cont.53:                                  ; preds = %cleanup.48
  br label %if.end.66

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %while.body
  %39 = bitcast i32* %code54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 24
  %system_dict57 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack56, i32 0, i32 7
  %call58 = call i32 @swap_entry(%struct.gs_context_state_s* %40, %struct.ref_s* %arraydecay55, %struct.ref_s* %system_dict57, %struct.ref_s* %rleveldict) #3
  store i32 %call58, i32* %code54, align 4, !tbaa !24
  %42 = load i32, i32* %code54, align 4, !tbaa !24
  %cmp59 = icmp slt i32 %42, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else
  %43 = load i32, i32* %code54, align 4, !tbaa !24
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.62:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %if.end.62, %if.then.61
  %44 = bitcast i32* %code54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %cleanup.dest.64 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.64, label %cleanup.68 [
    i32 0, label %cleanup.cont.65
  ]

cleanup.cont.65:                                  ; preds = %cleanup.63
  br label %if.end.66

if.end.66:                                        ; preds = %cleanup.cont.65, %cleanup.cont.53
  br label %while.cond

while.end.67:                                     ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %while.end.67, %cleanup.63, %cleanup.48, %if.then
  %45 = bitcast %struct.ref_s** %psubdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %46) #1
  %47 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.ref_s* %rleveldict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast %struct.ref_s** %pleveldict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

declare void @names_invalidate_value_cache(%struct.name_table_s*, %struct.ref_s*) #2

declare void @dstack_set_top(%struct.dict_stack_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @swap_entry(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %elt, %struct.ref_s* %pdict, %struct.ref_s* %pdict2) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %elt.addr = alloca %struct.ref_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %pdict2.addr = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %old_value = alloca %struct.ref_s, align 8
  %found = alloca i32, align 4
  %space2 = alloca i32, align 4
  %code = alloca i32, align 4
  %space = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %elt, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict2, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %old_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 0
  %call = call i32 @dict_find(%struct.ref_s* %3, %struct.ref_s* %arrayidx, %struct.ref_s** %pvalue) #3
  store i32 %call, i32* %found, align 4, !tbaa !24
  %5 = load i32, i32* %found, align 4, !tbaa !24
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %old_value, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !23
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s* %old_value to i8*
  %8 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %9 = bitcast i32* %space2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %11 = load i16, i16* %type_attrs3, align 2, !tbaa !23
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %space2, align 4, !tbaa !24
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %14 = load i16, i16* %type_attrs5, align 2, !tbaa !23
  %conv6 = zext i16 %14 to i32
  %and7 = and i32 %conv6, -13
  %or = or i32 %and7, 12
  %conv8 = trunc i32 %or to i16
  %15 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  store i16 %conv8, i16* %type_attrs10, align 2, !tbaa !23
  %16 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 24
  %call12 = call i32 @dict_put(%struct.ref_s* %16, %struct.ref_s* %arrayidx11, %struct.ref_s* %old_value, %struct.dict_stack_s* %dict_stack) #3
  %19 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %20 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx16, align 1, !tbaa !25
  %conv17 = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv17, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %22 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 0
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 24
  %call21 = call i32 @dict_undef(%struct.ref_s* %22, %struct.ref_s* %arrayidx19, %struct.dict_stack_s* %dict_stack20) #3
  store i32 %call21, i32* %code, align 4, !tbaa !24
  %25 = load i32, i32* %code, align 4, !tbaa !24
  %cmp22 = icmp eq i32 %25, -21
  br i1 %cmp22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %old_value, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %26 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx26, align 1, !tbaa !25
  %conv27 = zext i8 %27 to i32
  %cmp28 = icmp eq i32 %conv27, 14
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true
  store i32 0, i32* %code, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true, %if.then
  br label %if.end.55

if.else:                                          ; preds = %sw.epilog
  %28 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %30 = load i16, i16* %type_attrs32, align 2, !tbaa !23
  %conv33 = zext i16 %30 to i32
  %and34 = and i32 %conv33, 12
  store i32 %and34, i32* %space, align 4, !tbaa !24
  %31 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %32 = load i16, i16* %type_attrs36, align 2, !tbaa !23
  %conv37 = zext i16 %32 to i32
  %and38 = and i32 %conv37, -13
  %or39 = or i32 %and38, 12
  %conv40 = trunc i32 %or39 to i16
  %33 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  store i16 %conv40, i16* %type_attrs42, align 2, !tbaa !23
  %34 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 0
  %36 = load %struct.ref_s*, %struct.ref_s** %elt.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 24
  %call46 = call i32 @dict_put(%struct.ref_s* %34, %struct.ref_s* %arrayidx43, %struct.ref_s* %arrayidx44, %struct.dict_stack_s* %dict_stack45) #3
  store i32 %call46, i32* %code, align 4, !tbaa !24
  %38 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  %39 = load i16, i16* %type_attrs48, align 2, !tbaa !23
  %conv49 = zext i16 %39 to i32
  %and50 = and i32 %conv49, -13
  %40 = load i32, i32* %space, align 4, !tbaa !24
  %or51 = or i32 %and50, %40
  %conv52 = trunc i32 %or51 to i16
  %41 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 %conv52, i16* %type_attrs54, align 2, !tbaa !23
  %42 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.end
  %43 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %44 = load i16, i16* %type_attrs57, align 2, !tbaa !23
  %conv58 = zext i16 %44 to i32
  %and59 = and i32 %conv58, -13
  %45 = load i32, i32* %space2, align 4, !tbaa !24
  %or60 = or i32 %and59, %45
  %conv61 = trunc i32 %or60 to i16
  %46 = load %struct.ref_s*, %struct.ref_s** %pdict2.addr, align 8, !tbaa !1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  store i16 %conv61, i16* %type_attrs63, align 2, !tbaa !23
  %47 = load i32, i32* %code, align 4, !tbaa !24
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %space2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.ref_s* %old_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %51) #1
  %52 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret i32 %47
}

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @dict_undef(%struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

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
!19 = !{!6, !2, i64 640}
!20 = !{!6, !9, i64 688}
!21 = !{!6, !9, i64 80}
!22 = !{!13, !13, i64 0}
!23 = !{!10, !12, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!3, !3, i64 0}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 4, i64 4, !24, i64 8, i64 8, !22, i64 8, i64 2, !27, i64 8, i64 4, !28, i64 8, i64 8, !22, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !22}
!27 = !{!12, !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!6, !2, i64 8}
!31 = !{!32, !2, i64 192}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!35, !9, i64 128}
!35 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!35, !2, i64 120}
