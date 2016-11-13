; ModuleID = './zvmem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.vm_save_s = type { %struct.gs_state_s* }
%struct.alloc_save_s = type opaque
%struct.obj_header_s = type opaque
%struct.ref_stack_enum_s = type { %struct.ref_stack_block_s*, %struct.ref_s*, i32 }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gx_device_s = type opaque
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@st_vm_save = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @vm_save_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"zsave\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"zrestore\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1.forgetsave\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0vmstatus\00", align 1
@zvmem_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zforgetsave }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrestore }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsave }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zvmstatus }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"savetype\00", align 1
@vm_save_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @vm_save_enum_ptrs, i32 0, i32 0) }, align 8
@vm_save_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2

; Function Attrs: nounwind uwtable
define void @ivalidate_clean_spaces(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @gs_debug_c(i32 63) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack) #3
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack1) #3
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack2) #3
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 1
  call void @ialloc_validate_spaces(%struct.gs_dual_memory_s* %memory) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gs_debug_c(i32) #1

declare void @ref_stack_cleanup(%struct.ref_stack_s*) #1

declare void @ialloc_validate_spaces(%struct.gs_dual_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsave(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %space = alloca i32, align 4
  %vmsave = alloca %struct.vm_save_s*, align 8
  %sid = alloca i64, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %5 = load i32, i32* %current_space, align 4, !tbaa !19
  store i32 %5, i32* %space, align 4, !tbaa !20
  %6 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.gs_state_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @ivalidate_clean_spaces(%struct.gs_context_state_s* %10) #3
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1, i32 12) #3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %15 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !22
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !21
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %call = call i8* %15(%struct.gs_memory_s* %18, %struct.gs_memory_struct_type_s* @st_vm_save, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #3
  %19 = bitcast i8* %call to %struct.vm_save_s*
  store %struct.vm_save_s* %19, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %21 = load i32, i32* %space, align 4, !tbaa !20
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory5, i32 %21) #3
  %22 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %cmp = icmp eq %struct.vm_save_s* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %23, i32 0, i32 0
  store %struct.gs_state_s* null, %struct.gs_state_s** %gsave, align 8, !tbaa !25
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %25 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %26 = bitcast %struct.vm_save_s* %25 to i8*
  %call7 = call i32 @alloc_save_state(%struct.gs_dual_memory_s* %memory6, i8* %26, i64* %sid) #3
  store i32 %call7, i32* %code, align 4, !tbaa !20
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %29 = load i64, i64* %sid, align 8, !tbaa !27
  %cmp11 = icmp eq i64 %29, 0
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.10
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current14 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current14, align 8, !tbaa !21
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !21
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %38 = bitcast %struct.vm_save_s* %37 to i8*
  call void %33(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.18
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 0
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !29
  %call19 = call i32 @gs_gsave_for_save(%struct.gs_state_s* %40, %struct.gs_state_s** %prev) #3
  store i32 %call19, i32* %code, align 4, !tbaa !20
  %41 = load i32, i32* %code, align 4, !tbaa !20
  %cmp20 = icmp slt i32 %41, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  %42 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %do.end
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs23, align 8, !tbaa !29
  %call24 = call i32 @gs_gsave(%struct.gs_state_s* %44) #3
  store i32 %call24, i32* %code, align 4, !tbaa !20
  %45 = load i32, i32* %code, align 4, !tbaa !20
  %cmp25 = icmp slt i32 %45, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %46 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.22
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %prev, align 8, !tbaa !1
  %48 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave28 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %48, i32 0, i32 0
  store %struct.gs_state_s* %47, %struct.gs_state_s** %gsave28, align 8, !tbaa !25
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.27
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 2
  %51 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp32 = icmp ugt %struct.ref_s* %add.ptr, %51
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %do.body.29
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack35 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack34, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack35, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.29
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 26
  %stack37 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  store %struct.ref_s* %53, %struct.ref_s** %p38, align 8, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %55 = load i64, i64* %sid, align 8, !tbaa !27
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %saveid = bitcast %union.v* %value to i64*
  store i64 %55, i64* %saveid, align 8, !tbaa !27
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4352, i16* %type_attrs, align 2, !tbaa !32
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @ivalidate_clean_spaces(%struct.gs_context_state_s* %58) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.41, %if.then.33, %if.then.26, %if.then.21, %if.then.12, %if.then.9, %if.then
  %59 = bitcast %struct.gs_state_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #1

declare i32 @alloc_save_state(%struct.gs_dual_memory_s*, i8*, i64*) #1

declare i32 @gs_gsave_for_save(%struct.gs_state_s*, %struct.gs_state_s**) #1

declare i32 @gs_gsave(%struct.gs_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @zrestore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %asave = alloca %struct.alloc_save_s*, align 8
  %last = alloca i32, align 4
  %vmsave = alloca %struct.vm_save_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code4 = alloca i32, align 4
  %space = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %call = call i32 @restore_check_operand(%struct.ref_s* %7, %struct.alloc_save_s** %asave, %struct.gs_dual_memory_s* %memory) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @ivalidate_clean_spaces(%struct.gs_context_state_s* %11) #3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p3, align 8, !tbaa !5
  %14 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %17 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call7 = call i32 @restore_check_stack(%struct.gs_context_state_s* %15, %struct.ref_stack_s* %stack6, %struct.alloc_save_s* %17, i32 0) #3
  store i32 %call7, i32* %code4, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %20 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call10 = call i32 @restore_check_stack(%struct.gs_context_state_s* %18, %struct.ref_stack_s* %stack9, %struct.alloc_save_s* %20, i32 1) #3
  store i32 %call10, i32* %code4, align 4, !tbaa !20
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 24
  %stack13 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %23 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call14 = call i32 @restore_check_stack(%struct.gs_context_state_s* %21, %struct.ref_stack_s* %stack13, %struct.alloc_save_s* %23, i32 0) #3
  store i32 %call14, i32* %code4, align 4, !tbaa !20
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %do.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr20, %struct.ref_s** %p19, align 8, !tbaa !5
  %26 = load i32, i32* %code4, align 4, !tbaa !20
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.16
  %27 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %28, %struct.ref_stack_s* %stack23, %struct.alloc_save_s* %30, i32 0) #3
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %33 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %31, %struct.ref_stack_s* %stack25, %struct.alloc_save_s* %33, i32 1) #3
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 24
  %stack27 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack26, i32 0, i32 0
  %36 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %34, %struct.ref_stack_s* %stack27, %struct.alloc_save_s* %36, i32 0) #3
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.39, %cleanup.cont
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 1
  %call30 = call %struct.alloc_save_s* @alloc_save_current(%struct.gs_dual_memory_s* %memory29) #3
  %call31 = call i8* @alloc_save_client_data(%struct.alloc_save_s* %call30) #3
  %38 = bitcast i8* %call31 to %struct.vm_save_s*
  store %struct.vm_save_s* %38, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 0
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !29
  %41 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %gsave, align 8, !tbaa !25
  %call32 = call i32 @gs_grestoreall_for_restore(%struct.gs_state_s* %40, %struct.gs_state_s* %42) #3
  %43 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave33 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %43, i32 0, i32 0
  store %struct.gs_state_s* null, %struct.gs_state_s** %gsave33, align 8, !tbaa !25
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %45 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call35 = call i32 @alloc_restore_step_in(%struct.gs_dual_memory_s* %memory34, %struct.alloc_save_s* %45) #3
  store i32 %call35, i32* %code, align 4, !tbaa !20
  %46 = load i32, i32* %code, align 4, !tbaa !20
  %cmp36 = icmp slt i32 %46, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.28
  %47 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.38:                                        ; preds = %do.body.28
  %48 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %48, i32* %last, align 4, !tbaa !20
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  %49 = load i32, i32* %last, align 4, !tbaa !20
  %tobool = icmp ne i32 %49, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body.28, label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %50 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory41, i32 0, i32 2
  %52 = load i32, i32* %current_space, align 4, !tbaa !19
  store i32 %52, i32* %space, align 4, !tbaa !20
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory42, i32 12) #3
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory43, i32 0, i32 0
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %56 = bitcast %struct.gs_ref_memory_s* %55 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %57 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %current45 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory44, i32 0, i32 0
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current45, align 8, !tbaa !21
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  %61 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %62 = bitcast %struct.vm_save_s* %61 to i8*
  call void %57(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 1
  %64 = load i32, i32* %space, align 4, !tbaa !20
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory46, i32 %64) #3
  %65 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack47) #3
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @ivalidate_clean_spaces(%struct.gs_context_state_s* %67) #3
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 13
  store i32 0, i32* %LockFilePermissions, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %do.end.40, %if.then.37, %cleanup, %if.then
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @restore_check_operand(%struct.ref_s* %op, %struct.alloc_save_s** %pasave, %struct.gs_dual_memory_s* %idmem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pasave.addr = alloca %struct.alloc_save_s**, align 8
  %idmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %vmsave = alloca %struct.vm_save_s*, align 8
  %sid = alloca i64, align 8
  %asave = alloca %struct.alloc_save_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.alloc_save_s** %pasave, %struct.alloc_save_s*** %pasave.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %idmem, %struct.gs_dual_memory_s** %idmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to %struct.vm_save_s*
  store %struct.vm_save_s* %9, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %10 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.vm_save_s* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %saveid = bitcast %union.v* %value6 to i64*
  %12 = load i64, i64* %saveid, align 8, !tbaa !27
  store i64 %12, i64* %sid, align 8, !tbaa !27
  %13 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmem.addr, align 8, !tbaa !1
  %14 = load i64, i64* %sid, align 8, !tbaa !27
  %call7 = call %struct.alloc_save_s* @alloc_find_save(%struct.gs_dual_memory_s* %13, i64 %14) #3
  store %struct.alloc_save_s* %call7, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %15 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.alloc_save_s* %15, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  store i32 -11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %16 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %17 = load %struct.alloc_save_s**, %struct.alloc_save_s*** %pasave.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %16, %struct.alloc_save_s** %17, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then
  %18 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @restore_check_stack(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_stack_s* %pstack, %struct.alloc_save_s* %asave, i32 %is_estack) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %asave.addr = alloca %struct.alloc_save_s*, align 8
  %is_estack.addr = alloca i32, align 4
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %stkp = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %ptr2 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %asave, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  store i32 %is_estack, i32* %is_estack.addr, align 4, !tbaa !20
  %0 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %1) #3
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = bitcast %struct.ref_s** %stkp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %3 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !35
  store %struct.ref_s* %3, %struct.ref_s** %stkp, align 8, !tbaa !1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %size1 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %5 = load i32, i32* %size1, align 4, !tbaa !37
  store i32 %5, i32* %size, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, i32* %size, align 4, !tbaa !20
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i8** %ptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 13, label %sw.bb.24
    i32 18, label %sw.bb.28
    i32 5, label %sw.bb.44
    i32 6, label %sw.bb.44
    i32 19, label %sw.bb.52
    i32 10, label %sw.bb.54
    i32 8, label %sw.bb.54
    i32 9, label %sw.bb.54
    i32 17, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !38
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end:                                           ; preds = %sw.bb
  %13 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %14 to i8*
  store i8* %15, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %16 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pdict = bitcast %union.v* %value6 to %struct.dict_s**
  %17 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %18 = bitcast %struct.dict_s* %17 to i8*
  store i8* %18, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %19 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load i32, i32* %is_estack.addr, align 4, !tbaa !20
  %tobool8 = icmp ne i32 %20, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %sw.bb.7
  %21 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %22 = load i16, i16* %type_attrs10, align 2, !tbaa !32
  %conv11 = zext i16 %22 to i32
  %and = and i32 %conv11, 128
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pfile = bitcast %union.v* %value13 to %struct.stream_s**
  %24 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %24, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 19
  %26 = load i16, i16* %read_id, align 2, !tbaa !39
  %conv14 = zext i16 %26 to i32
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 20
  %28 = load i16, i16* %write_id, align 2, !tbaa !44
  %conv15 = zext i16 %28 to i32
  %or = or i32 %conv14, %conv15
  %29 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %30 = load i32, i32* %rsize17, align 4, !tbaa !38
  %cmp18 = icmp ne i32 %or, %30
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false, %sw.bb.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %32 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %pfile23 = bitcast %union.v* %value22 to %struct.stream_s**
  %33 = load %struct.stream_s*, %struct.stream_s** %pfile23, align 8, !tbaa !1
  %34 = bitcast %struct.stream_s* %33 to i8*
  store i8* %34, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body
  %35 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %35, i32 0, i32 11
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !45
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %38 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %39 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  %call = call i32 @alloc_name_is_since_save(%struct.gs_memory_s* %37, %struct.ref_s* %38, %struct.alloc_save_s* %39) #3
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.24
  store i32 -11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.27:                                        ; preds = %sw.bb.24
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

