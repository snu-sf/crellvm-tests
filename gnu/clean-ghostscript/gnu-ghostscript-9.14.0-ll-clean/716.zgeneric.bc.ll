; ModuleID = './zgeneric.bc'
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
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"3.forceput\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0%array_continue\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"0%dict_continue\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"0%packedarray_continue\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"0%string_continue\00", align 1
@zgeneric_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcopy }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zforall }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zforceput }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zget }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetinterval }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlength }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zput }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zputinterval }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @array_continue }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @dict_continue }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @packedarray_continue }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @string_continue }, %struct.op_def zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"putinterval\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcopy(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %type = alloca i32, align 4
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
  %3 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %type, align 4, !tbaa !20
  %7 = load i32, i32* %type, align 4, !tbaa !20
  %cmp = icmp eq i32 %7, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcopy_integer(%struct.gs_context_state_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 1
  %11 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  %cmp4 = icmp ult %struct.ref_s* %9, %add.ptr
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %12 = load i32, i32* %type, align 4, !tbaa !20
  switch i32 %12, label %sw.default [
    i32 4, label %sw.bb
    i32 18, label %sw.bb
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end.7, %if.end.7
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call8 = call i32 @zcopy_interval(%struct.gs_context_state_s* %13) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %if.end.7
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call10 = call i32 @zcopy_dict(%struct.gs_context_state_s* %14) #4
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.7
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %15) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.9, %sw.bb, %if.then.6, %if.then
  %16 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zcopy_integer(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !22
  %conv = trunc i64 %9 to i32
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %12 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv3 = trunc i64 %sub.ptr.div to i32
  %cmp = icmp ugt i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %15 to i32
  %cmp6 = icmp eq i32 %conv5, 11
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval10 = bitcast %union.v* %value9 to i64*
  %18 = load i64, i64* %intval10, align 8, !tbaa !22
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %call13 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack12) #4
  %conv14 = sext i32 %call13 to i64
  %cmp15 = icmp sge i64 %18, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %intval20 = bitcast %union.v* %value19 to i64*
  %21 = load i64, i64* %intval20, align 8, !tbaa !22
  %cmp21 = icmp slt i64 %21, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %23 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx27, align 1, !tbaa !19
  %conv28 = zext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 11
  br i1 %cmp29, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %do.body
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call32 = call i32 @check_type_failed(%struct.ref_s* %25) #4
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %do.body
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval35 = bitcast %union.v* %value34 to i64*
  %27 = load i64, i64* %intval35, align 8, !tbaa !22
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack37 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack36, i32 0, i32 0
  %call38 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack37) #4
  %conv39 = zext i32 %call38 to i64
  %cmp40 = icmp uge i64 %27, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.33
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.33
  br label %do.cond

do.cond:                                          ; preds = %if.end.43
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %intval45 = bitcast %union.v* %value44 to i64*
  %30 = load i64, i64* %intval45, align 8, !tbaa !22
  %conv46 = trunc i64 %30 to i32
  store i32 %conv46, i32* %count, align 4, !tbaa !20
  br label %if.end.80

if.else:                                          ; preds = %entry
  %31 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval48 = bitcast %union.v* %value47 to i64*
  %33 = load i64, i64* %intval48, align 8, !tbaa !22
  %conv49 = trunc i64 %33 to i32
  store i32 %conv49, i32* %count, align 4, !tbaa !20
  %idx.ext = sext i32 %conv49 to i64
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 %idx.ext
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack52 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack51, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack52, i32 0, i32 2
  %35 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp53 = icmp ule %struct.ref_s* %add.ptr50, %35
  br i1 %cmp53, label %if.then.55, label %if.end.79

if.then.55:                                       ; preds = %if.else
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %37 = bitcast %struct.ref_s* %36 to i8*
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = load i32, i32* %count, align 4, !tbaa !20
  %idx.ext56 = sext i32 %39 to i64
  %idx.neg = sub i64 0, %idx.ext56
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 %idx.neg
  %40 = bitcast %struct.ref_s* %add.ptr57 to i8*
  %41 = load i32, i32* %count, align 4, !tbaa !20
  %conv58 = sext i32 %41 to i64
  %mul = mul i64 %conv58, 16
  %call59 = call i8* @memcpy(i8* %37, i8* %40, i64 %mul) #5
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.55
  %42 = load i32, i32* %count, align 4, !tbaa !20
  %sub = sub nsw i32 %42, 1
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext61 = sext i32 %sub to i64
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 %idx.ext61
  store %struct.ref_s* %add.ptr62, %struct.ref_s** %op, align 8, !tbaa !1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 26
  %stack64 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack63, i32 0, i32 0
  %top65 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack64, i32 0, i32 2
  %45 = load %struct.ref_s*, %struct.ref_s** %top65, align 8, !tbaa !23
  %cmp66 = icmp ugt %struct.ref_s* %add.ptr62, %45
  br i1 %cmp66, label %if.then.68, label %if.else.72

