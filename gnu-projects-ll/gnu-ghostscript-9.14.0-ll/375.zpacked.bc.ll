; ModuleID = './zpacked.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_gc_root_s = type opaque
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque

@.str = private unnamed_addr constant [12 x i8] c"packedarray\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0currentpacking\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1packedarray\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"1setpacking\00", align 1
@zpacked_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentpacking }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpackedarray }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetpacking }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"setpacking\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zpackedarray(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %parr = alloca %struct.ref_s, align 8
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
  %4 = bitcast %struct.ref_s* %parr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
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
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #3
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
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 1
  %15 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp10 = icmp sgt i64 %12, %sub.ptr.div
  br i1 %cmp10, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.5
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval13 = bitcast %union.v* %value12 to i64*
  %17 = load i64, i64* %intval13, align 8, !tbaa !20
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %call16 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack15) #3
  %conv17 = zext i32 %call16 to i64
  %cmp18 = icmp sge i64 %17, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %land.lhs.true, %if.end.5
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p24, align 8, !tbaa !5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %intval28 = bitcast %union.v* %value27 to i64*
  %23 = load i64, i64* %intval28, align 8, !tbaa !20
  %conv29 = trunc i64 %23 to i32
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %call30 = call i32 @make_packed_array(%struct.ref_s* %parr, %struct.ref_stack_s* %stack26, i32 %conv29, %struct.gs_dual_memory_s* %memory, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  store i32 %call30, i32* %code, align 4, !tbaa !22
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !5
  %incdec.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %incdec.ptr34, %struct.ref_s** %p33, align 8, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !22
  %cmp35 = icmp sge i32 %27, 0
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.21
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %30 = bitcast %struct.ref_s* %29 to i8*
  %31 = bitcast %struct.ref_s* %parr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !23
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.21
  %32 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.20, %if.then.4, %if.then
  %33 = bitcast %struct.ref_s* %parr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind uwtable
define i32 @make_packed_array(%struct.ref_s* %parr, %struct.ref_stack_s* %pstack, i32 %size, %struct.gs_dual_memory_s* %idmemory, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %parr.addr = alloca %struct.ref_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %size.addr = alloca i32, align 4
  %idmemory.addr = alloca %struct.gs_dual_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %pref = alloca %struct.ref_s*, align 8
  %idest = alloca i32, align 4
  %ishort = alloca i32, align 4
  %pbody = alloca i16*, align 8
  %pdest = alloca i16*, align 8
  %pshort = alloca i16*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %space = alloca i32, align 4
  %skip = alloca i32, align 4
  %pad = alloca i32, align 4
  %rtemp = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %oidx = alloca i32, align 4
  %i63 = alloca i32, align 4
  %nidx = alloca i32, align 4
  %oidx159 = alloca i32, align 4
  %i193 = alloca i32, align 4
  %psrc = alloca i16*, align 8
  %pmove = alloca %struct.ref_s*, align 8
  %atype = alloca i32, align 4
  store %struct.ref_s* %parr, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !22
  store %struct.gs_dual_memory_s* %idmemory, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %idest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %idest, align 4, !tbaa !22
  %3 = bitcast i32* %ishort to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %ishort, align 4, !tbaa !22
  %4 = bitcast i16** %pbody to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i16** %pdest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %pshort to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !27
  store %struct.gs_ref_memory_s* %9, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %10 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %11) #3
  store i32 %call, i32* %space, align 4, !tbaa !22
  %12 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %skip, align 4, !tbaa !22
  %13 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %rtemp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %size.addr, align 4, !tbaa !22
  store i32 %16, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %sub = sub i32 %19, 1
  %conv = zext i32 %sub to i64
  %call1 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %18, i64 %conv) #3
  store %struct.ref_s* %call1, %struct.ref_s** %pref, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %21 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv2 = zext i16 %21 to i32
  %cmp3 = icmp sge i32 %conv2, 5376
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %23 = bitcast i16* %type_attrs6 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv7 = zext i8 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv7, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 11, label %sw.bb.11
    i32 20, label %sw.bb.21
    i32 15, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %cond.end
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 2
  %26 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !29
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %26, i32 0, i32 16
  %27 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !37
  %28 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %call8 = call i32 @names_index(%struct.name_table_s* %27, %struct.ref_s* %28) #3
  %cmp9 = icmp uge i32 %call8, 4095
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %29 = load i32, i32* %idest, align 4, !tbaa !22
  %inc = add i32 %29, 1
  store i32 %inc, i32* %idest, align 4, !tbaa !22
  br label %for.inc

