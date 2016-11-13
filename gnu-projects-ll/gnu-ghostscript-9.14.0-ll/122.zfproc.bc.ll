; ModuleID = './zfproc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
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
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.stream_proc_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, %struct.ref_s, %struct.ref_s }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@s_proc_read_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_sproc_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_proc_read_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_proc_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@s_proc_read_procs = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* null, i32 (%struct.stream_s*, i32)* null }, align 8
@s_proc_write_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_sproc_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_proc_write_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_proc_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@s_proc_write_procs = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_proc_write_flush, i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* null, i32 (%struct.stream_s*, i32)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"2%s_proc_read_continue\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"2%s_proc_write_continue\00", align 1
@zfproc_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @s_proc_read_continue }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @s_proc_write_continue }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"s_proc_init(stream)\00", align 1
@st_sproc_state = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @sproc_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @sproc_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @sproc_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"s_proc_init(state)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"procedure stream state\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define i32 @sread_proc(%struct.ref_s* %sop, %struct.stream_s** %psstrm, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %sop.addr = alloca %struct.ref_s*, align 8
  %psstrm.addr = alloca %struct.stream_s**, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %sop, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  store %struct.stream_s** %psstrm, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  %2 = load %struct.stream_s**, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @s_proc_init(%struct.ref_s* %1, %struct.stream_s** %2, i32 1, %struct.stream_template_s* @s_proc_read_template, %struct.stream_procs* @s_proc_read_procs, %struct.gs_ref_memory_s* %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_s**, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %6, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  store i16 -4, i16* %end_status, align 2, !tbaa !7
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_init(%struct.ref_s* %sop, %struct.stream_s** %psstrm, i32 %mode, %struct.stream_template_s* %temp, %struct.stream_procs* %procs, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %sop.addr = alloca %struct.ref_s*, align 8
  %psstrm.addr = alloca %struct.stream_s**, align 8
  %mode.addr = alloca i32, align 4
  %temp.addr = alloca %struct.stream_template_s*, align 8
  %procs.addr = alloca %struct.stream_procs*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %sstrm = alloca %struct.stream_s*, align 8
  %state = alloca %struct.stream_proc_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %sop, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  store %struct.stream_s** %psstrm, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  store %struct.stream_template_s* %temp, %struct.stream_template_s** %temp.addr, align 8, !tbaa !1
  store %struct.stream_procs* %procs, %struct.stream_procs** %procs.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  store %struct.stream_s* %call, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %5 = bitcast %struct.stream_proc_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call1 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_sproc_state, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #4
  %7 = bitcast %struct.stream_state_s* %call1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %7, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %8 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %8, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.stream_proc_state_s* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %14 = bitcast %struct.stream_proc_state_s* %13 to i8*
  call void %11(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %16 = load %struct.stream_procs*, %struct.stream_procs** %procs.addr, align 8, !tbaa !1
  %17 = load i32, i32* %mode.addr, align 4, !tbaa !5
  call void @s_std_init(%struct.stream_s* %15, i8* null, i32 0, %struct.stream_procs* %16, i32 %17) #4
  %18 = load %struct.stream_template_s*, %struct.stream_template_s** %temp.addr, align 8, !tbaa !1
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %18, i32 0, i32 2
  %19 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !17
  %20 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 14
  %process5 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs4, i32 0, i32 5
  store i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %19, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process5, align 8, !tbaa !19
  %21 = load %struct.stream_template_s*, %struct.stream_template_s** %temp.addr, align 8, !tbaa !1
  %22 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %22, i32 0, i32 0
  store %struct.stream_template_s* %21, %struct.stream_template_s** %templat, align 8, !tbaa !20
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %24 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %24, i32 0, i32 1
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %25 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %25, i32 0, i32 5
  store i32 0, i32* %eof, align 4, !tbaa !25
  %26 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %26, i32 0, i32 7
  %27 = load %struct.ref_s*, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %proc to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !26
  %30 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %30, i32 0, i32 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %31 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %31, i32 0, i32 8
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4720, i16* %type_attrs, align 2, !tbaa !31
  %32 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %32, i32 0, i32 8
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %33 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %33, i32 0, i32 6
  store i32 0, i32* %index, align 4, !tbaa !33
  %34 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %state, align 8, !tbaa !1
  %35 = bitcast %struct.stream_proc_state_s* %34 to %struct.stream_state_s*
  %36 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %state9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 18
  store %struct.stream_state_s* %35, %struct.stream_state_s** %state9, align 8, !tbaa !34
  %37 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %38 = load %struct.stream_s**, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  store %struct.stream_s* %37, %struct.stream_s** %38, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %39 = bitcast %struct.stream_proc_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @s_handle_read_exception(%struct.gs_context_state_s* %i_ctx_p, i32 %status, %struct.ref_s* %fop, %struct.ref_s* %pstate, i32 %nstate, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %status.addr = alloca i32, align 4
  %fop.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.ref_s*, align 8
  %nstate.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %npush = alloca i32, align 4
  %ps = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %status, i32* %status.addr, align 4, !tbaa !5
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstate, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  store i32 %nstate, i32* %nstate.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 4
  store i32 %add, i32* %npush, align 4, !tbaa !5
  %2 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %status.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 -3, label %sw.bb
    i32 -4, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  %6 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %7 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call = call i32 @s_handle_intc(%struct.gs_context_state_s* %4, %struct.ref_s* %5, i32 %6, i32 (%struct.gs_context_state_s*)* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

sw.default:                                       ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

sw.epilog:                                        ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.epilog
  %10 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 15
  %11 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !35
  %cmp = icmp ne %struct.stream_s* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 15
  %13 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !35
  store %struct.stream_s* %13, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !36
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !45
  %18 = load i32, i32* %npush, align 4, !tbaa !5
  %idx.ext = sext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 %idx.neg
  %cmp4 = icmp ugt %struct.ref_s* %15, %add.ptr
  br i1 %cmp4, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.end
  %19 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %21 = load i32, i32* %npush, align 4, !tbaa !5
  %call7 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack6, i32 %21) #4
  store i32 %call7, i32* %es_code_, align 4, !tbaa !5
  %22 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %23 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %24 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %for.end
  %25 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.10
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !36
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  %28 = bitcast %struct.ref_s* %add.ptr15 to i8*
  %29 = load %struct.ref_s*, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  %30 = bitcast %struct.ref_s* %29 to i8*
  %31 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %conv = sext i32 %31 to i64
  %mul = mul i64 %conv, 16
  %call16 = call i8* @memcpy(i8* %28, i8* %30, i64 %mul) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %if.end.10
  %32 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack19 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !36
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %opproc = bitcast %union.v* %value22 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %32, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !36
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !31
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack28 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !36
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %39 = load i32, i32* %npush, align 4, !tbaa !5
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !36
  %idx.ext35 = sext i32 %39 to i64
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %idx.ext35
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p34, align 8, !tbaa !36
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !36
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 1
  %opproc42 = bitcast %union.v* %value41 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @s_proc_read_continue, i32 (%struct.gs_context_state_s*)** %opproc42, align 8, !tbaa !1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !36
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -2
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 3968, i16* %type_attrs48, align 2, !tbaa !31
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !36
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -2
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  store i32 0, i32* %rsize54, align 4, !tbaa !32
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %50 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %51 = bitcast %struct.ref_s* %arrayidx to i8*
  %52 = bitcast %struct.ref_s* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false), !tbaa.struct !26
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 25
  %stack59 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack58, i32 0, i32 0
  %p60 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack59, i32 0, i32 0
  %54 = load %struct.ref_s*, %struct.ref_s** %p60, align 8, !tbaa !36
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %55 = load i16, i16* %type_attrs63, align 2, !tbaa !31
  %conv64 = zext i16 %55 to i32
  %and = and i32 %conv64, -129
  %conv65 = trunc i32 %and to i16
  store i16 %conv65, i16* %type_attrs63, align 2, !tbaa !31
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %p68 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack67, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p68, align 8, !tbaa !36
  %58 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %58, i32 0, i32 18
  %59 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !34
  %60 = bitcast %struct.stream_state_s* %59 to %struct.stream_proc_state_s*
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %60, i32 0, i32 7
  %61 = bitcast %struct.ref_s* %57 to i8*
  %62 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false), !tbaa.struct !26
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.17, %cleanup, %sw.default, %sw.bb
  %63 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @s_handle_intc(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pstate, i32 %nstate, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstate.addr = alloca %struct.ref_s*, align 8
  %nstate.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %npush = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstate, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  store i32 %nstate, i32* %nstate.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 2
  store i32 %add, i32* %npush, align 4, !tbaa !5
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !36
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !45
  %6 = load i32, i32* %npush, align 4, !tbaa !5
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 %idx.neg
  %cmp = icmp ugt %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %9 = load i32, i32* %npush, align 4, !tbaa !5
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack4, i32 %9) #4
  store i32 %call, i32* %es_code_, align 4, !tbaa !5
  %10 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %11 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %12 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %13 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.7
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !36
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 2
  %16 = bitcast %struct.ref_s* %add.ptr12 to i8*
  %17 = load %struct.ref_s*, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  %18 = bitcast %struct.ref_s* %17 to i8*
  %19 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %conv = sext i32 %19 to i64
  %mul = mul i64 %conv, 16
  %call13 = call i8* @memcpy(i8* %16, i8* %18, i64 %mul) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end.7
  %20 = load i32, i32* %npush, align 4, !tbaa !5
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %npush, align 4, !tbaa !5
  %21 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !36
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %21, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !36
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !31
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !36
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %28 = load i32, i32* %npush, align 4, !tbaa !5
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !36
  %idx.ext31 = sext i32 %28 to i64
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 %idx.ext31
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %p30, align 8, !tbaa !36
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.14, %cleanup
  %31 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_read_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opbuf = alloca %struct.ref_s*, align 8
  %ps = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.stream_proc_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %opbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %5 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %ps, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !48
  %conv2 = zext i16 %14 to i32
  %15 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 20
  %16 = load i16, i16* %write_id, align 2, !tbaa !49
  %conv3 = zext i16 %16 to i32
  %or = or i32 %conv2, %conv3
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !32
  %cmp5 = icmp ne i32 %or, %18
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %20 = load i16, i16* %type_attrs10, align 2, !tbaa !31
  %conv11 = zext i16 %20 to i32
  %and = and i32 %conv11, 16160
  %cmp12 = icmp eq i32 %and, 4640
  br i1 %cmp12, label %if.end.22, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %21 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %22 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx17, align 1, !tbaa !47
  %conv18 = zext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.14
  %24 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %call21 = call i32 @check_type_failed(%struct.ref_s* %24) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.22
  %25 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !7
  %26 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 15
  %27 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !35
  %cmp23 = icmp ne %struct.stream_s* %27, null
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 15
  %29 = load %struct.stream_s*, %struct.stream_s** %strm25, align 8, !tbaa !35
  store %struct.stream_s* %29, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 18
  %31 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !34
  %32 = bitcast %struct.stream_state_s* %31 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %32, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %33 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %33, i32 0, i32 8
  %34 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %35 = bitcast %struct.ref_s* %data to i8*
  %36 = bitcast %struct.ref_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !26
  %37 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %37, i32 0, i32 6
  store i32 0, i32* %index, align 4, !tbaa !33
  %38 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %39 = load i32, i32* %rsize27, align 4, !tbaa !32
  %cmp28 = icmp eq i32 %39, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.end
  %40 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %40, i32 0, i32 5
  store i32 1, i32* %eof, align 4, !tbaa !25
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %while.end
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !46
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %p34, align 8, !tbaa !46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %cond.end, %if.then.7, %if.then
  %43 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %opbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @swrite_proc(%struct.ref_s* %sop, %struct.stream_s** %psstrm, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %sop.addr = alloca %struct.ref_s*, align 8
  %psstrm.addr = alloca %struct.stream_s**, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_s* %sop, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  store %struct.stream_s** %psstrm, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %sop.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s**, %struct.stream_s*** %psstrm.addr, align 8, !tbaa !1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @s_proc_init(%struct.ref_s* %0, %struct.stream_s** %1, i32 2, %struct.stream_template_s* @s_proc_write_template, %struct.stream_procs* @s_proc_write_procs, %struct.gs_ref_memory_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @s_handle_write_exception(%struct.gs_context_state_s* %i_ctx_p, i32 %status, %struct.ref_s* %fop, %struct.ref_s* %pstate, i32 %nstate, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %status.addr = alloca i32, align 4
  %fop.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.ref_s*, align 8
  %nstate.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %ps = alloca %struct.stream_s*, align 8
  %psst = alloca %struct.stream_proc_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %npush = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %status, i32* %status.addr, align 4, !tbaa !5
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstate, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  store i32 %nstate, i32* %nstate.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_proc_state_s** %psst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %status.addr, align 4, !tbaa !5
  switch i32 %2, label %sw.default [
    i32 -3, label %sw.bb
    i32 -4, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  %5 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %6 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call = call i32 @s_handle_intc(%struct.gs_context_state_s* %3, %struct.ref_s* %4, i32 %5, i32 (%struct.gs_context_state_s*)* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

sw.default:                                       ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

sw.epilog:                                        ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %8 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %8, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.epilog
  %9 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 15
  %10 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !35
  %cmp = icmp ne %struct.stream_s* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 15
  %12 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !35
  store %struct.stream_s* %12, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 18
  %14 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !34
  %15 = bitcast %struct.stream_state_s* %14 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %15, %struct.stream_proc_state_s** %psst, align 8, !tbaa !1
  %16 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %add = add nsw i32 %17, 6
  store i32 %add, i32* %npush, align 4, !tbaa !5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !36
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !45
  %22 = load i32, i32* %npush, align 4, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idx.neg
  %cmp4 = icmp ugt %struct.ref_s* %19, %add.ptr
  br i1 %cmp4, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.end
  %23 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %25 = load i32, i32* %npush, align 4, !tbaa !5
  %call7 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack6, i32 %25) #4
  store i32 %call7, i32* %es_code_, align 4, !tbaa !5
  %26 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %26, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %27 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %28 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %for.end
  %29 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.10
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !36
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 2
  %32 = bitcast %struct.ref_s* %add.ptr15 to i8*
  %33 = load %struct.ref_s*, %struct.ref_s** %pstate.addr, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %33 to i8*
  %35 = load i32, i32* %nstate.addr, align 4, !tbaa !5
  %conv = sext i32 %35 to i64
  %mul = mul i64 %conv, 16
  %call16 = call i8* @memcpy(i8* %32, i8* %34, i64 %mul) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %if.end.10
  %36 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack19 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !36
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %opproc = bitcast %union.v* %value22 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %36, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !36
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !31
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack28 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !36
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %43 = load i32, i32* %npush, align 4, !tbaa !5
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !36
  %idx.ext35 = sext i32 %43 to i64
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 %idx.ext35
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p34, align 8, !tbaa !36
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !36
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -4
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 1
  %opproc42 = bitcast %union.v* %value41 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @s_proc_write_continue, i32 (%struct.gs_context_state_s*)** %opproc42, align 8, !tbaa !1
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !36
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -4
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 3968, i16* %type_attrs48, align 2, !tbaa !31
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !36
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -4
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  store i32 0, i32* %rsize54, align 4, !tbaa !32
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -3
  %54 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %55 = bitcast %struct.ref_s* %arrayidx to i8*
  %56 = bitcast %struct.ref_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false), !tbaa.struct !26
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 25
  %stack59 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack58, i32 0, i32 0
  %p60 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack59, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p60, align 8, !tbaa !36
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -3
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %59 = load i16, i16* %type_attrs63, align 2, !tbaa !31
  %conv64 = zext i16 %59 to i32
  %and = and i32 %conv64, -129
  %conv65 = trunc i32 %and to i16
  store i16 %conv65, i16* %type_attrs63, align 2, !tbaa !31
  %60 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %psst, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %60, i32 0, i32 5
  %61 = load i32, i32* %eof, align 4, !tbaa !25
  %tobool66 = icmp ne i32 %61, 0
  %lnot = xor i1 %tobool66, true
  %lnot.ext = zext i1 %lnot to i32
  %conv67 = trunc i32 %lnot.ext to i16
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 25
  %stack69 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack68, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack69, i32 0, i32 0
  %63 = load %struct.ref_s*, %struct.ref_s** %p70, align 8, !tbaa !36
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 1
  %boolval = bitcast %union.v* %value72 to i16*
  store i16 %conv67, i16* %boolval, align 2, !tbaa !27
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 25
  %stack74 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack73, i32 0, i32 0
  %p75 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack74, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p75, align 8, !tbaa !36
  %add.ptr76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr76, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  store i16 256, i16* %type_attrs78, align 2, !tbaa !31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.17, %cleanup
  %66 = bitcast i32* %npush to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.94 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.79
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 25
  %stack83 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack82, i32 0, i32 0
  %p84 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack83, i32 0, i32 0
  %68 = load %struct.ref_s*, %struct.ref_s** %p84, align 8, !tbaa !36
  %arrayidx85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -2
  %69 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %psst, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %69, i32 0, i32 7
  %70 = bitcast %struct.ref_s* %arrayidx85 to i8*
  %71 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false), !tbaa.struct !26
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 25
  %stack87 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack86, i32 0, i32 0
  %p88 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack87, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p88, align 8, !tbaa !36
  %74 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %psst, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %74, i32 0, i32 8
  %75 = bitcast %struct.ref_s* %73 to i8*
  %76 = bitcast %struct.ref_s* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false), !tbaa.struct !26
  %77 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %psst, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %77, i32 0, i32 6
  %78 = load i32, i32* %index, align 4, !tbaa !33
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 25
  %stack90 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack89, i32 0, i32 0
  %p91 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack90, i32 0, i32 0
  %80 = load %struct.ref_s*, %struct.ref_s** %p91, align 8, !tbaa !36
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %rsize93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 2
  store i32 %78, i32* %rsize93, align 4, !tbaa !32
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %cleanup.cont.81, %cleanup.79, %sw.default, %sw.bb
  %81 = bitcast %struct.stream_proc_state_s** %psst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_write_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opbuf = alloca %struct.ref_s*, align 8
  %ps = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.stream_proc_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %opbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %5 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %ps, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !48
  %conv2 = zext i16 %14 to i32
  %15 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 20
  %16 = load i16, i16* %write_id, align 2, !tbaa !49
  %conv3 = zext i16 %16 to i32
  %or = or i32 %conv2, %conv3
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !32
  %cmp5 = icmp ne i32 %or, %18
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %20 = load i16, i16* %type_attrs10, align 2, !tbaa !31
  %conv11 = zext i16 %20 to i32
  %and = and i32 %conv11, 16144
  %cmp12 = icmp eq i32 %and, 4624
  br i1 %cmp12, label %if.end.22, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %21 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %22 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx17, align 1, !tbaa !47
  %conv18 = zext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.14
  %24 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %call21 = call i32 @check_type_failed(%struct.ref_s* %24) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end.22
  %25 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 15
  %26 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !35
  %cmp23 = icmp ne %struct.stream_s* %26, null
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 9
  %28 = load i16, i16* %end_status, align 2, !tbaa !7
  %conv25 = sext i16 %28 to i32
  %cmp26 = icmp eq i32 %conv25, -4
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %while.body
  %29 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %end_status29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 9
  store i16 0, i16* %end_status29, align 2, !tbaa !7
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %while.body
  %30 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %strm31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 15
  %31 = load %struct.stream_s*, %struct.stream_s** %strm31, align 8, !tbaa !35
  store %struct.stream_s* %31, %struct.stream_s** %ps, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %end_status32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 9
  store i16 0, i16* %end_status32, align 2, !tbaa !7
  %33 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 18
  %34 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !34
  %35 = bitcast %struct.stream_state_s* %34 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %35, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %36 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %36, i32 0, i32 8
  %37 = load %struct.ref_s*, %struct.ref_s** %opbuf, align 8, !tbaa !1
  %38 = bitcast %struct.ref_s* %data to i8*
  %39 = bitcast %struct.ref_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false), !tbaa.struct !26
  %40 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %40, i32 0, i32 6
  store i32 0, i32* %index, align 4, !tbaa !33
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !46
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -2
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p35, align 8, !tbaa !46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end, %if.then.7, %if.then
  %43 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %opbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @s_is_proc(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %1 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !19
  %cmp = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %1, @s_proc_read_process
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 14
  %process2 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs1, i32 0, i32 5
  %3 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process2, align 8, !tbaa !19
  %cmp3 = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %3, @s_proc_write_process
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_proc_state_s*, align 8
  %count = alloca i32, align 4
  %wcount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %4, i32 0, i32 8
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !32
  %6 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %6, i32 0, i32 6
  %7 = load i32, i32* %index, align 4, !tbaa !33
  %sub = sub i32 %5, %7
  store i32 %sub, i32* %count, align 4, !tbaa !5
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %limit, align 8, !tbaa !50
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %ptr, align 8, !tbaa !52
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wcount, align 4, !tbaa !5
  %14 = load i32, i32* %wcount, align 4, !tbaa !5
  %15 = load i32, i32* %count, align 4, !tbaa !5
  %cmp1 = icmp ult i32 %14, %15
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %16 = load i32, i32* %wcount, align 4, !tbaa !5
  store i32 %16, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %ptr4, align 8, !tbaa !52
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %19, i32 0, i32 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %bytes, align 8, !tbaa !1
  %21 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index6 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %21, i32 0, i32 6
  %22 = load i32, i32* %index6, align 4, !tbaa !33
  %idx.ext = zext i32 %22 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %23 = load i32, i32* %count, align 4, !tbaa !5
  %conv8 = zext i32 %23 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr7, i64 %conv8) #5
  %24 = load i32, i32* %count, align 4, !tbaa !5
  %25 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %ptr9, align 8, !tbaa !52
  %idx.ext10 = zext i32 %24 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %26, i64 %idx.ext10
  store i8* %add.ptr11, i8** %ptr9, align 8, !tbaa !52
  %27 = load i32, i32* %count, align 4, !tbaa !5
  %28 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index12 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %28, i32 0, i32 6
  %29 = load i32, i32* %index12, align 4, !tbaa !33
  %add = add i32 %29, %27
  store i32 %add, i32* %index12, align 4, !tbaa !33
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %30 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %cleanup

if.end.13:                                        ; preds = %entry
  %31 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %31, i32 0, i32 5
  %32 = load i32, i32* %eof, align 4, !tbaa !25
  %tobool = icmp ne i32 %32, 0
  %cond = select i1 %tobool, i32 -1, i32 -4
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.end
  %33 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_proc_state_s*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !53
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !55
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !5
  %8 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %10, i32 0, i32 5
  %11 = load i32, i32* %eof, align 4, !tbaa !25
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %13, i32 0, i32 8
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !32
  %15 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %15, i32 0, i32 6
  %16 = load i32, i32* %index, align 4, !tbaa !33
  %sub = sub i32 %14, %16
  store i32 %sub, i32* %wcount, align 4, !tbaa !5
  %17 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %rcount, align 4, !tbaa !5
  %19 = load i32, i32* %wcount, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %18, %19
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %20 = load i32, i32* %rcount, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %21 = load i32, i32* %wcount, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !5
  %22 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %22, i32 0, i32 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %23 = load i8*, i8** %bytes, align 8, !tbaa !1
  %24 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index6 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %24, i32 0, i32 6
  %25 = load i32, i32* %index6, align 4, !tbaa !33
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %26 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %ptr7, align 8, !tbaa !55
  %add.ptr8 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i32, i32* %count, align 4, !tbaa !5
  %conv9 = zext i32 %28 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr8, i64 %conv9) #5
  %29 = load i32, i32* %count, align 4, !tbaa !5
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr10, align 8, !tbaa !55
  %idx.ext11 = zext i32 %29 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 %idx.ext11
  store i8* %add.ptr12, i8** %ptr10, align 8, !tbaa !55
  %32 = load i32, i32* %count, align 4, !tbaa !5
  %33 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index13 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %33, i32 0, i32 6
  %34 = load i32, i32* %index13, align 4, !tbaa !33
  %add = add i32 %34, %32
  store i32 %add, i32* %index13, align 4, !tbaa !33
  %35 = load i32, i32* %rcount, align 4, !tbaa !5
  %36 = load i32, i32* %wcount, align 4, !tbaa !5
  %cmp14 = icmp ugt i32 %35, %36
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %cond.end
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %37 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %37, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %38 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %eof19 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %38, i32 0, i32 5
  store i32 1, i32* %eof19, align 4, !tbaa !25
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.20:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.20, %if.then.18, %if.then.16
  %39 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %cleanup.25

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %41 = load i32, i32* %last.addr, align 4, !tbaa !5
  %42 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %eof22 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %42, i32 0, i32 5
  store i32 %41, i32* %eof22, align 4, !tbaa !25
  %tobool23 = icmp ne i32 %41, 0
  %cond24 = select i1 %tobool23, i32 -1, i32 0
  store i32 %cond24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %if.end, %cleanup
  %43 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @sproc_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pptr = alloca %struct.stream_proc_state_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %3, i32 0, i32 7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !31
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !31
  %5 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %5, i32 0, i32 8
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = load i16, i16* %type_attrs3, align 2, !tbaa !31
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, -2
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %type_attrs3, align 2, !tbaa !31
  %7 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @sproc_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.stream_proc_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
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
  %4 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %4, i32 0, i32 7
  %5 = bitcast %struct.ref_s* %proc to i8*
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !56
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %7, i32 0, i32 8
  %8 = bitcast %struct.ref_s* %data to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr2, align 8, !tbaa !56
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.1, %sw.bb, %sw.default
  %10 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @sproc_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.stream_proc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 5
  %6 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !58
  %7 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %7, i32 0, i32 7
  %8 = bitcast %struct.ref_s* %proc to i16*
  %9 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %proc1 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %9, i32 0, i32 7
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc1, i64 1
  %10 = bitcast %struct.ref_s* %add.ptr to i16*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i16* %8, i16* %10, %struct.gc_state_s* %11) #4
  %12 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %proc2 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %12, i32 0, i32 7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = load i16, i16* %type_attrs, align 2, !tbaa !31
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, -2
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %type_attrs, align 2, !tbaa !31
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gc_state_s* %14 to %struct.gc_procs_with_refs_s**
  %16 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %15, align 8, !tbaa !1
  %reloc_refs4 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %16, i32 0, i32 5
  %17 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs4, align 8, !tbaa !58
  %18 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %18, i32 0, i32 8
  %19 = bitcast %struct.ref_s* %data to i16*
  %20 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %20, i32 0, i32 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data5, i64 1
  %21 = bitcast %struct.ref_s* %add.ptr6 to i16*
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %17(i16* %19, i16* %21, %struct.gc_state_s* %22) #4
  %23 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %pptr, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %23, i32 0, i32 8
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data7, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %24 = load i16, i16* %type_attrs9, align 2, !tbaa !31
  %conv10 = zext i16 %24 to i32
  %and11 = and i32 %conv10, -2
  %conv12 = trunc i32 %and11 to i16
  store i16 %conv12, i16* %type_attrs9, align 2, !tbaa !31
  %25 = bitcast %struct.stream_proc_state_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_proc_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_proc_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %2, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %3, i32 0, i32 7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %proc, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !31
  %4 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %4, i32 0, i32 8
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  store i16 3584, i16* %type_attrs2, align 2, !tbaa !31
  %5 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #2

declare i32 @s_std_noseek(%struct.stream_s*, i64) #2

declare void @s_std_read_reset(%struct.stream_s*) #2

declare i32 @s_std_read_flush(%struct.stream_s*) #2

declare i32 @s_std_null(%struct.stream_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare void @s_std_write_reset(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_write_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %result = alloca i32, align 4
  %ss = alloca %struct.stream_proc_state_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %1, i32 0) #4
  store i32 %call, i32* %result, align 4, !tbaa !5
  %2 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 18
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !34
  %5 = bitcast %struct.stream_state_s* %4 to %struct.stream_proc_state_s*
  store %struct.stream_proc_state_s* %5, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %6 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.stream_proc_state_s*, %struct.stream_proc_state_s** %ss, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.stream_proc_state_s, %struct.stream_proc_state_s* %7, i32 0, i32 6
  %8 = load i32, i32* %index, align 4, !tbaa !33
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %result, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -4, %cond.false ]
  %10 = bitcast %struct.stream_proc_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %cond
}

