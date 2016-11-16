; ModuleID = './zalg.bc'
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

@.str = private unnamed_addr constant [7 x i8] c"2.sort\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"1%zsort_continue\00", align 1
@zalg_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsort }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsort_continue }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c".sort(H2-a)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".sort(H2-b)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".sort(H7)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".sort(H8)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zsort(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %N = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %N to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %8 = bitcast i16* %type_attrs5 to i8*
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1, !tbaa !19
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 6
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %11 = load i16, i16* %type_attrs12, align 2, !tbaa !20
  %conv13 = zext i16 %11 to i32
  %and = and i32 %conv13, 16144
  %cmp14 = icmp eq i32 %and, 1040
  br i1 %cmp14, label %if.end.25, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %13 = bitcast i16* %type_attrs19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx20, align 1, !tbaa !19
  %conv21 = zext i8 %14 to i32
  %cmp22 = icmp eq i32 %conv21, 4
  br i1 %cmp22, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.16
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx24) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end.25:                                        ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 0
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %17 = load i16, i16* %type_attrs28, align 2, !tbaa !20
  %conv29 = zext i16 %17 to i32
  %and30 = and i32 %conv29, 128
  %tobool = icmp ne i32 %and30, 0
  br i1 %tobool, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.end.25
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 0
  %call33 = call i32 @check_type_failed(%struct.ref_s* %arrayidx32) #3
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end.34:                                        ; preds = %if.end.25
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 0
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx35, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %20 = load i16, i16* %type_attrs37, align 2, !tbaa !20
  %conv38 = zext i16 %20 to i32
  %cmp39 = icmp sge i32 %conv38, 5376
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.34
  br label %cond.end.48

cond.false.42:                                    ; preds = %if.end.34
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 0
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %22 = bitcast i16* %type_attrs45 to i8*
  %arrayidx46 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx46, align 1, !tbaa !19
  %conv47 = zext i8 %23 to i32
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.42, %cond.true.41
  %cond49 = phi i32 [ 15, %cond.true.41 ], [ %conv47, %cond.false.42 ]
  switch i32 %cond49, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 18, label %sw.bb
    i32 13, label %sw.bb.58
    i32 15, label %sw.bb.58
    i32 20, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %cond.end.48, %cond.end.48, %cond.end.48, %cond.end.48
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 0
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx50, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %25 = load i16, i16* %type_attrs52, align 2, !tbaa !20
  %conv53 = zext i16 %25 to i32
  %and54 = and i32 %conv53, 64
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %sw.bb
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end.57:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.58:                                         ; preds = %cond.end.48, %cond.end.48, %cond.end.48
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.48
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 0
  %call60 = call i32 @check_type_failed(%struct.ref_s* %arrayidx59) #3
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

sw.epilog:                                        ; preds = %sw.bb.58, %if.end.57
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx61, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 2
  %28 = load i32, i32* %rsize, align 4, !tbaa !21
  store i32 %28, i32* %N, align 4, !tbaa !22
  %29 = load i32, i32* %N, align 4, !tbaa !22
  %cmp63 = icmp ule i32 %29, 1
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %sw.epilog
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack67 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack66, i32 0, i32 0
  %p68 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack67, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p68, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p68, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.else:                                          ; preds = %sw.epilog
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack69 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack69, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p70, align 8, !tbaa !23
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack72 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack71, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 2
  %35 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !24
  %add.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -11
  %cmp74 = icmp ugt %struct.ref_s* %33, %add.ptr73
  br i1 %cmp74, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %if.else
  %36 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack78 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack77, i32 0, i32 0
  %call79 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack78, i32 11) #3
  store i32 %call79, i32* %es_code_, align 4, !tbaa !22
  %38 = load i32, i32* %es_code_, align 4, !tbaa !22
  %cmp80 = icmp slt i32 %38, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.76
  %39 = load i32, i32* %es_code_, align 4, !tbaa !22
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.then.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.82
  %40 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.204 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.84