sw.bb.11:                                         ; preds = %cond.end
  %30 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %31 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp12 = icmp slt i64 %31, -2048
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.11
  %32 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  %33 = load i64, i64* %intval15, align 8, !tbaa !20
  %cmp16 = icmp sgt i64 %33, 2047
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %sw.bb.11
  br label %sw.epilog

if.end.19:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* %idest, align 4, !tbaa !22
  %inc20 = add i32 %34, 1
  store i32 %inc20, i32* %idest, align 4, !tbaa !22
  br label %for.inc

sw.bb.21:                                         ; preds = %cond.end
  %35 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %36 = load i16, i16* %type_attrs23, align 2, !tbaa !28
  %conv24 = zext i16 %36 to i32
  %and = and i32 %conv24, 12
  %37 = load i32, i32* %space, align 4, !tbaa !22
  %cmp25 = icmp ugt i32 %and, %37
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb.21
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.28:                                        ; preds = %sw.bb.21
  br label %sw.bb.29

sw.bb.29:                                         ; preds = %cond.end, %if.end.28
  %38 = bitcast i32* %oidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %40 = load i16, i16* %type_attrs31, align 2, !tbaa !28
  %conv32 = zext i16 %40 to i32
  %and33 = and i32 %conv32, 128
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %sw.bb.29
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %sw.bb.29
  %41 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 2
  %42 = load i32, i32* %rsize, align 4, !tbaa !39
  %cmp37 = icmp eq i32 %42, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %if.end.35
  %43 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %call40 = call zeroext i16 @op_find_index(%struct.ref_s* %43) #3
  %conv41 = zext i16 %call40 to i32
  br label %cond.end.45

cond.false.42:                                    ; preds = %if.end.35
  %44 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 2
  %45 = load i32, i32* %rsize44, align 4, !tbaa !39
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.39
  %cond46 = phi i32 [ %conv41, %cond.true.39 ], [ %45, %cond.false.42 ]
  store i32 %cond46, i32* %oidx, align 4, !tbaa !22
  %46 = load i32, i32* %oidx, align 4, !tbaa !22
  %cmp47 = icmp eq i32 %46, 0
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %cond.end.45
  %47 = load i32, i32* %oidx, align 4, !tbaa !22
  %cmp50 = icmp ugt i32 %47, 4095
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.49, %cond.end.45
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %lor.lhs.false.49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.34
  %48 = bitcast i32* %oidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  %49 = load i32, i32* %idest, align 4, !tbaa !22
  %inc54 = add i32 %49, 1
  store i32 %inc54, i32* %idest, align 4, !tbaa !22
  br label %for.inc

sw.default:                                       ; preds = %cond.end
  %50 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %51 = load i16, i16* %type_attrs56, align 2, !tbaa !28
  %conv57 = zext i16 %51 to i32
  %and58 = and i32 %conv57, 12
  %52 = load i32, i32* %space, align 4, !tbaa !22
  %cmp59 = icmp ugt i32 %and58, %52
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.default
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.62:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.62, %cleanup, %if.then.18, %if.then
  %53 = bitcast i32* %i63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %idest, align 4, !tbaa !22
  %55 = load i32, i32* %ishort, align 4, !tbaa !22
  %sub64 = sub i32 %54, %55
  %and65 = and i32 %sub64, 3
  store i32 %and65, i32* %i63, align 4, !tbaa !22
  %56 = load i32, i32* %ishort, align 4, !tbaa !22
  %cmp66 = icmp eq i32 %56, 0
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %sw.epilog
  %57 = load i32, i32* %i63, align 4, !tbaa !22
  %sub69 = sub nsw i32 0, %57
  %and70 = and i32 %sub69, 3
  store i32 %and70, i32* %skip, align 4, !tbaa !22
  %58 = load i32, i32* %idest, align 4, !tbaa !22
  %add = add i32 %58, %and70
  store i32 %add, i32* %idest, align 4, !tbaa !22
  br label %if.end.75

