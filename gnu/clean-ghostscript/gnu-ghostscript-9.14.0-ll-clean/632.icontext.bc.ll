; ModuleID = './icontext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
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
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
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
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@.str = private unnamed_addr constant [19 x i8] c"gs_context_state_t\00", align 1
@st_context_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 728, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @context_state_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @context_state_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @context_state_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"context_state_alloc\00", align 1
@rand_state_initial = external constant i64, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"userparams\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"localdicts\00", align 1
@st_gs_dual_memory = external constant %struct.gs_memory_struct_type_s, align 8
@st_dict_stack = external constant %struct.gs_memory_struct_type_s, align 8
@st_exec_stack = external constant %struct.gs_memory_struct_type_s, align 8
@st_op_stack = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal void @context_state_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pcst = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !7
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio2, i32 0, i64 1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %6 = load i16, i16* %type_attrs5, align 2, !tbaa !7
  %conv6 = zext i16 %6 to i32
  %and7 = and i32 %conv6, -2
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, i16* %type_attrs5, align 2, !tbaa !7
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio9, i32 0, i64 2
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %8 = load i16, i16* %type_attrs12, align 2, !tbaa !7
  %conv13 = zext i16 %8 to i32
  %and14 = and i32 %conv13, -2
  %conv15 = trunc i32 %and14 to i16
  store i16 %conv15, i16* %type_attrs12, align 2, !tbaa !7
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 10
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %10 = load i16, i16* %type_attrs17, align 2, !tbaa !7
  %conv18 = zext i16 %10 to i32
  %and19 = and i32 %conv18, -2
  %conv20 = trunc i32 %and19 to i16
  store i16 %conv20, i16* %type_attrs17, align 2, !tbaa !7
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 11
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %userparams, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %12 = load i16, i16* %type_attrs22, align 2, !tbaa !7
  %conv23 = zext i16 %12 to i32
  %and24 = and i32 %conv23, -2
  %conv25 = trunc i32 %and24 to i16
  store i16 %conv25, i16* %type_attrs22, align 2, !tbaa !7
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 19
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global, i32 0, i32 0
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %14 = load i16, i16* %type_attrs27, align 2, !tbaa !7
  %conv28 = zext i16 %14 to i32
  %and29 = and i32 %conv28, -2
  %conv30 = trunc i32 %and29 to i16
  store i16 %conv30, i16* %type_attrs27, align 2, !tbaa !7
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 20
  %table31 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local, i32 0, i32 0
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %16 = load i16, i16* %type_attrs33, align 2, !tbaa !7
  %conv34 = zext i16 %16 to i32
  %and35 = and i32 %conv34, -2
  %conv36 = trunc i32 %and35 to i16
  store i16 %conv36, i16* %type_attrs33, align 2, !tbaa !7
  %17 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @context_state_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcst = alloca %struct.gs_context_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.25
    i32 6, label %sw.bb.27
    i32 7, label %sw.bb.29
    i32 8, label %sw.bb.32
    i32 9, label %sw.bb.35
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 10
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_dual_memory, i32 0, i32 4), align 8, !tbaa !11
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gs_dual_memory_s* %memory to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 72, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_gs_dual_memory, %struct.gc_state_s* %12) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %13, 0
  store i32 %sub1, i32* %index.addr, align 4, !tbaa !5
  %14 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %14, 2
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dict_stack, i32 0, i32 4), align 8, !tbaa !11
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 24
  %18 = bitcast %struct.dict_stack_s* %dict_stack to i8*
  %19 = load i32, i32* %index.addr, align 4, !tbaa !5
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_ptr_procs_s* %15(%struct.gs_memory_s* %16, i8* %18, i32 152, i32 %19, %struct.enum_ptr_s* %20, %struct.gs_memory_struct_type_s* @st_dict_stack, %struct.gc_state_s* %21) #3
  store %struct.gs_ptr_procs_s* %call4, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %22 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %22, 2
  store i32 %sub6, i32* %index.addr, align 4, !tbaa !5
  %23 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %23, 2
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %24 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_exec_stack, i32 0, i32 4), align 8, !tbaa !11
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %27 = bitcast %struct.exec_stack_s* %exec_stack to i8*
  %28 = load i32, i32* %index.addr, align 4, !tbaa !5
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call %struct.gs_ptr_procs_s* %24(%struct.gs_memory_s* %25, i8* %27, i32 104, i32 %28, %struct.enum_ptr_s* %29, %struct.gs_memory_struct_type_s* @st_exec_stack, %struct.gc_state_s* %30) #3
  store %struct.gs_ptr_procs_s* %call9, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %31 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %31, 2
  store i32 %sub11, i32* %index.addr, align 4, !tbaa !5
  %32 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_op_stack, i32 0, i32 4), align 8, !tbaa !11
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %35 = bitcast %struct.op_stack_s* %op_stack to i8*
  %36 = load i32, i32* %index.addr, align 4, !tbaa !5
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %38 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call %struct.gs_ptr_procs_s* %32(%struct.gs_memory_s* %33, i8* %35, i32 96, i32 %36, %struct.enum_ptr_s* %37, %struct.gs_memory_struct_type_s* @st_op_stack, %struct.gc_state_s* %38) #3
  store %struct.gs_ptr_procs_s* %call12, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %39 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %40 = bitcast i8* %39 to %struct.gs_context_state_s*
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 0
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !13
  %42 = bitcast %struct.gs_state_s* %41 to i8*
  %43 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %43, i32 0, i32 0
  store i8* %42, i8** %ptr, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %entry
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %45 = bitcast %struct.ref_s* %arrayidx to i8*
  %46 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %46, i32 0, i32 0
  store i8* %45, i8** %ptr14, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.15:                                         ; preds = %entry
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 17
  %arrayidx17 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio16, i32 0, i64 1
  %48 = bitcast %struct.ref_s* %arrayidx17 to i8*
  %49 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %49, i32 0, i32 0
  store i8* %48, i8** %ptr18, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %entry
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 17
  %arrayidx21 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio20, i32 0, i64 2
  %51 = bitcast %struct.ref_s* %arrayidx21 to i8*
  %52 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %52, i32 0, i32 0
  store i8* %51, i8** %ptr22, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.23:                                         ; preds = %entry
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 10
  %54 = bitcast %struct.ref_s* %error_object to i8*
  %55 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %55, i32 0, i32 0
  store i8* %54, i8** %ptr24, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %entry
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 11
  %57 = bitcast %struct.ref_s* %userparams to i8*
  %58 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %58, i32 0, i32 0
  store i8* %57, i8** %ptr26, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.27:                                         ; preds = %entry
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct.gs_context_state_s*
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 19
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global, i32 0, i32 1
  %61 = load i16*, i16** %nx_table, align 8, !tbaa !25
  %62 = bitcast i16* %61 to i8*
  %63 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr28 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %63, i32 0, i32 0
  store i8* %62, i8** %ptr28, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.29:                                         ; preds = %entry
  %64 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %65 = bitcast i8* %64 to %struct.gs_context_state_s*
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 20
  %nx_table30 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local, i32 0, i32 1
  %66 = load i16*, i16** %nx_table30, align 8, !tbaa !26
  %67 = bitcast i16* %66 to i8*
  %68 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %68, i32 0, i32 0
  store i8* %67, i8** %ptr31, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %entry
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_global33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 19
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global33, i32 0, i32 0
  %70 = bitcast %struct.ref_s* %table to i8*
  %71 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr34 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %71, i32 0, i32 0
  store i8* %70, i8** %ptr34, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.35:                                         ; preds = %entry
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_local36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 20
  %table37 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local36, i32 0, i32 0
  %73 = bitcast %struct.ref_s* %table37 to i8*
  %74 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr38 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %74, i32 0, i32 0
  store i8* %73, i8** %ptr38, align 8, !tbaa !23
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.35, %sw.bb.32, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.19, %sw.bb.15, %sw.bb.13, %sw.bb, %if.end.10, %if.then.8, %if.then.3, %if.then
  %75 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %76
}