if.end.84:                                        ; preds = %cleanup.cont, %if.else
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack86 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack85, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p87, align 8, !tbaa !23
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p87, align 8, !tbaa !23
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !23
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zsort_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack92 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack91, i32 0, i32 0
  %p93 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack92, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p93, align 8, !tbaa !23
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 0
  store i16 3712, i16* %type_attrs95, align 2, !tbaa !20
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack96 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack97 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack96, i32 0, i32 0
  %p98 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack97, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p98, align 8, !tbaa !23
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 2
  store i32 0, i32* %rsize100, align 4, !tbaa !21
  %49 = load i32, i32* %N, align 4, !tbaa !22
  %div = udiv i32 %49, 2
  %add = add i32 %div, 1
  %conv101 = zext i32 %add to i64
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack103 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack102, i32 0, i32 0
  %p104 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack103, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p104, align 8, !tbaa !23
  %arrayidx105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 1
  %value106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx105, i32 0, i32 1
  %intval = bitcast %union.v* %value106 to i64*
  store i64 %conv101, i64* %intval, align 8, !tbaa !25
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 25
  %stack108 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack107, i32 0, i32 0
  %p109 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack108, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p109, align 8, !tbaa !23
  %arrayidx110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx110, i32 0, i32 0
  %type_attrs112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 0
  store i16 2816, i16* %type_attrs112, align 2, !tbaa !20
  %54 = load i32, i32* %N, align 4, !tbaa !22
  %conv113 = zext i32 %54 to i64
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 25
  %stack115 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack114, i32 0, i32 0
  %p116 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %p116, align 8, !tbaa !23
  %arrayidx117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 2
  %value118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx117, i32 0, i32 1
  %intval119 = bitcast %union.v* %value118 to i64*
  store i64 %conv113, i64* %intval119, align 8, !tbaa !25
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack120 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 25
  %stack121 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack120, i32 0, i32 0
  %p122 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack121, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p122, align 8, !tbaa !23
  %arrayidx123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 2
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx123, i32 0, i32 0
  %type_attrs125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 0
  store i16 2816, i16* %type_attrs125, align 2, !tbaa !20
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack127 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack126, i32 0, i32 0
  %p128 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack127, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p128, align 8, !tbaa !23
  %arrayidx129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 3
  %value130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx129, i32 0, i32 1
  %intval131 = bitcast %union.v* %value130 to i64*
  store i64 0, i64* %intval131, align 8, !tbaa !25
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 25
  %stack133 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack132, i32 0, i32 0
  %p134 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack133, i32 0, i32 0
  %62 = load %struct.ref_s*, %struct.ref_s** %p134, align 8, !tbaa !23
  %arrayidx135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 3
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx135, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  store i16 2816, i16* %type_attrs137, align 2, !tbaa !20
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack139 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack138, i32 0, i32 0
  %p140 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack139, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p140, align 8, !tbaa !23
  %arrayidx141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 4
  %value142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx141, i32 0, i32 1
  %intval143 = bitcast %union.v* %value142 to i64*
  store i64 0, i64* %intval143, align 8, !tbaa !25
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 25
  %stack145 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack144, i32 0, i32 0
  %p146 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack145, i32 0, i32 0
  %66 = load %struct.ref_s*, %struct.ref_s** %p146, align 8, !tbaa !23
  %arrayidx147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 4
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx147, i32 0, i32 0
  %type_attrs149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 0
  store i16 2816, i16* %type_attrs149, align 2, !tbaa !20
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack150 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 25
  %stack151 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack150, i32 0, i32 0
  %p152 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack151, i32 0, i32 0
  %68 = load %struct.ref_s*, %struct.ref_s** %p152, align 8, !tbaa !23
  %arrayidx153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 5
  %tas154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx153, i32 0, i32 0
  %type_attrs155 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas154, i32 0, i32 0
  store i16 3584, i16* %type_attrs155, align 2, !tbaa !20
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 25
  %stack157 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack156, i32 0, i32 0
  %p158 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack157, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p158, align 8, !tbaa !23
  %arrayidx159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 6
  %value160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx159, i32 0, i32 1
  %intval161 = bitcast %union.v* %value160 to i64*
  store i64 2, i64* %intval161, align 8, !tbaa !25
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack162 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 25
  %stack163 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack162, i32 0, i32 0
  %p164 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack163, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p164, align 8, !tbaa !23
  %arrayidx165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 6
  %tas166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx165, i32 0, i32 0
  %type_attrs167 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas166, i32 0, i32 0
  store i16 2816, i16* %type_attrs167, align 2, !tbaa !20
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack168 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 25
  %stack169 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack168, i32 0, i32 0
  %p170 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack169, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p170, align 8, !tbaa !23
  %arrayidx171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 7
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 0
  %76 = bitcast %struct.ref_s* %arrayidx171 to i8*
  %77 = bitcast %struct.ref_s* %arrayidx172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 16, i32 8, i1 false), !tbaa.struct !26
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack173 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 25
  %stack174 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack173, i32 0, i32 0
  %p175 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack174, i32 0, i32 0
  %79 = load %struct.ref_s*, %struct.ref_s** %p175, align 8, !tbaa !23
  %arrayidx176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 8
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 -1
  %81 = bitcast %struct.ref_s* %arrayidx176 to i8*
  %82 = bitcast %struct.ref_s* %arrayidx177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false), !tbaa.struct !26
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack178 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack179 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack178, i32 0, i32 0
  %p180 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack179, i32 0, i32 0
  %84 = load %struct.ref_s*, %struct.ref_s** %p180, align 8, !tbaa !23
  %add.ptr181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 8
  store %struct.ref_s* %add.ptr181, %struct.ref_s** %p180, align 8, !tbaa !23
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack182 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 25
  %stack183 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack182, i32 0, i32 0
  %p184 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack183, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p184, align 8, !tbaa !23
  %arrayidx185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 1
  %value186 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx185, i32 0, i32 1
  %opproc187 = bitcast %union.v* %value186 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zsort_continue, i32 (%struct.gs_context_state_s*)** %opproc187, align 8, !tbaa !1
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack188 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 25
  %stack189 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack188, i32 0, i32 0
  %p190 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack189, i32 0, i32 0
  %88 = load %struct.ref_s*, %struct.ref_s** %p190, align 8, !tbaa !23
  %arrayidx191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 1
  %tas192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx191, i32 0, i32 0
  %type_attrs193 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas192, i32 0, i32 0
  store i16 3968, i16* %type_attrs193, align 2, !tbaa !20
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack194 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 25
  %stack195 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack194, i32 0, i32 0
  %p196 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack195, i32 0, i32 0
  %90 = load %struct.ref_s*, %struct.ref_s** %p196, align 8, !tbaa !23
  %arrayidx197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 1
  %tas198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx197, i32 0, i32 0
  %rsize199 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas198, i32 0, i32 2
  store i32 0, i32* %rsize199, align 4, !tbaa !21
  %91 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 0
  %tas201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx200, i32 0, i32 0
  %type_attrs202 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas201, i32 0, i32 0
  store i16 3584, i16* %type_attrs202, align 2, !tbaa !20
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call203 = call i32 @zsort_continue(%struct.gs_context_state_s* %92) #3
  store i32 %call203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

