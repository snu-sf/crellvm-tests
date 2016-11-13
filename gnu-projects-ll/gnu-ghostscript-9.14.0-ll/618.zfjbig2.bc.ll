; ModuleID = './zfjbig2.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
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
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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
%struct.s_jbig2_global_data_s = type { i8* }
%struct.obj_header_s = type opaque
%struct.stream_jbig2decode_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.s_jbig2_global_data_s*, %struct._Jbig2GlobalCtx*, %struct._Jbig2Ctx*, %struct._Jbig2Image*, i64, i32 }
%struct._Jbig2GlobalCtx = type opaque
%struct._Jbig2Ctx = type opaque
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [21 x i8] c"1.jbig2makeglobalctx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"2JBIG2Decode\00", align 1
@zfjbig2_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z_jbig2makeglobalctx }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z_jbig2decode }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"./psi/zfjbig2.c\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"failed to create parsed JBIG2GLOBALS object.\00", align 1
@st_jbig2_global_data_t = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @jbig2_global_data_finalize, i8* null }, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"jbig2decode parsed global context\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"jbig2globaldata\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c".jbig2globalctx\00", align 1
@s_jbig2decode_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define internal i32 @z_jbig2makeglobalctx(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %global = alloca i8*, align 8
  %st = alloca %struct.s_jbig2_global_data_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i8** %global to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %global, align 8, !tbaa !1
  %1 = bitcast %struct.s_jbig2_global_data_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %4, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %15 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !22
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !21
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %21 = bitcast %struct.obj_header_s* %20 to i8*
  %call4 = call i32 %15(%struct.gs_memory_s* %18, i8* %21) #3
  store i32 %call4, i32* %size, align 4, !tbaa !19
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %pstruct6 = bitcast %union.v* %value5 to %struct.obj_header_s**
  %23 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct6, align 8, !tbaa !1
  %24 = bitcast %struct.obj_header_s* %23 to i8*
  store i8* %24, i8** %data, align 8, !tbaa !1
  %25 = load i8*, i8** %data, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !19
  %call7 = call i32 @s_jbig2decode_make_global_data(i8* %25, i32 %26, i8** %global) #3
  store i32 %call7, i32* %code, align 4, !tbaa !19
  %27 = load i32, i32* %size, align 4, !tbaa !19
  %cmp8 = icmp sgt i32 %27, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %28 = load i8*, i8** %global, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %28, null
  br i1 %cmp10, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current14 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current14, align 8, !tbaa !21
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 108) #3
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !21
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true, %if.end
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !21
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 8
  %38 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current23, align 8, !tbaa !21
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %call24 = call i8* %38(%struct.gs_memory_s* %41, %struct.gs_memory_struct_type_s* @st_jbig2_global_data_t, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)) #3
  %42 = bitcast i8* %call24 to %struct.s_jbig2_global_data_s*
  store %struct.s_jbig2_global_data_s* %42, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %43 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %cmp25 = icmp eq %struct.s_jbig2_global_data_s* %43, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.18
  %44 = load i8*, i8** %global, align 8, !tbaa !1
  %45 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %data29 = getelementptr inbounds %struct.s_jbig2_global_data_s, %struct.s_jbig2_global_data_s* %45, i32 0, i32 0
  store i8* %44, i8** %data29, align 8, !tbaa !26
  %46 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %47 = bitcast %struct.s_jbig2_global_data_s* %46 to i8*
  %48 = bitcast i8* %47 to %struct.obj_header_s*
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %pstruct31 = bitcast %union.v* %value30 to %struct.obj_header_s**
  store %struct.obj_header_s* %48, %struct.obj_header_s** %pstruct31, align 8, !tbaa !1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 2
  %51 = load i32, i32* %current_space, align 4, !tbaa !28
  %or = or i32 96, %51
  %add = add i32 2304, %or
  %conv33 = trunc i32 %add to i16
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  store i16 %conv33, i16* %type_attrs35, align 2, !tbaa !29
  %53 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.12, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.s_jbig2_global_data_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i8** %global to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @z_jbig2decode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %sop = alloca %struct.ref_s*, align 8
  %gref = alloca %struct.s_jbig2_global_data_s*, align 8
  %state = alloca %struct.stream_jbig2decode_state_s, align 8
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
  %3 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.ref_s* null, %struct.ref_s** %sop, align 8, !tbaa !1
  %4 = bitcast %struct.s_jbig2_global_data_s** %gref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.stream_jbig2decode_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 160, i8* %5) #1
  %6 = bitcast %struct.stream_jbig2decode_state_s* %state to %struct.stream_state_s*
  %call = call i32 @s_jbig2decode_set_global_data(%struct.stream_state_s* %6, %struct.s_jbig2_global_data_s* null) #3
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = load i16, i16* %type_attrs3, align 2, !tbaa !29
  %conv4 = zext i16 %12 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @dict_find_string(%struct.ref_s* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %sop) #3
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.end
  %14 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %pstruct = bitcast %union.v* %value10 to %struct.obj_header_s**
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %16 = bitcast %struct.obj_header_s* %15 to %struct.s_jbig2_global_data_s*
  store %struct.s_jbig2_global_data_s* %16, %struct.s_jbig2_global_data_s** %gref, align 8, !tbaa !1
  %17 = bitcast %struct.stream_jbig2decode_state_s* %state to %struct.stream_state_s*
  %18 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %gref, align 8, !tbaa !1
  %call11 = call i32 @s_jbig2decode_set_global_data(%struct.stream_state_s* %17, %struct.s_jbig2_global_data_s* %18) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %20 = bitcast %struct.stream_jbig2decode_state_s* %state to %struct.stream_state_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tobool14 = icmp ne %struct.ref_s* %21, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %22 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %23 = load i16, i16* %type_attrs16, align 2, !tbaa !29
  %conv17 = zext i16 %23 to i32
  %and18 = and i32 %conv17, 12
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and18, %cond.true ], [ 0, %cond.false ]
  %call19 = call i32 @filter_read(%struct.gs_context_state_s* %19, i32 0, %struct.stream_template_s* @s_jbig2decode_template, %struct.stream_state_s* %20, i32 %cond) #3
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.5
  %24 = bitcast %struct.stream_jbig2decode_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 160, i8* %24) #1
  %25 = bitcast %struct.s_jbig2_global_data_s** %gref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @s_jbig2decode_make_global_data(i8*, i32, i8**) #2

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @jbig2_global_data_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %st = alloca %struct.s_jbig2_global_data_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.s_jbig2_global_data_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.s_jbig2_global_data_s*
  store %struct.s_jbig2_global_data_s* %2, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %4 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.s_jbig2_global_data_s, %struct.s_jbig2_global_data_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !26
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.s_jbig2_global_data_s, %struct.s_jbig2_global_data_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data1, align 8, !tbaa !26
  call void @s_jbig2decode_free_global_data(i8* %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %st, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.s_jbig2_global_data_s, %struct.s_jbig2_global_data_s* %8, i32 0, i32 0
  store i8* null, i8** %data2, align 8, !tbaa !26
  %9 = bitcast %struct.s_jbig2_global_data_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

declare void @s_jbig2decode_free_global_data(i8*) #2

declare i32 @s_jbig2decode_set_global_data(%struct.stream_state_s*, %struct.s_jbig2_global_data_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @filter_read(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

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
!19 = !{!9, !9, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{!6, !2, i64 8}
!22 = !{!23, !2, i64 120}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!23, !2, i64 72}
!26 = !{!27, !2, i64 0}
!27 = !{!"s_jbig2_global_data_s", !2, i64 0}
!28 = !{!7, !9, i64 48}
!29 = !{!10, !12, i64 0}
