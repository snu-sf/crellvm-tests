; ModuleID = './zfrsd.bc'
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
%struct.stream_SFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i64, %struct.gs_const_string_s, i64, i32, i32, i32 }
%struct.obj_header_s = type opaque
%struct.aos_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.ref_s, %struct.stream_s*, i32, i32, i32 }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"make_rss\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"2.reusablestream\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"2.rsdparams\00", align 1
@zfrsd_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreusablestream }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrsdparams }, %struct.op_def zeroinitializer], align 16
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s_SFD_template = external constant %struct.stream_template_s, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"aos_stream\00", align 1
@st_aos_state = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @aos_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @aos_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @aos_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"st_aos_state\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"aos_stream_buf\00", align 1
@s_aos_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_aos_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_aos_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_aos_procs = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_aos_available, i32 (%struct.stream_s*, i64)* @s_aos_seek, void (%struct.stream_s*)* @s_aos_reset, i32 (%struct.stream_s*)* @s_aos_flush, i32 (%struct.stream_s*)* @s_aos_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_aos_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"aos_state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"s_aos_close(buffer)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"DecodeParms\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Intent\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"AsyncRead\00", align 1

; Function Attrs: nounwind uwtable
define i32 @make_rss(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i8* %data, i32 %size, i32 %string_space, i64 %offset, i64 %length, i32 %is_bytestring) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %string_space.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %is_bytestring.addr = alloca i32, align 4
  %save_space = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %string_space, i32* %string_space.addr, align 4, !tbaa !5
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !7
  store i64 %length, i64* %length.addr, align 8, !tbaa !7
  store i32 %is_bytestring, i32* %is_bytestring.addr, align 4, !tbaa !5
  %0 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %2 = load i32, i32* %current_space, align 4, !tbaa !9
  store i32 %2, i32* %save_space, align 4, !tbaa !5
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %length.addr, align 8, !tbaa !7
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %7 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %sub = sub nsw i64 %conv, %7
  %cmp = icmp slt i64 %5, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i64, i64* %length.addr, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv2 = zext i32 %9 to i64
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %sub3 = sub nsw i64 %conv2, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %sub3, %cond.false ]
  store i64 %cond, i64* %left, align 8, !tbaa !7
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %12 = load i32, i32* %string_space.addr, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory4, i32 %12) #5
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !12
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %17 = load i32, i32* %save_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory6, i32 %17) #5
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.stream_s* %18, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %21 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i64, i64* %left, align 8, !tbaa !7
  %cmp9 = icmp sgt i64 %22, 0
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end
  %23 = load i64, i64* %left, align 8, !tbaa !7
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i64 [ %23, %cond.true.11 ], [ 0, %cond.false.12 ]
  %conv15 = trunc i64 %cond14 to i32
  call void @sread_string_reusable(%struct.stream_s* %19, i8* %add.ptr, i32 %conv15) #5
  %24 = load i32, i32* %is_bytestring.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end.13
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 12
  %data17 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* null, i8** %data17, align 8, !tbaa !22
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end.13
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %26, %struct.stream_s* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %28 = bitcast i64* %left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #2

declare void @sread_string_reusable(%struct.stream_s*, i8*, i32) #2