; Function Attrs: nounwind uwtable
define internal void @context_state_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcst = alloca %struct.gs_context_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !27
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_context_state_s*
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !13
  %10 = bitcast %struct.gs_state_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #3
  %12 = bitcast i8* %call to %struct.gs_state_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_context_state_s*
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  store %struct.gs_state_s* %12, %struct.gs_state_s** %pgs1, align 8, !tbaa !13
  %15 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_dual_memory, i32 0, i32 5), align 8, !tbaa !29
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %17 = bitcast %struct.gs_dual_memory_s* %memory to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %15(i8* %17, i32 72, %struct.gs_memory_struct_type_s* @st_gs_dual_memory, %struct.gc_state_s* %18) #3
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gc_state_s* %19 to %struct.gc_procs_with_refs_s**
  %21 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %20, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %21, i32 0, i32 5
  %22 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !30
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %24 = bitcast %struct.ref_s* %arrayidx to i16*
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio2, i32 0, i64 0
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i64 1
  %26 = bitcast %struct.ref_s* %add.ptr to i16*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %22(i16* %24, i16* %26, %struct.gc_state_s* %27) #3
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_with_refs_s**
  %30 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %29, align 8, !tbaa !1
  %reloc_refs4 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %30, i32 0, i32 5
  %31 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs4, align 8, !tbaa !30
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 17
  %arrayidx6 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio5, i32 0, i64 1
  %33 = bitcast %struct.ref_s* %arrayidx6 to i16*
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 17
  %arrayidx8 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio7, i32 0, i64 1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i64 1
  %35 = bitcast %struct.ref_s* %add.ptr9 to i16*
  %36 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %31(i16* %33, i16* %35, %struct.gc_state_s* %36) #3
  %37 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gc_state_s* %37 to %struct.gc_procs_with_refs_s**
  %39 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %38, align 8, !tbaa !1
  %reloc_refs10 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %39, i32 0, i32 5
  %40 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs10, align 8, !tbaa !30
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio11, i32 0, i64 2
  %42 = bitcast %struct.ref_s* %arrayidx12 to i16*
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 17
  %arrayidx14 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio13, i32 0, i64 2
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx14, i64 1
  %44 = bitcast %struct.ref_s* %add.ptr15 to i16*
  %45 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %40(i16* %42, i16* %44, %struct.gc_state_s* %45) #3
  %46 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gc_state_s* %46 to %struct.gc_procs_with_refs_s**
  %48 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %47, align 8, !tbaa !1
  %reloc_refs16 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %48, i32 0, i32 5
  %49 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs16, align 8, !tbaa !30
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 10
  %51 = bitcast %struct.ref_s* %error_object to i16*
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 10
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object17, i64 1
  %53 = bitcast %struct.ref_s* %add.ptr18 to i16*
  %54 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %49(i16* %51, i16* %53, %struct.gc_state_s* %54) #3
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 10
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %56 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %56 to i32
  %and = and i32 %conv, -2
  %conv20 = trunc i32 %and to i16
  store i16 %conv20, i16* %type_attrs, align 2, !tbaa !7
  %57 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gc_state_s* %57 to %struct.gc_procs_with_refs_s**
  %59 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %58, align 8, !tbaa !1
  %reloc_refs21 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %59, i32 0, i32 5
  %60 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs21, align 8, !tbaa !30
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 11
  %62 = bitcast %struct.ref_s* %userparams to i16*
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 11
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %userparams22, i64 1
  %64 = bitcast %struct.ref_s* %add.ptr23 to i16*
  %65 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %60(i16* %62, i16* %64, %struct.gc_state_s* %65) #3
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 11
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %userparams24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %67 = load i16, i16* %type_attrs26, align 2, !tbaa !7
  %conv27 = zext i16 %67 to i32
  %and28 = and i32 %conv27, -2
  %conv29 = trunc i32 %and28 to i16
  store i16 %conv29, i16* %type_attrs26, align 2, !tbaa !7
  %68 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gc_state_s* %68 to %struct.gc_procs_with_refs_s**
  %70 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %69, align 8, !tbaa !1
  %reloc_struct_ptr30 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %70, i32 0, i32 0
  %71 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr30, align 8, !tbaa !27
  %72 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %73 = bitcast i8* %72 to %struct.gs_context_state_s*
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 19
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global, i32 0, i32 1
  %74 = load i16*, i16** %nx_table, align 8, !tbaa !25
  %75 = bitcast i16* %74 to i8*
  %76 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call31 = call i8* %71(i8* %75, %struct.gc_state_s* %76) #3
  %77 = bitcast i8* %call31 to i16*
  %78 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %79 = bitcast i8* %78 to %struct.gs_context_state_s*
  %op_array_table_global32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 19
  %nx_table33 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global32, i32 0, i32 1
  store i16* %77, i16** %nx_table33, align 8, !tbaa !25
  %80 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gc_state_s* %80 to %struct.gc_procs_with_refs_s**
  %82 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %81, align 8, !tbaa !1
  %reloc_struct_ptr34 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %82, i32 0, i32 0
  %83 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr34, align 8, !tbaa !27
  %84 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %85 = bitcast i8* %84 to %struct.gs_context_state_s*
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 20
  %nx_table35 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local, i32 0, i32 1
  %86 = load i16*, i16** %nx_table35, align 8, !tbaa !26
  %87 = bitcast i16* %86 to i8*
  %88 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call36 = call i8* %83(i8* %87, %struct.gc_state_s* %88) #3
  %89 = bitcast i8* %call36 to i16*
  %90 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %91 = bitcast i8* %90 to %struct.gs_context_state_s*
  %op_array_table_local37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 20
  %nx_table38 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local37, i32 0, i32 1
  store i16* %89, i16** %nx_table38, align 8, !tbaa !26
  %92 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gc_state_s* %92 to %struct.gc_procs_with_refs_s**
  %94 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %93, align 8, !tbaa !1
  %reloc_refs39 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %94, i32 0, i32 5
  %95 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs39, align 8, !tbaa !30
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_global40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 19
  %table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global40, i32 0, i32 0
  %97 = bitcast %struct.ref_s* %table to i16*
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_global41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 19
  %table42 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global41, i32 0, i32 0
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table42, i64 1
  %99 = bitcast %struct.ref_s* %add.ptr43 to i16*
  %100 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %95(i16* %97, i16* %99, %struct.gc_state_s* %100) #3
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_global44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %101, i32 0, i32 19
  %table45 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_global44, i32 0, i32 0
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table45, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %102 = load i16, i16* %type_attrs47, align 2, !tbaa !7
  %conv48 = zext i16 %102 to i32
  %and49 = and i32 %conv48, -2
  %conv50 = trunc i32 %and49 to i16
  store i16 %conv50, i16* %type_attrs47, align 2, !tbaa !7
  %103 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %104 = bitcast %struct.gc_state_s* %103 to %struct.gc_procs_with_refs_s**
  %105 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %104, align 8, !tbaa !1
  %reloc_refs51 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %105, i32 0, i32 5
  %106 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs51, align 8, !tbaa !30
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_local52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 20
  %table53 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local52, i32 0, i32 0
  %108 = bitcast %struct.ref_s* %table53 to i16*
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_local54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 20
  %table55 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local54, i32 0, i32 0
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table55, i64 1
  %110 = bitcast %struct.ref_s* %add.ptr56 to i16*
  %111 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %106(i16* %108, i16* %110, %struct.gc_state_s* %111) #3
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_array_table_local57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 20
  %table58 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local57, i32 0, i32 0
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %table58, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  %113 = load i16, i16* %type_attrs60, align 2, !tbaa !7
  %conv61 = zext i16 %113 to i32
  %and62 = and i32 %conv61, -2
  %conv63 = trunc i32 %and62 to i16
  store i16 %conv63, i16* %type_attrs60, align 2, !tbaa !7
  %114 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_dict_stack, i32 0, i32 5), align 8, !tbaa !29
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 24
  %116 = bitcast %struct.dict_stack_s* %dict_stack to i8*
  %117 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %114(i8* %116, i32 152, %struct.gs_memory_struct_type_s* @st_dict_stack, %struct.gc_state_s* %117) #3
  %118 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_exec_stack, i32 0, i32 5), align 8, !tbaa !29
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 25
  %120 = bitcast %struct.exec_stack_s* %exec_stack to i8*
  %121 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %118(i8* %120, i32 104, %struct.gs_memory_struct_type_s* @st_exec_stack, %struct.gc_state_s* %121) #3
  %122 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_op_stack, i32 0, i32 5), align 8, !tbaa !29
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 26
  %124 = bitcast %struct.op_stack_s* %op_stack to i8*
  %125 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %122(i8* %124, i32 96, %struct.gs_memory_struct_type_s* @st_op_stack, %struct.gc_state_s* %125) #3
  %126 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @context_state_alloc(%struct.gs_context_state_s** %ppcst, %struct.ref_s* %psystem_dict, %struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcst.addr = alloca %struct.gs_context_state_s**, align 8
  %psystem_dict.addr = alloca %struct.ref_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %pcst = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %puserparams = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %system_dict22 = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gs_context_state_s** %ppcst, %struct.gs_context_state_s*** %ppcst.addr, align 8, !tbaa !1
  store %struct.ref_s* %psystem_dict, %struct.ref_s** %psystem_dict.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !31
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %ppcst.addr, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %4, align 8, !tbaa !1
  store %struct.gs_context_state_s* %5, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_context_state_s* %8, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !33
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %call = call i8* %11(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_context_state to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #3
  %14 = bitcast i8* %call to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %14, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_context_state_s* %15, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %call4 = call i32 @gs_interp_alloc_stacks(%struct.gs_ref_memory_s* %16, %struct.gs_context_state_s* %17) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %x0

if.end.7:                                         ; preds = %if.end.3
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %20 = load %struct.ref_s*, %struct.ref_s** %psystem_dict.addr, align 8, !tbaa !1
  %21 = bitcast %struct.ref_s* %system_dict to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !36
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack8, i32 0, i32 1
  store i32 0, i32* %min_size, align 4, !tbaa !41
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 24
  %userdict_index = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack9, i32 0, i32 2
  store i32 0, i32* %userdict_index, align 4, !tbaa !42
  %25 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %call10 = call %struct.gs_state_s* @int_gstate_alloc(%struct.gs_dual_memory_s* %25) #3
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  store %struct.gs_state_s* %call10, %struct.gs_state_s** %pgs, align 8, !tbaa !13
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !13
  %cmp12 = icmp eq %struct.gs_state_s* %28, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %x1

if.end.14:                                        ; preds = %if.end.7
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %30 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gs_dual_memory_s* %memory to i8*
  %32 = bitcast %struct.gs_dual_memory_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 72, i32 8, i1 false), !tbaa.struct !43
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 2
  store i32 1, i32* %language_level, align 4, !tbaa !45
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %array_packing = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array_packing, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !37
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %array_packing15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array_packing15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !7
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 4
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format, i32 0, i32 1
  %intval = bitcast %union.v* %value16 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !38
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %binary_object_format17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 4
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  store i16 2816, i16* %type_attrs19, align 2, !tbaa !7
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %nv_page_count = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 5
  store i64 0, i64* %nv_page_count, align 8, !tbaa !46
  %39 = load i64, i64* @rand_state_initial, align 8, !tbaa !38
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %rand_state = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 6
  store i64 %39, i64* %rand_state, align 8, !tbaa !47
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %usertime_total = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 7
  store i64 0, i64* %usertime_total, align 8, !tbaa !48
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %keep_usertime = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 8
  store i32 0, i32* %keep_usertime, align 4, !tbaa !49
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %in_superexec = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 9
  store i32 0, i32* %in_superexec, align 4, !tbaa !50
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %plugin_list = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 27
  store %struct.i_plugin_holder_s* null, %struct.i_plugin_holder_s** %plugin_list, align 8, !tbaa !51
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 10
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %error_object, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  store i16 0, i16* %type_attrs21, align 2, !tbaa !7
  %46 = bitcast %struct.ref_s** %puserparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast %struct.ref_s** %system_dict22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %dict_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 24
  %system_dict24 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack23, i32 0, i32 7
  store %struct.ref_s* %system_dict24, %struct.ref_s** %system_dict22, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %system_dict22, align 8, !tbaa !1
  %call25 = call i32 @dict_find_string(%struct.ref_s* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %puserparams) #3
  %cmp26 = icmp sge i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.14
  %51 = load %struct.ref_s*, %struct.ref_s** %puserparams, align 8, !tbaa !1
  %call28 = call i32 @dict_length(%struct.ref_s* %51) #3
  store i32 %call28, i32* %size, align 4, !tbaa !5
  br label %if.end.29

if.else:                                          ; preds = %if.end.14
  store i32 300, i32* %size, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 1
  %spaces31 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 1
  %memories32 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces31, i32 0, i32 1
  %named33 = bitcast %union.anon* %memories32 to %struct._ssn*
  %local34 = getelementptr inbounds %struct._ssn, %struct._ssn* %named33, i32 0, i32 3
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local34, align 8, !tbaa !31
  %54 = load i32, i32* %size, align 4, !tbaa !5
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 11
  %call35 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %53, i32 %54, %struct.ref_s* %userparams) #3
  store i32 %call35, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %56, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.29
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.37, %if.end.38
  %57 = bitcast %struct.ref_s** %system_dict22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.ref_s** %puserparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.104 [
    i32 0, label %cleanup.cont
    i32 4, label %x2
  ]