if.then.68:                                       ; preds = %do.body.60
  %46 = load i32, i32* %count, align 4, !tbaa !20
  %sub69 = sub nsw i32 %46, 1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 7
  store i32 %sub69, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %do.body.60
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 26
  %stack74 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack73, i32 0, i32 0
  %p75 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack74, i32 0, i32 0
  store %struct.ref_s* %48, %struct.ref_s** %p75, align 8, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.72
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.else
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.end
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack82 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack81, i32 0, i32 0
  %51 = load i32, i32* %count, align 4, !tbaa !20
  %sub83 = sub nsw i32 %51, 1
  %call84 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack82, i32 %sub83) #4
  store i32 %call84, i32* %code, align 4, !tbaa !20
  %52 = load i32, i32* %code, align 4, !tbaa !20
  %cmp85 = icmp slt i32 %52, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.80
  %53 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.end.80
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.88
  %54 = load i32, i32* %i, align 4, !tbaa !20
  %55 = load i32, i32* %count, align 4, !tbaa !20
  %cmp89 = icmp slt i32 %54, %55
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack92 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack91, i32 0, i32 0
  %57 = load i32, i32* %i, align 4, !tbaa !20
  %conv93 = sext i32 %57 to i64
  %call94 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack92, i64 %conv93) #4
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 26
  %stack96 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack95, i32 0, i32 0
  %59 = load i32, i32* %i, align 4, !tbaa !20
  %60 = load i32, i32* %count, align 4, !tbaa !20
  %add = add nsw i32 %59, %60
  %conv97 = sext i32 %add to i64
  %call98 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack96, i64 %conv97) #4
  %61 = bitcast %struct.ref_s* %call94 to i8*
  %62 = bitcast %struct.ref_s* %call98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false), !tbaa.struct !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.87, %do.end.78, %if.then.68, %if.then.42, %if.then.31, %if.then.23, %if.then.17, %if.then.8
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @zcopy_interval(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call = call i32 @copy_interval(%struct.gs_context_state_s* %6, %struct.ref_s* %7, i32 0, %struct.ref_s* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !29
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %12, i32* %rsize2, align 4, !tbaa !29
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = bitcast %struct.ref_s* %14 to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !25
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @zcopy_dict(%struct.gs_context_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zforall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cproc = alloca %struct.ref_s*, align 8
  %es_code_ = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !30
  store %struct.ref_s* %7, %struct.ref_s** %ep, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s** %cproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 4
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %cproc, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !30
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 2
  %13 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !31
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -6
  %cmp = icmp ugt %struct.ref_s* %11, %add.ptr9
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack11, i32 6) #4
  store i32 %call, i32* %es_code_, align 4, !tbaa !20
  %16 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %17 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.13
  %18 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.115 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = load i16, i16* %type_attrs, align 2, !tbaa !32
  %conv = zext i16 %20 to i32
  %and = and i32 %conv, 15552
  %cmp15 = icmp eq i32 %and, 1216
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %do.body
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call18 = call i32 @check_proc_failed(%struct.ref_s* %21) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.19:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %23 = bitcast i16* %type_attrs21 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv22 = zext i8 %24 to i32
  switch i32 %conv22, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.36
    i32 18, label %sw.bb.59
    i32 5, label %sw.bb.76
    i32 6, label %sw.bb.76
  ]

sw.default:                                       ; preds = %do.end
  %25 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %call23 = call i32 @check_type_failed(%struct.ref_s* %25) #4
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

sw.bb:                                            ; preds = %do.end
  br label %do.body.24

do.body.24:                                       ; preds = %sw.bb
  %26 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %27 = load i16, i16* %type_attrs26, align 2, !tbaa !32
  %conv27 = zext i16 %27 to i32
  %and28 = and i32 %conv27, 32
  %tobool = icmp ne i32 %and28, 0
  br i1 %tobool, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.24
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.30:                                        ; preds = %do.body.24
  br label %do.cond.31

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %28 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @array_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  store i16 3968, i16* %type_attrs34, align 2, !tbaa !32
  %30 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end
  br label %do.body.37

do.body.37:                                       ; preds = %sw.bb.36
  %31 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %pdict = bitcast %union.v* %value38 to %struct.dict_s**
  %32 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %32, i32 0, i32 0
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %33 = load i16, i16* %type_attrs40, align 2, !tbaa !32
  %conv41 = zext i16 %33 to i32
  %and42 = and i32 %conv41, 32
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %do.body.37
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.45:                                        ; preds = %do.body.37
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %34 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %call48 = call i32 @dict_first(%struct.ref_s* %34) #4
  %conv49 = sext i32 %call48 to i64
  %35 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %intval = bitcast %union.v* %value50 to i64*
  store i64 %conv49, i64* %intval, align 8, !tbaa !22
  %36 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 2816, i16* %type_attrs52, align 2, !tbaa !32
  %37 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %cproc, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %opproc54 = bitcast %union.v* %value53 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @dict_continue, i32 (%struct.gs_context_state_s*)** %opproc54, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  store i16 3968, i16* %type_attrs56, align 2, !tbaa !32
  %40 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %rsize58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  store i32 0, i32* %rsize58, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.59:                                         ; preds = %do.end
  br label %do.body.60

do.body.60:                                       ; preds = %sw.bb.59
  %41 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %42 = load i16, i16* %type_attrs62, align 2, !tbaa !32
  %conv63 = zext i16 %42 to i32
  %and64 = and i32 %conv63, 32
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %do.body.60
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.67:                                        ; preds = %do.body.60
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  %43 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %opproc71 = bitcast %union.v* %value70 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @string_continue, i32 (%struct.gs_context_state_s*)** %opproc71, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  store i16 3968, i16* %type_attrs73, align 2, !tbaa !32
  %45 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %rsize75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 2
  store i32 0, i32* %rsize75, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.76:                                         ; preds = %do.end, %do.end
  br label %do.body.77

do.body.77:                                       ; preds = %sw.bb.76
  %46 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %47 = load i16, i16* %type_attrs79, align 2, !tbaa !32
  %conv80 = zext i16 %47 to i32
  %and81 = and i32 %conv80, 32
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %do.body.77
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.84:                                        ; preds = %do.body.77
  br label %do.cond.85

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  %48 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %opproc88 = bitcast %union.v* %value87 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @packedarray_continue, i32 (%struct.gs_context_state_s*)** %opproc88, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs90 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas89, i32 0, i32 0
  store i16 3968, i16* %type_attrs90, align 2, !tbaa !32
  %50 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %rsize92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 2
  store i32 0, i32* %rsize92, align 4, !tbaa !29
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.86, %do.end.69, %do.end.47, %do.end.32
  %51 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 1
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr93, i32 0, i32 1
  %opproc95 = bitcast %union.v* %value94 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @forall_cleanup, i32 (%struct.gs_context_state_s*)** %opproc95, align 8, !tbaa !1
  %52 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 1
  %tas97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr96, i32 0, i32 0
  %type_attrs98 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas97, i32 0, i32 0
  store i16 3712, i16* %type_attrs98, align 2, !tbaa !32
  %53 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 1
  %tas100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr99, i32 0, i32 0
  %rsize101 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas100, i32 0, i32 2
  store i32 2, i32* %rsize101, align 4, !tbaa !29
  %54 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 2
  %55 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %56 = bitcast %struct.ref_s* %arrayidx102 to i8*
  %57 = bitcast %struct.ref_s* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 16, i32 8, i1 false), !tbaa.struct !25
  %58 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 3
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %60 = bitcast %struct.ref_s* %arrayidx103 to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false), !tbaa.struct !25
  %62 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack106 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack105, i32 0, i32 0
  %p107 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 0
  store %struct.ref_s* %add.ptr104, %struct.ref_s** %p107, align 8, !tbaa !30
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack109 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack108, i32 0, i32 0
  %p110 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack109, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p110, align 8, !tbaa !5
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -2
  store %struct.ref_s* %add.ptr111, %struct.ref_s** %p110, align 8, !tbaa !5
  %66 = load %struct.ref_s*, %struct.ref_s** %cproc, align 8, !tbaa !1
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %opproc113 = bitcast %union.v* %value112 to i32 (%struct.gs_context_state_s*)**
  %67 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc113, align 8, !tbaa !1
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call114 = call i32 %67(%struct.gs_context_state_s* %68) #4
  store i32 %call114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %sw.epilog, %if.then.83, %if.then.66, %if.then.44, %if.then.29, %sw.default, %if.then.17, %cleanup
  %69 = bitcast %struct.ref_s** %cproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @zforceput(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %eltp = alloca %struct.ref_s*, align 8
  %space = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv5, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %14) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !22
  %17 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv8 = zext i32 %18 to i64
  %cmp9 = icmp uge i64 %16, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %20 = load i16, i16* %type_attrs14, align 2, !tbaa !32
  %conv15 = zext i16 %20 to i32
  %and = and i32 %conv15, 12
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %22 = load i16, i16* %type_attrs17, align 2, !tbaa !32
  %conv18 = zext i16 %22 to i32
  %and19 = and i32 %conv18, 12
  %cmp20 = icmp ugt i32 %and, %and19
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %do.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %call23 = call i32 @imemory_save_level(%struct.gs_ref_memory_s* %24) #4
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %do.end
  %25 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %refs = bitcast %union.v* %value27 to %struct.ref_s**
  %27 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %29 = load i64, i64* %intval29, align 8, !tbaa !22
  %conv30 = trunc i64 %29 to i32
  %idx.ext = zext i32 %conv30 to i64
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 %idx.ext
  store %struct.ref_s* %add.ptr31, %struct.ref_s** %eltp, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %31 = load i16, i16* %type_attrs33, align 2, !tbaa !32
  %conv34 = zext i16 %31 to i32
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory35, i32 0, i32 4
  %33 = load i32, i32* %test_mask, align 4, !tbaa !34
  %and36 = and i32 %conv34, %33
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %35 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %37 = bitcast %struct.ref_s* %36 to i16*
  %call40 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory39, %struct.ref_s* %35, i16* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call40, %cond.true ], [ 0, %cond.false ]
  %38 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %40 = bitcast %struct.ref_s* %38 to i8*
  %41 = bitcast %struct.ref_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !25
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory41, i32 0, i32 5
  %43 = load i32, i32* %new_mask, align 4, !tbaa !35
  %44 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %45 = load i16, i16* %type_attrs43, align 2, !tbaa !32
  %conv44 = zext i16 %45 to i32
  %or = or i32 %conv44, %43
  %conv45 = trunc i32 %or to i16
  store i16 %conv45, i16* %type_attrs43, align 2, !tbaa !32
  %46 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %47 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %pdict = bitcast %union.v* %value47 to %struct.dict_s**
  %48 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %system_dict, i32 0, i32 1
  %pdict49 = bitcast %union.v* %value48 to %struct.dict_s**
  %50 = load %struct.dict_s*, %struct.dict_s** %pdict49, align 8, !tbaa !1
  %cmp50 = icmp eq %struct.dict_s* %48, %50
  br i1 %cmp50, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.46
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current53 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory52, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current53, align 8, !tbaa !33
  %call54 = call i32 @imemory_save_level(%struct.gs_ref_memory_s* %52) #4
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else, label %if.then.56