declare void @make_stream_file(%struct.ref_s*, %struct.stream_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zreusablestream(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %source_op = alloca %struct.ref_s*, align 8
  %length = alloca i64, align 8
  %close_source = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %size30 = alloca i32, align 4
  %i = alloca i32, align 4
  %blk_cnt = alloca i32, align 4
  %blk_sz = alloca i32, align 4
  %blk_ref = alloca %struct.ref_s*, align 8
  %filelen = alloca i64, align 8
  %len = alloca i32, align 4
  %offset = alloca i64, align 8
  %source = alloca %struct.stream_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fcode = alloca i32, align 4
  %pos = alloca i64, align 8
  %avail = alloca i64, align 8
  %sfd_state = alloca %struct.stream_SFD_state_s*, align 8
  %left = alloca i64, align 8
  %rs299 = alloca %struct.stream_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !27
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %source_op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %source_op, align 8, !tbaa !1
  %5 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 9223372036854775807, i64* %length, align 8, !tbaa !7
  %6 = bitcast i32* %close_source to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %13 = load i16, i16* %boolval, align 2, !tbaa !29
  %conv2 = zext i16 %13 to i32
  store i32 %conv2, i32* %close_source, align 4, !tbaa !5
  %14 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %15 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx5, align 1, !tbaa !28
  %conv6 = zext i8 %16 to i32
  %cmp7 = icmp eq i32 %conv6, 18
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %17 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !30
  store i32 %19, i32* %size, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %20 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %21 = load i16, i16* %type_attrs12, align 2, !tbaa !31
  %conv13 = zext i16 %21 to i32
  %and = and i32 %conv13, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value16 to i8**
  %25 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %27 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %28 = load i16, i16* %type_attrs18, align 2, !tbaa !31
  %conv19 = zext i16 %28 to i32
  %and20 = and i32 %conv19, 12
  %29 = load i32, i32* %size, align 4, !tbaa !5
  %conv21 = zext i32 %29 to i64
  %call22 = call i32 @make_rss(%struct.gs_context_state_s* %22, %struct.ref_s* %23, i8* %25, i32 %26, i32 %and20, i64 0, i64 %conv21, i32 0) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.14
  %30 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.320 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.311

if.else:                                          ; preds = %if.end
  %31 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %32 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx25, align 1, !tbaa !28
  %conv26 = zext i8 %33 to i32
  %cmp27 = icmp eq i32 %conv26, 9
  br i1 %cmp27, label %if.then.29, label %if.else.68

if.then.29:                                       ; preds = %if.else
  %34 = bitcast i32* %size30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !12
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %38 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !32
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !12
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %42 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %pstruct = bitcast %union.v* %value33 to %struct.obj_header_s**
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to i8*
  %call34 = call i32 %38(%struct.gs_memory_s* %41, i8* %44) #5
  store i32 %call34, i32* %size30, align 4, !tbaa !5
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %current36 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory35, i32 0, i32 0
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current36, align 8, !tbaa !12
  %47 = bitcast %struct.gs_ref_memory_s* %46 to %struct.gs_memory_s*
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 15
  %48 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !35
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !12
  %51 = bitcast %struct.gs_ref_memory_s* %50 to %struct.gs_memory_s*
  %52 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %pstruct41 = bitcast %union.v* %value40 to %struct.obj_header_s**
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct41, align 8, !tbaa !1
  %54 = bitcast %struct.obj_header_s* %53 to i8*
  %call42 = call %struct.gs_memory_struct_type_s* %48(%struct.gs_memory_s* %51, i8* %54) #5
  %cmp43 = icmp ne %struct.gs_memory_struct_type_s* %call42, @st_bytes
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.29
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.46:                                        ; preds = %if.then.29
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %55 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  %56 = load i16, i16* %type_attrs49, align 2, !tbaa !31
  %conv50 = zext i16 %56 to i32
  %and51 = and i32 %conv50, 32
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %do.body.47
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.54:                                        ; preds = %do.body.47
  br label %do.cond.55

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %pstruct58 = bitcast %union.v* %value57 to %struct.obj_header_s**
  %60 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct58, align 8, !tbaa !1
  %61 = bitcast %struct.obj_header_s* %60 to i8*
  %62 = load i32, i32* %size30, align 4, !tbaa !5
  %63 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %64 = load i16, i16* %type_attrs60, align 2, !tbaa !31
  %conv61 = zext i16 %64 to i32
  %and62 = and i32 %conv61, 12
  %65 = load i32, i32* %size30, align 4, !tbaa !5
  %conv63 = zext i32 %65 to i64
  %call64 = call i32 @make_rss(%struct.gs_context_state_s* %57, %struct.ref_s* %58, i8* %61, i32 %62, i32 %and62, i64 0, i64 %conv63, i32 1) #5
  store i32 %call64, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %do.end.56, %if.then.53, %if.then.45
  %66 = bitcast i32* %size30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest.66 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.66, label %cleanup.320 [
    i32 0, label %cleanup.cont.67
  ]

cleanup.cont.67:                                  ; preds = %cleanup.65
  br label %if.end.310

if.else.68:                                       ; preds = %if.else
  %67 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  %68 = bitcast i16* %type_attrs70 to i8*
  %arrayidx71 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx71, align 1, !tbaa !28
  %conv72 = zext i8 %69 to i32
  %cmp73 = icmp eq i32 %conv72, 4
  br i1 %cmp73, label %if.then.75, label %if.else.157

if.then.75:                                       ; preds = %if.else.68
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i32* %blk_sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast %struct.ref_s** %blk_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast i64* %filelen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i64 0, i64* %filelen, align 8, !tbaa !7
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %75 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  %76 = load i16, i16* %type_attrs78, align 2, !tbaa !31
  %conv79 = zext i16 %76 to i32
  %and80 = and i32 %conv79, 32
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %do.body.76
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.83:                                        ; preds = %do.body.76
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  %77 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %rsize87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 2
  %78 = load i32, i32* %rsize87, align 4, !tbaa !30
  store i32 %78, i32* %blk_cnt, align 4, !tbaa !5
  %79 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %refs = bitcast %union.v* %value88 to %struct.ref_s**
  %80 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %80, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %81 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %cmp89 = icmp sgt i32 %81, 0
  br i1 %cmp89, label %if.then.91, label %if.end.132

if.then.91:                                       ; preds = %do.end.85
  %82 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %rsize93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 2
  %83 = load i32, i32* %rsize93, align 4, !tbaa !30
  store i32 %83, i32* %blk_sz, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.91
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %85 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %84, %85
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %87 to i64
  %88 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 %idxprom
  %tas97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx96, i32 0, i32 0
  %type_attrs98 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas97, i32 0, i32 0
  %89 = load i16, i16* %type_attrs98, align 2, !tbaa !31
  %conv99 = zext i16 %89 to i32
  %and100 = and i32 %conv99, 16160
  %cmp101 = icmp eq i32 %and100, 4640
  br i1 %cmp101, label %if.end.115, label %if.then.103

if.then.103:                                      ; preds = %for.body
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %90 to i64
  %91 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 %idxprom104
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx105, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  %92 = bitcast i16* %type_attrs107 to i8*
  %arrayidx108 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx108, align 1, !tbaa !28
  %conv109 = zext i8 %93 to i32
  %cmp110 = icmp eq i32 %conv109, 18
  br i1 %cmp110, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.103
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %94 to i64
  %95 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i64 %idxprom112
  %call114 = call i32 @check_type_failed(%struct.ref_s* %arrayidx113) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call114, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.115:                                       ; preds = %for.body
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom116 = sext i32 %96 to i64
  %97 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 %idxprom116
  %tas118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx117, i32 0, i32 0
  %rsize119 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas118, i32 0, i32 2
  %98 = load i32, i32* %rsize119, align 4, !tbaa !30
  store i32 %98, i32* %len, align 4, !tbaa !5
  %99 = load i32, i32* %len, align 4, !tbaa !5
  %100 = load i32, i32* %blk_sz, align 4, !tbaa !5
  %cmp120 = icmp sgt i32 %99, %100
  br i1 %cmp120, label %if.then.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.115
  %101 = load i32, i32* %len, align 4, !tbaa !5
  %102 = load i32, i32* %blk_sz, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %101, %102
  br i1 %cmp122, label %land.lhs.true, label %if.end.127

land.lhs.true:                                    ; preds = %lor.lhs.false
  %103 = load i32, i32* %i, align 4, !tbaa !5
  %104 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %sub = sub nsw i32 %104, 1
  %cmp124 = icmp slt i32 %103, %sub
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true, %if.end.115
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.127:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %105 = load i32, i32* %len, align 4, !tbaa !5
  %conv128 = sext i32 %105 to i64
  %106 = load i64, i64* %filelen, align 8, !tbaa !7
  %add = add i64 %106, %conv128
  store i64 %add, i64* %filelen, align 8, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.127, %if.then.126, %cond.end
  %107 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %cleanup.dest.130 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.130, label %cleanup.150 [
    i32 0, label %cleanup.cont.131
  ]

cleanup.cont.131:                                 ; preds = %cleanup.129
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.131
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.132

if.end.132:                                       ; preds = %for.end, %do.end.85
  %109 = load i64, i64* %filelen, align 8, !tbaa !7
  %cmp133 = icmp eq i64 %109, 0
  br i1 %cmp133, label %if.then.135, label %if.else.141

if.then.135:                                      ; preds = %if.end.132
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %111 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %112 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  %113 = load i16, i16* %type_attrs137, align 2, !tbaa !31
  %conv138 = zext i16 %113 to i32
  %and139 = and i32 %conv138, 12
  %call140 = call i32 @make_rss(%struct.gs_context_state_s* %110, %struct.ref_s* %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 %and139, i64 0, i64 0, i32 0) #5
  store i32 %call140, i32* %code, align 4, !tbaa !5
  br label %if.end.149

if.else.141:                                      ; preds = %if.end.132
  %114 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %115 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %116 = load i32, i32* %blk_sz, align 4, !tbaa !5
  %117 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %sub142 = sub nsw i32 %117, 1
  %idxprom143 = sext i32 %sub142 to i64
  %118 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i64 %idxprom143
  %tas145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx144, i32 0, i32 0
  %rsize146 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas145, i32 0, i32 2
  %119 = load i32, i32* %rsize146, align 4, !tbaa !30
  %120 = load i64, i64* %filelen, align 8, !tbaa !7
  %conv147 = trunc i64 %120 to i32
  %call148 = call i32 @make_aos(%struct.gs_context_state_s* %114, %struct.ref_s* %115, i32 %116, i32 %119, i32 %conv147) #5
  store i32 %call148, i32* %code, align 4, !tbaa !5
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.141, %if.then.135
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %if.end.149, %cleanup.129, %if.then.82
  %121 = bitcast i64* %filelen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.ref_s** %blk_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %blk_sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %cleanup.dest.155 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.155, label %cleanup.320 [
    i32 0, label %cleanup.cont.156
  ]

cleanup.cont.156:                                 ; preds = %cleanup.150
  br label %if.end.309

if.else.157:                                      ; preds = %if.else.68
  %126 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  store i64 0, i64* %offset, align 8, !tbaa !7
  %127 = bitcast %struct.stream_s** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  %128 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  br label %do.body.158

do.body.158:                                      ; preds = %if.else.157
  %129 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %type_attrs160 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas159, i32 0, i32 0
  %130 = load i16, i16* %type_attrs160, align 2, !tbaa !31
  %conv161 = zext i16 %130 to i32
  %and162 = and i32 %conv161, 16160
  %cmp163 = icmp eq i32 %and162, 800
  br i1 %cmp163, label %if.end.177, label %if.then.165

if.then.165:                                      ; preds = %do.body.158
  %131 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 0
  %type_attrs167 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas166, i32 0, i32 0
  %132 = bitcast i16* %type_attrs167 to i8*
  %arrayidx168 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i8, i8* %arrayidx168, align 1, !tbaa !28
  %conv169 = zext i8 %133 to i32
  %cmp170 = icmp eq i32 %conv169, 3
  br i1 %cmp170, label %cond.false.174, label %cond.true.172

cond.true.172:                                    ; preds = %if.then.165
  %134 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %call173 = call i32 @check_type_failed(%struct.ref_s* %134) #5
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.then.165
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.172
  %cond176 = phi i32 [ %call173, %cond.true.172 ], [ -7, %cond.false.174 ]
  store i32 %cond176, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

if.end.177:                                       ; preds = %do.body.158
  br label %do.body.178

do.body.178:                                      ; preds = %if.end.177
  %135 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value179 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i32 0, i32 1
  %pfile = bitcast %union.v* %value179 to %struct.stream_s**
  %136 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %136, %struct.stream_s** %source, align 8, !tbaa !1
  %137 = load %struct.stream_s*, %struct.stream_s** %source, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %137, i32 0, i32 19
  %138 = load i16, i16* %read_id, align 2, !tbaa !36
  %conv180 = zext i16 %138 to i32
  %139 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 0
  %rsize182 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas181, i32 0, i32 2
  %140 = load i32, i32* %rsize182, align 4, !tbaa !30
  %cmp183 = icmp ne i32 %conv180, %140
  br i1 %cmp183, label %if.then.185, label %if.end.207

if.then.185:                                      ; preds = %do.body.178
  %141 = load %struct.stream_s*, %struct.stream_s** %source, align 8, !tbaa !1
  %read_id186 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %141, i32 0, i32 19
  %142 = load i16, i16* %read_id186, align 2, !tbaa !36
  %conv187 = zext i16 %142 to i32
  %cmp188 = icmp eq i32 %conv187, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.205

land.lhs.true.190:                                ; preds = %if.then.185
  %143 = load %struct.stream_s*, %struct.stream_s** %source, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %143, i32 0, i32 20
  %144 = load i16, i16* %write_id, align 2, !tbaa !37
  %conv191 = zext i16 %144 to i32
  %145 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %tas192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 0
  %rsize193 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas192, i32 0, i32 2
  %146 = load i32, i32* %rsize193, align 4, !tbaa !30
  %cmp194 = icmp eq i32 %conv191, %146
  br i1 %cmp194, label %if.then.196, label %if.else.205

if.then.196:                                      ; preds = %land.lhs.true.190
  %147 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %call197 = call i32 @file_switch_to_read(%struct.ref_s* %148) #5
  store i32 %call197, i32* %fcode, align 4, !tbaa !5
  %149 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %149, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.then.196
  %150 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.201:                                       ; preds = %if.then.196
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.202

cleanup.202:                                      ; preds = %if.end.201, %if.then.200
  %151 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.304 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.202
  br label %if.end.206

if.else.205:                                      ; preds = %land.lhs.true.190, %if.then.185
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 18
  %153 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !38
  store %struct.stream_s* %153, %struct.stream_s** %source, align 8, !tbaa !1
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %cleanup.cont.204
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %do.body.178
  br label %do.cond.208

do.cond.208:                                      ; preds = %if.end.207
  br label %do.end.209

do.end.209:                                       ; preds = %do.cond.208
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.end.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %154 = load %struct.stream_s*, %struct.stream_s** %source, align 8, !tbaa !1
  store %struct.stream_s* %154, %struct.stream_s** %s, align 8, !tbaa !1
  br label %rs

rs:                                               ; preds = %cleanup.292, %do.end.211
  %155 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %155, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  %156 = load i8*, i8** %data, align 8, !tbaa !22
  %cmp212 = icmp ne i8* %156, null
  br i1 %cmp212, label %if.then.214, label %if.else.233

if.then.214:                                      ; preds = %rs
  %157 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call215 = call i64 @stell(%struct.stream_s* %158) #5
  store i64 %call215, i64* %pos, align 8, !tbaa !7
  %159 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  %160 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %160, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %161 = load i8*, i8** %limit, align 8, !tbaa !39
  %162 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor216 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %162, i32 0, i32 5
  %r217 = bitcast %union.stream_cursor_s* %cursor216 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r217, i32 0, i32 0
  %163 = load i8*, i8** %ptr, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %161 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %163 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %164 = load i64, i64* %pos, align 8, !tbaa !7
  %add218 = add nsw i64 %sub.ptr.sub, %164
  store i64 %add218, i64* %avail, align 8, !tbaa !7
  %165 = load i64, i64* %pos, align 8, !tbaa !7
  %166 = load i64, i64* %offset, align 8, !tbaa !7
  %add219 = add nsw i64 %166, %165
  store i64 %add219, i64* %offset, align 8, !tbaa !7
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %168 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %169 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf_string220 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %169, i32 0, i32 12
  %data221 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string220, i32 0, i32 0
  %170 = load i8*, i8** %data221, align 8, !tbaa !22
  %171 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf_string222 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %171, i32 0, i32 12
  %size223 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string222, i32 0, i32 1
  %172 = load i32, i32* %size223, align 4, !tbaa !42
  %173 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %memory224 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %173, i32 0, i32 1
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory224, align 8, !tbaa !43
  %175 = bitcast %struct.gs_memory_s* %174 to %struct.gs_ref_memory_s*
  %call225 = call i32 @imemory_space(%struct.gs_ref_memory_s* %175) #5
  %176 = load i64, i64* %offset, align 8, !tbaa !7
  %177 = load i64, i64* %avail, align 8, !tbaa !7
  %178 = load i64, i64* %length, align 8, !tbaa !7
  %cmp226 = icmp slt i64 %177, %178
  br i1 %cmp226, label %cond.true.228, label %cond.false.229

cond.true.228:                                    ; preds = %if.then.214
  %179 = load i64, i64* %avail, align 8, !tbaa !7
  br label %cond.end.230

cond.false.229:                                   ; preds = %if.then.214
  %180 = load i64, i64* %length, align 8, !tbaa !7
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.229, %cond.true.228
  %cond231 = phi i64 [ %179, %cond.true.228 ], [ %180, %cond.false.229 ]
  %call232 = call i32 @make_rss(%struct.gs_context_state_s* %167, %struct.ref_s* %168, i8* %170, i32 %172, i32 %call225, i64 %176, i64 %cond231, i32 0) #5
  store i32 %call232, i32* %code, align 4, !tbaa !5
  %181 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  br label %if.end.296

if.else.233:                                      ; preds = %rs
  %183 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %183, i32 0, i32 26
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !44
  %cmp234 = icmp ne %struct._IO_FILE* %184, null
  br i1 %cmp234, label %if.then.236, label %if.else.245

if.then.236:                                      ; preds = %if.else.233
  %185 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %185, i32 0, i32 11
  %186 = load i8, i8* %modes, align 1, !tbaa !45
  %conv237 = zext i8 %186 to i32
  %neg = xor i32 %conv237, -1
  %and238 = and i32 %neg, 5
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.then.236
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

if.end.241:                                       ; preds = %if.then.236
  %187 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %188 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %189 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %190 = load i64, i64* %offset, align 8, !tbaa !7
  %191 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call242 = call i64 @stell(%struct.stream_s* %191) #5
  %add243 = add nsw i64 %190, %call242
  %192 = load i64, i64* %length, align 8, !tbaa !7
  %call244 = call i32 @make_rfs(%struct.gs_context_state_s* %187, %struct.ref_s* %188, %struct.stream_s* %189, i64 %add243, i64 %192) #5
  store i32 %call244, i32* %code, align 4, !tbaa !5
  br label %if.end.295

if.else.245:                                      ; preds = %if.else.233
  %193 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %193, i32 0, i32 18
  %194 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !46
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %194, i32 0, i32 0
  %195 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !47
  %cmp246 = icmp eq %struct.stream_template_s* %195, @s_SFD_template
  br i1 %cmp246, label %if.then.248, label %if.else.294

if.then.248:                                      ; preds = %if.else.245
  %196 = bitcast %struct.stream_SFD_state_s** %sfd_state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  %197 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state249 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %197, i32 0, i32 18
  %198 = load %struct.stream_state_s*, %struct.stream_state_s** %state249, align 8, !tbaa !46
  %199 = bitcast %struct.stream_state_s* %198 to %struct.stream_SFD_state_s*
  store %struct.stream_SFD_state_s* %199, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %200 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %eod = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %200, i32 0, i32 6
  %size250 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod, i32 0, i32 1
  %201 = load i32, i32* %size250, align 4, !tbaa !49
  %cmp251 = icmp ne i32 %201, 0
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.then.248
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.254:                                       ; preds = %if.then.248
  %202 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %skip_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %202, i32 0, i32 7
  %203 = load i64, i64* %skip_count, align 8, !tbaa !51
  %204 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor255 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %204, i32 0, i32 5
  %r256 = bitcast %union.stream_cursor_s* %cursor255 to %struct.stream_cursor_read_s*
  %limit257 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r256, i32 0, i32 1
  %205 = load i8*, i8** %limit257, align 8, !tbaa !39
  %206 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor258 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %206, i32 0, i32 5
  %r259 = bitcast %union.stream_cursor_s* %cursor258 to %struct.stream_cursor_read_s*
  %ptr260 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r259, i32 0, i32 0
  %207 = load i8*, i8** %ptr260, align 8, !tbaa !41
  %sub.ptr.lhs.cast261 = ptrtoint i8* %205 to i64
  %sub.ptr.rhs.cast262 = ptrtoint i8* %207 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %sub264 = sub nsw i64 %203, %sub.ptr.sub263
  %208 = load i64, i64* %offset, align 8, !tbaa !7
  %add265 = add nsw i64 %208, %sub264
  store i64 %add265, i64* %offset, align 8, !tbaa !7
  %209 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %209, i32 0, i32 5
  %210 = load i64, i64* %count, align 8, !tbaa !52
  %cmp266 = icmp ne i64 %210, 0
  br i1 %cmp266, label %if.then.268, label %if.end.291

if.then.268:                                      ; preds = %if.end.254
  %211 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #1
  %212 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %count269 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %212, i32 0, i32 5
  %213 = load i64, i64* %count269, align 8, !tbaa !52
  %cmp270 = icmp sgt i64 %213, 0
  br i1 %cmp270, label %cond.true.272, label %cond.false.274

cond.true.272:                                    ; preds = %if.then.268
  %214 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %sfd_state, align 8, !tbaa !1
  %count273 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %214, i32 0, i32 5
  %215 = load i64, i64* %count273, align 8, !tbaa !52
  br label %cond.end.275

cond.false.274:                                   ; preds = %if.then.268
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.274, %cond.true.272
  %cond276 = phi i64 [ %215, %cond.true.272 ], [ 0, %cond.false.274 ]
  %216 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor277 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %216, i32 0, i32 5
  %r278 = bitcast %union.stream_cursor_s* %cursor277 to %struct.stream_cursor_read_s*
  %limit279 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r278, i32 0, i32 1
  %217 = load i8*, i8** %limit279, align 8, !tbaa !39
  %218 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor280 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %218, i32 0, i32 5
  %r281 = bitcast %union.stream_cursor_s* %cursor280 to %struct.stream_cursor_read_s*
  %ptr282 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r281, i32 0, i32 0
  %219 = load i8*, i8** %ptr282, align 8, !tbaa !41
  %sub.ptr.lhs.cast283 = ptrtoint i8* %217 to i64
  %sub.ptr.rhs.cast284 = ptrtoint i8* %219 to i64
  %sub.ptr.sub285 = sub i64 %sub.ptr.lhs.cast283, %sub.ptr.rhs.cast284
  %add286 = add nsw i64 %cond276, %sub.ptr.sub285
  store i64 %add286, i64* %left, align 8, !tbaa !7
  %220 = load i64, i64* %left, align 8, !tbaa !7
  %221 = load i64, i64* %length, align 8, !tbaa !7
  %cmp287 = icmp slt i64 %220, %221
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %cond.end.275
  %222 = load i64, i64* %left, align 8, !tbaa !7
  store i64 %222, i64* %length, align 8, !tbaa !7
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %cond.end.275
  %223 = bitcast i64* %left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.254
  %224 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %224, i32 0, i32 15
  %225 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !53
  store %struct.stream_s* %225, %struct.stream_s** %s, align 8, !tbaa !1
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.292

cleanup.292:                                      ; preds = %if.end.291, %if.then.253
  %226 = bitcast %struct.stream_SFD_state_s** %sfd_state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %cleanup.dest.293 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.293, label %cleanup.304 [
    i32 15, label %rs
  ]

if.else.294:                                      ; preds = %if.else.245
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

if.end.295:                                       ; preds = %if.end.241
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %cond.end.230
  %227 = load i32, i32* %close_source, align 4, !tbaa !5
  %tobool297 = icmp ne i32 %227, 0
  br i1 %tobool297, label %if.then.298, label %if.end.303

if.then.298:                                      ; preds = %if.end.296
  %228 = bitcast %struct.stream_s** %rs299 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  %229 = load %struct.ref_s*, %struct.ref_s** %source_op, align 8, !tbaa !1
  %value300 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i32 0, i32 1
  %pfile301 = bitcast %union.v* %value300 to %struct.stream_s**
  %230 = load %struct.stream_s*, %struct.stream_s** %pfile301, align 8, !tbaa !1
  store %struct.stream_s* %230, %struct.stream_s** %rs299, align 8, !tbaa !1
  %231 = load %struct.stream_s*, %struct.stream_s** %source, align 8, !tbaa !1
  %232 = load %struct.stream_s*, %struct.stream_s** %rs299, align 8, !tbaa !1
  %strm302 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %232, i32 0, i32 15
  store %struct.stream_s* %231, %struct.stream_s** %strm302, align 8, !tbaa !53
  %233 = load %struct.stream_s*, %struct.stream_s** %rs299, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %233, i32 0, i32 23
  store i32 1, i32* %close_strm, align 4, !tbaa !54
  %234 = bitcast %struct.stream_s** %rs299 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.298, %if.end.296
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.304

cleanup.304:                                      ; preds = %if.end.303, %if.else.294, %cleanup.292, %if.then.240, %cleanup.202, %cond.end.175
  %235 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast %struct.stream_s** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %cleanup.dest.307 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.307, label %cleanup.320 [
    i32 0, label %cleanup.cont.308
  ]

cleanup.cont.308:                                 ; preds = %cleanup.304
  br label %if.end.309

if.end.309:                                       ; preds = %cleanup.cont.308, %cleanup.cont.156
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %cleanup.cont.67
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %cleanup.cont
  %238 = load i32, i32* %code, align 4, !tbaa !5
  %cmp312 = icmp sge i32 %238, 0
  br i1 %cmp312, label %if.then.314, label %if.end.319

if.then.314:                                      ; preds = %if.end.311
  %239 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack315 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %239, i32 0, i32 26
  %stack316 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack315, i32 0, i32 0
  %p317 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack316, i32 0, i32 0
  %240 = load %struct.ref_s*, %struct.ref_s** %p317, align 8, !tbaa !27
  %add.ptr318 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %240, i64 -1
  store %struct.ref_s* %add.ptr318, %struct.ref_s** %p317, align 8, !tbaa !27
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.314, %if.end.311
  %241 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %241, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

cleanup.320:                                      ; preds = %if.end.319, %cleanup.304, %cleanup.150, %cleanup.65, %cleanup, %if.then
  %242 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %close_source to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast %struct.ref_s** %source_op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = load i32, i32* %retval
  ret i32 %247
}

; Function Attrs: nounwind uwtable
define internal i32 @zrsdparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pFilter = alloca %struct.ref_s*, align 8
  %pDecodeParms = alloca %struct.ref_s*, align 8
  %Intent = alloca i32, align 4
  %AsyncRead = alloca i32, align 4
  %empty_array = alloca %struct.ref_s, align 8
  %filter1_array = alloca %struct.ref_s, align 8
  %parms1_array = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %f = alloca %struct.ref_s, align 8
  %fname = alloca %struct.ref_s, align 8
  %dp = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !27
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pFilter to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pDecodeParms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %Intent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %Intent, align 4, !tbaa !5
  %6 = bitcast i32* %AsyncRead to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s* %empty_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s* %filter1_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.ref_s* %parms1_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %empty_array, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %empty_array, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1120, i16* %type_attrs, align 2, !tbaa !31
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %empty_array, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !30
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %pFilter) #5
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %14 = load i16, i16* %type_attrs3, align 2, !tbaa !31
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 15360
  %cmp4 = icmp eq i32 %and, 1024
  br i1 %cmp4, label %if.end.19, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %15 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %16 = bitcast i16* %type_attrs8 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv9 = zext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 13
  br i1 %cmp10, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then.6
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end:                                           ; preds = %if.then.6
  %18 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %filter1_array, i32 0, i32 1
  %refs14 = bitcast %union.v* %value13 to %struct.ref_s**
  store %struct.ref_s* %18, %struct.ref_s** %refs14, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %filter1_array, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 1120, i16* %type_attrs16, align 2, !tbaa !31
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %filter1_array, i32 0, i32 0
  %rsize18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  store i32 1, i32* %rsize18, align 4, !tbaa !30
  store %struct.ref_s* %filter1_array, %struct.ref_s** %pFilter, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %if.end.20