if.else:                                          ; preds = %sw.epilog
  %59 = load i32, i32* %i63, align 4, !tbaa !22
  %conv71 = sext i32 %59 to i64
  %mul = mul i64 7, %conv71
  %60 = load i32, i32* %idest, align 4, !tbaa !22
  %conv72 = zext i32 %60 to i64
  %add73 = add i64 %conv72, %mul
  %conv74 = trunc i64 %add73 to i32
  store i32 %conv74, i32* %idest, align 4, !tbaa !22
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.68
  %61 = bitcast i32* %i63 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %idest, align 4, !tbaa !22
  %conv76 = zext i32 %62 to i64
  %add77 = add i64 %conv76, 8
  %conv78 = trunc i64 %add77 to i32
  store i32 %conv78, i32* %idest, align 4, !tbaa !22
  store i32 %conv78, i32* %ishort, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %cleanup.cont, %if.end.19, %if.end
  %63 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add i32 %63, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i32, i32* %idest, align 4, !tbaa !22
  %conv79 = zext i32 %64 to i64
  %rem = urem i64 %conv79, 8
  %sub80 = sub i64 8, %rem
  %rem81 = urem i64 %sub80, 8
  %conv82 = trunc i64 %rem81 to i32
  store i32 %conv82, i32* %pad, align 4, !tbaa !22
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %66 = load i32, i32* %idest, align 4, !tbaa !22
  %67 = load i32, i32* %pad, align 4, !tbaa !22
  %add83 = add i32 %66, %67
  %conv84 = zext i32 %add83 to i64
  %div = udiv i64 %conv84, 8
  %conv85 = trunc i64 %div to i32
  %68 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call86 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %65, %struct.ref_s* %rtemp, i32 0, i32 %conv85, i8* %68) #3
  store i32 %call86, i32* %code, align 4, !tbaa !22
  %69 = load i32, i32* %code, align 4, !tbaa !22
  %cmp87 = icmp slt i32 %69, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.end
  %70 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.90:                                        ; preds = %for.end
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rtemp, i32 0, i32 1
  %refs = bitcast %union.v* %value91 to %struct.ref_s**
  %71 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %72 = bitcast %struct.ref_s* %71 to i16*
  store i16* %72, i16** %pbody, align 8, !tbaa !1
  %73 = load i16*, i16** %pbody, align 8, !tbaa !1
  store i16* %73, i16** %pshort, align 8, !tbaa !1
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.95, %if.end.90
  %74 = load i32, i32* %skip, align 4, !tbaa !22
  %tobool93 = icmp ne i32 %74, 0
  br i1 %tobool93, label %for.body.94, label %for.end.97

for.body.94:                                      ; preds = %for.cond.92
  %75 = load i16*, i16** %pbody, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %incdec.ptr, i16** %pbody, align 8, !tbaa !1
  store i16 24576, i16* %75, align 2, !tbaa !24
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.94
  %76 = load i32, i32* %skip, align 4, !tbaa !22
  %dec96 = add nsw i32 %76, -1
  store i32 %dec96, i32* %skip, align 4, !tbaa !22
  br label %for.cond.92

for.end.97:                                       ; preds = %for.cond.92
  %77 = load i16*, i16** %pbody, align 8, !tbaa !1
  store i16* %77, i16** %pdest, align 8, !tbaa !1
  %78 = load i32, i32* %size.addr, align 4, !tbaa !22
  store i32 %78, i32* %i, align 4, !tbaa !22
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.208, %for.end.97
  %79 = load i32, i32* %i, align 4, !tbaa !22
  %cmp99 = icmp ne i32 %79, 0
  br i1 %cmp99, label %for.body.101, label %for.end.210