if.then.56:                                       ; preds = %lor.lhs.false, %sw.bb.46
  %53 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %55 = load i16, i16* %type_attrs58, align 2, !tbaa !32
  %conv59 = zext i16 %55 to i32
  %and60 = and i32 %conv59, 12
  store i32 %and60, i32* %space, align 4, !tbaa !20
  %56 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %57 = load i16, i16* %type_attrs62, align 2, !tbaa !32
  %conv63 = zext i16 %57 to i32
  %and64 = and i32 %conv63, -13
  %or65 = or i32 %and64, 12
  %conv66 = trunc i32 %or65 to i16
  %58 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 %conv66, i16* %type_attrs68, align 2, !tbaa !32
  %59 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 24
  %call70 = call i32 @dict_put(%struct.ref_s* %59, %struct.ref_s* %60, %struct.ref_s* %61, %struct.dict_stack_s* %dict_stack69) #4
  store i32 %call70, i32* %code, align 4, !tbaa !20
  %63 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %64 = load i16, i16* %type_attrs72, align 2, !tbaa !32
  %conv73 = zext i16 %64 to i32
  %and74 = and i32 %conv73, -13
  %65 = load i32, i32* %space, align 4, !tbaa !20
  %or75 = or i32 %and74, %65
  %conv76 = trunc i32 %or75 to i16
  %66 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  store i16 %conv76, i16* %type_attrs78, align 2, !tbaa !32
  %67 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  br label %if.end.81

if.else:                                          ; preds = %lor.lhs.false
  %68 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 24
  %call80 = call i32 @dict_put(%struct.ref_s* %68, %struct.ref_s* %69, %struct.ref_s* %70, %struct.dict_stack_s* %dict_stack79) #4
  store i32 %call80, i32* %code, align 4, !tbaa !20
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.56
  %72 = load i32, i32* %code, align 4, !tbaa !20
  %cmp82 = icmp slt i32 %72, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %73 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.end.81
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.85, %cond.end
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack87 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack86, i32 0, i32 0
  %p88 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack87, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p88, align 8, !tbaa !5
  %add.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -3
  store %struct.ref_s* %add.ptr89, %struct.ref_s** %p88, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.84, %if.then.24, %if.then.11, %if.then
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @zget(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %3, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 18, label %sw.bb.8
    i32 4, label %sw.bb.48
    i32 5, label %sw.bb.48
    i32 6, label %sw.bb.48
    i32 0, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %12 = load i16, i16* %type_attrs2, align 2, !tbaa !32
  %conv3 = zext i16 %12 to i32
  %and = and i32 %conv3, 32
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
  %13 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %13, %struct.ref_s* %14, %struct.ref_s** %pvalue) #4
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %16 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %17 = bitcast %struct.ref_s* %arrayidx7 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false), !tbaa.struct !25
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  br label %do.body.9

do.body.9:                                        ; preds = %sw.bb.8
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %20 = load i16, i16* %type_attrs11, align 2, !tbaa !32
  %conv12 = zext i16 %20 to i32
  %and13 = and i32 %conv12, 32
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.body.9
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.body.9
  br label %do.cond.17

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %22 = bitcast i16* %type_attrs21 to i8*
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx22, align 1, !tbaa !19
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 11
  br i1 %cmp24, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %do.body.19
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call27 = call i32 @check_type_failed(%struct.ref_s* %24) #4
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %do.body.19
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval = bitcast %union.v* %value29 to i64*
  %26 = load i64, i64* %intval, align 8, !tbaa !22
  %27 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 2
  %28 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv31 = zext i32 %28 to i64
  %cmp32 = icmp uge i64 %26, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.28
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %intval39 = bitcast %union.v* %value38 to i64*
  %30 = load i64, i64* %intval39, align 8, !tbaa !22
  %conv40 = trunc i64 %30 to i32
  %idxprom = zext i32 %conv40 to i64
  %31 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %bytes = bitcast %union.v* %value41 to i8**
  %32 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 %idxprom
  %33 = load i8, i8* %arrayidx42, align 1, !tbaa !19
  %conv43 = zext i8 %33 to i64
  %34 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %intval45 = bitcast %union.v* %value44 to i64*
  store i64 %conv43, i64* %intval45, align 8, !tbaa !22
  %35 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 2816, i16* %type_attrs47, align 2, !tbaa !32
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry, %entry, %entry
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %37 = bitcast i16* %type_attrs50 to i8*
  %arrayidx51 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx51, align 1, !tbaa !19
  %conv52 = zext i8 %38 to i32
  %cmp53 = icmp eq i32 %conv52, 11
  br i1 %cmp53, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %sw.bb.48
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call56 = call i32 @check_type_failed(%struct.ref_s* %39) #4
  store i32 %call56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %sw.bb.48
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.57
  %40 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %41 = load i16, i16* %type_attrs60, align 2, !tbaa !32
  %conv61 = zext i16 %41 to i32
  %and62 = and i32 %conv61, 32
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %do.body.58
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %do.body.58
  br label %do.cond.66

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %45 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %intval69 = bitcast %union.v* %value68 to i64*
  %47 = load i64, i64* %intval69, align 8, !tbaa !22
  %48 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call70 = call i32 @array_get(%struct.gs_memory_s* %44, %struct.ref_s* %45, i64 %47, %struct.ref_s* %48) #4
  store i32 %call70, i32* %code, align 4, !tbaa !20
  %49 = load i32, i32* %code, align 4, !tbaa !20
  %cmp71 = icmp slt i32 %49, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.end.67
  %50 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %do.end.67
  br label %sw.epilog

