; ModuleID = './zmisc3.bc'
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
%struct.ref2_s = type { %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cliprestore\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0clipsave\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"2.eqproc\00", align 1
@zmisc3_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcliprestore }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclipsave }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zeqproc }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @zcliprestore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !5
  %call = call i32 @gs_cliprestore(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zclipsave(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !5
  %call = call i32 @gs_clipsave(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zeqproc(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %stack1 = alloca [13 x %struct.ref2_s], align 16
  %top = alloca %struct.ref2_s*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [13 x %struct.ref2_s]* %stack1 to i8*
  call void @llvm.lifetime.start(i64 416, i8* %3) #2
  %4 = bitcast %struct.ref2_s** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %arraydecay = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i32 0
  store %struct.ref2_s* %arraydecay, %struct.ref2_s** %top, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %arrayidx = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc1 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc1, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* %add.ptr, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc13 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx2, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1024, i16* %type_attrs, align 2, !tbaa !20
  %arrayidx4 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc15 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx4, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  store i32 1, i32* %rsize, align 4, !tbaa !21
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc2 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx7, i32 0, i32 1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc2, i32 0, i32 1
  %refs9 = bitcast %union.v* %value8 to %struct.ref_s**
  store %struct.ref_s* %6, %struct.ref_s** %refs9, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc211 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx10, i32 0, i32 1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc211, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 1024, i16* %type_attrs13, align 2, !tbaa !20
  %arrayidx14 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i64 0
  %proc215 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx14, i32 0, i32 1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc215, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  store i32 1, i32* %rsize17, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %7 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc118 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %8, i32 0, i32 0
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc118, i32 0, i32 0
  %rsize20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  %9 = load i32, i32* %rsize20, align 4, !tbaa !21
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.cond
  %10 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i32 0
  %cmp22 = icmp eq %struct.ref2_s* %10, %arraydecay21
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 1
  %boolval = bitcast %union.v* %value25 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  store i16 256, i16* %type_attrs28, align 2, !tbaa !20
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack30 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !19
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %p31, align 8, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %15, i32 -1
  store %struct.ref2_s* %incdec.ptr, %struct.ref2_s** %top, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %for.cond
  %16 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc134 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %16, i32 0, i32 0
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc134, i32 0, i32 0
  %rsize36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %17 = load i32, i32* %rsize36, align 4, !tbaa !21
  %sub = sub i32 %17, 1
  %conv = zext i32 %sub to i64
  store i64 %conv, i64* %i, align 8, !tbaa !23
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc137 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %21, i32 0, i32 0
  %22 = load i64, i64* %i, align 8, !tbaa !23
  %23 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %23, i64 1
  %proc139 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx38, i32 0, i32 0
  %call = call i32 @array_get(%struct.gs_memory_s* %20, %struct.ref_s* %proc137, i64 %22, %struct.ref_s* %proc139) #3
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current41, align 8, !tbaa !24
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %27 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc242 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %27, i32 0, i32 1
  %28 = load i64, i64* %i, align 8, !tbaa !23
  %29 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %29, i64 1
  %proc244 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arrayidx43, i32 0, i32 1
  %call45 = call i32 @array_get(%struct.gs_memory_s* %26, %struct.ref_s* %proc242, i64 %28, %struct.ref_s* %proc244) #3
  %30 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc146 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %30, i32 0, i32 0
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc146, i32 0, i32 0
  %rsize48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 2
  %31 = load i32, i32* %rsize48, align 4, !tbaa !21
  %sub49 = sub i32 %31, 1
  store i32 %sub49, i32* %rsize48, align 4, !tbaa !21
  %32 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %32, i32 1
  store %struct.ref2_s* %incdec.ptr50, %struct.ref2_s** %top, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current52 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory51, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current52, align 8, !tbaa !24
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %36 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc153 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %36, i32 0, i32 0
  %37 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc254 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %37, i32 0, i32 1
  %call55 = call i32 @obj_eq(%struct.gs_memory_s* %35, %struct.ref_s* %proc153, %struct.ref_s* %proc254) #3
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.then.56, label %if.end.86

if.then.56:                                       ; preds = %if.end.33
  %38 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc157 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %38, i32 0, i32 0
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc157, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  %39 = bitcast i16* %type_attrs59 to i8*
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx60, align 1, !tbaa !25
  %conv61 = zext i8 %40 to i32
  %41 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc262 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %41, i32 0, i32 1
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc262, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  %42 = bitcast i16* %type_attrs64 to i8*
  %arrayidx65 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx65, align 1, !tbaa !25
  %conv66 = zext i8 %43 to i32
  %cmp67 = icmp ne i32 %conv61, %conv66
  br i1 %cmp67, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.then.56
  %44 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc169 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %44, i32 0, i32 0
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc169, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  %45 = bitcast i16* %type_attrs71 to i8*
  %arrayidx72 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx72, align 1, !tbaa !25
  %conv73 = zext i8 %46 to i32
  %cmp74 = icmp eq i32 %conv73, 13
  br i1 %cmp74, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc276 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %47, i32 0, i32 1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc276, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  %48 = bitcast i16* %type_attrs78 to i8*
  %arrayidx79 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx79, align 1, !tbaa !25
  %conv80 = zext i8 %49 to i32
  %cmp81 = icmp eq i32 %conv80, 13
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %lor.lhs.false, %if.then.56
  %50 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %50, i32 -1
  store %struct.ref2_s* %incdec.ptr85, %struct.ref2_s** %top, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %if.end.33
  %51 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc187 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %51, i32 0, i32 0
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc187, i32 0, i32 0
  %type_attrs89 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 0
  %52 = load i16, i16* %type_attrs89, align 2, !tbaa !20
  %conv90 = zext i16 %52 to i32
  %and = and i32 %conv90, 15360
  %cmp91 = icmp eq i32 %and, 1024
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.116

land.lhs.true.93:                                 ; preds = %if.end.86
  %53 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc294 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %53, i32 0, i32 1
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc294, i32 0, i32 0
  %type_attrs96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 0
  %54 = load i16, i16* %type_attrs96, align 2, !tbaa !20
  %conv97 = zext i16 %54 to i32
  %and98 = and i32 %conv97, 15360
  %cmp99 = icmp eq i32 %and98, 1024
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.116

land.lhs.true.101:                                ; preds = %land.lhs.true.93
  %55 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc1102 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %55, i32 0, i32 0
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc1102, i32 0, i32 0
  %rsize104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 2
  %56 = load i32, i32* %rsize104, align 4, !tbaa !21
  %57 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %proc2105 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %57, i32 0, i32 1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc2105, i32 0, i32 0
  %rsize107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 2
  %58 = load i32, i32* %rsize107, align 4, !tbaa !21
  %cmp108 = icmp eq i32 %56, %58
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.116

land.lhs.true.110:                                ; preds = %land.lhs.true.101
  %59 = load %struct.ref2_s*, %struct.ref2_s** %top, align 8, !tbaa !1
  %arraydecay111 = getelementptr inbounds [13 x %struct.ref2_s], [13 x %struct.ref2_s]* %stack1, i32 0, i32 0
  %add.ptr112 = getelementptr inbounds %struct.ref2_s, %struct.ref2_s* %arraydecay111, i64 11
  %cmp113 = icmp ult %struct.ref2_s* %59, %add.ptr112
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.110
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %land.lhs.true.110, %land.lhs.true.101, %land.lhs.true.93, %if.end.86
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.115, %if.end.84, %if.then.83, %if.end, %if.then.23
  %60 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.127 [
    i32 3, label %for.cond
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %value118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr117, i32 0, i32 1
  %boolval119 = bitcast %union.v* %value118 to i16*
  store i16 0, i16* %boolval119, align 2, !tbaa !22
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %tas121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr120, i32 0, i32 0
  %type_attrs122 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas121, i32 0, i32 0
  store i16 256, i16* %type_attrs122, align 2, !tbaa !20
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack124 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack123, i32 0, i32 0
  %p125 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack124, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p125, align 8, !tbaa !19
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -1
  store %struct.ref_s* %add.ptr126, %struct.ref_s** %p125, align 8, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %for.end, %cleanup
  %65 = bitcast %struct.ref2_s** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast [13 x %struct.ref2_s]* %stack1 to i8*
  call void @llvm.lifetime.end(i64 416, i8* %66) #2
  %67 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i32 @gs_cliprestore(%struct.gs_state_s*) #1

declare i32 @gs_clipsave(%struct.gs_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #1

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
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
!19 = !{!6, !2, i64 624}
!20 = !{!10, !12, i64 0}
!21 = !{!10, !9, i64 4}
!22 = !{!12, !12, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!6, !2, i64 8}
!25 = !{!3, !3, i64 0}