if.else:                                          ; preds = %entry
  store %struct.ref_s* %empty_array, %struct.ref_s** %pFilter, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %19 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.ref_s* %19, %empty_array
  br i1 %cmp21, label %land.lhs.true, label %if.else.55

land.lhs.true:                                    ; preds = %if.end.20
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call23 = call i32 @dict_find_string(%struct.ref_s* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s** %pDecodeParms) #5
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else.55

if.then.26:                                       ; preds = %land.lhs.true
  %21 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.ref_s* %21, %filter1_array
  br i1 %cmp27, label %if.then.29, label %if.else.36

if.then.29:                                       ; preds = %if.then.26
  %22 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %parms1_array, i32 0, i32 1
  %refs31 = bitcast %union.v* %value30 to %struct.ref_s**
  store %struct.ref_s* %22, %struct.ref_s** %refs31, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %parms1_array, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 1120, i16* %type_attrs33, align 2, !tbaa !31
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %parms1_array, i32 0, i32 0
  %rsize35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  store i32 1, i32* %rsize35, align 4, !tbaa !30
  store %struct.ref_s* %parms1_array, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  br label %if.end.54

if.else.36:                                       ; preds = %if.then.26
  %23 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  %24 = load i16, i16* %type_attrs38, align 2, !tbaa !31
  %conv39 = zext i16 %24 to i32
  %and40 = and i32 %conv39, 15360
  %cmp41 = icmp eq i32 %and40, 1024
  br i1 %cmp41, label %if.else.44, label %if.then.43