sw.bb.75:                                         ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.74, %do.end.37, %if.end.6
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 26
  %stack77 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !5
  %add.ptr79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  store %struct.ref_s* %add.ptr79, %struct.ref_s** %p78, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb.75, %if.then.73, %if.then.64, %if.then.55, %if.then.34, %if.then.26, %if.then.15, %if.then.5, %if.then
  %53 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetinterval(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %packed = alloca i16*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8, !tbaa !1
  %7 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 18, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %13 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %14 = load i16, i16* %type_attrs3, align 2, !tbaa !32
  %conv4 = zext i16 %14 to i32
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %16 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !19
  %conv9 = zext i8 %17 to i32
  %cmp = icmp eq i32 %conv9, 11
  br i1 %cmp, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %do.body.5
  %18 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call12 = call i32 @check_type_failed(%struct.ref_s* %18) #4
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %do.body.5
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %20 = load i64, i64* %intval, align 8, !tbaa !22
  %21 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv15 = zext i32 %22 to i64
  %cmp16 = icmp ugt i64 %20, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.13
  br label %do.cond.20

do.cond.20:                                       ; preds = %if.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %24 = load i64, i64* %intval23, align 8, !tbaa !22
  %conv24 = trunc i64 %24 to i32
  store i32 %conv24, i32* %index, align 4, !tbaa !20
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.21
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %26 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx28, align 1, !tbaa !19
  %conv29 = zext i8 %27 to i32
  %cmp30 = icmp eq i32 %conv29, 11
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %do.body.25
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call33 = call i32 @check_type_failed(%struct.ref_s* %28) #4
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %do.body.25
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  %30 = load i64, i64* %intval36, align 8, !tbaa !22
  %31 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  %32 = load i32, i32* %rsize38, align 4, !tbaa !29
  %33 = load i32, i32* %index, align 4, !tbaa !20
  %sub = sub i32 %32, %33
  %conv39 = zext i32 %sub to i64
  %cmp40 = icmp ugt i64 %30, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.34
  br label %do.cond.44

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %intval47 = bitcast %union.v* %value46 to i64*
  %35 = load i64, i64* %intval47, align 8, !tbaa !22
  %conv48 = trunc i64 %35 to i32
  store i32 %conv48, i32* %count, align 4, !tbaa !20
  %36 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %37 = bitcast i16* %type_attrs50 to i8*
  %arrayidx51 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx51, align 1, !tbaa !19
  %conv52 = zext i8 %38 to i32
  switch i32 %conv52, label %sw.epilog.76 [
    i32 4, label %sw.bb.53
    i32 18, label %sw.bb.56
    i32 5, label %sw.bb.60
    i32 6, label %sw.bb.71
  ]

sw.bb.53:                                         ; preds = %do.end.45
  %39 = load i32, i32* %index, align 4, !tbaa !20
  %40 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %refs = bitcast %union.v* %value54 to %struct.ref_s**
  %41 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %idx.ext = zext i32 %39 to i64
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %idx.ext
  store %struct.ref_s* %add.ptr55, %struct.ref_s** %refs, align 8, !tbaa !1
  br label %sw.epilog.76

sw.bb.56:                                         ; preds = %do.end.45
  %42 = load i32, i32* %index, align 4, !tbaa !20
  %43 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %bytes = bitcast %union.v* %value57 to i8**
  %44 = load i8*, i8** %bytes, align 8, !tbaa !1
  %idx.ext58 = zext i32 %42 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %44, i64 %idx.ext58
  store i8* %add.ptr59, i8** %bytes, align 8, !tbaa !1
  br label %sw.epilog.76

sw.bb.60:                                         ; preds = %do.end.45
  %45 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %packed62 = bitcast %union.v* %value61 to i16**
  %47 = load i16*, i16** %packed62, align 8, !tbaa !1
  store i16* %47, i16** %packed, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %sw.bb.60
  %48 = load i32, i32* %index, align 4, !tbaa !20
  %dec = add i32 %48, -1
  store i32 %dec, i32* %index, align 4, !tbaa !20
  %tobool63 = icmp ne i32 %48, 0
  br i1 %tobool63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i16*, i16** %packed, align 8, !tbaa !1
  %50 = load i16, i16* %49, align 2, !tbaa !26
  %conv64 = zext i16 %50 to i32
  %cmp65 = icmp sge i32 %conv64, 16384
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %51 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i16, i16* %51, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %52 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds i16, i16* %52, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr67, %cond.true ], [ %add.ptr68, %cond.false ]
  store i16* %cond, i16** %packed, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i16*, i16** %packed, align 8, !tbaa !1
  %54 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %packed70 = bitcast %union.v* %value69 to i16**
  store i16* %53, i16** %packed70, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  %55 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %sw.epilog.76

sw.bb.71:                                         ; preds = %do.end.45
  %56 = load i32, i32* %index, align 4, !tbaa !20
  %57 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %packed73 = bitcast %union.v* %value72 to i16**
  %58 = load i16*, i16** %packed73, align 8, !tbaa !1
  %idx.ext74 = zext i32 %56 to i64
  %add.ptr75 = getelementptr inbounds i16, i16* %58, i64 %idx.ext74
  store i16* %add.ptr75, i16** %packed73, align 8, !tbaa !1
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %do.end.45, %sw.bb.71, %for.end, %sw.bb.56, %sw.bb.53
  %59 = load i32, i32* %count, align 4, !tbaa !20
  %60 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %rsize78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 2
  store i32 %59, i32* %rsize78, align 4, !tbaa !29
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 26
  %stack80 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack79, i32 0, i32 0
  %p81 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack80, i32 0, i32 0
  %62 = load %struct.ref_s*, %struct.ref_s** %p81, align 8, !tbaa !5
  %add.ptr82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -2
  store %struct.ref_s* %add.ptr82, %struct.ref_s** %p81, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.76, %if.then.42, %if.then.32, %if.then.18, %if.then.11, %if.then, %sw.default
  %63 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @zlength(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %str = alloca %struct.ref_s, align 8
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
    i32 4, label %sw.bb
    i32 18, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb.8
    i32 13, label %sw.bb.25
    i32 9, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %7 = load i16, i16* %type_attrs2, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 32
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
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv5 = zext i32 %9 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv5, i64* %intval, align 8, !tbaa !22
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 2816, i16* %type_attrs7, align 2, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %entry
  br label %do.body.9

do.body.9:                                        ; preds = %sw.bb.8
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %pdict = bitcast %union.v* %value10 to %struct.dict_s**
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %13, i32 0, i32 0
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %14 = load i16, i16* %type_attrs12, align 2, !tbaa !32
  %conv13 = zext i16 %14 to i32
  %and14 = and i32 %conv13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %do.body.9
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.body.9
  br label %do.cond.18

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_length(%struct.ref_s* %15) #4
  %conv20 = zext i32 %call to i64
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval22 = bitcast %union.v* %value21 to i64*
  store i64 %conv20, i64* %intval22, align 8, !tbaa !22
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  store i16 2816, i16* %type_attrs24, align 2, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %entry
  %18 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 2
  %22 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !36
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %22, i32 0, i32 16
  %23 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !39
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %23, %struct.ref_s* %24, %struct.ref_s* %str) #4
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %25 = load i32, i32* %rsize27, align 4, !tbaa !29
  %conv28 = zext i32 %25 to i64
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval30 = bitcast %union.v* %value29 to i64*
  store i64 %conv28, i64* %intval30, align 8, !tbaa !22
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 2816, i16* %type_attrs32, align 2, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %28 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  br label %cleanup