sw.bb.28:                                         ; preds = %for.body
  %40 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %rsize30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  %41 = load i32, i32* %rsize30, align 4, !tbaa !38
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %sw.bb.28
  %42 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  %43 = load i16, i16* %type_attrs35, align 2, !tbaa !32
  %conv36 = zext i16 %43 to i32
  %and37 = and i32 %conv36, 128
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.42

land.lhs.true.39:                                 ; preds = %land.lhs.true.33
  %44 = load i32, i32* %is_estack.addr, align 4, !tbaa !20
  %tobool40 = icmp ne i32 %44, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.39
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.42:                                        ; preds = %land.lhs.true.39, %land.lhs.true.33, %sw.bb.28
  %45 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %bytes = bitcast %union.v* %value43 to i8**
  %46 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %46, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.44:                                         ; preds = %for.body, %for.body
  %47 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %rsize46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 2
  %48 = load i32, i32* %rsize46, align 4, !tbaa !38
  %cmp47 = icmp eq i32 %48, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %sw.bb.44
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.50:                                        ; preds = %sw.bb.44
  %49 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %packed = bitcast %union.v* %value51 to i16**
  %50 = load i16*, i16** %packed, align 8, !tbaa !1
  %51 = bitcast i16* %50 to i8*
  store i8* %51, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.52:                                         ; preds = %for.body
  %52 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %pdevice = bitcast %union.v* %value53 to %struct.gx_device_s**
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_s* %53 to i8*
  store i8* %54, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.54:                                         ; preds = %for.body, %for.body, %for.body
  %55 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 1
  %pstruct = bitcast %union.v* %value55 to %struct.obj_header_s**
  %56 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %57 = bitcast %struct.obj_header_s* %56 to i8*
  store i8* %57, i8** %ptr2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.56:                                         ; preds = %for.body
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 2
  %59 = load i32, i32* %language_level, align 4, !tbaa !46
  %cmp57 = icmp sle i32 %59, 2
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.bb.56
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.60:                                        ; preds = %sw.bb.56
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 1
  %61 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %saveid = bitcast %union.v* %value62 to i64*
  %62 = load i64, i64* %saveid, align 8, !tbaa !27
  %call63 = call %struct.alloc_save_s* @alloc_find_save(%struct.gs_dual_memory_s* %memory61, i64 %62) #3
  %63 = bitcast %struct.alloc_save_s* %call63 to i8*
  store i8* %63, i8** %ptr2, align 8, !tbaa !1
  %64 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %cmp64 = icmp eq i8* %64, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  store i32 -11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.67:                                        ; preds = %if.end.60
  %65 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %66 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  %67 = bitcast %struct.alloc_save_s* %66 to i8*
  %cmp68 = icmp eq i8* %65, %67
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.71:                                        ; preds = %if.end.67
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.76