for.body.101:                                     ; preds = %for.cond.98
  %80 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %81 = load i32, i32* %i, align 4, !tbaa !22
  %sub102 = sub i32 %81, 1
  %conv103 = zext i32 %sub102 to i64
  %call104 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %80, i64 %conv103) #3
  store %struct.ref_s* %call104, %struct.ref_s** %pref, align 8, !tbaa !1
  %82 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %type_attrs106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 0
  %83 = load i16, i16* %type_attrs106, align 2, !tbaa !28
  %conv107 = zext i16 %83 to i32
  %cmp108 = icmp sge i32 %conv107, 5376
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %for.body.101
  br label %cond.end.116

cond.false.111:                                   ; preds = %for.body.101
  %84 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs113 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 0
  %85 = bitcast i16* %type_attrs113 to i8*
  %arrayidx114 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx114, align 1, !tbaa !19
  %conv115 = zext i8 %86 to i32
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.111, %cond.true.110
  %cond117 = phi i32 [ 15, %cond.true.110 ], [ %conv115, %cond.false.111 ]
  switch i32 %cond117, label %sw.epilog.192 [
    i32 13, label %sw.bb.118
    i32 11, label %sw.bb.138
    i32 20, label %sw.bb.158
    i32 15, label %sw.bb.158
  ]

sw.bb.118:                                        ; preds = %cond.end.116
  %87 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %gs_lib_ctx119 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %88, i32 0, i32 2
  %89 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx119, align 8, !tbaa !29
  %gs_name_table120 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %89, i32 0, i32 16
  %90 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table120, align 8, !tbaa !37
  %91 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %call121 = call i32 @names_index(%struct.name_table_s* %90, %struct.ref_s* %91) #3
  store i32 %call121, i32* %nidx, align 4, !tbaa !22
  %92 = load i32, i32* %nidx, align 4, !tbaa !22
  %cmp122 = icmp uge i32 %92, 4095
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %sw.bb.118
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.125:                                       ; preds = %sw.bb.118
  %93 = load i32, i32* %nidx, align 4, !tbaa !22
  %94 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %type_attrs127 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas126, i32 0, i32 0
  %95 = load i16, i16* %type_attrs127, align 2, !tbaa !28
  %conv128 = zext i16 %95 to i32
  %and129 = and i32 %conv128, 128
  %tobool130 = icmp ne i32 %and129, 0
  %cond131 = select i1 %tobool130, i32 57344, i32 49152
  %add132 = add i32 %93, %cond131
  %conv133 = trunc i32 %add132 to i16
  %96 = load i16*, i16** %pdest, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr134, i16** %pdest, align 8, !tbaa !1
  store i16 %conv133, i16* %96, align 2, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.125, %if.then.124
  %97 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %unreachable [
    i32 0, label %cleanup.cont.137
    i32 12, label %sw.epilog.192
  ]

cleanup.cont.137:                                 ; preds = %cleanup.135
  br label %for.inc.208

sw.bb.138:                                        ; preds = %cond.end.116
  %98 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 1
  %intval140 = bitcast %union.v* %value139 to i64*
  %99 = load i64, i64* %intval140, align 8, !tbaa !20
  %cmp141 = icmp slt i64 %99, -2048
  br i1 %cmp141, label %if.then.148, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %sw.bb.138
  %100 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 1
  %intval145 = bitcast %union.v* %value144 to i64*
  %101 = load i64, i64* %intval145, align 8, !tbaa !20
  %cmp146 = icmp sgt i64 %101, 2047
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %lor.lhs.false.143, %sw.bb.138
  br label %sw.epilog.192

if.end.149:                                       ; preds = %lor.lhs.false.143
  %102 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 1
  %intval151 = bitcast %union.v* %value150 to i64*
  %103 = load i64, i64* %intval151, align 8, !tbaa !20
  %conv152 = trunc i64 %103 to i16
  %conv153 = sext i16 %conv152 to i32
  %sub154 = sub nsw i32 %conv153, -2048
  %add155 = add nsw i32 24576, %sub154
  %conv156 = trunc i32 %add155 to i16
  %104 = load i16*, i16** %pdest, align 8, !tbaa !1
  %incdec.ptr157 = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %incdec.ptr157, i16** %pdest, align 8, !tbaa !1
  store i16 %conv156, i16* %104, align 2, !tbaa !24
  br label %for.inc.208