sw.bb.33:                                         ; preds = %entry
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !33
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %32 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !41
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !33
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %pstruct = bitcast %union.v* %value38 to %struct.obj_header_s**
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %call39 = call %struct.gs_memory_struct_type_s* %32(%struct.gs_memory_s* %35, i8* %38) #4
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call39, @st_bytes
  br i1 %cmp, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb.33
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %sw.bb.33
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.42
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %40 = load i16, i16* %type_attrs45, align 2, !tbaa !32
  %conv46 = zext i16 %40 to i32
  %and47 = and i32 %conv46, 32
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.43
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %do.body.43
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current54 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current54, align 8, !tbaa !33
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %procs55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs55, i32 0, i32 14
  %44 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !42
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !33
  %47 = bitcast %struct.gs_ref_memory_s* %46 to %struct.gs_memory_s*
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %pstruct59 = bitcast %union.v* %value58 to %struct.obj_header_s**
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct59, align 8, !tbaa !1
  %50 = bitcast %struct.obj_header_s* %49 to i8*
  %call60 = call i32 %44(%struct.gs_memory_s* %47, i8* %50) #4
  %conv61 = zext i32 %call60 to i64
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %intval63 = bitcast %union.v* %value62 to i64*
  store i64 %conv61, i64* %intval63, align 8, !tbaa !22
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  store i16 2816, i16* %type_attrs65, align 2, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call66 = call i32 @check_type_failed(%struct.ref_s* %53) #4
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end.52, %if.then.49, %if.then.41, %sw.bb.25, %do.end.19, %if.then.16, %do.end, %if.then
  %54 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @zput(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %sdata = alloca i8*, align 8
  %ssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %eltp = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8, !tbaa !1
  %7 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.72
    i32 6, label %sw.bb.72
    i32 18, label %sw.bb.73
    i32 9, label %sw.bb.131
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %in_superexec = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 9
  %13 = load i32, i32* %in_superexec, align 4, !tbaa !43
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 0
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %16 = load i16, i16* %type_attrs4, align 2, !tbaa !32
  %conv5 = zext i16 %16 to i32
  %and = and i32 %conv5, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %sw.bb
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 24
  %call = call i32 @dict_put(%struct.ref_s* %18, %struct.ref_s* %19, %struct.ref_s* %20, %struct.dict_stack_s* %dict_stack) #4
  store i32 %call, i32* %code, align 4, !tbaa !20
  %22 = load i32, i32* %code, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %23 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.156 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  br label %do.body.13

do.body.13:                                       ; preds = %sw.bb.12
  %25 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %26 = load i16, i16* %type_attrs15, align 2, !tbaa !32
  %conv16 = zext i16 %26 to i32
  %and17 = and i32 %conv16, 16
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.body.13
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.20:                                        ; preds = %do.body.13
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %27 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %28 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx26, align 1, !tbaa !19
  %conv27 = zext i8 %29 to i32
  %cmp28 = icmp eq i32 %conv27, 11
  br i1 %cmp28, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %do.body.23
  %30 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %30) #4
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.32:                                        ; preds = %do.body.23
  %31 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %intval = bitcast %union.v* %value33 to i64*
  %32 = load i64, i64* %intval, align 8, !tbaa !22
  %33 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  %34 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv35 = zext i32 %34 to i64
  %cmp36 = icmp uge i64 %32, %conv35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.39:                                        ; preds = %if.end.32
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %36 = load i16, i16* %type_attrs43, align 2, !tbaa !32
  %conv44 = zext i16 %36 to i32
  %and45 = and i32 %conv44, 12
  %37 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %38 = load i16, i16* %type_attrs47, align 2, !tbaa !32
  %conv48 = zext i16 %38 to i32
  %and49 = and i32 %conv48, 12
  %cmp50 = icmp ugt i32 %and45, %and49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.41
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.53:                                        ; preds = %do.end.41
  %39 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %refs = bitcast %union.v* %value54 to %struct.ref_s**
  %41 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %intval56 = bitcast %union.v* %value55 to i64*
  %43 = load i64, i64* %intval56, align 8, !tbaa !22
  %conv57 = trunc i64 %43 to i32
  %idx.ext = zext i32 %conv57 to i64
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %idx.ext
  store %struct.ref_s* %add.ptr58, %struct.ref_s** %eltp, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %45 = load i16, i16* %type_attrs60, align 2, !tbaa !32
  %conv61 = zext i16 %45 to i32
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %47 = load i32, i32* %test_mask, align 4, !tbaa !34
  %and62 = and i32 %conv61, %47
  %cmp63 = icmp eq i32 %and62, 0
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %49 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %51 = bitcast %struct.ref_s* %50 to i16*
  %call66 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory65, %struct.ref_s* %49, i16* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call66, %cond.true ], [ 0, %cond.false ]
  %52 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %54 = bitcast %struct.ref_s* %52 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !tbaa.struct !25
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory67, i32 0, i32 5
  %57 = load i32, i32* %new_mask, align 4, !tbaa !35
  %58 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  %59 = load i16, i16* %type_attrs69, align 2, !tbaa !32
  %conv70 = zext i16 %59 to i32
  %or = or i32 %conv70, %57
  %conv71 = trunc i32 %or to i16
  store i16 %conv71, i16* %type_attrs69, align 2, !tbaa !32
  %60 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %sw.epilog

sw.bb.72:                                         ; preds = %entry, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

sw.bb.73:                                         ; preds = %entry
  %61 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %bytes = bitcast %union.v* %value74 to i8**
  %62 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %62, i8** %sdata, align 8, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %rsize76 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas75, i32 0, i32 2
  %64 = load i32, i32* %rsize76, align 4, !tbaa !29
  store i32 %64, i32* %ssize, align 4, !tbaa !20
  br label %str

str:                                              ; preds = %if.end.140, %sw.bb.73
  br label %do.body.77

do.body.77:                                       ; preds = %str
  %65 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %66 = load i16, i16* %type_attrs79, align 2, !tbaa !32
  %conv80 = zext i16 %66 to i32
  %and81 = and i32 %conv80, 16
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %do.body.77
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.84:                                        ; preds = %do.body.77
  br label %do.cond.85

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %67 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %type_attrs89 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 0
  %68 = bitcast i16* %type_attrs89 to i8*
  %arrayidx90 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx90, align 1, !tbaa !19
  %conv91 = zext i8 %69 to i32
  %cmp92 = icmp eq i32 %conv91, 11
  br i1 %cmp92, label %if.end.96, label %if.then.94

if.then.94:                                       ; preds = %do.body.87
  %70 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call95 = call i32 @check_type_failed(%struct.ref_s* %70) #4
  store i32 %call95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.96:                                        ; preds = %do.body.87
  %71 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %intval98 = bitcast %union.v* %value97 to i64*
  %72 = load i64, i64* %intval98, align 8, !tbaa !22
  %73 = load i32, i32* %ssize, align 4, !tbaa !20
  %conv99 = zext i32 %73 to i64
  %cmp100 = icmp uge i64 %72, %conv99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.96
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.103:                                       ; preds = %if.end.96
  br label %do.cond.104

do.cond.104:                                      ; preds = %if.end.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs108 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas107, i32 0, i32 0
  %75 = bitcast i16* %type_attrs108 to i8*
  %arrayidx109 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx109, align 1, !tbaa !19
  %conv110 = zext i8 %76 to i32
  %cmp111 = icmp eq i32 %conv110, 11
  br i1 %cmp111, label %if.end.115, label %if.then.113

if.then.113:                                      ; preds = %do.body.106
  %77 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call114 = call i32 @check_type_failed(%struct.ref_s* %77) #4
  store i32 %call114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.115:                                       ; preds = %do.body.106
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 1
  %intval117 = bitcast %union.v* %value116 to i64*
  %79 = load i64, i64* %intval117, align 8, !tbaa !22
  %cmp118 = icmp ugt i64 %79, 255
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.115
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.121:                                       ; preds = %if.end.115
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 1
  %intval125 = bitcast %union.v* %value124 to i64*
  %81 = load i64, i64* %intval125, align 8, !tbaa !22
  %conv126 = trunc i64 %81 to i8
  %82 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %intval128 = bitcast %union.v* %value127 to i64*
  %83 = load i64, i64* %intval128, align 8, !tbaa !22
  %conv129 = trunc i64 %83 to i32
  %idxprom = zext i32 %conv129 to i64
  %84 = load i8*, i8** %sdata, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %84, i64 %idxprom
  store i8 %conv126, i8* %arrayidx130, align 1, !tbaa !19
  br label %sw.epilog