if.then.43:                                       ; preds = %if.else.36
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.else.44:                                       ; preds = %if.else.36
  %25 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 2
  %26 = load i32, i32* %rsize46, align 4, !tbaa !30
  %27 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 2
  %28 = load i32, i32* %rsize48, align 4, !tbaa !30
  %cmp49 = icmp ne i32 %26, %28
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.else.44
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.52:                                        ; preds = %if.else.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.29
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true, %if.end.20
  store %struct.ref_s* null, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.end.54
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.56
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  %31 = load i32, i32* %rsize58, align 4, !tbaa !30
  %cmp59 = icmp ult i32 %29, %31
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast %struct.ref_s* %f to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = bitcast %struct.ref_s* %dp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !12
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %38 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %conv61 = zext i32 %39 to i64
  %call62 = call i32 @array_get(%struct.gs_memory_s* %37, %struct.ref_s* %38, i64 %conv61, %struct.ref_s* %f) #5
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %f, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  %40 = bitcast i16* %type_attrs64 to i8*
  %arrayidx65 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx65, align 1, !tbaa !28
  %conv66 = zext i8 %41 to i32
  %cmp67 = icmp eq i32 %conv66, 13
  br i1 %cmp67, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %for.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %for.body
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current72, align 8, !tbaa !12
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 2
  %45 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !55
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %45, i32 0, i32 16
  %46 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !56
  call void @names_string_ref(%struct.name_table_s* %46, %struct.ref_s* %f, %struct.ref_s* %fname) #5
  %tas73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 0
  %rsize74 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas73, i32 0, i32 2
  %47 = load i32, i32* %rsize74, align 4, !tbaa !30
  %cmp75 = icmp ult i32 %47, 6
  br i1 %cmp75, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.70
  %value77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 1
  %bytes = bitcast %union.v* %value77 to i8**
  %48 = load i8*, i8** %bytes, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 0
  %rsize79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 2
  %49 = load i32, i32* %rsize79, align 4, !tbaa !30
  %idx.ext = zext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr, i64 -6
  %call81 = call i32 @memcmp(i8* %add.ptr80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 6) #6
  %tobool = icmp ne i32 %call81, 0
  br i1 %tobool, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false, %if.end.70
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %lor.lhs.false
  %50 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %tobool84 = icmp ne %struct.ref_s* %50, null
  br i1 %tobool84, label %if.then.85, label %if.end.105