cleanup.cont:                                     ; preds = %cleanup
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 12
  store i32 0, i32* %scanner_options, align 4, !tbaa !52
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 13
  store i32 0, i32* %LockFilePermissions, align 4, !tbaa !53
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %starting_arg_file = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 14
  store i32 0, i32* %starting_arg_file, align 4, !tbaa !54
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %RenderTTNotdef = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 15
  store i32 1, i32* %RenderTTNotdef, align 4, !tbaa !55
  %64 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !56
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 0
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !63
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 0
  %68 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !64
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory42 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !56
  %stable_memory43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 0
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory43, align 8, !tbaa !63
  %call44 = call i8* %68(%struct.gs_memory_s* %71, i32 352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #3
  %72 = bitcast i8* %call44 to %struct.stream_s*
  store %struct.stream_s* %72, %struct.stream_s** %s, align 8, !tbaa !1
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp45 = icmp eq %struct.stream_s* %73, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cleanup.cont
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.47:                                        ; preds = %cleanup.cont
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 18
  store %struct.stream_s* %74, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !65
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %76, %struct.gs_memory_s* null) #3
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @sread_string(%struct.stream_s* %77, i8* null, i32 0) #3
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %78, i32 0, i32 21
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !66
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %next, align 8, !tbaa !71
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 20
  store i16 0, i16* %write_id, align 2, !tbaa !72
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 19
  store i16 0, i16* %read_id, align 2, !tbaa !73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.then.46, %if.end.47
  %82 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %cleanup.dest.49 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.49, label %cleanup.104 [
    i32 0, label %cleanup.cont.50
    i32 5, label %x3
  ]