sw.epilog:                                        ; preds = %if.end.71, %sw.bb.54, %sw.bb.52, %if.end.50, %if.end.42, %cleanup.cont, %sw.bb.5, %if.end
  %68 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %69 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  %call72 = call i32 @alloc_is_since_save(i8* %68, %struct.alloc_save_s* %69) #3
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %sw.epilog
  store i32 -11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.75:                                        ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.end.75, %if.then.74, %sw.default, %if.then.70, %if.then.66, %if.then.59, %if.then.49, %if.then.41, %if.end.27, %if.then.26, %cleanup, %if.then
  %70 = bitcast i8** %ptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.79 [
    i32 0, label %cleanup.cont.78
    i32 6, label %for.inc
  ]

cleanup.cont.78:                                  ; preds = %cleanup.76
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.78, %cleanup.76
  %71 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %stkp, align 8, !tbaa !1
  %72 = load i32, i32* %size, align 4, !tbaa !20
  %dec = add i32 %72, -1
  store i32 %dec, i32* %size, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %for.end, %cleanup.76
  %73 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.ref_s** %stkp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %cleanup.dest.81 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.81, label %cleanup.85 [
    i32 0, label %cleanup.cont.82
  ]

cleanup.cont.82:                                  ; preds = %cleanup.79
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.82
  %call83 = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #3
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %do.end, %cleanup.79
  %75 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %75) #2
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal void @restore_fix_stack(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_stack_s* %pstack, %struct.alloc_save_s* %asave, i32 %is_estack) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %asave.addr = alloca %struct.alloc_save_s*, align 8
  %is_estack.addr = alloca i32, align 4
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %stkp = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %ofile = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %asave, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  store i32 %is_estack, i32* %is_estack.addr, align 4, !tbaa !20
  %0 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %1) #3
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = bitcast %struct.ref_s** %stkp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %3 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !35
  store %struct.ref_s* %3, %struct.ref_s** %stkp, align 8, !tbaa !1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %size1 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %5 = load i32, i32* %size1, align 4, !tbaa !37
  store i32 %5, i32* %size, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, i32* %size, align 4, !tbaa !20
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !32
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, -3
  %conv2 = trunc i32 %and to i16
  store i16 %conv2, i16* %type_attrs, align 2, !tbaa !32
  %9 = load i32, i32* %is_estack.addr, align 4, !tbaa !20
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body
  %10 = bitcast %struct.ref_s* %ofile to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %ofile to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !47
  %14 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %15 = bitcast i16* %type_attrs5 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv6 = zext i8 %16 to i32
  switch i32 %conv6, label %sw.default [
    i32 18, label %sw.bb
    i32 3, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then
  %17 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !38
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %19 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %bytes, align 8, !tbaa !1
  %21 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  %call = call i32 @alloc_is_since_save(i8* %20, %struct.alloc_save_s* %21) #3
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %22 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value11 to i8**
  store i8* null, i8** %const_bytes, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 4608, i16* %type_attrs13, align 2, !tbaa !32
  %24 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  store i32 0, i32* %rsize15, align 4, !tbaa !38
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %if.then
  %25 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %pfile = bitcast %union.v* %value17 to %struct.stream_s**
  %26 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %27 = bitcast %struct.stream_s* %26 to i8*
  %28 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8, !tbaa !1
  %call18 = call i32 @alloc_is_since_save(i8* %27, %struct.alloc_save_s* %28) #3
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.16
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  call void @make_invalid_file(%struct.gs_context_state_s* %29, %struct.ref_s* %30) #3
  br label %sw.epilog

if.end.21:                                        ; preds = %sw.bb.16
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.20, %if.then.10
  %31 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %32 = load i16, i16* %type_attrs23, align 2, !tbaa !32
  %conv24 = zext i16 %32 to i32
  %and25 = and i32 %conv24, -241
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ofile, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %33 = load i16, i16* %type_attrs27, align 2, !tbaa !32
  %conv28 = zext i16 %33 to i32
  %and29 = and i32 %conv28, 240
  %or = or i32 %and25, %and29
  %conv30 = trunc i32 %or to i16
  %34 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 %conv30, i16* %type_attrs32, align 2, !tbaa !32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.21, %if.end
  %35 = bitcast %struct.ref_s* %ofile to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %cleanup
  %36 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %stkp, align 8, !tbaa !1
  %37 = load i32, i32* %size, align 4, !tbaa !20
  %dec = add i32 %37, -1
  store i32 %dec, i32* %size, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.ref_s** %stkp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %call34 = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %40 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @alloc_save_client_data(%struct.alloc_save_s*) #1

declare %struct.alloc_save_s* @alloc_save_current(%struct.gs_dual_memory_s*) #1

declare i32 @gs_grestoreall_for_restore(%struct.gs_state_s*, %struct.gs_state_s*) #1

declare i32 @alloc_restore_step_in(%struct.gs_dual_memory_s*, %struct.alloc_save_s*) #1

declare void @dstack_set_top(%struct.dict_stack_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zforgetsave(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %asave = alloca %struct.alloc_save_s*, align 8
  %vmsave = alloca %struct.vm_save_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pgs = alloca %struct.gs_state_s*, align 8
  %last = alloca %struct.gs_state_s*, align 8
  %space = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %call = call i32 @restore_check_operand(%struct.ref_s* %6, %struct.alloc_save_s** %asave, %struct.gs_dual_memory_s* %memory) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call1 = call i8* @alloc_save_client_data(%struct.alloc_save_s* %9) #3
  %10 = bitcast i8* %call1 to %struct.vm_save_s*
  store %struct.vm_save_s* %10, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %13 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %11, %struct.ref_stack_s* %stack3, %struct.alloc_save_s* %13, i32 0) #3
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %16 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %14, %struct.ref_stack_s* %stack4, %struct.alloc_save_s* %16, i32 0) #3
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 24
  %stack5 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %19 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  call void @restore_fix_stack(%struct.gs_context_state_s* %17, %struct.ref_stack_s* %stack5, %struct.alloc_save_s* %19, i32 0) #3
  %20 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 0
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs6, align 8, !tbaa !29
  store %struct.gs_state_s* %22, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %23 = bitcast %struct.gs_state_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call7 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %24) #3
  store %struct.gs_state_s* %call7, %struct.gs_state_s** %last, align 8, !tbaa !1
  %call8 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %call7) #3
  %cmp9 = icmp ne %struct.gs_state_s* %call8, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %last, align 8, !tbaa !1
  store %struct.gs_state_s* %25, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %last, align 8, !tbaa !1
  %27 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %gsave, align 8, !tbaa !25
  %call10 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %26, %struct.gs_state_s* %28) #3
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %last, align 8, !tbaa !1
  %call11 = call i32 @gs_grestore(%struct.gs_state_s* %29) #3
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %last, align 8, !tbaa !1
  %call12 = call i32 @gs_grestore(%struct.gs_state_s* %30) #3
  %31 = bitcast %struct.gs_state_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %34 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8, !tbaa !1
  %call14 = call i32 @alloc_forget_save_in(%struct.gs_dual_memory_s* %memory13, %struct.alloc_save_s* %34) #3
  store i32 %call14, i32* %code, align 4, !tbaa !20
  %35 = load i32, i32* %code, align 4, !tbaa !20
  %cmp15 = icmp slt i32 %35, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.end
  %36 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %while.end
  %37 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 2
  %39 = load i32, i32* %current_space, align 4, !tbaa !19
  store i32 %39, i32* %space, align 4, !tbaa !20
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory19, i32 12) #3
  %41 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %gsave20 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %41, i32 0, i32 0
  store %struct.gs_state_s* null, %struct.gs_state_s** %gsave20, align 8, !tbaa !25
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current23, align 8, !tbaa !21
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8, !tbaa !1
  %50 = bitcast %struct.vm_save_s* %49 to i8*
  call void %45(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %52 = load i32, i32* %space, align 4, !tbaa !20
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory24, i32 %52) #3
  %53 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p27, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast %struct.vm_save_s** %vmsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.alloc_save_s** %asave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @zvmstatus(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mstat = alloca %struct.gs_memory_status_s, align 8
  %dstat = alloca %struct.gs_memory_status_s, align 8
  %sstat = alloca %struct.gs_memory_status_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_status_s* %mstat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.gs_memory_status_s* %dstat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %8 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !51
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !21
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  call void %8(%struct.gs_memory_s* %11, %struct.gs_memory_status_s* %mstat) #3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !21
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !52
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %cmp = icmp eq %struct.gs_memory_s* %14, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = bitcast %struct.gs_memory_status_s* %sstat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %18) #2
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %spaces7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 1
  %memories8 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces7, i32 0, i32 1
  %named9 = bitcast %union.anon* %memories8 to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named9, i32 0, i32 1
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !54
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %status11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 4
  %22 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status11, align 8, !tbaa !51
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %spaces13 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory12, i32 0, i32 1
  %memories14 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces13, i32 0, i32 1
  %named15 = bitcast %union.anon* %memories14 to %struct._ssn*
  %system16 = getelementptr inbounds %struct._ssn, %struct._ssn* %named15, i32 0, i32 1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system16, align 8, !tbaa !54
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  call void %22(%struct.gs_memory_s* %25, %struct.gs_memory_status_s* %sstat) #3
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %sstat, i32 0, i32 0
  %26 = load i64, i64* %allocated, align 8, !tbaa !55
  %allocated17 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mstat, i32 0, i32 0
  %27 = load i64, i64* %allocated17, align 8, !tbaa !55
  %add = add i64 %27, %26
  store i64 %add, i64* %allocated17, align 8, !tbaa !55
  %used = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %sstat, i32 0, i32 1
  %28 = load i64, i64* %used, align 8, !tbaa !57
  %used18 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mstat, i32 0, i32 1
  %29 = load i64, i64* %used18, align 8, !tbaa !57
  %add19 = add i64 %29, %28
  store i64 %add19, i64* %used18, align 8, !tbaa !57
  %30 = bitcast %struct.gs_memory_status_s* %sstat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %30) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !21
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !58
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %status23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 4
  %35 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status23, align 8, !tbaa !51
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current25 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory24, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current25, align 8, !tbaa !21
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !58
  call void %35(%struct.gs_memory_s* %39, %struct.gs_memory_status_s* %dstat) #3
  br label %do.body