cleanup.204:                                      ; preds = %if.end.84, %cleanup, %if.then.65, %sw.default, %if.then.56, %if.then.31, %cond.end, %if.then
  %93 = bitcast i32* %N to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @zsort_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %status = alloca %struct.ref_s*, align 8
  %Rn = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %status to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %Rn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -8
  store %struct.ref_s* %add.ptr, %struct.ref_s** %status, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %Rn, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 6
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value5 to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !25
  switch i64 %10, label %sw.default [
    i64 2, label %sw.bb
    i64 5, label %sw.bb.155
    i64 6, label %sw.bb.200
  ]

sw.bb:                                            ; preds = %entry
  br label %H2

H2:                                               ; preds = %cond.end.279, %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %12 = load i64, i64* %intval8, align 8, !tbaa !25
  %cmp = icmp sgt i64 %12, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %H2
  %13 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %14 = load i64, i64* %intval11, align 8, !tbaa !25
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %intval11, align 8, !tbaa !25
  %15 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 5
  %16 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  %17 = load i64, i64* %intval15, align 8, !tbaa !25
  %18 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %17
  %19 = bitcast %struct.ref_s* %arrayidx12 to i8*
  %20 = bitcast %struct.ref_s* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %if.end.93

if.else:                                          ; preds = %H2
  %21 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 5
  %22 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 2
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 1
  %intval20 = bitcast %union.v* %value19 to i64*
  %23 = load i64, i64* %intval20, align 8, !tbaa !25
  %24 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 %23
  %25 = bitcast %struct.ref_s* %arrayidx17 to i8*
  %26 = bitcast %struct.ref_s* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !26
  %27 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 1
  %intval24 = bitcast %union.v* %value23 to i64*
  %28 = load i64, i64* %intval24, align 8, !tbaa !25
  %29 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 %28
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %30 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %30 to i32
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %32 = load i32, i32* %test_mask, align 4, !tbaa !30
  %and = and i32 %conv, %32
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %34 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 8
  %35 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 2
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx30, i32 0, i32 1
  %intval32 = bitcast %union.v* %value31 to i64*
  %36 = load i64, i64* %intval32, align 8, !tbaa !25
  %37 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 %36
  %38 = bitcast %struct.ref_s* %arrayidx33 to i16*
  %call = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory28, %struct.ref_s* %arrayidx29, i16* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %39 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 2
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  %40 = load i64, i64* %intval36, align 8, !tbaa !25
  %41 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %40
  %42 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 1
  %43 = bitcast %struct.ref_s* %arrayidx37 to i8*
  %44 = bitcast %struct.ref_s* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false), !tbaa.struct !26
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 5
  %46 = load i32, i32* %new_mask, align 4, !tbaa !31
  %47 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 2
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %intval42 = bitcast %union.v* %value41 to i64*
  %48 = load i64, i64* %intval42, align 8, !tbaa !25
  %49 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 %48
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %50 = load i16, i16* %type_attrs45, align 2, !tbaa !20
  %conv46 = zext i16 %50 to i32
  %or = or i32 %conv46, %46
  %conv47 = trunc i32 %or to i16
  store i16 %conv47, i16* %type_attrs45, align 2, !tbaa !20
  %51 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 2
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %52 = load i64, i64* %intval50, align 8, !tbaa !25
  %dec51 = add nsw i64 %52, -1
  store i64 %dec51, i64* %intval50, align 8, !tbaa !25
  %53 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 2
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 1
  %intval54 = bitcast %union.v* %value53 to i64*
  %54 = load i64, i64* %intval54, align 8, !tbaa !25
  %cmp55 = icmp sle i64 %54, 1
  br i1 %cmp55, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %cond.end
  %55 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx58, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %56 = load i16, i16* %type_attrs60, align 2, !tbaa !20
  %conv61 = zext i16 %56 to i32
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 1
  %test_mask63 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory62, i32 0, i32 4
  %58 = load i32, i32* %test_mask63, align 4, !tbaa !30
  %and64 = and i32 %conv61, %58
  %cmp65 = icmp eq i32 %and64, 0
  br i1 %cmp65, label %cond.true.67, label %cond.false.72

