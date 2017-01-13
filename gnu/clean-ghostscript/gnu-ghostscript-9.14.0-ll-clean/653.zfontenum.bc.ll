; ModuleID = './zfontenum.bc'
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
%struct.fontenum_s = type { i8*, i8*, %struct.fontenum_s* }

@.str = private unnamed_addr constant [17 x i8] c"0.getnativefonts\00", align 1
@zfontenum_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z_fontenum }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"fontenum list\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"native font name\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"native font path\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"native fontmap\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"native font mapping\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @z_fontenum(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %enum_state = alloca i8*, align 8
  %code = alloca i32, align 4
  %e = alloca i32, align 4
  %elements = alloca i32, align 4
  %fontname = alloca i8*, align 8
  %path = alloca i8*, align 8
  %r = alloca %struct.fontenum_s*, align 8
  %results = alloca %struct.fontenum_s*, align 8
  %array = alloca %struct.ref_s, align 8
  %length = alloca i32, align 4
  %string = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %mapping = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i8** %enum_state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %5 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %fontname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.fontenum_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.fontenum_s** %results to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ref_s* %array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i8** %string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call = call i8* @gp_enumerate_fonts_init(%struct.gs_memory_s* %16) #5
  store i8* %call, i8** %enum_state, align 8, !tbaa !1
  %17 = load i8*, i8** %enum_state, align 8, !tbaa !1
  %cmp = icmp eq i8* %17, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %20 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %20
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !22
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.else:                                          ; preds = %do.body
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %22, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !23
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !24
  %26 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.10:                                        ; preds = %entry
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory11, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current12, align 8, !tbaa !20
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current15 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current15, align 8, !tbaa !20
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !25
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !25
  %call18 = call i8* %32(%struct.gs_memory_s* %37, i32 1, i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  %38 = bitcast i8* %call18 to %struct.fontenum_s*
  store %struct.fontenum_s* %38, %struct.fontenum_s** %results, align 8, !tbaa !1
  store %struct.fontenum_s* %38, %struct.fontenum_s** %r, align 8, !tbaa !1
  store i32 0, i32* %elements, align 4, !tbaa !19
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.10
  %39 = load i8*, i8** %enum_state, align 8, !tbaa !1
  %call19 = call i32 @gp_enumerate_fonts_next(i8* %39, i8** %fontname, i8** %path) #5
  store i32 %call19, i32* %code, align 4, !tbaa !19
  %cmp20 = icmp sgt i32 %call19, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i8*, i8** %fontname, align 8, !tbaa !1
  %cmp21 = icmp eq i8* %40, null
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %41 = load i8*, i8** %path, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %41, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %while.body
  %42 = load i8*, i8** %enum_state, align 8, !tbaa !1
  call void @gp_enumerate_fonts_free(i8* %42) #5
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.24:                                        ; preds = %lor.lhs.false
  %43 = load i8*, i8** %fontname, align 8, !tbaa !1
  %call25 = call i64 @strlen(i8* %43) #6
  %add = add i64 %call25, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %length, align 4, !tbaa !19
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %current27 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 0
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current27, align 8, !tbaa !20
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !25
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !25
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_byte_array31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 10
  %49 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array31, align 8, !tbaa !28
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !20
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !25
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !25
  %55 = load i32, i32* %length, align 4, !tbaa !19
  %call36 = call i8* %49(%struct.gs_memory_s* %54, i32 %55, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  %56 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %fontname37 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %56, i32 0, i32 0
  store i8* %call36, i8** %fontname37, align 8, !tbaa !29
  %57 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %fontname38 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %57, i32 0, i32 0
  %58 = load i8*, i8** %fontname38, align 8, !tbaa !29
  %59 = load i8*, i8** %fontname, align 8, !tbaa !1
  %60 = load i32, i32* %length, align 4, !tbaa !19
  %conv39 = zext i32 %60 to i64
  %call40 = call i8* @memcpy(i8* %58, i8* %59, i64 %conv39) #7
  %61 = load i8*, i8** %path, align 8, !tbaa !1
  %call41 = call i64 @strlen(i8* %61) #6
  %add42 = add i64 %call41, 1
  %conv43 = trunc i64 %add42 to i32
  store i32 %conv43, i32* %length, align 4, !tbaa !19
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 1
  %current45 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory44, i32 0, i32 0
  %63 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current45, align 8, !tbaa !20
  %64 = bitcast %struct.gs_ref_memory_s* %63 to %struct.gs_memory_s*
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !25
  %non_gc_memory47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory47, align 8, !tbaa !25
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_byte_array49 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 10
  %67 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array49, align 8, !tbaa !28
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %current51 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory50, i32 0, i32 0
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current51, align 8, !tbaa !20
  %70 = bitcast %struct.gs_ref_memory_s* %69 to %struct.gs_memory_s*
  %non_gc_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory52, align 8, !tbaa !25
  %non_gc_memory53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory53, align 8, !tbaa !25
  %73 = load i32, i32* %length, align 4, !tbaa !19
  %call54 = call i8* %67(%struct.gs_memory_s* %72, i32 %73, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  %74 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %path55 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %74, i32 0, i32 1
  store i8* %call54, i8** %path55, align 8, !tbaa !31
  %75 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %path56 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %path56, align 8, !tbaa !31
  %77 = load i8*, i8** %path, align 8, !tbaa !1
  %78 = load i32, i32* %length, align 4, !tbaa !19
  %conv57 = zext i32 %78 to i64
  %call58 = call i8* @memcpy(i8* %76, i8* %77, i64 %conv57) #7
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 1
  %current60 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory59, i32 0, i32 0
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current60, align 8, !tbaa !20
  %81 = bitcast %struct.gs_ref_memory_s* %80 to %struct.gs_memory_s*
  %non_gc_memory61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory61, align 8, !tbaa !25
  %non_gc_memory62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 3
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory62, align 8, !tbaa !25
  %procs63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 1
  %alloc_byte_array64 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs63, i32 0, i32 10
  %84 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array64, align 8, !tbaa !28
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 1
  %current66 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 0
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current66, align 8, !tbaa !20
  %87 = bitcast %struct.gs_ref_memory_s* %86 to %struct.gs_memory_s*
  %non_gc_memory67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 3
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory67, align 8, !tbaa !25
  %non_gc_memory68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory68, align 8, !tbaa !25
  %call69 = call i8* %84(%struct.gs_memory_s* %89, i32 1, i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  %90 = bitcast i8* %call69 to %struct.fontenum_s*
  %91 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %91, i32 0, i32 2
  store %struct.fontenum_s* %90, %struct.fontenum_s** %next, align 8, !tbaa !32
  %92 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %next70 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %92, i32 0, i32 2
  %93 = load %struct.fontenum_s*, %struct.fontenum_s** %next70, align 8, !tbaa !32
  store %struct.fontenum_s* %93, %struct.fontenum_s** %r, align 8, !tbaa !1
  %94 = load i32, i32* %elements, align 4, !tbaa !19
  %add71 = add nsw i32 %94, 1
  store i32 %add71, i32* %elements, align 4, !tbaa !19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %95 = load i8*, i8** %enum_state, align 8, !tbaa !1
  call void @gp_enumerate_fonts_free(i8* %95) #5
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current73 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory72, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current73, align 8, !tbaa !20
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory74, i32 0, i32 2
  %99 = load i32, i32* %current_space, align 4, !tbaa !33
  %or = or i32 112, %99
  %100 = load i32, i32* %elements, align 4, !tbaa !19
  %call75 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %97, %struct.ref_s* %array, i32 %or, i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call75, i32* %code, align 4, !tbaa !19
  %101 = load %struct.fontenum_s*, %struct.fontenum_s** %results, align 8, !tbaa !1
  store %struct.fontenum_s* %101, %struct.fontenum_s** %r, align 8, !tbaa !1
  store i32 0, i32* %e, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %102 = load i32, i32* %e, align 4, !tbaa !19
  %103 = load i32, i32* %elements, align 4, !tbaa !19
  %cmp76 = icmp slt i32 %102, %103
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = bitcast %struct.ref_s* %mapping to i8*
  call void @llvm.lifetime.start(i64 16, i8* %104) #1
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 1
  %current79 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory78, i32 0, i32 0
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current79, align 8, !tbaa !20
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 1
  %current_space81 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory80, i32 0, i32 2
  %108 = load i32, i32* %current_space81, align 4, !tbaa !33
  %or82 = or i32 112, %108
  %call83 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %106, %struct.ref_s* %mapping, i32 %or82, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 %call83, i32* %code, align 4, !tbaa !19
  %109 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %fontname84 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %109, i32 0, i32 0
  %110 = load i8*, i8** %fontname84, align 8, !tbaa !29
  %call85 = call i64 @strlen(i8* %110) #6
  %conv86 = trunc i64 %call85 to i32
  store i32 %conv86, i32* %length, align 4, !tbaa !19
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 1
  %current88 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory87, i32 0, i32 0
  %112 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current88, align 8, !tbaa !20
  %113 = bitcast %struct.gs_ref_memory_s* %112 to %struct.gs_memory_s*
  %procs89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs89, i32 0, i32 16
  %114 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !34
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 1
  %current91 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory90, i32 0, i32 0
  %116 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current91, align 8, !tbaa !20
  %117 = bitcast %struct.gs_ref_memory_s* %116 to %struct.gs_memory_s*
  %118 = load i32, i32* %length, align 4, !tbaa !19
  %call92 = call i8* %114(%struct.gs_memory_s* %117, i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call92, i8** %string, align 8, !tbaa !1
  %119 = load i8*, i8** %string, align 8, !tbaa !1
  %cmp93 = icmp eq i8* %119, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %for.body
  %120 = load i8*, i8** %string, align 8, !tbaa !1
  %121 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %fontname97 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %121, i32 0, i32 0
  %122 = load i8*, i8** %fontname97, align 8, !tbaa !29
  %123 = load i32, i32* %length, align 4, !tbaa !19
  %conv98 = zext i32 %123 to i64
  %call99 = call i8* @memcpy(i8* %120, i8* %122, i64 %conv98) #7
  %124 = load i8*, i8** %string, align 8, !tbaa !1
  %value100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs = bitcast %union.v* %value100 to %struct.ref_s**
  %125 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i64 0
  %value101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value101 to i8**
  store i8* %124, i8** %bytes, align 8, !tbaa !1
  %126 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %126, i32 0, i32 1
  %current_space103 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory102, i32 0, i32 2
  %127 = load i32, i32* %current_space103, align 4, !tbaa !33
  %or104 = or i32 112, %127
  %add105 = add i32 4608, %or104
  %conv106 = trunc i32 %add105 to i16
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs108 = bitcast %union.v* %value107 to %struct.ref_s**
  %128 = load %struct.ref_s*, %struct.ref_s** %refs108, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i64 0
  %tas110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx109, i32 0, i32 0
  %type_attrs111 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas110, i32 0, i32 0
  store i16 %conv106, i16* %type_attrs111, align 2, !tbaa !24
  %129 = load i32, i32* %length, align 4, !tbaa !19
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs113 = bitcast %union.v* %value112 to %struct.ref_s**
  %130 = load %struct.ref_s*, %struct.ref_s** %refs113, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 0
  %tas115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx114, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas115, i32 0, i32 2
  store i32 %129, i32* %rsize, align 4, !tbaa !35
  %131 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %path116 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %path116, align 8, !tbaa !31
  %call117 = call i64 @strlen(i8* %132) #6
  %conv118 = trunc i64 %call117 to i32
  store i32 %conv118, i32* %length, align 4, !tbaa !19
  %133 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %133, i32 0, i32 1
  %current120 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory119, i32 0, i32 0
  %134 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current120, align 8, !tbaa !20
  %135 = bitcast %struct.gs_ref_memory_s* %134 to %struct.gs_memory_s*
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 1
  %alloc_string122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 16
  %136 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string122, align 8, !tbaa !34
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 1
  %current124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 0
  %138 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current124, align 8, !tbaa !20
  %139 = bitcast %struct.gs_ref_memory_s* %138 to %struct.gs_memory_s*
  %140 = load i32, i32* %length, align 4, !tbaa !19
  %call125 = call i8* %136(%struct.gs_memory_s* %139, i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call125, i8** %string, align 8, !tbaa !1
  %141 = load i8*, i8** %string, align 8, !tbaa !1
  %cmp126 = icmp eq i8* %141, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.96
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.129:                                       ; preds = %if.end.96
  %142 = load i8*, i8** %string, align 8, !tbaa !1
  %143 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %path130 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %143, i32 0, i32 1
  %144 = load i8*, i8** %path130, align 8, !tbaa !31
  %145 = load i32, i32* %length, align 4, !tbaa !19
  %conv131 = zext i32 %145 to i64
  %call132 = call i8* @memcpy(i8* %142, i8* %144, i64 %conv131) #7
  %146 = load i8*, i8** %string, align 8, !tbaa !1
  %value133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs134 = bitcast %union.v* %value133 to %struct.ref_s**
  %147 = load %struct.ref_s*, %struct.ref_s** %refs134, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i64 1
  %value136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx135, i32 0, i32 1
  %bytes137 = bitcast %union.v* %value136 to i8**
  store i8* %146, i8** %bytes137, align 8, !tbaa !1
  %148 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %148, i32 0, i32 1
  %current_space139 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory138, i32 0, i32 2
  %149 = load i32, i32* %current_space139, align 4, !tbaa !33
  %or140 = or i32 112, %149
  %add141 = add i32 4608, %or140
  %conv142 = trunc i32 %add141 to i16
  %value143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs144 = bitcast %union.v* %value143 to %struct.ref_s**
  %150 = load %struct.ref_s*, %struct.ref_s** %refs144, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %150, i64 1
  %tas146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx145, i32 0, i32 0
  %type_attrs147 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas146, i32 0, i32 0
  store i16 %conv142, i16* %type_attrs147, align 2, !tbaa !24
  %151 = load i32, i32* %length, align 4, !tbaa !19
  %value148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %mapping, i32 0, i32 1
  %refs149 = bitcast %union.v* %value148 to %struct.ref_s**
  %152 = load %struct.ref_s*, %struct.ref_s** %refs149, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i64 1
  %tas151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx150, i32 0, i32 0
  %rsize152 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas151, i32 0, i32 2
  store i32 %151, i32* %rsize152, align 4, !tbaa !35
  %153 = load i32, i32* %e, align 4, !tbaa !19
  %idxprom = sext i32 %153 to i64
  %value153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array, i32 0, i32 1
  %refs154 = bitcast %union.v* %value153 to %struct.ref_s**
  %154 = load %struct.ref_s*, %struct.ref_s** %refs154, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i64 %idxprom
  %155 = bitcast %struct.ref_s* %arrayidx155 to i8*
  %156 = bitcast %struct.ref_s* %mapping to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 16, i32 8, i1 false), !tbaa.struct !36
  %157 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  store %struct.fontenum_s* %157, %struct.fontenum_s** %results, align 8, !tbaa !1
  %158 = load %struct.fontenum_s*, %struct.fontenum_s** %r, align 8, !tbaa !1
  %next156 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %158, i32 0, i32 2
  %159 = load %struct.fontenum_s*, %struct.fontenum_s** %next156, align 8, !tbaa !32
  store %struct.fontenum_s* %159, %struct.fontenum_s** %r, align 8, !tbaa !1
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 1
  %current158 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory157, i32 0, i32 0
  %161 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current158, align 8, !tbaa !20
  %162 = bitcast %struct.gs_ref_memory_s* %161 to %struct.gs_memory_s*
  %non_gc_memory159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 3
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory159, align 8, !tbaa !25
  %non_gc_memory160 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %163, i32 0, i32 3
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory160, align 8, !tbaa !25
  %procs161 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs161, i32 0, i32 2
  %165 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !40
  %166 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %166, i32 0, i32 1
  %current163 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory162, i32 0, i32 0
  %167 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current163, align 8, !tbaa !20
  %168 = bitcast %struct.gs_ref_memory_s* %167 to %struct.gs_memory_s*
  %non_gc_memory164 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory164, align 8, !tbaa !25
  %non_gc_memory165 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory165, align 8, !tbaa !25
  %171 = load %struct.fontenum_s*, %struct.fontenum_s** %results, align 8, !tbaa !1
  %fontname166 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %171, i32 0, i32 0
  %172 = load i8*, i8** %fontname166, align 8, !tbaa !29
  call void %165(%struct.gs_memory_s* %170, i8* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  %173 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory167 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %173, i32 0, i32 1
  %current168 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory167, i32 0, i32 0
  %174 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current168, align 8, !tbaa !20
  %175 = bitcast %struct.gs_ref_memory_s* %174 to %struct.gs_memory_s*
  %non_gc_memory169 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 3
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory169, align 8, !tbaa !25
  %non_gc_memory170 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %176, i32 0, i32 3
  %177 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory170, align 8, !tbaa !25
  %procs171 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %177, i32 0, i32 1
  %free_object172 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs171, i32 0, i32 2
  %178 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object172, align 8, !tbaa !40
  %179 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory173 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %179, i32 0, i32 1
  %current174 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory173, i32 0, i32 0
  %180 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current174, align 8, !tbaa !20
  %181 = bitcast %struct.gs_ref_memory_s* %180 to %struct.gs_memory_s*
  %non_gc_memory175 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %181, i32 0, i32 3
  %182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory175, align 8, !tbaa !25
  %non_gc_memory176 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %182, i32 0, i32 3
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory176, align 8, !tbaa !25
  %184 = load %struct.fontenum_s*, %struct.fontenum_s** %results, align 8, !tbaa !1
  %path177 = getelementptr inbounds %struct.fontenum_s, %struct.fontenum_s* %184, i32 0, i32 1
  %185 = load i8*, i8** %path177, align 8, !tbaa !31
  call void %178(%struct.gs_memory_s* %183, i8* %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  %186 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %186, i32 0, i32 1
  %current179 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory178, i32 0, i32 0
  %187 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current179, align 8, !tbaa !20
  %188 = bitcast %struct.gs_ref_memory_s* %187 to %struct.gs_memory_s*
  %non_gc_memory180 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %188, i32 0, i32 3
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory180, align 8, !tbaa !25
  %non_gc_memory181 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %189, i32 0, i32 3
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory181, align 8, !tbaa !25
  %procs182 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %190, i32 0, i32 1
  %free_object183 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs182, i32 0, i32 2
  %191 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object183, align 8, !tbaa !40
  %192 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory184 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %192, i32 0, i32 1
  %current185 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory184, i32 0, i32 0
  %193 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current185, align 8, !tbaa !20
  %194 = bitcast %struct.gs_ref_memory_s* %193 to %struct.gs_memory_s*
  %non_gc_memory186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %194, i32 0, i32 3
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory186, align 8, !tbaa !25
  %non_gc_memory187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %195, i32 0, i32 3
  %196 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory187, align 8, !tbaa !25
  %197 = load %struct.fontenum_s*, %struct.fontenum_s** %results, align 8, !tbaa !1
  %198 = bitcast %struct.fontenum_s* %197 to i8*
  call void %191(%struct.gs_memory_s* %196, i8* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.129, %if.then.128, %if.then.95
  %199 = bitcast %struct.ref_s* %mapping to i8*
  call void @llvm.lifetime.end(i64 16, i8* %199) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.211 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %200 = load i32, i32* %e, align 4, !tbaa !19
  %inc = add nsw i32 %200, 1
  store i32 %inc, i32* %e, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.188

do.body.188:                                      ; preds = %for.end
  %201 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr189 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %201, i64 2
  store %struct.ref_s* %add.ptr189, %struct.ref_s** %op, align 8, !tbaa !1
  %202 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack190 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %202, i32 0, i32 26
  %stack191 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack190, i32 0, i32 0
  %top192 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack191, i32 0, i32 2
  %203 = load %struct.ref_s*, %struct.ref_s** %top192, align 8, !tbaa !21
  %cmp193 = icmp ugt %struct.ref_s* %add.ptr189, %203
  br i1 %cmp193, label %if.then.195, label %if.else.199

if.then.195:                                      ; preds = %do.body.188
  %204 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack196 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %204, i32 0, i32 26
  %stack197 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack196, i32 0, i32 0
  %requested198 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack197, i32 0, i32 7
  store i32 2, i32* %requested198, align 4, !tbaa !22
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.else.199:                                      ; preds = %do.body.188
  %205 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %206 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack200 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %206, i32 0, i32 26
  %stack201 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack200, i32 0, i32 0
  %p202 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack201, i32 0, i32 0
  store %struct.ref_s* %205, %struct.ref_s** %p202, align 8, !tbaa !5
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.199
  br label %do.cond.204

do.cond.204:                                      ; preds = %if.end.203
  br label %do.end.205

do.end.205:                                       ; preds = %do.cond.204
  %207 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr206 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %207, i64 -1
  %208 = bitcast %struct.ref_s* %add.ptr206 to i8*
  %209 = bitcast %struct.ref_s* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* %209, i64 16, i32 8, i1 false), !tbaa.struct !36
  %210 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %210, i32 0, i32 1
  %boolval208 = bitcast %union.v* %value207 to i16*
  store i16 1, i16* %boolval208, align 2, !tbaa !23
  %211 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %211, i32 0, i32 0
  %type_attrs210 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas209, i32 0, i32 0
  store i16 256, i16* %type_attrs210, align 2, !tbaa !24
  %212 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %212, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

cleanup.211:                                      ; preds = %do.end.205, %if.then.195, %cleanup, %if.then.23, %do.end, %if.then.4
  %213 = bitcast i8** %string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast %struct.ref_s* %array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %215) #1
  %216 = bitcast %struct.fontenum_s** %results to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast %struct.fontenum_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i8** %fontname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i8** %enum_state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @gp_enumerate_fonts_init(%struct.gs_memory_s*) #2

declare i32 @gp_enumerate_fonts_next(i8*, i8**, i8**) #2

declare void @gp_enumerate_fonts_free(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

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
!20 = !{!6, !2, i64 8}
!21 = !{!6, !2, i64 640}
!22 = !{!6, !9, i64 688}
!23 = !{!12, !12, i64 0}
!24 = !{!10, !12, i64 0}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!30, !2, i64 0}
!30 = !{!"fontenum_s", !2, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!30, !2, i64 8}
!32 = !{!30, !2, i64 16}
!33 = !{!7, !9, i64 48}
!34 = !{!26, !2, i64 136}
!35 = !{!10, !9, i64 4}
!36 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 4, !19, i64 8, i64 8, !37, i64 8, i64 2, !23, i64 8, i64 4, !38, i64 8, i64 8, !37, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !37}
!37 = !{!13, !13, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !3, i64 0}
!40 = !{!26, !2, i64 24}