do.body:                                          ; preds = %if.end
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 2
  %42 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp29 = icmp ugt %struct.ref_s* %add.ptr, %42
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 7
  store i32 3, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  store %struct.ref_s* %44, %struct.ref_s** %p35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.36
  br label %do.end

do.end:                                           ; preds = %do.cond
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %spaces38 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory37, i32 0, i32 1
  %memories39 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces38, i32 0, i32 1
  %named40 = bitcast %union.anon* %memories39 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named40, i32 0, i32 3
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %call = call i32 @imemory_save_level(%struct.gs_ref_memory_s* %47) #3
  %conv = sext i32 %call to i64
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !27
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr42, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !32
  %used43 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mstat, i32 0, i32 1
  %50 = load i64, i64* %used43, align 8, !tbaa !57
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %intval46 = bitcast %union.v* %value45 to i64*
  store i64 %50, i64* %intval46, align 8, !tbaa !27
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  store i16 2816, i16* %type_attrs49, align 2, !tbaa !32
  %allocated50 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mstat, i32 0, i32 0
  %53 = load i64, i64* %allocated50, align 8, !tbaa !55
  %allocated51 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %dstat, i32 0, i32 0
  %54 = load i64, i64* %allocated51, align 8, !tbaa !55
  %add52 = add i64 %53, %54
  %used53 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %dstat, i32 0, i32 1
  %55 = load i64, i64* %used53, align 8, !tbaa !57
  %sub = sub i64 %add52, %55
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %intval55 = bitcast %union.v* %value54 to i64*
  store i64 %sub, i64* %intval55, align 8, !tbaa !27
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  store i16 2816, i16* %type_attrs57, align 2, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.30
  %58 = bitcast %struct.gs_memory_status_s* %dstat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %58) #2
  %59 = bitcast %struct.gs_memory_status_s* %mstat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %59) #2
  %60 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @check_type_failed(%struct.ref_s*) #1