sw.bb.158:                                        ; preds = %cond.end.116, %cond.end.116
  %105 = bitcast i32* %oidx159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %type_attrs161 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas160, i32 0, i32 0
  %107 = load i16, i16* %type_attrs161, align 2, !tbaa !28
  %conv162 = zext i16 %107 to i32
  %and163 = and i32 %conv162, 128
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %sw.bb.158
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.189

if.end.166:                                       ; preds = %sw.bb.158
  %108 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %rsize168 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas167, i32 0, i32 2
  %109 = load i32, i32* %rsize168, align 4, !tbaa !39
  %cmp169 = icmp eq i32 %109, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.174

cond.true.171:                                    ; preds = %if.end.166
  %110 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %call172 = call zeroext i16 @op_find_index(%struct.ref_s* %110) #3
  %conv173 = zext i16 %call172 to i32
  br label %cond.end.177

cond.false.174:                                   ; preds = %if.end.166
  %111 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 0
  %rsize176 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas175, i32 0, i32 2
  %112 = load i32, i32* %rsize176, align 4, !tbaa !39
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.174, %cond.true.171
  %cond178 = phi i32 [ %conv173, %cond.true.171 ], [ %112, %cond.false.174 ]
  store i32 %cond178, i32* %oidx159, align 4, !tbaa !22
  %113 = load i32, i32* %oidx159, align 4, !tbaa !22
  %cmp179 = icmp eq i32 %113, 0
  br i1 %cmp179, label %if.then.184, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %cond.end.177
  %114 = load i32, i32* %oidx159, align 4, !tbaa !22
  %cmp182 = icmp ugt i32 %114, 4095
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %lor.lhs.false.181, %cond.end.177
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.189

if.end.185:                                       ; preds = %lor.lhs.false.181
  %115 = load i32, i32* %oidx159, align 4, !tbaa !22
  %add186 = add i32 16384, %115
  %conv187 = trunc i32 %add186 to i16
  %116 = load i16*, i16** %pdest, align 8, !tbaa !1
  %incdec.ptr188 = getelementptr inbounds i16, i16* %116, i32 1
  store i16* %incdec.ptr188, i16** %pdest, align 8, !tbaa !1
  store i16 %conv187, i16* %116, align 2, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.189

cleanup.189:                                      ; preds = %if.end.185, %if.then.184, %if.then.165
  %117 = bitcast i32* %oidx159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %cleanup.dest.190 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.190, label %unreachable [
    i32 0, label %cleanup.cont.191
    i32 12, label %sw.epilog.192
  ]

cleanup.cont.191:                                 ; preds = %cleanup.189
  br label %for.inc.208