cond.true.67:                                     ; preds = %if.then.57
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %60 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 8
  %61 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 1
  %62 = bitcast %struct.ref_s* %arrayidx70 to i16*
  %call71 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory68, %struct.ref_s* %arrayidx69, i16* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.then.57
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.67
  %cond74 = phi i32 [ %call71, %cond.true.67 ], [ 0, %cond.false.72 ]
  %63 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1
  %64 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 5
  %65 = bitcast %struct.ref_s* %arrayidx75 to i8*
  %66 = bitcast %struct.ref_s* %arrayidx76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false), !tbaa.struct !26
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %new_mask78 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory77, i32 0, i32 5
  %68 = load i32, i32* %new_mask78, align 4, !tbaa !31
  %69 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 1
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx79, i32 0, i32 0
  %type_attrs81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 0
  %70 = load i16, i16* %type_attrs81, align 2, !tbaa !20
  %conv82 = zext i16 %70 to i32
  %or83 = or i32 %conv82, %68
  %conv84 = trunc i32 %or83 to i16
  store i16 %conv84, i16* %type_attrs81, align 2, !tbaa !20
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 25
  %stack86 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack85, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p87, align 8, !tbaa !23
  %add.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -9
  store %struct.ref_s* %add.ptr88, %struct.ref_s** %p87, align 8, !tbaa !23
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 26
  %stack90 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack89, i32 0, i32 0
  %p91 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack90, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p91, align 8, !tbaa !5
  %add.ptr92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  store %struct.ref_s* %add.ptr92, %struct.ref_s** %p91, align 8, !tbaa !5
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %if.end.93

