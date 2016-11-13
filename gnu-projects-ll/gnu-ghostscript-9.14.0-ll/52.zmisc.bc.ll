; ModuleID = './zmisc.bc'
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

@.str = private unnamed_addr constant [6 x i8] c"1bind\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1getenv\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"0.defaultpapersize\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"2.makeoperator\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0.oserrno\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"1.oserrorstring\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0realtime\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"1serialnumber\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"2.setdebug\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"0.mementolistnewblocks\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"1.setoserrno\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"1.setCPSImode\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"0.getCPSImode\00", align 1
@zmisc_op_defs = constant [15 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbind }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetenv }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdefaultpapersize }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmakeoperator }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zoserrno }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zoserrorstring }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrealtime }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zserialnumber }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdebug }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmementolistnewblocks }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetoserrno }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zusertime }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetCPSImode }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetCPSImode }, %struct.op_def zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"getenv key\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"getenv value\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"defaultpapersize value\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"makeoperator\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c".oserrorstring\00", align 1
@gs_debug = external global [128 x i8], align 16

; Function Attrs: nounwind uwtable
define internal i32 @zbind(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %depth = alloca i32, align 4
  %defn = alloca %struct.ref_s, align 8
  %bsp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tpp = alloca i16*, align 8
  %elt = alloca i16, align 2
  %nref = alloca %struct.ref_s, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %tp = alloca %struct.ref_s*, align 8
  %pvalue90 = alloca %struct.ref_s*, align 8
  %temp = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %depth, align 4, !tbaa !19
  %4 = bitcast %struct.ref_s* %defn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.ref_s** %bsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.4
    i32 20, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %10 = load i16, i16* %type_attrs2, align 2, !tbaa !21
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv3, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %entry, %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %defn to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !22
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %15 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %16 = bitcast %struct.ref_s* %defn to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !22
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %18) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.4
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %21
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.else:                                          ; preds = %do.body
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  store %struct.ref_s* %23, %struct.ref_s** %p14, align 8, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = bitcast %struct.ref_s* %25 to i8*
  %27 = bitcast %struct.ref_s* %defn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !22
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %28, %struct.ref_s** %bsp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.211, %do.end
  %29 = load i32, i32* %depth, align 4, !tbaa !19
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %while.body, label %while.end.212

while.body:                                       ; preds = %while.cond
  br label %while.cond.17

while.cond.17:                                    ; preds = %cleanup.cont.195, %while.body
  %30 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %31 = load i32, i32* %rsize, align 4, !tbaa !29
  %tobool19 = icmp ne i32 %31, 0
  br i1 %tobool19, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.17
  %32 = bitcast i16** %tpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %packed = bitcast %union.v* %value21 to i16**
  %34 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %34, i16** %tpp, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %36 = load i32, i32* %rsize23, align 4, !tbaa !29
  %sub = sub i32 %36, 1
  store i32 %sub, i32* %rsize23, align 4, !tbaa !29
  %37 = load i16*, i16** %tpp, align 8, !tbaa !1
  %38 = load i16, i16* %37, align 2, !tbaa !23
  %conv24 = zext i16 %38 to i32
  %cmp25 = icmp sge i32 %conv24, 16384
  br i1 %cmp25, label %if.then.27, label %if.else.77

if.then.27:                                       ; preds = %while.body.20
  %39 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %39) #1
  %40 = load i16*, i16** %tpp, align 8, !tbaa !1
  %41 = load i16, i16* %40, align 2, !tbaa !23
  store i16 %41, i16* %elt, align 2, !tbaa !23
  %42 = load i16, i16* %elt, align 2, !tbaa !23
  %conv28 = zext i16 %42 to i32
  %cmp29 = icmp sge i32 %conv28, 57344
  br i1 %cmp29, label %if.then.31, label %if.end.70

if.then.31:                                       ; preds = %if.then.27
  %43 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %47 = bitcast %struct.gs_ref_memory_s* %46 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 2
  %48 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %48, i32 0, i32 16
  %49 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !34
  %50 = load i16, i16* %elt, align 2, !tbaa !23
  %conv32 = zext i16 %50 to i32
  %and33 = and i32 %conv32, 4095
  call void @names_index_ref(%struct.name_table_s* %49, i32 %and33, %struct.ref_s* %nref) #6
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 24
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !30
  %54 = bitcast %struct.gs_ref_memory_s* %53 to %struct.gs_memory_s*
  %gs_lib_ctx36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 2
  %55 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx36, align 8, !tbaa !31
  %gs_name_table37 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %55, i32 0, i32 16
  %56 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table37, align 8, !tbaa !34
  %call38 = call i32 @names_index(%struct.name_table_s* %56, %struct.ref_s* %nref) #6
  %call39 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack, i32 %call38) #6
  store %struct.ref_s* %call39, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %cmp40 = icmp ne %struct.ref_s* %call39, null
  br i1 %cmp40, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.then.31
  %57 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %call42 = call i32 @r_is_ex_oper(%struct.ref_s* %57) #6
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.68