sw.bb.131:                                        ; preds = %entry
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory132, i32 0, i32 0
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %87 = bitcast %struct.gs_ref_memory_s* %86 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %88 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !41
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory133 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 1
  %current134 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory133, i32 0, i32 0
  %90 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current134, align 8, !tbaa !33
  %91 = bitcast %struct.gs_ref_memory_s* %90 to %struct.gs_memory_s*
  %92 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  %pstruct = bitcast %union.v* %value135 to %struct.obj_header_s**
  %93 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %94 = bitcast %struct.obj_header_s* %93 to i8*
  %call136 = call %struct.gs_memory_struct_type_s* %88(%struct.gs_memory_s* %91, i8* %94) #4
  %cmp137 = icmp ne %struct.gs_memory_struct_type_s* %call136, @st_bytes
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %sw.bb.131
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.140:                                       ; preds = %sw.bb.131
  %95 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  %pstruct142 = bitcast %union.v* %value141 to %struct.obj_header_s**
  %96 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct142, align 8, !tbaa !1
  %97 = bitcast %struct.obj_header_s* %96 to i8*
  store i8* %97, i8** %sdata, align 8, !tbaa !1
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory143 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 1
  %current144 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory143, i32 0, i32 0
  %99 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current144, align 8, !tbaa !33
  %100 = bitcast %struct.gs_ref_memory_s* %99 to %struct.gs_memory_s*
  %procs145 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %100, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs145, i32 0, i32 14
  %101 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !42
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 1
  %current147 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory146, i32 0, i32 0
  %103 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current147, align 8, !tbaa !33
  %104 = bitcast %struct.gs_ref_memory_s* %103 to %struct.gs_memory_s*
  %105 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 1
  %pstruct149 = bitcast %union.v* %value148 to %struct.obj_header_s**
  %106 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct149, align 8, !tbaa !1
  %107 = bitcast %struct.obj_header_s* %106 to i8*
  %call150 = call i32 %101(%struct.gs_memory_s* %104, i8* %107) #4
  store i32 %call150, i32* %ssize, align 4, !tbaa !20
  br label %str

sw.default:                                       ; preds = %entry
  %108 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %call151 = call i32 @check_type_failed(%struct.ref_s* %108) #4
  store i32 %call151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