cleanup.cont.50:                                  ; preds = %cleanup.48
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %invalid_file_stream51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 18
  %84 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream51, align 8, !tbaa !65
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pfile = bitcast %union.v* %value52 to %struct.stream_s**
  store %struct.stream_s* %84, %struct.stream_s** %pfile, align 8, !tbaa !1
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 17
  %arrayidx54 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio53, i32 0, i64 0
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx54, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  store i16 864, i16* %type_attrs56, align 2, !tbaa !7
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 17
  %arrayidx58 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio57, i32 0, i64 0
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx58, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  store i32 1, i32* %rsize, align 4, !tbaa !74
  %88 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %invalid_file_stream60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %88, i32 0, i32 18
  %89 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream60, align 8, !tbaa !65
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 17
  %arrayidx62 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio61, i32 0, i64 1
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 1
  %pfile64 = bitcast %union.v* %value63 to %struct.stream_s**
  store %struct.stream_s* %89, %struct.stream_s** %pfile64, align 8, !tbaa !1
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 17
  %arrayidx66 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio65, i32 0, i64 1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx66, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 880, i16* %type_attrs68, align 2, !tbaa !7
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 17
  %arrayidx70 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio69, i32 0, i64 1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx70, i32 0, i32 0
  %rsize72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 2
  store i32 1, i32* %rsize72, align 4, !tbaa !74
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %invalid_file_stream73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 18
  %94 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream73, align 8, !tbaa !65
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 17
  %arrayidx75 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio74, i32 0, i64 2
  %value76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx75, i32 0, i32 1
  %pfile77 = bitcast %union.v* %value76 to %struct.stream_s**
  store %struct.stream_s* %94, %struct.stream_s** %pfile77, align 8, !tbaa !1
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 17
  %arrayidx79 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio78, i32 0, i64 2
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx79, i32 0, i32 0
  %type_attrs81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 0
  store i16 880, i16* %type_attrs81, align 2, !tbaa !7
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %stdio82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 17
  %arrayidx83 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio82, i32 0, i64 2
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx83, i32 0, i32 0
  %rsize85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 2
  store i32 1, i32* %rsize85, align 4, !tbaa !74
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.97, %cleanup.cont.50
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %98, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp86 = icmp sge i32 %dec, 0
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %99 to i64
  %100 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces87 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %100, i32 0, i32 1
  %memories88 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces87, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories88 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx89 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx89, align 8, !tbaa !1
  %cmp90 = icmp ne %struct.gs_ref_memory_s* %101, null
  br i1 %cmp90, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %for.body
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %102 to i64
  %103 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces93 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %103, i32 0, i32 1
  %memories94 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces93, i32 0, i32 1
  %indexed95 = bitcast %union.anon* %memories94 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx96 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed95, i32 0, i64 %idxprom92
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx96, align 8, !tbaa !1
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %104, i32 0, i32 25
  %105 = load i32, i32* %num_contexts, align 4, !tbaa !75
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %num_contexts, align 4, !tbaa !75
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %time_slice_ticks = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 22
  store i32 32767, i32* %time_slice_ticks, align 4, !tbaa !76
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %reschedule_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 23
  store i32 (%struct.gs_context_state_s**)* @no_reschedule, i32 (%struct.gs_context_state_s**)** %reschedule_proc, align 8, !tbaa !77
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %time_slice_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 21
  store i32 (%struct.gs_context_state_s**)* @no_reschedule, i32 (%struct.gs_context_state_s**)** %time_slice_proc, align 8, !tbaa !78
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %110 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %ppcst.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %109, %struct.gs_context_state_s** %110, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104