if.then.44:                                       ; preds = %land.lhs.true
  %58 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %59 = load i16, i16* %type_attrs46, align 2, !tbaa !21
  %conv47 = zext i16 %59 to i32
  %and48 = and i32 %conv47, 12
  %60 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %61 = load i16, i16* %type_attrs50, align 2, !tbaa !21
  %conv51 = zext i16 %61 to i32
  %and52 = and i32 %conv51, 12
  %cmp53 = icmp ugt i32 %and48, %and52
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.44
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.then.44
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 1
  %63 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %64 = load i16*, i16** %tpp, align 8, !tbaa !1
  %call58 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory57, %struct.ref_s* %63, i16* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #6
  %65 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %rsize60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  %66 = load i32, i32* %rsize60, align 4, !tbaa !29
  %cmp61 = icmp eq i32 %66, 0
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %67 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %call63 = call zeroext i16 @op_find_index(%struct.ref_s* %67) #6
  %conv64 = zext i16 %call63 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  %68 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %rsize66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 2
  %69 = load i32, i32* %rsize66, align 4, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv64, %cond.true ], [ %69, %cond.false ]
  %add = add i32 16384, %cond
  %conv67 = trunc i32 %add to i16
  %70 = load i16*, i16** %tpp, align 8, !tbaa !1
  store i16 %conv67, i16* %70, align 2, !tbaa !23
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end, %land.lhs.true, %if.then.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.55
  %71 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.74 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup.cont, %if.then.27
  %73 = load i16*, i16** %tpp, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i16, i16* %73, i64 1
  %74 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %packed73 = bitcast %union.v* %value72 to i16**
  store i16* %add.ptr71, i16** %packed73, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %if.end.70, %cleanup
  %75 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %75) #1
  %cleanup.dest.75 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.75, label %cleanup.193 [
    i32 0, label %cleanup.cont.76
  ]

cleanup.cont.76:                                  ; preds = %cleanup.74
  br label %if.end.192

if.else.77:                                       ; preds = %while.body.20
  %76 = bitcast %struct.ref_s** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  %refs = bitcast %union.v* %value78 to %struct.ref_s**
  %78 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %78, %struct.ref_s** %tp, align 8, !tbaa !1
  %79 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %type_attrs80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 0
  %80 = bitcast i16* %type_attrs80 to i8*
  %arrayidx81 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx81, align 1, !tbaa !20
  %conv82 = zext i8 %81 to i32
  switch i32 %conv82, label %sw.epilog.188 [
    i32 13, label %sw.bb.83
    i32 4, label %sw.bb.139
    i32 5, label %sw.bb.147
    i32 6, label %sw.bb.147
  ]

sw.bb.83:                                         ; preds = %if.else.77
  %82 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %type_attrs85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 0
  %83 = load i16, i16* %type_attrs85, align 2, !tbaa !21
  %conv86 = zext i16 %83 to i32
  %and87 = and i32 %conv86, 128
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.138

if.then.89:                                       ; preds = %sw.bb.83
  %84 = bitcast %struct.ref_s** %pvalue90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 24
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory92 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current93 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory92, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current93, align 8, !tbaa !30
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %gs_lib_ctx94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 2
  %89 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx94, align 8, !tbaa !31
  %gs_name_table95 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %89, i32 0, i32 16
  %90 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table95, align 8, !tbaa !34
  %91 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %call96 = call i32 @names_index(%struct.name_table_s* %90, %struct.ref_s* %91) #6
  %call97 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack91, i32 %call96) #6
  store %struct.ref_s* %call97, %struct.ref_s** %pvalue90, align 8, !tbaa !1
  %cmp98 = icmp ne %struct.ref_s* %call97, null
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.134

land.lhs.true.100:                                ; preds = %if.then.89
  %92 = load %struct.ref_s*, %struct.ref_s** %pvalue90, align 8, !tbaa !1
  %call101 = call i32 @r_is_ex_oper(%struct.ref_s* %92) #6
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.134

if.then.103:                                      ; preds = %land.lhs.true.100
  %93 = load %struct.ref_s*, %struct.ref_s** %pvalue90, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  %94 = load i16, i16* %type_attrs105, align 2, !tbaa !21
  %conv106 = zext i16 %94 to i32
  %and107 = and i32 %conv106, 12
  %95 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %tas108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %type_attrs109 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas108, i32 0, i32 0
  %96 = load i16, i16* %type_attrs109, align 2, !tbaa !21
  %conv110 = zext i16 %96 to i32
  %and111 = and i32 %conv110, 12
  %cmp112 = icmp ugt i32 %and107, %and111
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.103
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.115:                                       ; preds = %if.then.103
  %97 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %type_attrs117 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas116, i32 0, i32 0
  %98 = load i16, i16* %type_attrs117, align 2, !tbaa !21
  %conv118 = zext i16 %98 to i32
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory119, i32 0, i32 4
  %100 = load i32, i32* %test_mask, align 4, !tbaa !36
  %and120 = and i32 %conv118, %100
  %cmp121 = icmp eq i32 %and120, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.126

cond.true.123:                                    ; preds = %if.end.115
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %101, i32 0, i32 1
  %102 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %103 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %104 = bitcast %struct.ref_s* %103 to i16*
  %call125 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory124, %struct.ref_s* %102, i16* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %cond.end.127