if.end.93:                                        ; preds = %if.end, %if.then
  %75 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 1
  %value95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx94, i32 0, i32 1
  %intval96 = bitcast %union.v* %value95 to i64*
  %76 = load i64, i64* %intval96, align 8, !tbaa !25
  %77 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 4
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx97, i32 0, i32 1
  %intval99 = bitcast %union.v* %value98 to i64*
  store i64 %76, i64* %intval99, align 8, !tbaa !25
  br label %H4

H4:                                               ; preds = %cond.end.236, %if.end.93
  %78 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 4
  %value101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx100, i32 0, i32 1
  %intval102 = bitcast %union.v* %value101 to i64*
  %79 = load i64, i64* %intval102, align 8, !tbaa !25
  %80 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 3
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx103, i32 0, i32 1
  %intval105 = bitcast %union.v* %value104 to i64*
  store i64 %79, i64* %intval105, align 8, !tbaa !25
  %81 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 4
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx106, i32 0, i32 1
  %intval108 = bitcast %union.v* %value107 to i64*
  %82 = load i64, i64* %intval108, align 8, !tbaa !25
  %shl = shl i64 %82, 1
  store i64 %shl, i64* %intval108, align 8, !tbaa !25
  %83 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 4
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx109, i32 0, i32 1
  %intval111 = bitcast %union.v* %value110 to i64*
  %84 = load i64, i64* %intval111, align 8, !tbaa !25
  %85 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 2
  %value113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx112, i32 0, i32 1
  %intval114 = bitcast %union.v* %value113 to i64*
  %86 = load i64, i64* %intval114, align 8, !tbaa !25
  %cmp115 = icmp sge i64 %84, %86
  br i1 %cmp115, label %if.then.117, label %if.else.128

if.then.117:                                      ; preds = %H4
  %87 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 4
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx118, i32 0, i32 1
  %intval120 = bitcast %union.v* %value119 to i64*
  %88 = load i64, i64* %intval120, align 8, !tbaa !25
  %89 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 2
  %value122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx121, i32 0, i32 1
  %intval123 = bitcast %union.v* %value122 to i64*
  %90 = load i64, i64* %intval123, align 8, !tbaa !25
  %cmp124 = icmp eq i64 %88, %90
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.then.117
  br label %H6

if.else.127:                                      ; preds = %if.then.117
  br label %H8

if.else.128:                                      ; preds = %H4
  %91 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 6
  %value130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx129, i32 0, i32 1
  %intval131 = bitcast %union.v* %value130 to i64*
  store i64 5, i64* %intval131, align 8, !tbaa !25
  br label %do.body

do.body:                                          ; preds = %if.else.128
  %92 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 1
  store %struct.ref_s* %add.ptr132, %struct.ref_s** %op, align 8, !tbaa !1
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack133 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 26
  %stack134 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack133, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack134, i32 0, i32 2
  %94 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !32
  %cmp135 = icmp ugt %struct.ref_s* %add.ptr132, %94
  br i1 %cmp135, label %if.then.137, label %if.else.140

if.then.137:                                      ; preds = %do.body
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 26
  %stack139 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack138, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack139, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !33
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.140:                                      ; preds = %do.body
  %96 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack141 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 26
  %stack142 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack141, i32 0, i32 0
  %p143 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack142, i32 0, i32 0
  store %struct.ref_s* %96, %struct.ref_s** %p143, align 8, !tbaa !5
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.140
  br label %do.cond

do.cond:                                          ; preds = %if.end.144
  br label %do.end