x3:                                               ; preds = %cleanup.48
  br label %x2

x2:                                               ; preds = %x3, %cleanup
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %pgs98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 0
  %112 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs98, align 8, !tbaa !13
  %call99 = call i32 @gs_state_free(%struct.gs_state_s* %112) #3
  br label %x1

x1:                                               ; preds = %x2, %if.then.13
  %113 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %114 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  call void @gs_interp_free_stacks(%struct.gs_ref_memory_s* %113, %struct.gs_context_state_s* %114) #3
  br label %x0

x0:                                               ; preds = %x1, %if.then.6
  %115 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %ppcst.addr, align 8, !tbaa !1
  %116 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %115, align 8, !tbaa !1
  %cmp100 = icmp eq %struct.gs_context_state_s* %116, null
  br i1 %cmp100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %x0
  %117 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %118 = bitcast %struct.gs_ref_memory_s* %117 to %struct.gs_memory_s*
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %119 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !79
  %120 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %121 = bitcast %struct.gs_ref_memory_s* %120 to %struct.gs_memory_s*
  %122 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst, align 8, !tbaa !1
  %123 = bitcast %struct.gs_context_state_s* %122 to i8*
  call void %119(%struct.gs_memory_s* %121, i8* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %x0
  %124 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104

cleanup.104:                                      ; preds = %if.end.103, %for.end, %cleanup.48, %cleanup, %if.then.2
  %125 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct.gs_context_state_s** %pcst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_interp_alloc_stacks(%struct.gs_ref_memory_s*, %struct.gs_context_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_state_s* @int_gstate_alloc(%struct.gs_dual_memory_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @sread_string(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @no_reschedule(%struct.gs_context_state_s** %pi_ctx_p) #0 {
entry:
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  ret i32 -29
}

declare i32 @gs_state_free(%struct.gs_state_s*) #2

declare void @gs_interp_free_stacks(%struct.gs_ref_memory_s*, %struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @context_state_load(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %system_dict = alloca %struct.ref_s*, align 8
  %space = alloca i32, align 4
  %dstack = alloca %struct.dict_stack_s*, align 8
  %code = alloca i32, align 4
  %rdstack = alloca %struct.ref_stack_s*, align 8
  %puserdict = alloca %struct.ref_s*, align 8
  %plocaldicts = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !31
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %system_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 24
  %system_dict1 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  store %struct.ref_s* %system_dict1, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %5 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %space, align 4, !tbaa !5
  %8 = bitcast %struct.dict_stack_s** %dstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 24
  store %struct.dict_stack_s* %dict_stack2, %struct.dict_stack_s** %dstack, align 8, !tbaa !1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  call void @alloc_set_not_in_save(%struct.gs_dual_memory_s* %memory3) #3
  %12 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %13 = load i16, i16* %type_attrs5, align 2, !tbaa !7
  %conv6 = zext i16 %13 to i32
  %and7 = and i32 %conv6, -13
  %or = or i32 %and7, 12
  %conv8 = trunc i32 %or to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  store i16 %conv8, i16* %type_attrs10, align 2, !tbaa !7
  %15 = bitcast %struct.ref_stack_s** %rdstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.dict_stack_s*, %struct.dict_stack_s** %dstack, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %16, i32 0, i32 0
  store %struct.ref_stack_s* %stack, %struct.ref_stack_s** %rdstack, align 8, !tbaa !1
  %17 = bitcast %struct.ref_s** %puserdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.ref_stack_s*, %struct.ref_stack_s** %rdstack, align 8, !tbaa !1
  %19 = load %struct.ref_stack_s*, %struct.ref_stack_s** %rdstack, align 8, !tbaa !1
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %19) #3
  %sub = sub i32 %call, 1
  %20 = load %struct.dict_stack_s*, %struct.dict_stack_s** %dstack, align 8, !tbaa !1
  %userdict_index = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %20, i32 0, i32 2
  %21 = load i32, i32* %userdict_index, align 4, !tbaa !80
  %sub11 = sub i32 %sub, %21
  %conv12 = zext i32 %sub11 to i64
  %call13 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %18, i64 %conv12) #3
  store %struct.ref_s* %call13, %struct.ref_s** %puserdict, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s** %plocaldicts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.ref_s*, %struct.ref_s** %puserdict, align 8, !tbaa !1
  %call14 = call i32 @dict_find_string(%struct.ref_s* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %plocaldicts) #3
  %cmp = icmp sgt i32 %call14, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %plocaldicts, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %25 = bitcast i16* %type_attrs17 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv18 = zext i8 %26 to i32
  %cmp19 = icmp eq i32 %conv18, 2
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load %struct.ref_s*, %struct.ref_s** %plocaldicts, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %29 = load %struct.dict_stack_s*, %struct.dict_stack_s** %dstack, align 8, !tbaa !1
  %call21 = call i32 @dict_copy_entries(%struct.ref_s* %27, %struct.ref_s* %28, i32 0, %struct.dict_stack_s* %29) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %30 = bitcast %struct.ref_s** %plocaldicts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.ref_s** %puserdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.ref_stack_s** %rdstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 11
  %35 = load %struct.dict_stack_s*, %struct.dict_stack_s** %dstack, align 8, !tbaa !1
  %call22 = call i32 @dict_put_string(%struct.ref_s* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s* %userparams, %struct.dict_stack_s* %35) #3
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp sge i32 %36, 0
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %userparams26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 11
  %call27 = call i32 @set_user_params(%struct.gs_context_state_s* %37, %struct.ref_s* %userparams26) #3
  store i32 %call27, i32* %code, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end
  %39 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %40 = load i16, i16* %type_attrs30, align 2, !tbaa !7
  %conv31 = zext i16 %40 to i32
  %and32 = and i32 %conv31, -13
  %41 = load i32, i32* %space, align 4, !tbaa !5
  %or33 = or i32 %and32, %41
  %conv34 = trunc i32 %or33 to i16
  %42 = load %struct.ref_s*, %struct.ref_s** %system_dict, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 %conv34, i16* %type_attrs36, align 2, !tbaa !7
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %43, i32 0, i32 19
  %44 = load i32, i32* %save_level, align 4, !tbaa !81
  %cmp37 = icmp sgt i32 %44, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.28
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  call void @alloc_set_in_save(%struct.gs_dual_memory_s* %memory40) #3
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.28
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 1
  store %struct.ref_s* null, %struct.ref_s** %current_file, align 8, !tbaa !82
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack42) #3
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.dict_stack_s** %dstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.ref_s** %system_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  ret i32 %48
}

declare void @alloc_set_not_in_save(%struct.gs_dual_memory_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @dict_copy_entries(%struct.ref_s*, %struct.ref_s*, i32, %struct.dict_stack_s*) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @set_user_params(%struct.gs_context_state_s*, %struct.ref_s*) #2

declare void @alloc_set_in_save(%struct.gs_dual_memory_s*) #2

declare void @dstack_set_top(%struct.dict_stack_s*) #2

; Function Attrs: nounwind uwtable
define i32 @context_state_store(%struct.gs_context_state_s* %pcst) #0 {
entry:
  %retval = alloca i32, align 4
  %pcst.addr = alloca %struct.gs_context_state_s*, align 8
  %puserparams = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %pcst, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack) #3
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack1) #3
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_cleanup(%struct.ref_stack_s* %stack2) #3
  %3 = bitcast %struct.ref_s** %puserparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %5, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack3, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %puserparams) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 11
  %8 = load %struct.ref_s*, %struct.ref_s** %puserparams, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s* %userparams to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.ref_s** %puserparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont, %cleanup
  %13 = load i32, i32* %retval
  ret i32 %13

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @ref_stack_cleanup(%struct.ref_stack_s*) #2