cond.false.126:                                   ; preds = %if.end.115
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.123
  %cond128 = phi i32 [ %call125, %cond.true.123 ], [ 0, %cond.false.126 ]
  %105 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %106 = load %struct.ref_s*, %struct.ref_s** %pvalue90, align 8, !tbaa !1
  %107 = bitcast %struct.ref_s* %105 to i8*
  %108 = bitcast %struct.ref_s* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 16, i32 8, i1 false), !tbaa.struct !22
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory129, i32 0, i32 5
  %110 = load i32, i32* %new_mask, align 4, !tbaa !37
  %111 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 0
  %type_attrs131 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas130, i32 0, i32 0
  %112 = load i16, i16* %type_attrs131, align 2, !tbaa !21
  %conv132 = zext i16 %112 to i32
  %or = or i32 %conv132, %110
  %conv133 = trunc i32 %or to i16
  store i16 %conv133, i16* %type_attrs131, align 2, !tbaa !21
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.127, %land.lhs.true.100, %if.then.89
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.134, %if.then.114
  %113 = bitcast %struct.ref_s** %pvalue90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %cleanup.189 [
    i32 0, label %cleanup.cont.137
  ]

cleanup.cont.137:                                 ; preds = %cleanup.135
  br label %if.end.138

if.end.138:                                       ; preds = %cleanup.cont.137, %sw.bb.83
  br label %sw.epilog.188

sw.bb.139:                                        ; preds = %if.else.77
  %114 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 0
  %type_attrs141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 0
  %115 = load i16, i16* %type_attrs141, align 2, !tbaa !21
  %conv142 = zext i16 %115 to i32
  %and143 = and i32 %conv142, 16
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %sw.bb.139
  br label %sw.epilog.188

if.end.146:                                       ; preds = %sw.bb.139
  br label %sw.bb.147

sw.bb.147:                                        ; preds = %if.else.77, %if.else.77, %if.end.146
  %116 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %type_attrs149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 0
  %117 = load i16, i16* %type_attrs149, align 2, !tbaa !21
  %conv150 = zext i16 %117 to i32
  %and151 = and i32 %conv150, 128
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.187

if.then.153:                                      ; preds = %sw.bb.147
  %118 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %tas154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 0
  %type_attrs155 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas154, i32 0, i32 0
  %119 = load i16, i16* %type_attrs155, align 2, !tbaa !21
  %conv156 = zext i16 %119 to i32
  %and157 = and i32 %conv156, -17
  %conv158 = trunc i32 %and157 to i16
  store i16 %conv158, i16* %type_attrs155, align 2, !tbaa !21
  %120 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack159 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack160 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack159, i32 0, i32 0
  %top161 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack160, i32 0, i32 2
  %122 = load %struct.ref_s*, %struct.ref_s** %top161, align 8, !tbaa !27
  %cmp162 = icmp uge %struct.ref_s* %120, %122
  br i1 %cmp162, label %if.then.164, label %if.else.184

if.then.164:                                      ; preds = %if.then.153
  %123 = bitcast %struct.ref_s* %temp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %123) #1
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %126 = bitcast %struct.ref_s* %temp to i8*
  %127 = bitcast %struct.ref_s* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 16, i32 8, i1 false), !tbaa.struct !22
  %128 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %129 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack165 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %129, i32 0, i32 26
  %stack166 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack165, i32 0, i32 0
  %p167 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack166, i32 0, i32 0
  store %struct.ref_s* %128, %struct.ref_s** %p167, align 8, !tbaa !5
  %130 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack168 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %130, i32 0, i32 26
  %stack169 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack168, i32 0, i32 0
  %call170 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack169, i32 1) #6
  store i32 %call170, i32* %code, align 4, !tbaa !19
  %131 = load i32, i32* %code, align 4, !tbaa !19
  %cmp171 = icmp slt i32 %131, 0
  br i1 %cmp171, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %if.then.164
  %132 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack174 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %132, i32 0, i32 26
  %stack175 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack174, i32 0, i32 0
  %133 = load i32, i32* %depth, align 4, !tbaa !19
  call void @ref_stack_pop(%struct.ref_stack_s* %stack175, i32 %133) #6
  %134 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.176:                                       ; preds = %if.then.164
  %135 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack177 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %135, i32 0, i32 26
  %stack178 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack177, i32 0, i32 0
  %p179 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack178, i32 0, i32 0
  %136 = load %struct.ref_s*, %struct.ref_s** %p179, align 8, !tbaa !5
  store %struct.ref_s* %136, %struct.ref_s** %bsp, align 8, !tbaa !1
  %137 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %138 = bitcast %struct.ref_s* %137 to i8*
  %139 = bitcast %struct.ref_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 16, i32 8, i1 false), !tbaa.struct !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.180

cleanup.180:                                      ; preds = %if.end.176, %if.then.173
  %140 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast %struct.ref_s* %temp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %141) #1
  %cleanup.dest.182 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.182, label %cleanup.189 [
    i32 0, label %cleanup.cont.183
  ]

cleanup.cont.183:                                 ; preds = %cleanup.180
  br label %if.end.186