declare i32 @s_process_write_buf(%struct.stream_s*, i32) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 152}
!8 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !9, i64 152, !3, i64 154, !3, i64 155, !10, i64 160, !11, i64 176, !12, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !9, i64 264, !9, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !13, i64 312, !6, i64 328, !11, i64 336, !11, i64 344}
!9 = !{!"short", !3, i64 0}
!10 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!11 = !{!"long", !3, i64 0}
!12 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!13 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!14 = !{!15, !2, i64 24}
!15 = !{!"gs_memory_s", !2, i64 0, !16, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!16 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!17 = !{!18, !2, i64 16}
!18 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!19 = !{!8, !2, i64 224}
!20 = !{!21, !2, i64 0}
!21 = !{!"stream_proc_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !22, i64 120, !22, i64 136}
!22 = !{!"ref_s", !23, i64 0, !3, i64 8}
!23 = !{!"tas_s", !9, i64 0, !9, i64 2, !6, i64 4}
!24 = !{!21, !2, i64 8}
!25 = !{!21, !6, i64 108}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 4, i64 4, !5, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !29, i64 8, i64 8, !28, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !28}
!27 = !{!9, !9, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !3, i64 0}
!31 = !{!22, !9, i64 0}
!32 = !{!22, !6, i64 4}
!33 = !{!21, !6, i64 112}
!34 = !{!8, !2, i64 256}
!35 = !{!8, !2, i64 240}
!36 = !{!37, !2, i64 520}
!37 = !{!"gs_context_state_s", !2, i64 0, !38, i64 8, !6, i64 80, !22, i64 88, !22, i64 104, !11, i64 120, !11, i64 128, !11, i64 136, !6, i64 144, !6, i64 148, !22, i64 152, !22, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !40, i64 264, !40, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !41, i64 368, !43, i64 520, !44, i64 624, !2, i64 720}
!38 = !{!"gs_dual_memory_s", !2, i64 0, !39, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!39 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!40 = !{!"op_array_table_s", !22, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!41 = !{!"dict_stack_s", !42, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !22, i64 136}
!42 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !22, i64 24, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!43 = !{!"exec_stack_s", !42, i64 0, !2, i64 96}
!44 = !{!"op_stack_s", !42, i64 0}
!45 = !{!37, !2, i64 536}
!46 = !{!37, !2, i64 624}
!47 = !{!3, !3, i64 0}
!48 = !{!8, !9, i64 264}
!49 = !{!8, !9, i64 266}
!50 = !{!51, !2, i64 16}
!51 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!52 = !{!51, !2, i64 8}
!53 = !{!54, !2, i64 8}
!54 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!55 = !{!54, !2, i64 0}
!56 = !{!57, !2, i64 0}
!57 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!58 = !{!59, !2, i64 40}
!59 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