do.end:                                           ; preds = %do.cond
  %98 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 -1
  %99 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 4
  %value147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx146, i32 0, i32 1
  %intval148 = bitcast %union.v* %value147 to i64*
  %100 = load i64, i64* %intval148, align 8, !tbaa !25
  %101 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 %100
  %102 = bitcast %struct.ref_s* %arrayidx145 to i8*
  %103 = bitcast %struct.ref_s* %arrayidx149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false), !tbaa.struct !26
  %104 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 0
  %105 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 4
  %value152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx151, i32 0, i32 1
  %intval153 = bitcast %union.v* %value152 to i64*
  %106 = load i64, i64* %intval153, align 8, !tbaa !25
  %add = add nsw i64 %106, 1
  %107 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 %add
  %108 = bitcast %struct.ref_s* %arrayidx150 to i8*
  %109 = bitcast %struct.ref_s* %arrayidx154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.155:                                        ; preds = %entry
  %110 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 0
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx156, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  %111 = bitcast i16* %type_attrs158 to i8*
  %arrayidx159 = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i8, i8* %arrayidx159, align 1, !tbaa !19
  %conv160 = zext i8 %112 to i32
  %cmp161 = icmp eq i32 %conv160, 1
  br i1 %cmp161, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %sw.bb.155
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.164:                                       ; preds = %sw.bb.155
  %113 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i64 0
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx165, i32 0, i32 1
  %boolval = bitcast %union.v* %value166 to i16*
  %114 = load i16, i16* %boolval, align 2, !tbaa !27
  %tobool = icmp ne i16 %114, 0
  br i1 %tobool, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %if.end.164
  %115 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 4
  %value169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx168, i32 0, i32 1
  %intval170 = bitcast %union.v* %value169 to i64*
  %116 = load i64, i64* %intval170, align 8, !tbaa !25
  %inc = add nsw i64 %116, 1
  store i64 %inc, i64* %intval170, align 8, !tbaa !25
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %if.end.164
  br label %H6

H6:                                               ; preds = %if.end.171, %if.then.126
  %117 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i64 6
  %value173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx172, i32 0, i32 1
  %intval174 = bitcast %union.v* %value173 to i64*
  store i64 6, i64* %intval174, align 8, !tbaa !25
  br label %do.body.175

do.body.175:                                      ; preds = %H6
  %118 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i64 1
  store %struct.ref_s* %add.ptr176, %struct.ref_s** %op, align 8, !tbaa !1
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack177 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 26
  %stack178 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack177, i32 0, i32 0
  %top179 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack178, i32 0, i32 2
  %120 = load %struct.ref_s*, %struct.ref_s** %top179, align 8, !tbaa !32
  %cmp180 = icmp ugt %struct.ref_s* %add.ptr176, %120
  br i1 %cmp180, label %if.then.182, label %if.else.186

if.then.182:                                      ; preds = %do.body.175
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack183 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack184 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack183, i32 0, i32 0
  %requested185 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack184, i32 0, i32 7
  store i32 1, i32* %requested185, align 4, !tbaa !33
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.186:                                      ; preds = %do.body.175
  %122 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack187 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 26
  %stack188 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack187, i32 0, i32 0
  %p189 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack188, i32 0, i32 0
  store %struct.ref_s* %122, %struct.ref_s** %p189, align 8, !tbaa !5
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.186
  br label %do.cond.191

do.cond.191:                                      ; preds = %if.end.190
  br label %do.end.192

do.end.192:                                       ; preds = %do.cond.191
  %124 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i64 -1
  %125 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i64 5
  %126 = bitcast %struct.ref_s* %arrayidx193 to i8*
  %127 = bitcast %struct.ref_s* %arrayidx194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 16, i32 8, i1 false), !tbaa.struct !26
  %128 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i64 0
  %129 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i64 4
  %value197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx196, i32 0, i32 1
  %intval198 = bitcast %union.v* %value197 to i64*
  %130 = load i64, i64* %intval198, align 8, !tbaa !25
  %131 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 %130
  %132 = bitcast %struct.ref_s* %arrayidx195 to i8*
  %133 = bitcast %struct.ref_s* %arrayidx199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.200:                                        ; preds = %entry
  %134 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i64 0
  %tas202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx201, i32 0, i32 0
  %type_attrs203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas202, i32 0, i32 0
  %135 = bitcast i16* %type_attrs203 to i8*
  %arrayidx204 = getelementptr inbounds i8, i8* %135, i64 1
  %136 = load i8, i8* %arrayidx204, align 1, !tbaa !19
  %conv205 = zext i8 %136 to i32
  %cmp206 = icmp eq i32 %conv205, 1
  br i1 %cmp206, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %sw.bb.200
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.209:                                       ; preds = %sw.bb.200
  %137 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i64 0
  %value211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx210, i32 0, i32 1
  %boolval212 = bitcast %union.v* %value211 to i16*
  %138 = load i16, i16* %boolval212, align 2, !tbaa !27
  %tobool213 = icmp ne i16 %138, 0
  br i1 %tobool213, label %if.then.214, label %if.else.257