sw.epilog.192:                                    ; preds = %cond.end.116, %cleanup.189, %if.then.148, %cleanup.135
  %118 = bitcast i32* %i193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i16*, i16** %pdest, align 8, !tbaa !1
  %120 = load i16*, i16** %pshort, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i16* %119 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %120 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %and194 = and i64 %sub.ptr.div, 3
  %conv195 = trunc i64 %and194 to i32
  store i32 %conv195, i32* %i193, align 4, !tbaa !22
  %121 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load i16*, i16** %pdest, align 8, !tbaa !1
  store i16* %122, i16** %psrc, align 8, !tbaa !1
  %123 = bitcast %struct.ref_s** %pmove to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  %124 = load i32, i32* %i193, align 4, !tbaa !22
  %conv196 = sext i32 %124 to i64
  %mul197 = mul i64 7, %conv196
  %125 = load i16*, i16** %pdest, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %125, i64 %mul197
  store i16* %add.ptr, i16** %pdest, align 8, !tbaa !1
  %126 = bitcast i16* %add.ptr to %struct.ref_s*
  store %struct.ref_s* %126, %struct.ref_s** %pmove, align 8, !tbaa !1
  %127 = load %struct.ref_s*, %struct.ref_s** %pmove, align 8, !tbaa !1
  %128 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %129 = bitcast %struct.ref_s* %127 to i8*
  %130 = bitcast %struct.ref_s* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 16, i32 8, i1 false), !tbaa.struct !23
  %131 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %131, i32 0, i32 5
  %132 = load i32, i32* %new_mask, align 4, !tbaa !40
  %133 = load %struct.ref_s*, %struct.ref_s** %pmove, align 8, !tbaa !1
  %tas198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 0
  %type_attrs199 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas198, i32 0, i32 0
  %134 = load i16, i16* %type_attrs199, align 2, !tbaa !28
  %conv200 = zext i16 %134 to i32
  %or = or i32 %conv200, %132
  %conv201 = trunc i32 %or to i16
  store i16 %conv201, i16* %type_attrs199, align 2, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.192
  %135 = load i32, i32* %i193, align 4, !tbaa !22
  %dec202 = add nsw i32 %135, -1
  store i32 %dec202, i32* %i193, align 4, !tbaa !22
  %cmp203 = icmp sge i32 %dec202, 0
  br i1 %cmp203, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %136 = load i16*, i16** %psrc, align 8, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i16, i16* %136, i32 -1
  store i16* %incdec.ptr205, i16** %psrc, align 8, !tbaa !1
  %137 = load %struct.ref_s*, %struct.ref_s** %pmove, align 8, !tbaa !1
  %incdec.ptr206 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i32 -1
  store %struct.ref_s* %incdec.ptr206, %struct.ref_s** %pmove, align 8, !tbaa !1
  %138 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !41
  %140 = load i16*, i16** %psrc, align 8, !tbaa !1
  %141 = load %struct.ref_s*, %struct.ref_s** %pmove, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %139, i16* %140, %struct.ref_s* %141) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %142 = bitcast %struct.ref_s** %pmove to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %i193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = load i16*, i16** %pdest, align 8, !tbaa !1
  %add.ptr207 = getelementptr inbounds i16, i16* %145, i64 8
  store i16* %add.ptr207, i16** %pdest, align 8, !tbaa !1
  store i16* %add.ptr207, i16** %pshort, align 8, !tbaa !1
  br label %for.inc.208

for.inc.208:                                      ; preds = %while.end, %cleanup.cont.191, %if.end.149, %cleanup.cont.137
  %146 = load i32, i32* %i, align 4, !tbaa !22
  %dec209 = add i32 %146, -1
  store i32 %dec209, i32* %i, align 4, !tbaa !22
  br label %for.cond.98

for.end.210:                                      ; preds = %for.cond.98
  %147 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i16*, i16** %pdest, align 8, !tbaa !1
  %149 = load i16*, i16** %pbody, align 8, !tbaa !1
  %150 = load i32, i32* %size.addr, align 4, !tbaa !22
  %idx.ext = zext i32 %150 to i64
  %add.ptr211 = getelementptr inbounds i16, i16* %149, i64 %idx.ext
  %cmp212 = icmp eq i16* %148, %add.ptr211
  %cond214 = select i1 %cmp212, i32 6, i32 5
  store i32 %cond214, i32* %atype, align 4, !tbaa !22
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.219, %for.end.210
  %151 = load i32, i32* %pad, align 4, !tbaa !22
  %tobool216 = icmp ne i32 %151, 0
  br i1 %tobool216, label %for.body.217, label %for.end.221

for.body.217:                                     ; preds = %for.cond.215
  %152 = load i16*, i16** %pdest, align 8, !tbaa !1
  %incdec.ptr218 = getelementptr inbounds i16, i16* %152, i32 1
  store i16* %incdec.ptr218, i16** %pdest, align 8, !tbaa !1
  store i16 24576, i16* %152, align 2, !tbaa !24
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.217
  %153 = load i32, i32* %pad, align 4, !tbaa !22
  %dec220 = add nsw i32 %153, -1
  store i32 %dec220, i32* %pad, align 4, !tbaa !22
  br label %for.cond.215