if.else.184:                                      ; preds = %if.then.153
  %142 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %incdec.ptr185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 1
  store %struct.ref_s* %incdec.ptr185, %struct.ref_s** %bsp, align 8, !tbaa !1
  %143 = load %struct.ref_s*, %struct.ref_s** %tp, align 8, !tbaa !1
  %144 = bitcast %struct.ref_s* %incdec.ptr185 to i8*
  %145 = bitcast %struct.ref_s* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 16, i32 8, i1 false), !tbaa.struct !22
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %cleanup.cont.183
  %146 = load i32, i32* %depth, align 4, !tbaa !19
  %inc = add i32 %146, 1
  store i32 %inc, i32* %depth, align 4, !tbaa !19
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %sw.bb.147
  br label %sw.epilog.188

sw.epilog.188:                                    ; preds = %if.end.187, %if.else.77, %if.then.145, %if.end.138
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.189

cleanup.189:                                      ; preds = %sw.epilog.188, %cleanup.180, %cleanup.135
  %147 = bitcast %struct.ref_s** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %cleanup.dest.190 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.190, label %cleanup.193 [
    i32 0, label %cleanup.cont.191
  ]

cleanup.cont.191:                                 ; preds = %cleanup.189
  br label %if.end.192

if.end.192:                                       ; preds = %cleanup.cont.191, %cleanup.cont.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.193

cleanup.193:                                      ; preds = %if.end.192, %cleanup.189, %cleanup.74
  %148 = bitcast i16** %tpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %cleanup.dest.194 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.194, label %cleanup.216 [
    i32 0, label %cleanup.cont.195
  ]

cleanup.cont.195:                                 ; preds = %cleanup.193
  br label %while.cond.17

while.end:                                        ; preds = %while.cond.17
  %149 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %incdec.ptr196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 -1
  store %struct.ref_s* %incdec.ptr196, %struct.ref_s** %bsp, align 8, !tbaa !1
  %150 = load i32, i32* %depth, align 4, !tbaa !19
  %dec = add i32 %150, -1
  store i32 %dec, i32* %depth, align 4, !tbaa !19
  %151 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack197 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 26
  %stack198 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack197, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack198, i32 0, i32 1
  %153 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !38
  %cmp199 = icmp ult %struct.ref_s* %151, %153
  br i1 %cmp199, label %if.then.201, label %if.end.211

if.then.201:                                      ; preds = %while.end
  %154 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %155 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack202 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %155, i32 0, i32 26
  %stack203 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack202, i32 0, i32 0
  %p204 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack203, i32 0, i32 0
  store %struct.ref_s* %154, %struct.ref_s** %p204, align 8, !tbaa !5
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack205 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 26
  %stack206 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack205, i32 0, i32 0
  %call207 = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %stack206) #6
  %157 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack208 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %157, i32 0, i32 26
  %stack209 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack208, i32 0, i32 0
  %p210 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack209, i32 0, i32 0
  %158 = load %struct.ref_s*, %struct.ref_s** %p210, align 8, !tbaa !5
  store %struct.ref_s* %158, %struct.ref_s** %bsp, align 8, !tbaa !1
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.201, %while.end
  br label %while.cond