sw.epilog:                                        ; preds = %do.end.123, %cond.end, %cleanup.cont
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 26
  %stack153 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack152, i32 0, i32 0
  %p154 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack153, i32 0, i32 0
  %110 = load %struct.ref_s*, %struct.ref_s** %p154, align 8, !tbaa !5
  %add.ptr155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 -3
  store %struct.ref_s* %add.ptr155, %struct.ref_s** %p154, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %sw.epilog, %sw.default, %if.then.139, %if.then.120, %if.then.113, %if.then.102, %if.then.94, %if.then.83, %sw.bb.72, %if.then.52, %if.then.38, %if.then.30, %if.then.19, %cleanup, %if.then.6
  %111 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @zputinterval(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opindex = alloca %struct.ref_s*, align 8
  %opto = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dsize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %opindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opindex, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %opto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %opto, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.20
    i32 6, label %sw.bb.20
    i32 4, label %sw.bb.21
    i32 18, label %sw.bb.21
    i32 9, label %sw.bb.47
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

sw.bb:                                            ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %13 to i32
  %cmp = icmp ne i32 %conv5, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %15 = bitcast i16* %type_attrs8 to i8*
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx9, align 1, !tbaa !19
  %conv10 = zext i8 %16 to i32
  %cmp11 = icmp ne i32 %conv10, 18
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %18 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx16, align 1, !tbaa !19
  %conv17 = zext i8 %19 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.13
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %sw.bb
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

sw.bb.20:                                         ; preds = %entry, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

sw.bb.21:                                         ; preds = %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.21
  %20 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %21 = load i16, i16* %type_attrs23, align 2, !tbaa !32
  %conv24 = zext i16 %21 to i32
  %and = and i32 %conv24, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %22 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %23 = bitcast i16* %type_attrs28 to i8*
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx29, align 1, !tbaa !19
  %conv30 = zext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv30, 11
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %do.body.26
  %25 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %25) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.34:                                        ; preds = %do.body.26
  %26 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %27 = load i64, i64* %intval, align 8, !tbaa !22
  %28 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %29 = load i32, i32* %rsize, align 4, !tbaa !29
  %conv36 = zext i32 %29 to i64
  %cmp37 = icmp ugt i64 %27, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.40:                                        ; preds = %if.end.34
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval44 = bitcast %union.v* %value43 to i64*
  %33 = load i64, i64* %intval44, align 8, !tbaa !22
  %conv45 = trunc i64 %33 to i32
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call46 = call i32 @copy_interval(%struct.gs_context_state_s* %30, %struct.ref_s* %31, i32 %conv45, %struct.ref_s* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 %call46, i32* %code, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %35 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  br label %do.body.48

do.body.48:                                       ; preds = %sw.bb.47
  %38 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %39 = load i16, i16* %type_attrs50, align 2, !tbaa !32
  %conv51 = zext i16 %39 to i32
  %and52 = and i32 %conv51, 16
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.body.48
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %do.body.48
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %43 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !41
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %current59 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory58, i32 0, i32 0
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current59, align 8, !tbaa !33
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %47 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %pstruct = bitcast %union.v* %value60 to %struct.obj_header_s**
  %48 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %49 = bitcast %struct.obj_header_s* %48 to i8*
  %call61 = call %struct.gs_memory_struct_type_s* %43(%struct.gs_memory_s* %46, i8* %49) #4
  %cmp62 = icmp ne %struct.gs_memory_struct_type_s* %call61, @st_bytes
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.end.57
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %do.end.57
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current67 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory66, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current67, align 8, !tbaa !33
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 14
  %53 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !42
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 1
  %current70 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory69, i32 0, i32 0
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current70, align 8, !tbaa !33
  %56 = bitcast %struct.gs_ref_memory_s* %55 to %struct.gs_memory_s*
  %57 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %pstruct72 = bitcast %union.v* %value71 to %struct.obj_header_s**
  %58 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct72, align 8, !tbaa !1
  %59 = bitcast %struct.obj_header_s* %58 to i8*
  %call73 = call i32 %53(%struct.gs_memory_s* %56, i8* %59) #4
  store i32 %call73, i32* %dsize, align 4, !tbaa !20
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.65
  %60 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %tas75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %type_attrs76 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas75, i32 0, i32 0
  %61 = bitcast i16* %type_attrs76 to i8*
  %arrayidx77 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx77, align 1, !tbaa !19
  %conv78 = zext i8 %62 to i32
  %cmp79 = icmp eq i32 %conv78, 11
  br i1 %cmp79, label %if.end.83, label %if.then.81

if.then.81:                                       ; preds = %do.body.74
  %63 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %call82 = call i32 @check_type_failed(%struct.ref_s* %63) #4
  store i32 %call82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %do.body.74
  %64 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %intval85 = bitcast %union.v* %value84 to i64*
  %65 = load i64, i64* %intval85, align 8, !tbaa !22
  %66 = load i32, i32* %dsize, align 4, !tbaa !20
  %conv86 = zext i32 %66 to i64
  %cmp87 = icmp ugt i64 %65, %conv86
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.83
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.83
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %67 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8, !tbaa !1
  %value93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  %intval94 = bitcast %union.v* %value93 to i64*
  %68 = load i64, i64* %intval94, align 8, !tbaa !22
  %conv95 = trunc i64 %68 to i32
  store i32 %conv95, i32* %index, align 4, !tbaa !20
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %type_attrs97 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas96, i32 0, i32 0
  %70 = load i16, i16* %type_attrs97, align 2, !tbaa !32
  %conv98 = zext i16 %70 to i32
  %and99 = and i32 %conv98, 16160
  %cmp100 = icmp eq i32 %and99, 4640
  br i1 %cmp100, label %if.end.110, label %if.then.102

if.then.102:                                      ; preds = %do.end.92
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  %72 = bitcast i16* %type_attrs104 to i8*
  %arrayidx105 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx105, align 1, !tbaa !19
  %conv106 = zext i8 %73 to i32
  %cmp107 = icmp eq i32 %conv106, 18
  br i1 %cmp107, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.102
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call109 = call i32 @check_type_failed(%struct.ref_s* %74) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call109, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.110:                                       ; preds = %do.end.92
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %rsize112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 2
  %76 = load i32, i32* %rsize112, align 4, !tbaa !29
  store i32 %76, i32* %ssize, align 4, !tbaa !20
  %77 = load i32, i32* %ssize, align 4, !tbaa !20
  %78 = load i32, i32* %dsize, align 4, !tbaa !20
  %79 = load i32, i32* %index, align 4, !tbaa !20
  %sub = sub i32 %78, %79
  %cmp113 = icmp ugt i32 %77, %sub
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.110
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %if.end.110
  %80 = load %struct.ref_s*, %struct.ref_s** %opto, align 8, !tbaa !1
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 1
  %pstruct118 = bitcast %union.v* %value117 to %struct.obj_header_s**
  %81 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct118, align 8, !tbaa !1
  %82 = bitcast %struct.obj_header_s* %81 to i8*
  %83 = load i32, i32* %index, align 4, !tbaa !20
  %idx.ext = zext i32 %83 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %82, i64 %idx.ext
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value120 to i8**
  %85 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %86 = load i32, i32* %ssize, align 4, !tbaa !20
  %conv121 = zext i32 %86 to i64
  %call122 = call i8* @memcpy(i8* %add.ptr119, i8* %85, i64 %conv121) #5
  store i32 0, i32* %code, align 4, !tbaa !20
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.115, %cond.end, %if.then.89, %if.then.81, %if.then.64, %if.then.54
  %87 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.133 [
    i32 2, label %sw.epilog
  ]

sw.epilog:                                        ; preds = %cleanup, %do.end.42
  %90 = load i32, i32* %code, align 4, !tbaa !20
  %cmp125 = icmp sge i32 %90, 0
  br i1 %cmp125, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %sw.epilog
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 26
  %stack129 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack128, i32 0, i32 0
  %p130 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack129, i32 0, i32 0
  %92 = load %struct.ref_s*, %struct.ref_s** %p130, align 8, !tbaa !5
  %add.ptr131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -3
  store %struct.ref_s* %add.ptr131, %struct.ref_s** %p130, align 8, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %sw.epilog
  %93 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

cleanup.133:                                      ; preds = %if.end.132, %cleanup, %if.then.39, %if.then.33, %if.then.25, %sw.bb.20, %if.else, %if.then, %sw.default
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.ref_s** %opto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.ref_s** %opindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define internal i32 @array_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !29
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp = icmp ugt %struct.ref_s* %add.ptr3, %10
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  store %struct.ref_s* %12, %struct.ref_s** %p11, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  %15 = load i32, i32* %rsize13, align 4, !tbaa !29
  %sub = sub i32 %15, 1
  store i32 %sub, i32* %rsize13, align 4, !tbaa !29
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %19 = bitcast %struct.ref_s* %16 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !25
  %21 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %refs15 = bitcast %union.v* %value14 to %struct.ref_s**
  %22 = load %struct.ref_s*, %struct.ref_s** %refs15, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %refs15, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !30
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 2
  store %struct.ref_s* %add.ptr19, %struct.ref_s** %p18, align 8, !tbaa !30
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !30
  %27 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !25
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.23:                                       ; preds = %entry
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !30
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  store %struct.ref_s* %add.ptr27, %struct.ref_s** %p26, align 8, !tbaa !30
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.23, %do.end, %if.then.6
  %32 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !30
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !22
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 2
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp = icmp ugt %struct.ref_s* %add.ptr6, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  store %struct.ref_s* %14, %struct.ref_s** %p14, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %17 = load i32, i32* %index, align 4, !tbaa !20
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %call = call i32 @dict_next(%struct.ref_s* %16, i32 %17, %struct.ref_s* %add.ptr15) #4
  store i32 %call, i32* %index, align 4, !tbaa !20
  %cmp16 = icmp sge i32 %call, 0
  br i1 %cmp16, label %if.then.18, label %if.else.32

if.then.18:                                       ; preds = %do.end
  %19 = load i32, i32* %index, align 4, !tbaa !20
  %conv19 = sext i32 %19 to i64
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !30
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval24 = bitcast %union.v* %value23 to i64*
  store i64 %conv19, i64* %intval24, align 8, !tbaa !22
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !30
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  store %struct.ref_s* %add.ptr28, %struct.ref_s** %p27, align 8, !tbaa !30
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !30
  %26 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  %27 = bitcast %struct.ref_s* %25 to i8*
  %28 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !25
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.32:                                       ; preds = %do.end
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !5
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -2
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p35, align 8, !tbaa !5
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !30
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -4
  store %struct.ref_s* %add.ptr40, %struct.ref_s** %p39, align 8, !tbaa !30
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.32, %if.then.18, %if.then
  %33 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @packedarray_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %packed = alloca i16*, align 8
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
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !29
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else.28

if.then:                                          ; preds = %entry
  %8 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %packed3 = bitcast %union.v* %value to i16**
  %10 = load i16*, i16** %packed3, align 8, !tbaa !1
  store i16* %10, i16** %packed, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %12 = load i32, i32* %rsize5, align 4, !tbaa !29
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %rsize5, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp = icmp ugt %struct.ref_s* %add.ptr6, %15
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  store %struct.ref_s* %17, %struct.ref_s** %p14, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %22 = load i16*, i16** %packed, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %21, i16* %22, %struct.ref_s* %23) #4
  %24 = load i16*, i16** %packed, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !26
  %conv = zext i16 %25 to i32
  %cmp15 = icmp sge i32 %conv, 16384
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %26 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i16, i16* %26, i64 1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %27 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i16, i16* %27, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr17, %cond.true ], [ %add.ptr18, %cond.false ]
  %28 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %packed20 = bitcast %union.v* %value19 to i16**
  store i16* %cond, i16** %packed20, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !30
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 2
  store %struct.ref_s* %add.ptr24, %struct.ref_s** %p23, align 8, !tbaa !30
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !30
  %33 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  %34 = bitcast %struct.ref_s* %32 to i8*
  %35 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !25
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.9
  %36 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %cleanup.33