for.end.221:                                      ; preds = %for.cond.215
  %154 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %155 = load i32, i32* %size.addr, align 4, !tbaa !22
  call void @ref_stack_pop(%struct.ref_stack_s* %154, i32 %155) #3
  %156 = load i16*, i16** %pbody, align 8, !tbaa !1
  %157 = load i32, i32* %skip, align 4, !tbaa !22
  %idx.ext222 = sext i32 %157 to i64
  %add.ptr223 = getelementptr inbounds i16, i16* %156, i64 %idx.ext222
  %158 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i32 0, i32 1
  %packed = bitcast %union.v* %value224 to i16**
  store i16* %add.ptr223, i16** %packed, align 8, !tbaa !1
  %159 = load i32, i32* %atype, align 4, !tbaa !22
  %shl = shl i32 %159, 8
  %160 = load i32, i32* %space, align 4, !tbaa !22
  %or225 = or i32 96, %160
  %161 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask226 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %161, i32 0, i32 5
  %162 = load i32, i32* %new_mask226, align 4, !tbaa !40
  %or227 = or i32 %or225, %162
  %add228 = add i32 %shl, %or227
  %conv229 = trunc i32 %add228 to i16
  %163 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 0, i32 0
  %type_attrs231 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas230, i32 0, i32 0
  store i16 %conv229, i16* %type_attrs231, align 2, !tbaa !28
  %164 = load i32, i32* %size.addr, align 4, !tbaa !22
  %165 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas232 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %rsize233 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas232, i32 0, i32 2
  store i32 %164, i32* %rsize233, align 4, !tbaa !39
  %166 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

cleanup.234:                                      ; preds = %for.end.221, %if.then.89, %if.then.61, %if.then.27
  %167 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast %struct.ref_s* %rtemp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #1
  %169 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i16** %pshort to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i16** %pdest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i16** %pbody to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i32* %ishort to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %idest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = load i32, i32* %retval
  ret i32 %180

unreachable:                                      ; preds = %cleanup.189, %cleanup.135, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare zeroext i16 @op_find_index(%struct.ref_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentpacking(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !42
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !43
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
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 3
  %11 = bitcast %struct.ref_s* %9 to i8*
  %12 = bitcast %struct.ref_s* %array_packing to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !23
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
define internal i32 @zsetpacking(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cont = alloca %struct.ref_s, align 8
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
  %3 = bitcast %struct.ref_s* %cont to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_context_state_s* %8 to %struct.obj_header_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cont, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %9, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cont, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  store i16 2060, i16* %type_attrs3, align 2, !tbaa !28
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 3
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array_packing, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %11 = load i16, i16* %type_attrs5, align 2, !tbaa !28
  %conv6 = zext i16 %11 to i32
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %13 = load i32, i32* %test_mask, align 4, !tbaa !44
  %and = and i32 %conv6, %13
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 3
  %16 = bitcast %struct.ref_s* %array_packing10 to i16*
  %call11 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory9, %struct.ref_s* %cont, i16* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call11, %cond.true ], [ 0, %cond.false ]
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 3
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = bitcast %struct.ref_s* %array_packing12 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !23
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 5
  %22 = load i32, i32* %new_mask, align 4, !tbaa !40
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 3
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array_packing14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %24 = load i16, i16* %type_attrs16, align 2, !tbaa !28
  %conv17 = zext i16 %24 to i32
  %or = or i32 %conv17, %22
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, i16* %type_attrs16, align 2, !tbaa !28
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p21, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %27 = bitcast %struct.ref_s* %cont to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

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
!20 = !{!13, !13, i64 0}
!21 = !{!6, !2, i64 632}
!22 = !{!9, !9, i64 0}
!23 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 2, !24, i64 8, i64 4, !25, i64 8, i64 8, !20, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !20}
!24 = !{!12, !12, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!7, !2, i64 0}
!28 = !{!10, !12, i64 0}
!29 = !{!30, !2, i64 192}
!30 = !{!"gs_ref_memory_s", !2, i64 0, !31, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !32, i64 232, !9, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !33, i64 304, !2, i64 488, !34, i64 496, !13, i64 512, !13, i64 520, !35, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !36, i64 648, !9, i64 672, !3, i64 680}
!31 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!33 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!35 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!36 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!37 = !{!38, !2, i64 120}
!38 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!10, !9, i64 4}
!40 = !{!7, !9, i64 68}
!41 = !{!30, !2, i64 200}
!42 = !{!6, !2, i64 640}
!43 = !{!6, !9, i64 688}
!44 = !{!7, !9, i64 64}