; Function Attrs: nounwind uwtable
define i32 @context_state_free(%struct.gs_context_state_s* %pcst) #0 {
entry:
  %retval = alloca i32, align 4
  %pcst.addr = alloca %struct.gs_context_state_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %freed = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pgs = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  store %struct.gs_context_state_s* %pcst, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !31
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %freed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %freed, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !56
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !63
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !79
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !56
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !63
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 18
  %13 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !65
  %14 = bitcast %struct.stream_s* %13 to i8*
  call void %8(%struct.gs_memory_s* %11, i8* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %spaces4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 1
  %memories5 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces4, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories5 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_ref_memory_s* %18, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 1
  %memories10 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces9, i32 0, i32 1
  %indexed11 = bitcast %union.anon* %memories10 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx12 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed11, i32 0, i64 %idxprom7
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx12, align 8, !tbaa !1
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 25
  %22 = load i32, i32* %num_contexts, align 4, !tbaa !75
  %dec13 = add nsw i32 %22, -1
  store i32 %dec13, i32* %num_contexts, align 4, !tbaa !75
  %tobool = icmp ne i32 %dec13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %shl = shl i32 1, %23
  %24 = load i32, i32* %freed, align 4, !tbaa !5
  %or = or i32 %24, %shl
  store i32 %or, i32* %freed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %freed, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %26 = load i32, i32* %freed, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.end
  %27 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  %pgs17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 0
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs17, align 8, !tbaa !13
  store %struct.gs_state_s* %29, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call i32 @gs_grestoreall(%struct.gs_state_s* %30) #3
  %31 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call18 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %32) #3
  store %struct.gs_state_s* %call18, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call19 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %33, %struct.gs_state_s* %34) #3
  %35 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call20 = call i32 @gs_grestore(%struct.gs_state_s* %36) #3
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call21 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %37, %struct.gs_state_s* null) #3
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call22 = call i32 @gs_state_free(%struct.gs_state_s* %38) #3
  %39 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %pcst.addr, align 8, !tbaa !1
  call void @gs_interp_free_stacks(%struct.gs_ref_memory_s* %40, %struct.gs_context_state_s* %41) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %freed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @gs_grestoreall(%struct.gs_state_s*) #2