if.else.28:                                       ; preds = %entry
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !30
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %p31, align 8, !tbaa !30
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.else.28, %cleanup
  %39 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @string_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !29
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %9 = load i32, i32* %rsize4, align 4, !tbaa !29
  %sub = sub i32 %9, 1
  store i32 %sub, i32* %rsize4, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  store %struct.ref_s* %add.ptr5, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp = icmp ugt %struct.ref_s* %add.ptr5, %12
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  store %struct.ref_s* %14, %struct.ref_s** %p13, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %17 = load i8*, i8** %bytes, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !19
  %conv = zext i8 %18 to i64
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !32
  %21 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %bytes17 = bitcast %union.v* %value16 to i8**
  %22 = load i8*, i8** %bytes17, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %bytes17, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack19 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !30
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 2
  store %struct.ref_s* %add.ptr21, %struct.ref_s** %p20, align 8, !tbaa !30
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !30
  %27 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !25
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.25:                                       ; preds = %entry
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p28, align 8, !tbaa !30
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  store %struct.ref_s* %add.ptr29, %struct.ref_s** %p28, align 8, !tbaa !30
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.25, %do.end, %if.then.8
  %32 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @copy_interval(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %prto, i32 %index, %struct.ref_s* %prfrom, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %prto.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %prfrom.addr = alloca %struct.ref_s*, align 8
  %cname.addr = alloca i8*, align 8
  %fromtype = alloca i32, align 4
  %fromsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %packed = alloca i16*, align 8
  %pdest = alloca %struct.ref_s*, align 8
  %elt = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %prto, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !20
  store %struct.ref_s* %prfrom, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fromtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %fromtype, align 4, !tbaa !20
  %4 = bitcast i32* %fromsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %6, i32* %fromsize, align 4, !tbaa !20
  %7 = load i32, i32* %fromtype, align 4, !tbaa !20
  %8 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %9 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %10 to i32
  %cmp = icmp eq i32 %7, %conv5
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, i32* %fromtype, align 4, !tbaa !20
  %cmp7 = icmp eq i32 %11, 6
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %fromtype, align 4, !tbaa !20
  %cmp10 = icmp eq i32 %12, 5
  br i1 %cmp10, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false.9, %lor.lhs.false
  %13 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %14 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx14, align 1, !tbaa !19
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 4
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.9
  %16 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %18 = load i16, i16* %type_attrs19, align 2, !tbaa !32
  %conv20 = zext i16 %18 to i32
  %and = and i32 %conv20, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  %19 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %20 = load i16, i16* %type_attrs25, align 2, !tbaa !32
  %conv26 = zext i16 %20 to i32
  %and27 = and i32 %conv26, 16
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.23
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %do.body.23
  br label %do.cond.31

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %21 = load i32, i32* %fromsize, align 4, !tbaa !20
  %22 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  %23 = load i32, i32* %rsize34, align 4, !tbaa !29
  %24 = load i32, i32* %index.addr, align 4, !tbaa !20
  %sub = sub i32 %23, %24
  %cmp35 = icmp ugt i32 %21, %sub
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.end.32
  %25 = load i32, i32* %fromtype, align 4, !tbaa !20
  switch i32 %25, label %sw.epilog [
    i32 4, label %sw.bb
    i32 18, label %sw.bb.40
    i32 5, label %sw.bb.46
    i32 6, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.38
  %26 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %27 = load i32, i32* %index.addr, align 4, !tbaa !20
  %28 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %29 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %30 = load i32, i32* %fromsize, align 4, !tbaa !20
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call39 = call i32 @refcpy_to_old(%struct.ref_s* %26, i32 %27, %struct.ref_s* %29, i32 %30, %struct.gs_dual_memory_s* %memory, i8* %32) #4
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.40:                                         ; preds = %if.end.38
  %33 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %bytes = bitcast %union.v* %value41 to i8**
  %34 = load i8*, i8** %bytes, align 8, !tbaa !1
  %35 = load i32, i32* %index.addr, align 4, !tbaa !20
  %idx.ext = zext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %36 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %bytes43 = bitcast %union.v* %value42 to i8**
  %37 = load i8*, i8** %bytes43, align 8, !tbaa !1
  %38 = load i32, i32* %fromsize, align 4, !tbaa !20
  %conv44 = zext i32 %38 to i64
  %call45 = call i8* @memmove(i8* %add.ptr, i8* %37, i64 %conv44) #5
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.38, %if.end.38
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %packed48 = bitcast %union.v* %value47 to i16**
  %42 = load i16*, i16** %packed48, align 8, !tbaa !1
  store i16* %42, i16** %packed, align 8, !tbaa !1
  %43 = bitcast %struct.ref_s** %pdest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %refs50 = bitcast %union.v* %value49 to %struct.ref_s**
  %45 = load %struct.ref_s*, %struct.ref_s** %refs50, align 8, !tbaa !1
  %46 = load i32, i32* %index.addr, align 4, !tbaa !20
  %idx.ext51 = zext i32 %46 to i64
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 %idx.ext51
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %pdest, align 8, !tbaa !1
  %47 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %47) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.46
  %48 = load i32, i32* %i, align 4, !tbaa !20
  %49 = load i32, i32* %fromsize, align 4, !tbaa !20
  %cmp53 = icmp ult i32 %48, %49
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory55, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !33
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %53 = load i16*, i16** %packed, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %52, i16* %53, %struct.ref_s* %elt) #4
  %54 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %55 = load i16, i16* %type_attrs57, align 2, !tbaa !32
  %conv58 = zext i16 %55 to i32
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory59, i32 0, i32 4
  %57 = load i32, i32* %test_mask, align 4, !tbaa !34
  %and60 = and i32 %conv58, %57
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %59 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %61 = bitcast %struct.ref_s* %60 to i16*
  %62 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call64 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory63, %struct.ref_s* %59, i16* %61, i8* %62) #4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call64, %cond.true ], [ 0, %cond.false ]
  %63 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %63 to i8*
  %65 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !25
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 5
  %67 = load i32, i32* %new_mask, align 4, !tbaa !35
  %68 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %type_attrs67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 0
  %69 = load i16, i16* %type_attrs67, align 2, !tbaa !32
  %conv68 = zext i16 %69 to i32
  %or = or i32 %conv68, %67
  %conv69 = trunc i32 %or to i16
  store i16 %conv69, i16* %type_attrs67, align 2, !tbaa !32
  %70 = load i16*, i16** %packed, align 8, !tbaa !1
  %71 = load i16, i16* %70, align 2, !tbaa !26
  %conv70 = zext i16 %71 to i32
  %cmp71 = icmp sge i32 %conv70, 16384
  br i1 %cmp71, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.end
  %72 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds i16, i16* %72, i64 1
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.end
  %73 = load i16*, i16** %packed, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i16, i16* %73, i64 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i16* [ %add.ptr74, %cond.true.73 ], [ %add.ptr76, %cond.false.75 ]
  store i16* %cond78, i16** %packed, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.77
  %74 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add i32 %74, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  %75 = load %struct.ref_s*, %struct.ref_s** %pdest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pdest, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #1
  %77 = bitcast %struct.ref_s** %pdest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i16** %packed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.38, %for.end, %sw.bb.40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.then.37, %if.then.29, %if.then.21, %if.then
  %80 = bitcast i32* %fromsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %fromtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @refcpy_to_old(%struct.ref_s*, i32, %struct.ref_s*, i32, %struct.gs_dual_memory_s*, i8*) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @dict_first(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @forall_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

declare i32 @imemory_save_level(%struct.gs_ref_memory_s*) #2

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

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
!20 = !{!9, !9, i64 0}
!21 = !{!6, !2, i64 632}
!22 = !{!13, !13, i64 0}
!23 = !{!6, !2, i64 640}
!24 = !{!6, !9, i64 688}
!25 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 4, i64 4, !20, i64 8, i64 8, !22, i64 8, i64 2, !26, i64 8, i64 4, !27, i64 8, i64 8, !22, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !22}
!26 = !{!12, !12, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!10, !9, i64 4}
!30 = !{!6, !2, i64 520}
!31 = !{!6, !2, i64 536}
!32 = !{!10, !12, i64 0}
!33 = !{!6, !2, i64 8}
!34 = !{!7, !9, i64 64}
!35 = !{!7, !9, i64 68}
!36 = !{!37, !2, i64 192}
!37 = !{!"gs_memory_s", !2, i64 0, !38, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!39 = !{!40, !2, i64 120}
!40 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!37, !2, i64 128}
!42 = !{!37, !2, i64 120}
!43 = !{!6, !9, i64 148}