if.then.85:                                       ; preds = %if.end.83
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current87 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory86, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current87, align 8, !tbaa !12
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %54 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %conv88 = zext i32 %55 to i64
  %call89 = call i32 @array_get(%struct.gs_memory_s* %53, %struct.ref_s* %54, i64 %conv88, %struct.ref_s* %dp) #5
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dp, i32 0, i32 0
  %type_attrs91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 0
  %56 = bitcast i16* %type_attrs91 to i8*
  %arrayidx92 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx92, align 1, !tbaa !28
  %conv93 = zext i8 %57 to i32
  %cmp94 = icmp eq i32 %conv93, 2
  br i1 %cmp94, label %if.end.104, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.then.85
  %tas97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dp, i32 0, i32 0
  %type_attrs98 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas97, i32 0, i32 0
  %58 = bitcast i16* %type_attrs98 to i8*
  %arrayidx99 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx99, align 1, !tbaa !28
  %conv100 = zext i8 %59 to i32
  %cmp101 = icmp eq i32 %conv100, 14
  br i1 %cmp101, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %lor.lhs.false.96
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %lor.lhs.false.96, %if.then.85
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.105, %if.then.103, %if.then.82, %if.then.69
  %60 = bitcast %struct.ref_s* %dp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast %struct.ref_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %62 = bitcast %struct.ref_s* %f to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call108 = call i32 @dict_int_param(%struct.ref_s* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 3, i32 0, i32* %Intent) #5
  store i32 %call108, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %65, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.115

land.lhs.true.111:                                ; preds = %for.end
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp ne i32 %66, -15
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %land.lhs.true.111
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.115:                                       ; preds = %land.lhs.true.111, %for.end
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call116 = call i32 @dict_bool_param(%struct.ref_s* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* %AsyncRead) #5
  store i32 %call116, i32* %code, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.115
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.120:                                       ; preds = %if.end.115
  br label %do.body

do.body:                                          ; preds = %if.end.120
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 1
  store %struct.ref_s* %add.ptr121, %struct.ref_s** %op, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack123 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack122, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 2
  %72 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !58
  %cmp124 = icmp ugt %struct.ref_s* %add.ptr121, %72
  br i1 %cmp124, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %do.body
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack127 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 26
  %stack128 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack127, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack128, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !59
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.else.129:                                      ; preds = %do.body
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 26
  %stack131 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack130, i32 0, i32 0
  %p132 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack131, i32 0, i32 0
  store %struct.ref_s* %74, %struct.ref_s** %p132, align 8, !tbaa !27
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.129
  br label %do.cond