if.then.214:                                      ; preds = %if.end.209
  %139 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 3
  %value216 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx215, i32 0, i32 1
  %intval217 = bitcast %union.v* %value216 to i64*
  %140 = load i64, i64* %intval217, align 8, !tbaa !25
  %141 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i64 %140
  %tas219 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx218, i32 0, i32 0
  %type_attrs220 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas219, i32 0, i32 0
  %142 = load i16, i16* %type_attrs220, align 2, !tbaa !20
  %conv221 = zext i16 %142 to i32
  %143 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %143, i32 0, i32 1
  %test_mask223 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory222, i32 0, i32 4
  %144 = load i32, i32* %test_mask223, align 4, !tbaa !30
  %and224 = and i32 %conv221, %144
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %cond.true.227, label %cond.false.235

cond.true.227:                                    ; preds = %if.then.214
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %145, i32 0, i32 1
  %146 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i64 8
  %147 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i64 3
  %value231 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx230, i32 0, i32 1
  %intval232 = bitcast %union.v* %value231 to i64*
  %148 = load i64, i64* %intval232, align 8, !tbaa !25
  %149 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i64 %148
  %150 = bitcast %struct.ref_s* %arrayidx233 to i16*
  %call234 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory228, %struct.ref_s* %arrayidx229, i16* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %cond.end.236

cond.false.235:                                   ; preds = %if.then.214
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.227
  %cond237 = phi i32 [ %call234, %cond.true.227 ], [ 0, %cond.false.235 ]
  %151 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i64 3
  %value239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx238, i32 0, i32 1
  %intval240 = bitcast %union.v* %value239 to i64*
  %152 = load i64, i64* %intval240, align 8, !tbaa !25
  %153 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i64 %152
  %154 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i64 4
  %value243 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx242, i32 0, i32 1
  %intval244 = bitcast %union.v* %value243 to i64*
  %155 = load i64, i64* %intval244, align 8, !tbaa !25
  %156 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %156, i64 %155
  %157 = bitcast %struct.ref_s* %arrayidx241 to i8*
  %158 = bitcast %struct.ref_s* %arrayidx245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 16, i32 8, i1 false), !tbaa.struct !26
  %159 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory246 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %159, i32 0, i32 1
  %new_mask247 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory246, i32 0, i32 5
  %160 = load i32, i32* %new_mask247, align 4, !tbaa !31
  %161 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i64 3
  %value249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx248, i32 0, i32 1
  %intval250 = bitcast %union.v* %value249 to i64*
  %162 = load i64, i64* %intval250, align 8, !tbaa !25
  %163 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i64 %162
  %tas252 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx251, i32 0, i32 0
  %type_attrs253 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas252, i32 0, i32 0
  %164 = load i16, i16* %type_attrs253, align 2, !tbaa !20
  %conv254 = zext i16 %164 to i32
  %or255 = or i32 %conv254, %160
  %conv256 = trunc i32 %or255 to i16
  store i16 %conv256, i16* %type_attrs253, align 2, !tbaa !20
  br label %H4

if.else.257:                                      ; preds = %if.end.209
  br label %H8

H8:                                               ; preds = %if.else.257, %if.else.127
  %165 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i64 3
  %value259 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx258, i32 0, i32 1
  %intval260 = bitcast %union.v* %value259 to i64*
  %166 = load i64, i64* %intval260, align 8, !tbaa !25
  %167 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i64 %166
  %tas262 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx261, i32 0, i32 0
  %type_attrs263 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas262, i32 0, i32 0
  %168 = load i16, i16* %type_attrs263, align 2, !tbaa !20
  %conv264 = zext i16 %168 to i32
  %169 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory265 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %169, i32 0, i32 1
  %test_mask266 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory265, i32 0, i32 4
  %170 = load i32, i32* %test_mask266, align 4, !tbaa !30
  %and267 = and i32 %conv264, %170
  %cmp268 = icmp eq i32 %and267, 0
  br i1 %cmp268, label %cond.true.270, label %cond.false.278