while.end.212:                                    ; preds = %while.cond
  %159 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8, !tbaa !1
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack213 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 26
  %stack214 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack213, i32 0, i32 0
  %p215 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack214, i32 0, i32 0
  store %struct.ref_s* %159, %struct.ref_s** %p215, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %while.end.212, %cleanup.193, %if.then.9, %sw.default, %if.then
  %161 = bitcast %struct.ref_s** %bsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast %struct.ref_s* %defn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %162) #1
  %163 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = load i32, i32* %retval
  ret i32 %165
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetenv(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %str = alloca i8*, align 8
  %value = alloca i8*, align 8
  %len = alloca i32, align 4
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
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %len, align 4, !tbaa !19
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !21
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
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call7 = call i8* @ref_to_string(%struct.ref_s* %12, %struct.gs_memory_s* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %call7, i8** %str, align 8, !tbaa !1
  %16 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %16, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %17 = load i8*, i8** %str, align 8, !tbaa !1
  %call12 = call i32 @gp_getenv(i8* %17, i8* null, i32* %len) #6
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.end.11
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !30
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %21 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !39
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current19, align 8, !tbaa !30
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %25 = load i8*, i8** %str, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  %27 = load i32, i32* %rsize, align 4, !tbaa !29
  %add = add i32 %27, 1
  call void %21(%struct.gs_memory_s* %24, i8* %25, i32 %add, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %boolval = bitcast %union.v* %value21 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !23
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  store i16 256, i16* %type_attrs23, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.11
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !30
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 16
  %33 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !40
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !30
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load i32, i32* %len, align 4, !tbaa !19
  %call30 = call i8* %33(%struct.gs_memory_s* %36, i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %call30, i8** %value, align 8, !tbaa !1
  %38 = load i8*, i8** %value, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %38, null
  br i1 %cmp31, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.24
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !30
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_string37 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 19
  %42 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string37, align 8, !tbaa !39
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !30
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %46 = load i8*, i8** %str, align 8, !tbaa !1
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %rsize41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 2
  %48 = load i32, i32* %rsize41, align 4, !tbaa !29
  %add42 = add i32 %48, 1
  call void %42(%struct.gs_memory_s* %45, i8* %46, i32 %add42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.24
  %49 = load i8*, i8** %str, align 8, !tbaa !1
  %50 = load i8*, i8** %value, align 8, !tbaa !1
  %call44 = call i32 @gp_getenv(i8* %49, i8* %50, i32* %len) #6
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current46 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory45, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current46, align 8, !tbaa !30
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_string48 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 19
  %54 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string48, align 8, !tbaa !39
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current50 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory49, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current50, align 8, !tbaa !30
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load i8*, i8** %str, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %rsize52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 2
  %60 = load i32, i32* %rsize52, align 4, !tbaa !29
  %add53 = add i32 %60, 1
  call void %54(%struct.gs_memory_s* %57, i8* %58, i32 %add53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 1
  %current55 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory54, i32 0, i32 0
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current55, align 8, !tbaa !30
  %63 = bitcast %struct.gs_ref_memory_s* %62 to %struct.gs_memory_s*
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 18
  %64 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !41
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 1
  %current58 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory57, i32 0, i32 0
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current58, align 8, !tbaa !30
  %67 = bitcast %struct.gs_ref_memory_s* %66 to %struct.gs_memory_s*
  %68 = load i8*, i8** %value, align 8, !tbaa !1
  %69 = load i32, i32* %len, align 4, !tbaa !19
  %70 = load i32, i32* %len, align 4, !tbaa !19
  %sub = sub nsw i32 %70, 1
  %call59 = call i8* %64(%struct.gs_memory_s* %67, i8* %68, i32 %69, i32 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %call59, i8** %value, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.43
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 26
  %stack61 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack60, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack61, i32 0, i32 2
  %73 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp62 = icmp ugt %struct.ref_s* %add.ptr, %73
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %do.body
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack66 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack65, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack66, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 26
  %stack68 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack67, i32 0, i32 0
  %p69 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack68, i32 0, i32 0
  store %struct.ref_s* %75, %struct.ref_s** %p69, align 8, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.70
  br label %do.end

do.end:                                           ; preds = %do.cond
  %77 = load i8*, i8** %value, align 8, !tbaa !1
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 1
  %bytes = bitcast %union.v* %value72 to i8**
  store i8* %77, i8** %bytes, align 8, !tbaa !1
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory73, i32 0, i32 2
  %80 = load i32, i32* %current_space, align 4, !tbaa !42
  %or = or i32 112, %80
  %add74 = add i32 4608, %or
  %conv75 = trunc i32 %add74 to i16
  %81 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr76, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  store i16 %conv75, i16* %type_attrs78, align 2, !tbaa !21
  %82 = load i32, i32* %len, align 4, !tbaa !19
  %sub79 = sub nsw i32 %82, 1
  %83 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 -1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr80, i32 0, i32 0
  %rsize82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  store i32 %sub79, i32* %rsize82, align 4, !tbaa !29
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %boolval84 = bitcast %union.v* %value83 to i16*
  store i16 1, i16* %boolval84, align 2, !tbaa !23
  %85 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %type_attrs86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 0
  store i16 256, i16* %type_attrs86, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.64, %if.then.33, %if.then.15, %if.then.10, %cond.end
  %86 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @zdefaultpapersize(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %value = alloca i8*, align 8
  %len = alloca i32, align 4
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
  %3 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %len, align 4, !tbaa !19
  %call = call i32 @gp_defaultpapersize(i8* null, i32* %len) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %9, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value10 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !23
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !40
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current13 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory12, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current13, align 8, !tbaa !30
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load i32, i32* %len, align 4, !tbaa !19
  %call14 = call i8* %16(%struct.gs_memory_s* %19, i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)) #6
  store i8* %call14, i8** %value, align 8, !tbaa !1
  %21 = load i8*, i8** %value, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.11
  %22 = load i8*, i8** %value, align 8, !tbaa !1
  %call18 = call i32 @gp_defaultpapersize(i8* %22, i32* %len) #6
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !30
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 18
  %26 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !41
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current23, align 8, !tbaa !30
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %30 = load i8*, i8** %value, align 8, !tbaa !1
  %31 = load i32, i32* %len, align 4, !tbaa !19
  %32 = load i32, i32* %len, align 4, !tbaa !19
  %sub = sub nsw i32 %32, 1
  %call24 = call i8* %26(%struct.gs_memory_s* %29, i8* %30, i32 %31, i32 %sub, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)) #6
  store i8* %call24, i8** %value, align 8, !tbaa !1
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.17
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 2
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %top29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 2
  %35 = load %struct.ref_s*, %struct.ref_s** %top29, align 8, !tbaa !27
  %cmp30 = icmp ugt %struct.ref_s* %add.ptr26, %35
  br i1 %cmp30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %do.body.25
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %requested34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 7
  store i32 2, i32* %requested34, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.35:                                       ; preds = %do.body.25
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 26
  %stack37 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  store %struct.ref_s* %37, %struct.ref_s** %p38, align 8, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.35
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %39 = load i8*, i8** %value, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr42, i32 0, i32 1
  %bytes = bitcast %union.v* %value43 to i8**
  store i8* %39, i8** %bytes, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory44, i32 0, i32 2
  %42 = load i32, i32* %current_space, align 4, !tbaa !42
  %or = or i32 112, %42
  %add = add i32 4608, %or
  %conv = trunc i32 %add to i16
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 %conv, i16* %type_attrs47, align 2, !tbaa !21
  %44 = load i32, i32* %len, align 4, !tbaa !19
  %sub48 = sub nsw i32 %44, 1
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr49, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  store i32 %sub48, i32* %rsize, align 4, !tbaa !29
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %boolval52 = bitcast %union.v* %value51 to i16*
  store i16 1, i16* %boolval52, align 2, !tbaa !23
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 256, i16* %type_attrs54, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.41, %if.then.31, %if.then.16, %do.end, %if.then.4
  %48 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakeoperator(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opt = alloca %struct.op_array_table_s*, align 8
  %count = alloca i32, align 4
  %tab = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx1, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %11 = load i16, i16* %type_attrs5, align 2, !tbaa !21
  %conv6 = zext i16 %11 to i32
  %and = and i32 %conv6, 15552
  %cmp7 = icmp eq i32 %and, 1216
  br i1 %cmp7, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @check_proc_failed(%struct.ref_s* %12) #6
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %14 = load i16, i16* %type_attrs13, align 2, !tbaa !21
  %conv14 = zext i16 %14 to i32
  %and15 = and i32 %conv14, 12
  switch i32 %and15, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 19
  store %struct.op_array_table_s* %op_array_table_global, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 20
  store %struct.op_array_table_s* %op_array_table_local, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.16, %sw.bb
  %17 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %count17 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %17, i32 0, i32 2
  %18 = load i32, i32* %count17, align 4, !tbaa !43
  store i32 %18, i32* %count, align 4, !tbaa !19
  %19 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %19, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %20, %struct.ref_s** %tab, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %21 = load i32, i32* %count, align 4, !tbaa !19
  %cmp18 = icmp ugt i32 %21, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i32, i32* %count, align 4, !tbaa !19
  %sub = sub i32 %22, 1
  %idxprom = zext i32 %sub to i64
  %23 = load %struct.ref_s*, %struct.ref_s** %tab, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idxprom
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx20, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %24 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx23, align 1, !tbaa !20
  %conv24 = zext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load i32, i32* %count, align 4, !tbaa !19
  %dec = add i32 %27, -1
  store i32 %dec, i32* %count, align 4, !tbaa !19
  br label %while.cond

while.end:                                        ; preds = %land.end
  %28 = load i32, i32* %count, align 4, !tbaa !19
  %29 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %table27 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %29, i32 0, i32 0
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table27, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  %30 = load i32, i32* %rsize, align 4, !tbaa !29
  %cmp29 = icmp eq i32 %28, %30
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %while.end
  %31 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom33 = zext i32 %31 to i64
  %32 = load %struct.ref_s*, %struct.ref_s** %tab, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %idxprom33
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %33 = load i16, i16* %type_attrs36, align 2, !tbaa !21
  %conv37 = zext i16 %33 to i32
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %35 = load i32, i32* %test_mask, align 4, !tbaa !36
  %and38 = and i32 %conv37, %35
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %37 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %table42 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %37, i32 0, i32 0
  %38 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom43 = zext i32 %38 to i64
  %39 = load %struct.ref_s*, %struct.ref_s** %tab, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %idxprom43
  %40 = bitcast %struct.ref_s* %arrayidx44 to i16*
  %call45 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory41, %struct.ref_s* %table42, i16* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call45, %cond.true ], [ 0, %cond.false ]
  %41 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom46 = zext i32 %41 to i64
  %42 = load %struct.ref_s*, %struct.ref_s** %tab, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %idxprom46
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %44 = bitcast %struct.ref_s* %arrayidx47 to i8*
  %45 = bitcast %struct.ref_s* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !22
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory48, i32 0, i32 5
  %47 = load i32, i32* %new_mask, align 4, !tbaa !37
  %48 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom49 = zext i32 %48 to i64
  %49 = load %struct.ref_s*, %struct.ref_s** %tab, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 %idxprom49
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx50, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %50 = load i16, i16* %type_attrs52, align 2, !tbaa !21
  %conv53 = zext i16 %50 to i32
  %or = or i32 %conv53, %47
  %conv54 = trunc i32 %or to i16
  store i16 %conv54, i16* %type_attrs52, align 2, !tbaa !21
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory55, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 2
  %54 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %54, i32 0, i32 16
  %55 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !34
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  %call56 = call i32 @names_index(%struct.name_table_s* %55, %struct.ref_s* %add.ptr) #6
  %conv57 = trunc i32 %call56 to i16
  %57 = load i32, i32* %count, align 4, !tbaa !19
  %idxprom58 = zext i32 %57 to i64
  %58 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %58, i32 0, i32 1
  %59 = load i16*, i16** %nx_table, align 8, !tbaa !44
  %arrayidx59 = getelementptr inbounds i16, i16* %59, i64 %idxprom58
  store i16 %conv57, i16* %arrayidx59, align 2, !tbaa !23
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 1
  %current61 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory60, i32 0, i32 0
  %61 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current61, align 8, !tbaa !30
  %62 = bitcast %struct.gs_ref_memory_s* %61 to %struct.gs_memory_s*
  %63 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %63, i32 0, i32 3
  %64 = load i32, i32* %base_index, align 4, !tbaa !45
  %65 = load i32, i32* %count, align 4, !tbaa !19
  %add = add i32 %64, %65
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -1
  call void @op_index_ref(%struct.gs_memory_s* %62, i32 %add, %struct.ref_s* %add.ptr62) #6
  %67 = load i32, i32* %count, align 4, !tbaa !19
  %add63 = add i32 %67, 1
  %68 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %count64 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %68, i32 0, i32 2
  store i32 %add63, i32* %count64, align 4, !tbaa !43
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 26
  %stack66 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack65, i32 0, i32 0
  %p67 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack66, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p67, align 8, !tbaa !5
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  store %struct.ref_s* %add.ptr68, %struct.ref_s** %p67, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.31, %sw.default, %if.then.9, %if.then
  %71 = bitcast %struct.ref_s** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @zoserrno(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
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
  %call = call i32* @__errno_location() #7
  %9 = load i32, i32* %call, align 4, !tbaa !19
  %conv = sext i32 %9 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !24
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
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
define internal i32 @zoserrorstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %str = alloca i8*, align 8
  %code = alloca i32, align 4
  %len = alloca i32, align 4
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
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !24
  %conv2 = trunc i64 %11 to i32
  %call3 = call i8* @gp_strerror(i32 %conv2) #6
  store i8* %call3, i8** %str, align 8, !tbaa !1
  %12 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %12, null
  br i1 %cmp4, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i8*, i8** %str, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %13) #8
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %len, align 4, !tbaa !19
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %boolval = bitcast %union.v* %value11 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !23
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 256, i16* %type_attrs13, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp20 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.14
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.14
  %21 = load i8*, i8** %str, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %call26 = call i32 @string_to_ref(i8* %21, %struct.ref_s* %22, %struct.gs_ref_memory_s* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #6
  store i32 %call26, i32* %code, align 4, !tbaa !19
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %cmp27 = icmp slt i32 %25, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %26 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.30
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  %28 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %28, i32* %len, align 4, !tbaa !19
  %cmp32 = icmp ne i32 %28, 0
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load i32, i32* %len, align 4, !tbaa !19
  %dec = add i32 %29, -1
  store i32 %dec, i32* %len, align 4, !tbaa !19
  %idxprom = zext i32 %dec to i64
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %bytes = bitcast %union.v* %value34 to i8**
  %31 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx35, align 1, !tbaa !20
  store i8 %32, i8* %ch, align 1, !tbaa !20
  %conv36 = zext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 13
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %33 = load i8, i8* %ch, align 1, !tbaa !20
  %conv39 = zext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %34 = phi i1 [ true, %land.rhs ], [ %cmp40, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %34, %lor.end ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %37 = load i32, i32* %rsize43, align 4, !tbaa !29
  %sub = sub i32 %37, 1
  store i32 %sub, i32* %rsize43, align 4, !tbaa !29
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.end
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack45 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack44, i32 0, i32 0
  %top46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 2
  %40 = load %struct.ref_s*, %struct.ref_s** %top46, align 8, !tbaa !27
  %cmp47 = icmp ugt %struct.ref_s* %add.ptr, %40
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %do.body
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack51 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack50, i32 0, i32 0
  %requested52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 7
  store i32 1, i32* %requested52, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack54 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  store %struct.ref_s* %42, %struct.ref_s** %p55, align 8, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.56
  br label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %boolval58 = bitcast %union.v* %value57 to i16*
  store i16 1, i16* %boolval58, align 2, !tbaa !23
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  store i16 256, i16* %type_attrs60, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.49, %if.then.29, %if.then.22, %if.then.10, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %46 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @zrealtime(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %secs_ns = alloca [2 x i64], align 16
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
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
  %3 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %7) #6
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i32 0
  call void @gp_get_realtime(i64* %arraydecay) #6
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %real_time_0 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 21
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %real_time_0, i32 0, i64 1
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !24
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 1
  %10 = load i64, i64* %arrayidx1, align 8, !tbaa !24
  %sub = sub nsw i64 %10, %9
  store i64 %sub, i64* %arrayidx1, align 8, !tbaa !24
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %real_time_02 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %real_time_02, i32 0, i64 0
  %12 = load i64, i64* %arrayidx3, align 8, !tbaa !24
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 0
  %13 = load i64, i64* %arrayidx4, align 8, !tbaa !24
  %sub5 = sub nsw i64 %13, %12
  store i64 %sub5, i64* %arrayidx4, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 2
  %16 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  store %struct.ref_s* %18, %struct.ref_s** %p12, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx13 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 0
  %20 = load i64, i64* %arrayidx13, align 8, !tbaa !24
  %mul = mul nsw i64 %20, 1000
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 1
  %21 = load i64, i64* %arrayidx14, align 8, !tbaa !24
  %div = sdiv i64 %21, 1000000
  %add = add nsw i64 %mul, %div
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %add, i64* %intval, align 8, !tbaa !24
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %24 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zserialnumber(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
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
  %call = call i32 @gp_serialnumber() #6
  %conv = sext i32 %call to i64
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !24
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdebug(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
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
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %6 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1, !tbaa !20
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 18
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %10 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx12, align 1, !tbaa !20
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call17 = call i32 @check_type_failed(%struct.ref_s* %12) #6
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !29
  %cmp20 = icmp ult i32 %14, %16
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %18 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv22 = trunc i16 %18 to i8
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %bytes = bitcast %union.v* %value24 to i8**
  %21 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx25, align 1, !tbaa !20
  %conv26 = zext i8 %22 to i32
  %and27 = and i32 %conv26, 127
  %idxprom28 = sext i32 %and27 to i64
  %arrayidx29 = getelementptr inbounds [128 x i8], [128 x i8]* @gs_debug, i32 0, i64 %idxprom28
  store i8 %conv22, i8* %arrayidx29, align 1, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !5
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -2
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %p32, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.16, %cond.end
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zmementolistnewblocks(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetoserrno(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !24
  %conv2 = trunc i64 %8 to i32
  %call3 = call i32* @__errno_location() #7
  store i32 %conv2, i32* %call3, align 4, !tbaa !19
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zusertime(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %secs_ns = alloca [2 x i64], align 16
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
  %3 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i32 0
  call void @gp_get_usertime(i64* %arraydecay) #6
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %6 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %8, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 0
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !24
  %mul = mul nsw i64 %10, 1000
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 1
  %11 = load i64, i64* %arrayidx8, align 8, !tbaa !24
  %div = sdiv i64 %11, 1000000
  %add = add nsw i64 %mul, %div
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %add, i64* %intval, align 8, !tbaa !24
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetCPSImode(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !23
  %conv2 = zext i16 %11 to i32
  call void @gs_setcpsimode(%struct.gs_memory_s* %9, i32 %conv2) #6
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %boolval4 = bitcast %union.v* %value3 to i16*
  %13 = load i16, i16* %boolval4, align 2, !tbaa !23
  %tobool = icmp ne i16 %13, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 12
  %15 = load i32, i32* %scanner_options, align 4, !tbaa !46
  %or = or i32 %15, 128
  store i32 %or, i32* %scanner_options, align 4, !tbaa !46
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 12
  %17 = load i32, i32* %scanner_options6, align 4, !tbaa !46
  %and = and i32 %17, -129
  store i32 %and, i32* %scanner_options6, align 4, !tbaa !46
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetCPSImode(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
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
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !30
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %call = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %11) #6
  %conv = trunc i32 %call to i16
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !23
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @r_is_ex_oper(%struct.ref_s* %rp) #3 {
entry:
  %rp.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %rp, %struct.ref_s** %rp.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %rp.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %rp.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %3 = load i16, i16* %type_attrs2, align 2, !tbaa !21
  %conv3 = zext i16 %3 to i32
  %cmp = icmp sge i32 %conv3, 5376
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %4 = load %struct.ref_s*, %struct.ref_s** %rp.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %5 = bitcast i16* %type_attrs6 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv7 = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv7, %cond.false ]
  %cmp8 = icmp eq i32 %cond, 15
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %7 = load %struct.ref_s*, %struct.ref_s** %rp.addr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %8 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx12, align 1, !tbaa !20
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %10 = phi i1 [ true, %cond.end ], [ %cmp14, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %11 = phi i1 [ false, %entry ], [ %10, %lor.end ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

declare zeroext i16 @op_find_index(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @ref_stack_pop_block(%struct.ref_stack_s*) #2

declare i8* @ref_to_string(%struct.ref_s*, %struct.gs_memory_s*, i8*) #2

declare i32 @gp_getenv(i8*, i8*, i32*) #2

declare i32 @gp_defaultpapersize(i8*, i32*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare void @op_index_ref(%struct.gs_memory_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @gp_strerror(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @string_to_ref(i8*, %struct.ref_s*, %struct.gs_ref_memory_s*, i8*) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

declare void @gp_get_realtime(i64*) #2

declare i32 @gp_serialnumber() #2

declare void @gp_get_usertime(i64*) #2

declare void @gs_setcpsimode(%struct.gs_memory_s*, i32) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind readonly }

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
!20 = !{!3, !3, i64 0}
!21 = !{!10, !12, i64 0}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 4, !19, i64 8, i64 8, !24, i64 8, i64 2, !23, i64 8, i64 4, !25, i64 8, i64 8, !24, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !24}
!23 = !{!12, !12, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!6, !2, i64 640}
!28 = !{!6, !9, i64 688}
!29 = !{!10, !9, i64 4}
!30 = !{!6, !2, i64 8}
!31 = !{!32, !2, i64 192}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!35, !2, i64 120}
!35 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!7, !9, i64 64}
!37 = !{!7, !9, i64 68}
!38 = !{!6, !2, i64 632}
!39 = !{!32, !2, i64 160}
!40 = !{!32, !2, i64 136}
!41 = !{!32, !2, i64 152}
!42 = !{!7, !9, i64 48}
!43 = !{!14, !9, i64 24}
!44 = !{!14, !2, i64 16}
!45 = !{!14, !9, i64 28}
!46 = !{!6, !9, i64 184}