do.cond:                                          ; preds = %if.end.133
  br label %do.end

do.end:                                           ; preds = %do.cond
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  %77 = load %struct.ref_s*, %struct.ref_s** %pFilter, align 8, !tbaa !1
  %78 = bitcast %struct.ref_s* %arrayidx134 to i8*
  %79 = bitcast %struct.ref_s* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false), !tbaa.struct !60
  %80 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %tobool135 = icmp ne %struct.ref_s* %80, null
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.end
  %81 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %82 = load %struct.ref_s*, %struct.ref_s** %pDecodeParms, align 8, !tbaa !1
  %83 = bitcast %struct.ref_s* %81 to i8*
  %84 = bitcast %struct.ref_s* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 16, i32 8, i1 false), !tbaa.struct !60
  br label %if.end.140

if.else.137:                                      ; preds = %do.end
  %85 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %type_attrs139 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas138, i32 0, i32 0
  store i16 3584, i16* %type_attrs139, align 2, !tbaa !31
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %if.end.140, %if.then.126, %if.then.119, %if.then.114, %cleanup, %if.then.51, %if.then.43, %if.then.12
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.ref_s* %parms1_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #1
  %89 = bitcast %struct.ref_s* %filter1_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #1
  %90 = bitcast %struct.ref_s* %empty_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #1
  %91 = bitcast i32* %AsyncRead to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %Intent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.ref_s** %pDecodeParms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.ref_s** %pFilter to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_aos(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %blk_sz, i32 %blk_sz_last, i32 %file_sz) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %blk_sz.addr = alloca i32, align 4
  %blk_sz_last.addr = alloca i32, align 4
  %file_sz.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.aos_state_s*, align 8
  %buf = alloca i8*, align 8
  %aos_buf_size = alloca i32, align 4
  %save_space = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %blk_sz, i32* %blk_sz.addr, align 4, !tbaa !5
  store i32 %blk_sz_last, i32* %blk_sz_last.addr, align 4, !tbaa !5
  store i32 %file_sz, i32* %file_sz.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.aos_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %aos_buf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1024, i32* %aos_buf_size, align 4, !tbaa !5
  %4 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %6 = load i32, i32* %current_space, align 4, !tbaa !9
  store i32 %6, i32* %save_space, align 4, !tbaa !5
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !31
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 12
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1, i32 %and) #5
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !12
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !12
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call5 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_aos_state, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #5
  %16 = bitcast %struct.stream_state_s* %call5 to %struct.aos_state_s*
  store %struct.aos_state_s* %16, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !12
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !63
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !12
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %call10 = call i8* %20(%struct.gs_memory_s* %23, i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #5
  store i8* %call10, i8** %buf, align 8, !tbaa !1
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %24, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %25 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.aos_state_s* %25, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %26, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false, %entry
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory17, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current18, align 8, !tbaa !12
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !12
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %34 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %30(%struct.gs_memory_s* %33, i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #5
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current23, align 8, !tbaa !12
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object25, align 8, !tbaa !64
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current27 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current27, align 8, !tbaa !12
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %42 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %43 = bitcast %struct.aos_state_s* %42 to i8*
  call void %38(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #5
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !12
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object31, align 8, !tbaa !64
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !12
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %52 = bitcast %struct.stream_s* %51 to i8*
  call void %47(%struct.gs_memory_s* %50, i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 1
  %54 = load i32, i32* %save_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory34, i32 %54) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.14
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %56 = load i32, i32* %save_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory35, i32 %56) #5
  %57 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %57, i32 0, i32 0
  store %struct.stream_template_s* @s_aos_template, %struct.stream_template_s** %templat, align 8, !tbaa !65
  %58 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %58, i32 0, i32 5
  %59 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %60 = bitcast %struct.ref_s* %blocks to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false), !tbaa.struct !60
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %63 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %s36 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %63, i32 0, i32 6
  store %struct.stream_s* %62, %struct.stream_s** %s36, align 8, !tbaa !67
  %64 = load i32, i32* %blk_sz.addr, align 4, !tbaa !5
  %65 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz37 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %65, i32 0, i32 7
  store i32 %64, i32* %blk_sz37, align 4, !tbaa !68
  %66 = load i32, i32* %blk_sz_last.addr, align 4, !tbaa !5
  %67 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz_last38 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %67, i32 0, i32 8
  store i32 %66, i32* %blk_sz_last38, align 4, !tbaa !69
  %68 = load i32, i32* %file_sz.addr, align 4, !tbaa !5
  %69 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %file_sz39 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %69, i32 0, i32 9
  store i32 %68, i32* %file_sz39, align 4, !tbaa !70
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %71 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @s_std_init(%struct.stream_s* %70, i8* %71, i32 1024, %struct.stream_procs* @s_aos_procs, i32 5) #5
  %72 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %73 = bitcast %struct.aos_state_s* %72 to %struct.stream_state_s*
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 18
  store %struct.stream_state_s* %73, %struct.stream_state_s** %state, align 8, !tbaa !46
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !71
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !72
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 24
  store i32 0, i32* %close_at_eod, align 4, !tbaa !73
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %78, i32 0, i32 19
  store i16 1, i16* %read_id, align 2, !tbaa !36
  %79 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %79, %struct.stream_s* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %81 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %aos_buf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.aos_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i32 @file_switch_to_read(%struct.ref_s*) #2

declare i64 @stell(%struct.stream_s*) #2

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_rfs(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.stream_s* %fs, i64 %offset, i64 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %fs.addr = alloca %struct.stream_s*, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %save_space = alloca i32, align 4
  %stream_space = alloca i32, align 4
  %fname = alloca %struct.gs_const_string_s, align 8
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_s* %fs, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !7
  store i64 %length, i64* %length.addr, align 8, !tbaa !7
  %0 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %2 = load i32, i32* %current_space, align 4, !tbaa !9
  store i32 %2, i32* %save_space, align 4, !tbaa !5
  %3 = bitcast i32* %stream_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !43
  %6 = bitcast %struct.gs_memory_s* %5 to %struct.gs_ref_memory_s*
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %6) #5
  store i32 %call, i32* %stream_space, align 4, !tbaa !5
  %7 = bitcast %struct.gs_const_string_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %call2 = call i32 @sfilename(%struct.stream_s* %11, %struct.gs_const_string_s* %fname) #5
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !74
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !75
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !12
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call4 = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pname, i8* %12, i32 %13, %struct.gs_memory_s* %16) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %19 = load i32, i32* %len, align 4, !tbaa !76
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.7
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !78
  %cmp11 = icmp eq %struct.gx_io_device_s* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current14 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current14, align 8, !tbaa !12
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %call15 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %23, i32 0) #5
  %iodev16 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  store %struct.gx_io_device_s* %call15, %struct.gx_io_device_s** %iodev16, align 8, !tbaa !78
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.10
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %25 = load i32, i32* %stream_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory18, i32 %25) #5
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !12
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %call21 = call i32 @zopen_file(%struct.gs_context_state_s* %26, %struct.gs_parsed_file_name_s* %pname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct.stream_s** %s, %struct.gs_memory_s* %29) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %31 = load i32, i32* %save_space, align 4, !tbaa !5
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory22, i32 %31) #5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %32, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.17
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.17
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %35 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %36 = load i64, i64* %length.addr, align 8, !tbaa !7
  %call26 = call i32 @sread_subfile(%struct.stream_s* %34, i64 %35, i64 %36) #5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @sclose(%struct.stream_s* %37) #5
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 24
  store i32 0, i32* %close_at_eod, align 4, !tbaa !73
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %39, %struct.stream_s* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.28, %if.then.24, %if.then.9, %if.then.6, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct.gs_const_string_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast i32* %stream_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @aos_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pptr = alloca %struct.aos_state_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.aos_state_s*
  store %struct.aos_state_s* %2, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.aos_state_s*, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %3, i32 0, i32 5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %blocks, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !31
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !31
  %5 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @aos_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.aos_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.aos_state_s*
  store %struct.aos_state_s* %2, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.aos_state_s*
  %s = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %5, i32 0, i32 6
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !67
  %7 = bitcast %struct.stream_s* %6 to i8*
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !79
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %9 = load %struct.aos_state_s*, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %9, i32 0, i32 5
  %10 = bitcast %struct.ref_s* %blocks to i8*
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 0
  store i8* %10, i8** %ptr2, align 8, !tbaa !79
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.1, %sw.bb, %sw.default
  %12 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @aos_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.aos_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.aos_state_s*
  store %struct.aos_state_s* %2, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !81
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.aos_state_s*
  %s = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %8, i32 0, i32 6
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !67
  %10 = bitcast %struct.stream_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #5
  %12 = bitcast i8* %call to %struct.stream_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.aos_state_s*
  %s1 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %14, i32 0, i32 6
  store %struct.stream_s* %12, %struct.stream_s** %s1, align 8, !tbaa !67
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_with_refs_s**
  %17 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %16, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %17, i32 0, i32 5
  %18 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !83
  %19 = load %struct.aos_state_s*, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %19, i32 0, i32 5
  %20 = bitcast %struct.ref_s* %blocks to i16*
  %21 = load %struct.aos_state_s*, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %blocks2 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %21, i32 0, i32 5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %blocks2, i64 1
  %22 = bitcast %struct.ref_s* %add.ptr to i16*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %18(i16* %20, i16* %22, %struct.gc_state_s* %23) #5
  %24 = load %struct.aos_state_s*, %struct.aos_state_s** %pptr, align 8, !tbaa !1
  %blocks3 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %24, i32 0, i32 5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %blocks3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %25 = load i16, i16* %type_attrs, align 2, !tbaa !31
  %conv = zext i16 %25 to i32
  %and = and i32 %conv, -2
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, i16* %type_attrs, align 2, !tbaa !31
  %26 = bitcast %struct.aos_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aos_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %blk_i = alloca i32, align 4
  %blk_off = alloca i32, align 4
  %blk_cnt = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %ss = alloca %struct.aos_state_s*, align 8
  %max_count = alloca i32, align 4
  %pos = alloca i32, align 4
  %data = alloca i8*, align 8
  %blk_ref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast i32* %blk_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %blk_off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.aos_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_state_s* %6 to %struct.aos_state_s*
  store %struct.aos_state_s* %7, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %8 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !84
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr, align 8, !tbaa !86
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %max_count, align 4, !tbaa !5
  %13 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %14, i32 0, i32 6
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !67
  %call = call i64 @stell(%struct.stream_s* %15) #5
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %pos, align 4, !tbaa !5
  %16 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %blk_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %s2 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %18, i32 0, i32 6
  %19 = load %struct.stream_s*, %struct.stream_s** %s2, align 8, !tbaa !67
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %20 = load i8*, i8** %limit3, align 8, !tbaa !39
  %21 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %s4 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %21, i32 0, i32 6
  %22 = load %struct.stream_s*, %struct.stream_s** %s4, align 8, !tbaa !67
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_read_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r6, i32 0, i32 0
  %23 = load i8*, i8** %ptr7, align 8, !tbaa !41
  %sub.ptr.lhs.cast8 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %23 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %24 = load i32, i32* %pos, align 4, !tbaa !5
  %conv11 = zext i32 %24 to i64
  %add = add nsw i64 %conv11, %sub.ptr.sub10
  %conv12 = trunc i64 %add to i32
  store i32 %conv12, i32* %pos, align 4, !tbaa !5
  %25 = load i32, i32* %pos, align 4, !tbaa !5
  %26 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %file_sz = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %26, i32 0, i32 9
  %27 = load i32, i32* %file_sz, align 4, !tbaa !70
  %cmp = icmp uge i32 %25, %27
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = load i32, i32* %pos, align 4, !tbaa !5
  %29 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %29, i32 0, i32 7
  %30 = load i32, i32* %blk_sz, align 4, !tbaa !68
  %div = udiv i32 %28, %30
  store i32 %div, i32* %blk_i, align 4, !tbaa !5
  %31 = load i32, i32* %pos, align 4, !tbaa !5
  %32 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz14 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %32, i32 0, i32 7
  %33 = load i32, i32* %blk_sz14, align 4, !tbaa !68
  %rem = urem i32 %31, %33
  store i32 %rem, i32* %blk_off, align 4, !tbaa !5
  %34 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %34, i32 0, i32 5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %blocks, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %35 = load i32, i32* %rsize, align 4, !tbaa !30
  store i32 %35, i32* %blk_cnt, align 4, !tbaa !5
  %36 = load i32, i32* %blk_i, align 4, !tbaa !5
  %37 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %sub = sub nsw i32 %37, 1
  %cmp15 = icmp slt i32 %36, %sub
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %38 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz17 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %38, i32 0, i32 7
  %39 = load i32, i32* %blk_sz17, align 4, !tbaa !68
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %40 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blk_sz_last = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %40, i32 0, i32 8
  %41 = load i32, i32* %blk_sz_last, align 4, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !5
  %42 = load %struct.aos_state_s*, %struct.aos_state_s** %ss, align 8, !tbaa !1
  %blocks18 = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %42, i32 0, i32 5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %blocks18, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %43 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %43, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %44 = load i32, i32* %blk_i, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 %idxprom
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value19 to i8**
  %46 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %46, i8** %data, align 8, !tbaa !1
  %47 = load i32, i32* %max_count, align 4, !tbaa !5
  %48 = load i32, i32* %count, align 4, !tbaa !5
  %49 = load i32, i32* %blk_off, align 4, !tbaa !5
  %sub20 = sub i32 %48, %49
  %cmp21 = icmp ugt i32 %47, %sub20
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %cond.end
  %50 = load i32, i32* %count, align 4, !tbaa !5
  %51 = load i32, i32* %blk_off, align 4, !tbaa !5
  %sub24 = sub i32 %50, %51
  store i32 %sub24, i32* %max_count, align 4, !tbaa !5
  %52 = load i32, i32* %blk_i, align 4, !tbaa !5
  %53 = load i32, i32* %blk_cnt, align 4, !tbaa !5
  %sub25 = sub nsw i32 %53, 1
  %cmp26 = icmp eq i32 %52, %sub25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.23
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %cond.end
  %54 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %54, i32 0, i32 1
  %55 = load i8*, i8** %ptr31, align 8, !tbaa !86
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8*, i8** %data, align 8, !tbaa !1
  %57 = load i32, i32* %blk_off, align 4, !tbaa !5
  %idx.ext = sext i32 %57 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  %58 = load i32, i32* %max_count, align 4, !tbaa !5
  %conv33 = zext i32 %58 to i64
  %call34 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr32, i64 %conv33) #7
  %59 = load i32, i32* %max_count, align 4, !tbaa !5
  %60 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %ptr35, align 8, !tbaa !86
  %idx.ext36 = zext i32 %59 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %61, i64 %idx.ext36
  store i8* %add.ptr37, i8** %ptr35, align 8, !tbaa !86
  %62 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then
  %63 = bitcast %struct.ref_s** %blk_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.aos_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %blk_off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %blk_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @s_aos_available(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 18
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !46
  %2 = bitcast %struct.stream_state_s* %1 to %struct.aos_state_s*
  %file_sz = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %2, i32 0, i32 9
  %3 = load i32, i32* %file_sz, align 4, !tbaa !70
  %conv = zext i32 %3 to i64
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %4) #5
  %sub = sub nsw i64 %conv, %call
  %5 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %sub, i64* %5, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aos_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %end = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !7
  %0 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !39
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 6
  %4 = load i8*, i8** %cbuf, align 8, !tbaa !87
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %end, align 4, !tbaa !5
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 13
  %8 = load i64, i64* %position, align 8, !tbaa !88
  %sub = sub nsw i64 %6, %8
  store i64 %sub, i64* %offset, align 8, !tbaa !7
  %9 = load i64, i64* %offset, align 8, !tbaa !7
  %cmp = icmp sge i64 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %offset, align 8, !tbaa !7
  %11 = load i32, i32* %end, align 4, !tbaa !5
  %conv2 = zext i32 %11 to i64
  %cmp3 = icmp sle i64 %10, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  %13 = load i8*, i8** %cbuf5, align 8, !tbaa !87
  %14 = load i64, i64* %offset, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %r8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r8, i32 0, i32 0
  store i8* %add.ptr6, i8** %ptr, align 8, !tbaa !41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %cmp9 = icmp slt i64 %16, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 30
  %19 = load i64, i64* %file_limit, align 8, !tbaa !72
  %cmp11 = icmp sgt i64 %17, %19
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 6
  %21 = load i8*, i8** %cbuf15, align 8, !tbaa !87
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 -1
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_read_s*
  %limit19 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r18, i32 0, i32 1
  store i8* %add.ptr16, i8** %limit19, align 8, !tbaa !39
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %r21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_read_s*
  %ptr22 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r21, i32 0, i32 0
  store i8* %add.ptr16, i8** %ptr22, align 8, !tbaa !41
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !89
  %25 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 13
  store i64 %25, i64* %position23, align 8, !tbaa !88
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then
  %27 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @s_aos_reset(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 13
  store i64 0, i64* %position, align 8, !tbaa !88
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 6
  %2 = load i8*, i8** %cbuf, align 8, !tbaa !87
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !39
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !41
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aos_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 18
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !46
  %2 = bitcast %struct.stream_state_s* %1 to %struct.aos_state_s*
  %file_sz = getelementptr inbounds %struct.aos_state_s, %struct.aos_state_s* %2, i32 0, i32 9
  %3 = load i32, i32* %file_sz, align 4, !tbaa !70
  %conv = zext i32 %3 to i64
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 13
  store i64 %conv, i64* %position, align 8, !tbaa !88
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %cbuf, align 8, !tbaa !87
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 -1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !39
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aos_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !43
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %cbuf, align 8, !tbaa !87
  call void %2(%struct.gs_memory_s* %4, i8* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #5
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 6
  store i8* null, i8** %cbuf2, align 8, !tbaa !87
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 19
  %9 = load i16, i16* %read_id, align 2, !tbaa !36
  %conv = zext i16 %9 to i32
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 20
  %11 = load i16, i16* %write_id, align 2, !tbaa !37
  %conv3 = zext i16 %11 to i32
  %or = or i32 %conv, %conv3
  %add = add nsw i32 %or, 1
  %conv4 = trunc i32 %add to i16
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  store i16 %conv4, i16* %write_id5, align 2, !tbaa !37
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  store i16 %conv4, i16* %read_id6, align 2, !tbaa !36
  ret i32 0
}

declare i32 @sfilename(%struct.stream_s*, %struct.gs_const_string_s*) #2

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #2

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #2

declare i32 @zopen_file(%struct.gs_context_state_s*, %struct.gs_parsed_file_name_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #2

declare i32 @sread_subfile(%struct.stream_s*, i64, i64) #2

declare i32 @sclose(%struct.stream_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 48}
!10 = !{!"gs_dual_memory_s", !2, i64 0, !11, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!11 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!12 = !{!13, !2, i64 8}
!13 = !{!"gs_context_state_s", !2, i64 0, !10, i64 8, !6, i64 80, !14, i64 88, !14, i64 104, !8, i64 120, !8, i64 128, !8, i64 136, !6, i64 144, !6, i64 148, !14, i64 152, !14, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !17, i64 264, !17, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !18, i64 368, !20, i64 520, !21, i64 624, !2, i64 720}
!14 = !{!"ref_s", !15, i64 0, !3, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2, !6, i64 4}
!16 = !{!"short", !3, i64 0}
!17 = !{!"op_array_table_s", !14, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!18 = !{!"dict_stack_s", !19, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !14, i64 136}
!19 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !6, i64 40, !6, i64 44, !14, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!20 = !{!"exec_stack_s", !19, i64 0, !2, i64 96}
!21 = !{!"op_stack_s", !19, i64 0}
!22 = !{!23, !2, i64 160}
!23 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !16, i64 152, !3, i64 154, !3, i64 155, !24, i64 160, !8, i64 176, !25, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !16, i64 264, !16, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !26, i64 312, !6, i64 328, !8, i64 336, !8, i64 344}
!24 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!25 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!13, !2, i64 624}
!28 = !{!3, !3, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!14, !6, i64 4}
!31 = !{!14, !16, i64 0}
!32 = !{!33, !2, i64 120}
!33 = !{!"gs_memory_s", !2, i64 0, !34, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!35 = !{!33, !2, i64 128}
!36 = !{!23, !16, i64 264}
!37 = !{!23, !16, i64 266}
!38 = !{!13, !2, i64 256}
!39 = !{!40, !2, i64 8}
!40 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!40, !2, i64 0}
!42 = !{!23, !6, i64 168}
!43 = !{!23, !2, i64 8}
!44 = !{!23, !2, i64 304}
!45 = !{!23, !3, i64 155}
!46 = !{!23, !2, i64 256}
!47 = !{!48, !2, i64 0}
!48 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!49 = !{!50, !6, i64 128}
!50 = !{!"stream_SFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !8, i64 112, !26, i64 120, !8, i64 136, !6, i64 144, !6, i64 148, !6, i64 152}
!51 = !{!50, !8, i64 136}
!52 = !{!50, !8, i64 112}
!53 = !{!23, !2, i64 240}
!54 = !{!23, !6, i64 288}
!55 = !{!33, !2, i64 192}
!56 = !{!57, !2, i64 120}
!57 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!58 = !{!13, !2, i64 640}
!59 = !{!13, !6, i64 688}
!60 = !{i64 0, i64 2, !29, i64 2, i64 2, !29, i64 4, i64 4, !5, i64 8, i64 8, !7, i64 8, i64 2, !29, i64 8, i64 4, !61, i64 8, i64 8, !7, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !7}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !3, i64 0}
!63 = !{!33, !2, i64 64}
!64 = !{!33, !2, i64 24}
!65 = !{!66, !2, i64 0}
!66 = !{!"aos_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !14, i64 112, !2, i64 128, !6, i64 136, !6, i64 140, !6, i64 144}
!67 = !{!66, !2, i64 128}
!68 = !{!66, !6, i64 136}
!69 = !{!66, !6, i64 140}
!70 = !{!66, !6, i64 144}
!71 = !{!23, !8, i64 336}
!72 = !{!23, !8, i64 344}
!73 = !{!23, !6, i64 292}
!74 = !{!26, !2, i64 0}
!75 = !{!26, !6, i64 8}
!76 = !{!77, !6, i64 24}
!77 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!78 = !{!77, !2, i64 8}
!79 = !{!80, !2, i64 0}
!80 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!81 = !{!82, !2, i64 0}
!82 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!83 = !{!82, !2, i64 40}
!84 = !{!85, !2, i64 16}
!85 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!86 = !{!85, !2, i64 8}
!87 = !{!23, !2, i64 136}
!88 = !{!23, !8, i64 176}
!89 = !{!23, !16, i64 152}