cond.true.270:                                    ; preds = %H8
  %171 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory271 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %171, i32 0, i32 1
  %172 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i64 8
  %173 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %173, i64 3
  %value274 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx273, i32 0, i32 1
  %intval275 = bitcast %union.v* %value274 to i64*
  %174 = load i64, i64* %intval275, align 8, !tbaa !25
  %175 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i64 %174
  %176 = bitcast %struct.ref_s* %arrayidx276 to i16*
  %call277 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory271, %struct.ref_s* %arrayidx272, i16* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %cond.end.279

cond.false.278:                                   ; preds = %H8
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.278, %cond.true.270
  %cond280 = phi i32 [ %call277, %cond.true.270 ], [ 0, %cond.false.278 ]
  %177 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i64 3
  %value282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx281, i32 0, i32 1
  %intval283 = bitcast %union.v* %value282 to i64*
  %178 = load i64, i64* %intval283, align 8, !tbaa !25
  %179 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %179, i64 %178
  %180 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i64 5
  %181 = bitcast %struct.ref_s* %arrayidx284 to i8*
  %182 = bitcast %struct.ref_s* %arrayidx285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 16, i32 8, i1 false), !tbaa.struct !26
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory286 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %183, i32 0, i32 1
  %new_mask287 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory286, i32 0, i32 5
  %184 = load i32, i32* %new_mask287, align 4, !tbaa !31
  %185 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i64 3
  %value289 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx288, i32 0, i32 1
  %intval290 = bitcast %union.v* %value289 to i64*
  %186 = load i64, i64* %intval290, align 8, !tbaa !25
  %187 = load %struct.ref_s*, %struct.ref_s** %Rn, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i64 %186
  %tas292 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx291, i32 0, i32 0
  %type_attrs293 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas292, i32 0, i32 0
  %188 = load i16, i16* %type_attrs293, align 2, !tbaa !20
  %conv294 = zext i16 %188 to i32
  %or295 = or i32 %conv294, %184
  %conv296 = trunc i32 %or295 to i16
  store i16 %conv296, i16* %type_attrs293, align 2, !tbaa !20
  br label %H2

sw.default:                                       ; preds = %entry
  %189 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack297 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %189, i32 0, i32 26
  %stack298 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack297, i32 0, i32 0
  %p299 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack298, i32 0, i32 0
  %190 = load %struct.ref_s*, %struct.ref_s** %p299, align 8, !tbaa !5
  %add.ptr300 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %190, i64 -1
  store %struct.ref_s* %add.ptr300, %struct.ref_s** %p299, align 8, !tbaa !5
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.192, %do.end
  %191 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack301 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %191, i32 0, i32 25
  %stack302 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack301, i32 0, i32 0
  %p303 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack302, i32 0, i32 0
  %192 = load %struct.ref_s*, %struct.ref_s** %p303, align 8, !tbaa !23
  %add.ptr304 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i64 2
  store %struct.ref_s* %add.ptr304, %struct.ref_s** %p303, align 8, !tbaa !23
  %193 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack305 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %193, i32 0, i32 25
  %stack306 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack305, i32 0, i32 0
  %p307 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack306, i32 0, i32 0
  %194 = load %struct.ref_s*, %struct.ref_s** %p307, align 8, !tbaa !23
  %195 = load %struct.ref_s*, %struct.ref_s** %status, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %195, i64 7
  %196 = bitcast %struct.ref_s* %194 to i8*
  %197 = bitcast %struct.ref_s* %arrayidx308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* %197, i64 16, i32 8, i1 false), !tbaa.struct !26
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.208, %if.then.182, %if.then.163, %if.then.137, %cond.end.73
  %198 = bitcast %struct.ref_s** %Rn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.ref_s** %status to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = load i32, i32* %retval
  ret i32 %201
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zsort_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

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
!19 = !{!3, !3, i64 0}
!20 = !{!10, !12, i64 0}
!21 = !{!10, !9, i64 4}
!22 = !{!9, !9, i64 0}
!23 = !{!6, !2, i64 520}
!24 = !{!6, !2, i64 536}
!25 = !{!13, !13, i64 0}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 4, i64 4, !22, i64 8, i64 8, !25, i64 8, i64 2, !27, i64 8, i64 4, !28, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25}
!27 = !{!12, !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!7, !9, i64 64}
!31 = !{!7, !9, i64 68}
!32 = !{!6, !2, i64 640}
!33 = !{!6, !9, i64 688}