declare %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s*) #2

declare %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s*, %struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !10, i64 0}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !6, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 32}
!12 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!13 = !{!14, !2, i64 0}
!14 = !{!"gs_context_state_s", !2, i64 0, !15, i64 8, !6, i64 80, !8, i64 88, !8, i64 104, !17, i64 120, !17, i64 128, !17, i64 136, !6, i64 144, !6, i64 148, !8, i64 152, !8, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !18, i64 264, !18, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !19, i64 368, !21, i64 520, !22, i64 624, !2, i64 720}
!15 = !{!"gs_dual_memory_s", !2, i64 0, !16, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!16 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!17 = !{!"long", !3, i64 0}
!18 = !{!"op_array_table_s", !8, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!19 = !{!"dict_stack_s", !20, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !8, i64 136}
!20 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !6, i64 40, !6, i64 44, !8, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!21 = !{!"exec_stack_s", !20, i64 0, !2, i64 96}
!22 = !{!"op_stack_s", !20, i64 0}
!23 = !{!24, !2, i64 0}
!24 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!25 = !{!14, !2, i64 280}
!26 = !{!14, !2, i64 320}
!27 = !{!28, !2, i64 0}
!28 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!29 = !{!12, !2, i64 40}
!30 = !{!28, !2, i64 40}
!31 = !{!32, !2, i64 24}
!32 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!33 = !{!34, !2, i64 72}
!34 = !{!"gs_memory_s", !2, i64 0, !35, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!36 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 4, i64 4, !5, i64 8, i64 8, !38, i64 8, i64 2, !37, i64 8, i64 4, !39, i64 8, i64 8, !38, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !38}
!37 = !{!10, !10, i64 0}
!38 = !{!17, !17, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !3, i64 0}
!41 = !{!14, !6, i64 464}
!42 = !{!14, !6, i64 468}
!43 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 32, !44, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !5, i64 56, i64 8, !1, i64 64, i64 4, !5, i64 68, i64 4, !5}
!44 = !{!3, !3, i64 0}
!45 = !{!14, !6, i64 80}
!46 = !{!14, !17, i64 120}
!47 = !{!14, !17, i64 128}
!48 = !{!14, !17, i64 136}
!49 = !{!14, !6, i64 144}
!50 = !{!14, !6, i64 148}
!51 = !{!14, !2, i64 720}
!52 = !{!14, !6, i64 184}
!53 = !{!14, !6, i64 188}
!54 = !{!14, !6, i64 192}
!55 = !{!14, !6, i64 196}
!56 = !{!57, !2, i64 200}
!57 = !{!"gs_ref_memory_s", !2, i64 0, !35, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !58, i64 232, !6, i64 272, !17, i64 280, !2, i64 288, !2, i64 296, !59, i64 304, !2, i64 488, !60, i64 496, !17, i64 512, !17, i64 520, !61, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !17, i64 624, !17, i64 632, !2, i64 640, !62, i64 648, !6, i64 672, !3, i64 680}
!58 = !{!"gs_memory_gc_status_s", !17, i64 0, !17, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !17, i64 32}
!59 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!60 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!61 = !{!"lost_", !17, i64 0, !17, i64 8, !17, i64 16}
!62 = !{!"gs_memory_status_s", !17, i64 0, !17, i64 8, !6, i64 16}
!63 = !{!34, !2, i64 0}
!64 = !{!34, !2, i64 8}
!65 = !{!14, !2, i64 256}
!66 = !{!67, !2, i64 272}
!67 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !3, i64 154, !3, i64 155, !68, i64 160, !17, i64 176, !69, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !10, i64 264, !10, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !70, i64 312, !6, i64 328, !17, i64 336, !17, i64 344}
!68 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!69 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!70 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!71 = !{!67, !2, i64 280}
!72 = !{!67, !10, i64 266}
!73 = !{!67, !10, i64 264}
!74 = !{!8, !6, i64 4}
!75 = !{!57, !6, i64 592}
!76 = !{!14, !6, i64 352}
!77 = !{!14, !2, i64 360}
!78 = !{!14, !2, i64 344}
!79 = !{!34, !2, i64 24}
!80 = !{!19, !6, i64 100}
!81 = !{!57, !6, i64 552}
!82 = !{!21, !2, i64 96}
