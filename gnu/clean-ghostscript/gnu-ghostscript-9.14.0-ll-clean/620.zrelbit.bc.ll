; ModuleID = './zrelbit.bc'
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

@.str = private unnamed_addr constant [5 x i8] c"2and\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2bitshift\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2eq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2ge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2gt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2le\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2lt\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"2.max\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2.min\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2ne\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1not\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2or\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2xor\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"2.identeq\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"2.identne\00", align 1
@zrelbit_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zand }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbitshift }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zeq }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zge }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgt }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zle }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlt }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmax }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmin }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zne }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znot }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zxor }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zidenteq }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zidentne }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define i32 @zeq(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = load i16, i16* %type_attrs3, align 2, !tbaa !20
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 1
  %10 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !21
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  %cmp = icmp ult %struct.ref_s* %8, %add.ptr7
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.default
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %do.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %12 = bitcast i16* %type_attrs12 to i8*
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx13, align 1, !tbaa !19
  %conv14 = zext i8 %13 to i32
  switch i32 %conv14, label %sw.default.26 [
    i32 18, label %sw.bb.15
  ]

sw.bb.15:                                         ; preds = %sw.epilog
  br label %do.body.16

do.body.16:                                       ; preds = %sw.bb.15
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %15 = load i16, i16* %type_attrs18, align 2, !tbaa !20
  %conv19 = zext i16 %15 to i32
  %and20 = and i32 %conv19, 32
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.16
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %do.body.16
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %sw.epilog.30

sw.default.26:                                    ; preds = %sw.epilog
  br label %do.body.27

do.body.27:                                       ; preds = %sw.default.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %do.end.29, %do.end.25
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_eq(%struct.gs_memory_s* %18, %struct.ref_s* %add.ptr31, %struct.ref_s* %20) #3
  %tobool32 = icmp ne i32 %call, 0
  %cond = select i1 %tobool32, i32 1, i32 0
  %conv33 = trunc i32 %cond to i16
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv33, i16* %boolval, align 2, !tbaa !23
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  store i16 256, i16* %type_attrs37, align 2, !tbaa !20
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p40, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.30, %if.then.22, %if.then.9, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zne(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zeq(%struct.gs_context_state_s* %1) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %2 = load i32, i32* %code, align 4, !tbaa !24
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %5 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv = zext i16 %5 to i32
  %xor = xor i32 %conv, 1
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, i16* %boolval, align 2, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @zge(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @obj_le(%struct.ref_s* %4, %struct.ref_s* %add.ptr) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %conv = trunc i32 %8 to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !20
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @obj_le(%struct.ref_s* %op1, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op1.addr = alloca %struct.ref_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op1, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default.68 [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.17
    i32 18, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %4 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1, !tbaa !19
  %conv4 = zext i8 %5 to i32
  switch i32 %conv4, label %sw.default [
    i32 11, label %sw.bb.5
    i32 16, label %sw.bb.9
  ]

sw.bb.5:                                          ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %7 = load i64, i64* %intval, align 8, !tbaa !25
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %9 = load i64, i64* %intval7, align 8, !tbaa !25
  %cmp = icmp sle i64 %7, %9
  %conv8 = zext i1 %cmp to i32
  store i32 %conv8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %11 = load i64, i64* %intval11, align 8, !tbaa !25
  %conv12 = sitofp i64 %11 to double
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %realval = bitcast %union.v* %value13 to float*
  %13 = load float, float* %realval, align 4, !tbaa !26
  %conv14 = fpext float %13 to double
  %cmp15 = fcmp ole double %conv12, %conv14
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, i32* %retval
  br label %return

sw.default:                                       ; preds = %sw.bb
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %14) #3
  store i32 %call, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %16 = bitcast i16* %type_attrs19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx20, align 1, !tbaa !19
  %conv21 = zext i8 %17 to i32
  switch i32 %conv21, label %sw.default.38 [
    i32 16, label %sw.bb.22
    i32 11, label %sw.bb.29
  ]

sw.bb.22:                                         ; preds = %sw.bb.17
  %18 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %realval24 = bitcast %union.v* %value23 to float*
  %19 = load float, float* %realval24, align 4, !tbaa !26
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %realval26 = bitcast %union.v* %value25 to float*
  %21 = load float, float* %realval26, align 4, !tbaa !26
  %cmp27 = fcmp ole float %19, %21
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %sw.bb.17
  %22 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %realval31 = bitcast %union.v* %value30 to float*
  %23 = load float, float* %realval31, align 4, !tbaa !26
  %conv32 = fpext float %23 to double
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %intval34 = bitcast %union.v* %value33 to i64*
  %25 = load i64, i64* %intval34, align 8, !tbaa !25
  %conv35 = sitofp i64 %25 to double
  %cmp36 = fcmp ole double %conv32, %conv35
  %conv37 = zext i1 %cmp36 to i32
  store i32 %conv37, i32* %retval
  br label %return

sw.default.38:                                    ; preds = %sw.bb.17
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call39 = call i32 @check_type_failed(%struct.ref_s* %26) #3
  store i32 %call39, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.40
  %27 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  %28 = load i16, i16* %type_attrs42, align 2, !tbaa !20
  %conv43 = zext i16 %28 to i32
  %and = and i32 %conv43, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %30 = load i16, i16* %type_attrs45, align 2, !tbaa !20
  %conv46 = zext i16 %30 to i32
  %and47 = and i32 %conv46, 16160
  %cmp48 = icmp eq i32 %and47, 4640
  br i1 %cmp48, label %if.end.58, label %if.then.50

if.then.50:                                       ; preds = %do.end
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %32 = bitcast i16* %type_attrs52 to i8*
  %arrayidx53 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx53, align 1, !tbaa !19
  %conv54 = zext i8 %33 to i32
  %cmp55 = icmp eq i32 %conv54, 18
  br i1 %cmp55, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.50
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call57 = call i32 @check_type_failed(%struct.ref_s* %34) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call57, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.58:                                        ; preds = %do.end
  %35 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %bytes = bitcast %union.v* %value59 to i8**
  %36 = load i8*, i8** %bytes, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 2
  %38 = load i32, i32* %rsize, align 4, !tbaa !28
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %bytes62 = bitcast %union.v* %value61 to i8**
  %40 = load i8*, i8** %bytes62, align 8, !tbaa !1
  %41 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %rsize64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 2
  %42 = load i32, i32* %rsize64, align 4, !tbaa !28
  %call65 = call i32 @bytes_compare(i8* %36, i32 %38, i8* %40, i32 %42) #3
  %cmp66 = icmp sle i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  store i32 %conv67, i32* %retval
  br label %return

sw.default.68:                                    ; preds = %entry
  %43 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %call69 = call i32 @check_type_failed(%struct.ref_s* %43) #3
  store i32 %call69, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.68, %if.end.58, %cond.end, %if.then, %sw.default.38, %sw.bb.29, %sw.bb.22, %sw.default, %sw.bb.9, %sw.bb.5
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @zgt(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_le(%struct.ref_s* %add.ptr, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %xor = xor i32 %8, 1
  %conv = trunc i32 %xor to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !20
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zle(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_le(%struct.ref_s* %add.ptr, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %conv = trunc i32 %8 to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !20
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zlt(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @obj_le(%struct.ref_s* %4, %struct.ref_s* %add.ptr) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %xor = xor i32 %8, 1
  %conv = trunc i32 %xor to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !20
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zand(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv8 = zext i16 %11 to i32
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %boolval11 = bitcast %union.v* %value10 to i16*
  %13 = load i16, i16* %boolval11, align 2, !tbaa !23
  %conv12 = zext i16 %13 to i32
  %and = and i32 %conv12, %conv8
  %conv13 = trunc i32 %and to i16
  store i16 %conv13, i16* %boolval11, align 2, !tbaa !23
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %15 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx18, align 1, !tbaa !19
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.14
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #3
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %sw.bb.14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %intval = bitcast %union.v* %value26 to i64*
  %19 = load i64, i64* %intval, align 8, !tbaa !25
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %21 = load i64, i64* %intval29, align 8, !tbaa !25
  %and30 = and i64 %21, %19
  store i64 %and30, i64* %intval29, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %22) #3
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.25, %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p34, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.22, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @znot(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %7 = load i16, i16* %boolval, align 2, !tbaa !23
  %tobool = icmp ne i16 %7, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1 = trunc i32 %lnot.ext to i16
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %boolval3 = bitcast %union.v* %value2 to i16*
  store i16 %conv1, i16* %boolval3, align 2, !tbaa !23
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value5 to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !25
  %neg = xor i64 %10, -1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  store i64 %neg, i64* %intval7, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @zor(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv8 = zext i16 %11 to i32
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %boolval11 = bitcast %union.v* %value10 to i16*
  %13 = load i16, i16* %boolval11, align 2, !tbaa !23
  %conv12 = zext i16 %13 to i32
  %or = or i32 %conv12, %conv8
  %conv13 = trunc i32 %or to i16
  store i16 %conv13, i16* %boolval11, align 2, !tbaa !23
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %15 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx18, align 1, !tbaa !19
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.14
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #3
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %sw.bb.14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %intval = bitcast %union.v* %value26 to i64*
  %19 = load i64, i64* %intval, align 8, !tbaa !25
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %21 = load i64, i64* %intval29, align 8, !tbaa !25
  %or30 = or i64 %21, %19
  store i64 %or30, i64* %intval29, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %22) #3
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.25, %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p34, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.22, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @zxor(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv8 = zext i16 %11 to i32
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %boolval11 = bitcast %union.v* %value10 to i16*
  %13 = load i16, i16* %boolval11, align 2, !tbaa !23
  %conv12 = zext i16 %13 to i32
  %xor = xor i32 %conv12, %conv8
  %conv13 = trunc i32 %xor to i16
  store i16 %conv13, i16* %boolval11, align 2, !tbaa !23
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %15 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx18, align 1, !tbaa !19
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.14
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #3
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %sw.bb.14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %intval = bitcast %union.v* %value26 to i64*
  %19 = load i64, i64* %intval, align 8, !tbaa !25
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %21 = load i64, i64* %intval29, align 8, !tbaa !25
  %xor30 = xor i64 %21, %19
  store i64 %xor30, i64* %intval29, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %22) #3
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.25, %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p34, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.22, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @zbitshift(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %shift = alloca i32, align 4
  %max_shift = alloca i16, align 2
  %max_shift32 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %val = alloca i32, align 4
  %val82 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i16* %max_shift to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 63, i16* %max_shift, align 2, !tbaa !23
  %5 = bitcast i16* %max_shift32 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 31, i16* %max_shift32, align 2, !tbaa !23
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %11 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = zext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %arrayidx10) #3
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %15 = load i64, i64* %intval, align 8, !tbaa !25
  %16 = load i16, i16* %max_shift, align 2, !tbaa !23
  %conv13 = sext i16 %16 to i32
  %sub = sub nsw i32 0, %conv13
  %conv14 = sext i32 %sub to i64
  %cmp15 = icmp slt i64 %15, %conv14
  br i1 %cmp15, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval18 = bitcast %union.v* %value17 to i64*
  %18 = load i64, i64* %intval18, align 8, !tbaa !25
  %19 = load i16, i16* %max_shift, align 2, !tbaa !23
  %conv19 = sext i16 %19 to i64
  %cmp20 = icmp sgt i64 %18, %conv19
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.12
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  store i64 0, i64* %intval25, align 8, !tbaa !25
  br label %if.end.100

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %call26 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %23) #3
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.44

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %intval28 = bitcast %union.v* %value27 to i64*
  %25 = load i64, i64* %intval28, align 8, !tbaa !25
  %26 = load i16, i16* %max_shift32, align 2, !tbaa !23
  %conv29 = sext i16 %26 to i32
  %sub30 = sub nsw i32 0, %conv29
  %conv31 = sext i32 %sub30 to i64
  %cmp32 = icmp slt i64 %25, %conv31
  br i1 %cmp32, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  %28 = load i64, i64* %intval36, align 8, !tbaa !25
  %29 = load i16, i16* %max_shift32, align 2, !tbaa !23
  %conv37 = sext i16 %29 to i64
  %cmp38 = icmp sgt i64 %28, %conv37
  br i1 %cmp38, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %lor.lhs.false.34, %land.lhs.true
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  store i64 0, i64* %intval43, align 8, !tbaa !25
  br label %if.end.99

if.else.44:                                       ; preds = %lor.lhs.false.34, %if.else
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %intval46 = bitcast %union.v* %value45 to i64*
  %32 = load i64, i64* %intval46, align 8, !tbaa !25
  %conv47 = trunc i64 %32 to i32
  store i32 %conv47, i32* %shift, align 4, !tbaa !24
  %cmp48 = icmp slt i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.76

if.then.50:                                       ; preds = %if.else.44
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current52 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory51, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current52, align 8, !tbaa !22
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %call53 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %35) #3
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.65

if.then.55:                                       ; preds = %if.then.50
  %36 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  %38 = load i64, i64* %intval58, align 8, !tbaa !25
  %conv59 = trunc i64 %38 to i32
  store i32 %conv59, i32* %val, align 4, !tbaa !24
  %39 = load i32, i32* %val, align 4, !tbaa !24
  %conv60 = zext i32 %39 to i64
  %40 = load i32, i32* %shift, align 4, !tbaa !24
  %sub61 = sub nsw i32 0, %40
  %sh_prom = zext i32 %sub61 to i64
  %shr = ashr i64 %conv60, %sh_prom
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 1
  %intval64 = bitcast %union.v* %value63 to i64*
  store i64 %shr, i64* %intval64, align 8, !tbaa !25
  %42 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.75

if.else.65:                                       ; preds = %if.then.50
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx66, i32 0, i32 1
  %intval68 = bitcast %union.v* %value67 to i64*
  %44 = load i64, i64* %intval68, align 8, !tbaa !25
  %45 = load i32, i32* %shift, align 4, !tbaa !24
  %sub69 = sub nsw i32 0, %45
  %sh_prom70 = zext i32 %sub69 to i64
  %shr71 = ashr i64 %44, %sh_prom70
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx72, i32 0, i32 1
  %intval74 = bitcast %union.v* %value73 to i64*
  store i64 %shr71, i64* %intval74, align 8, !tbaa !25
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.65, %if.then.55
  br label %if.end.98

if.else.76:                                       ; preds = %if.else.44
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current78 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory77, i32 0, i32 0
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current78, align 8, !tbaa !22
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %call79 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %49) #3
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.91

if.then.81:                                       ; preds = %if.else.76
  %50 = bitcast i32* %val82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx83, i32 0, i32 1
  %intval85 = bitcast %union.v* %value84 to i64*
  %52 = load i64, i64* %intval85, align 8, !tbaa !25
  %conv86 = trunc i64 %52 to i32
  store i32 %conv86, i32* %val82, align 4, !tbaa !24
  %53 = load i32, i32* %val82, align 4, !tbaa !24
  %54 = load i32, i32* %shift, align 4, !tbaa !24
  %shl = shl i32 %53, %54
  %conv87 = sext i32 %shl to i64
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %value89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx88, i32 0, i32 1
  %intval90 = bitcast %union.v* %value89 to i64*
  store i64 %conv87, i64* %intval90, align 8, !tbaa !25
  %56 = bitcast i32* %val82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  br label %if.end.97

if.else.91:                                       ; preds = %if.else.76
  %57 = load i32, i32* %shift, align 4, !tbaa !24
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -1
  %value93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx92, i32 0, i32 1
  %intval94 = bitcast %union.v* %value93 to i64*
  %59 = load i64, i64* %intval94, align 8, !tbaa !25
  %sh_prom95 = zext i32 %57 to i64
  %shl96 = shl i64 %59, %sh_prom95
  store i64 %shl96, i64* %intval94, align 8, !tbaa !25
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.91, %if.then.81
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.75
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.40
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.22
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 26
  %stack102 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack101, i32 0, i32 0
  %p103 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack102, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p103, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p103, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.then.9, %if.then
  %62 = bitcast i16* %max_shift32 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %62) #1
  %63 = bitcast i16* %max_shift to i8*
  call void @llvm.lifetime.end(i64 2, i8* %63) #1
  %64 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zmax(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_le(%struct.ref_s* %add.ptr, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s* %add.ptr2 to i8*
  %12 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr7, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zmin(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_le(%struct.ref_s* %add.ptr, %struct.ref_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s* %add.ptr2 to i8*
  %12 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr7, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zidenteq(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = load i16, i16* %type_attrs3, align 2, !tbaa !20
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 1
  %10 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !21
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  %cmp = icmp ult %struct.ref_s* %8, %add.ptr7
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.default
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %do.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %12 = bitcast i16* %type_attrs12 to i8*
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx13, align 1, !tbaa !19
  %conv14 = zext i8 %13 to i32
  switch i32 %conv14, label %sw.default.26 [
    i32 18, label %sw.bb.15
  ]

sw.bb.15:                                         ; preds = %sw.epilog
  br label %do.body.16

do.body.16:                                       ; preds = %sw.bb.15
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %15 = load i16, i16* %type_attrs18, align 2, !tbaa !20
  %conv19 = zext i16 %15 to i32
  %and20 = and i32 %conv19, 32
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.16
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %do.body.16
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %sw.epilog.30

sw.default.26:                                    ; preds = %sw.epilog
  br label %do.body.27

do.body.27:                                       ; preds = %sw.default.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %do.end.29, %do.end.25
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !22
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @obj_ident_eq(%struct.gs_memory_s* %18, %struct.ref_s* %add.ptr31, %struct.ref_s* %20) #3
  %tobool32 = icmp ne i32 %call, 0
  %cond = select i1 %tobool32, i32 1, i32 0
  %conv33 = trunc i32 %cond to i16
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv33, i16* %boolval, align 2, !tbaa !23
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  store i16 256, i16* %type_attrs37, align 2, !tbaa !20
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p40, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.30, %if.then.22, %if.then.9, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zidentne(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zidenteq(%struct.gs_context_state_s* %1) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %2 = load i32, i32* %code, align 4, !tbaa !24
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %5 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv = zext i16 %5 to i32
  %xor = xor i32 %conv, 1
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, i16* %boolval, align 2, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @obj_ident_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

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
!21 = !{!6, !2, i64 632}
!22 = !{!6, !2, i64 8}
!23 = !{!12, !12, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !3, i64 0}
!28 = !{!10, !9, i64 4}
!29 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 4, !24, i64 8, i64 8, !25, i64 8, i64 2, !23, i64 8, i64 4, !26, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25}