declare %struct.alloc_save_s* @alloc_find_save(%struct.gs_dual_memory_s*, i64) #1

declare void @ref_stack_enum_begin(%struct.ref_stack_enum_s*, %struct.ref_stack_s*) #1

declare i32 @alloc_name_is_since_save(%struct.gs_memory_s*, %struct.ref_s*, %struct.alloc_save_s*) #1

declare i32 @alloc_is_since_save(i8*, %struct.alloc_save_s*) #1

declare i32 @ref_stack_enum_next(%struct.ref_stack_enum_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @make_invalid_file(%struct.gs_context_state_s*, %struct.ref_s*) #1

declare %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s*) #1

declare %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s*, %struct.gs_state_s*) #1

declare i32 @gs_grestore(%struct.gs_state_s*) #1

declare i32 @alloc_forget_save_in(%struct.gs_dual_memory_s*, %struct.alloc_save_s*) #1

declare i32 @imemory_save_level(%struct.gs_ref_memory_s*) #1

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
!19 = !{!7, !9, i64 48}
!20 = !{!9, !9, i64 0}
!21 = !{!6, !2, i64 8}
!22 = !{!23, !2, i64 72}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!26, !2, i64 0}
!26 = !{!"vm_save_s", !2, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!23, !2, i64 24}
!29 = !{!6, !2, i64 0}
!30 = !{!6, !2, i64 640}
!31 = !{!6, !9, i64 688}
!32 = !{!10, !12, i64 0}
!33 = !{!6, !9, i64 188}
!34 = !{!3, !3, i64 0}
!35 = !{!36, !2, i64 8}
!36 = !{!"ref_stack_enum_s", !2, i64 0, !2, i64 8, !9, i64 16}
!37 = !{!36, !9, i64 16}
!38 = !{!10, !9, i64 4}
!39 = !{!40, !12, i64 264}
!40 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !41, i64 160, !13, i64 176, !42, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !43, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!41 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!42 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!43 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!44 = !{!40, !12, i64 266}
!45 = !{!16, !2, i64 88}
!46 = !{!6, !9, i64 80}
!47 = !{i64 0, i64 2, !48, i64 2, i64 2, !48, i64 4, i64 4, !20, i64 8, i64 8, !27, i64 8, i64 2, !48, i64 8, i64 4, !49, i64 8, i64 8, !27, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !27}
!48 = !{!12, !12, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !3, i64 0}
!51 = !{!23, !2, i64 40}
!52 = !{!53, !2, i64 16}
!53 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!54 = !{!53, !2, i64 8}
!55 = !{!56, !13, i64 0}
!56 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!57 = !{!56, !13, i64 8}
!58 = !{!23, !2, i64 200}
!59 = !{!53, !2, i64 24}
