; ModuleID = './istack.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.ref_stack_params_s = type { i32, i32, i32, i32, %struct.ref_s, i32, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.ref_stack_enum_s = type { %struct.ref_stack_block_s*, %struct.ref_s*, i32 }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }

@.str = private unnamed_addr constant [12 x i8] c"ref_stack_t\00", align 1
@st_ref_stack = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @ref_stack_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_stack_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_stack_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"ref_stack_alloc(stack.params)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ref_stack_pop_block\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ref_stack_release(stack.params)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ref_stack_release\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ref_stack_free\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"ref_stack_params_t\00", align 1
@st_ref_stack_params = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"ref_stack_push_block\00", align 1

; Function Attrs: nounwind uwtable
define internal void @ref_stack_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %sptr = alloca %struct.ref_stack_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ref_stack_s*
  store %struct.ref_stack_s* %2, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %3, i32 0, i32 3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !7
  %5 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ref_stack_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %sptr = alloca %struct.ref_stack_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ref_stack_s*
  store %struct.ref_stack_s* %2, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
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
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 3
  %5 = bitcast %struct.ref_s* %current to i8*
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %7, i32 0, i32 10
  %8 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %9 = bitcast %struct.ref_stack_params_s* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.1, %sw.bb, %sw.default
  %11 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %12
}

; Function Attrs: nounwind uwtable
define internal void @ref_stack_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %sptr = alloca %struct.ref_stack_s*, align 8
  %bot = alloca i16*, align 8
  %reloc = alloca i64, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ref_stack_s*
  store %struct.ref_stack_s* %2, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %3 = bitcast i16** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s* %5 to i16*
  store i16* %6, i16** %bot, align 8, !tbaa !1
  %7 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gc_state_s* %8 to %struct.gc_procs_with_refs_s**
  %10 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %9, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %10, i32 0, i32 5
  %11 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !15
  %12 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %12, i32 0, i32 3
  %13 = bitcast %struct.ref_s* %current1 to i16*
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %14, i32 0, i32 3
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current2, i64 1
  %15 = bitcast %struct.ref_s* %add.ptr to i16*
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %11(i16* %13, i16* %15, %struct.gc_state_s* %16) #4
  %17 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %17, i32 0, i32 3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, -2
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, i16* %type_attrs, align 2, !tbaa !7
  %19 = load i16*, i16** %bot, align 8, !tbaa !1
  %20 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %current5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %20, i32 0, i32 3
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current5, i32 0, i32 1
  %refs7 = bitcast %union.v* %value6 to %struct.ref_s**
  %21 = load %struct.ref_s*, %struct.ref_s** %refs7, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s* %21 to i16*
  %sub.ptr.lhs.cast = ptrtoint i16* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  store i64 %sub.ptr.div, i64* %reloc, align 8, !tbaa !17
  %23 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %23, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %25 = bitcast %struct.ref_s* %24 to i16*
  %26 = load i64, i64* %reloc, align 8, !tbaa !17
  %idx.neg = sub i64 0, %26
  %add.ptr8 = getelementptr inbounds i16, i16* %25, i64 %idx.neg
  %27 = bitcast i16* %add.ptr8 to %struct.ref_s*
  %28 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %28, i32 0, i32 0
  store %struct.ref_s* %27, %struct.ref_s** %p9, align 8, !tbaa !19
  %29 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %bot10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %29, i32 0, i32 1
  %30 = load %struct.ref_s*, %struct.ref_s** %bot10, align 8, !tbaa !20
  %31 = bitcast %struct.ref_s* %30 to i16*
  %32 = load i64, i64* %reloc, align 8, !tbaa !17
  %idx.neg11 = sub i64 0, %32
  %add.ptr12 = getelementptr inbounds i16, i16* %31, i64 %idx.neg11
  %33 = bitcast i16* %add.ptr12 to %struct.ref_s*
  %34 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %bot13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %34, i32 0, i32 1
  store %struct.ref_s* %33, %struct.ref_s** %bot13, align 8, !tbaa !20
  %35 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %35, i32 0, i32 2
  %36 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %37 = bitcast %struct.ref_s* %36 to i16*
  %38 = load i64, i64* %reloc, align 8, !tbaa !17
  %idx.neg14 = sub i64 0, %38
  %add.ptr15 = getelementptr inbounds i16, i16* %37, i64 %idx.neg14
  %39 = bitcast i16* %add.ptr15 to %struct.ref_s*
  %40 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %top16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %40, i32 0, i32 2
  store %struct.ref_s* %39, %struct.ref_s** %top16, align 8, !tbaa !21
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gc_state_s* %41 to %struct.gc_procs_with_refs_s**
  %43 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %42, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %43, i32 0, i32 0
  %44 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %45 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %45, i32 0, i32 10
  %46 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %47 = bitcast %struct.ref_stack_params_s* %46 to i8*
  %48 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %44(i8* %47, %struct.gc_state_s* %48) #4
  %49 = bitcast i8* %call to %struct.ref_stack_params_s*
  %50 = load %struct.ref_stack_s*, %struct.ref_stack_s** %sptr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %50, i32 0, i32 10
  store %struct.ref_stack_params_s* %49, %struct.ref_stack_params_s** %params17, align 8, !tbaa !13
  %51 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i16** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.ref_stack_s** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_init(%struct.ref_stack_s* %pstack, %struct.ref_s* %pblock_array, i32 %bot_guard, i32 %top_guard, %struct.ref_s* %pguard_value, %struct.gs_ref_memory_s* %mem, %struct.ref_stack_params_s* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %pblock_array.addr = alloca %struct.ref_s*, align 8
  %bot_guard.addr = alloca i32, align 4
  %top_guard.addr = alloca i32, align 4
  %pguard_value.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %params.addr = alloca %struct.ref_stack_params_s*, align 8
  %size = alloca i32, align 4
  %avail = alloca i32, align 4
  %pblock = alloca %struct.ref_stack_block_s*, align 8
  %body = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.ref_s* %pblock_array, %struct.ref_s** %pblock_array.addr, align 8, !tbaa !1
  store i32 %bot_guard, i32* %bot_guard.addr, align 4, !tbaa !5
  store i32 %top_guard, i32* %top_guard.addr, align 4, !tbaa !5
  store %struct.ref_s* %pguard_value, %struct.ref_s** %pguard_value.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_stack_params_s* %params, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pblock_array.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !23
  store i32 %2, i32* %size, align 4, !tbaa !5
  %3 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %5 = load i32, i32* %bot_guard.addr, align 4, !tbaa !5
  %conv1 = zext i32 %5 to i64
  %add = add i64 2, %conv1
  %6 = load i32, i32* %top_guard.addr, align 4, !tbaa !5
  %conv2 = zext i32 %6 to i64
  %add3 = add i64 %add, %conv2
  %sub = sub i64 %conv, %add3
  %conv4 = trunc i64 %sub to i32
  store i32 %conv4, i32* %avail, align 4, !tbaa !5
  %7 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %pblock_array.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %9 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %10, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %12, i64 1
  %13 = bitcast %struct.ref_stack_block_s* %add.ptr to %struct.ref_s*
  store %struct.ref_s* %13, %struct.ref_s** %body, align 8, !tbaa !1
  %14 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_stack_params_s* %14, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %17 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !24
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %call = call i8* %17(%struct.gs_memory_s* %19, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ref_stack_params to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #4
  %20 = bitcast i8* %call to %struct.ref_stack_params_s*
  store %struct.ref_stack_params_s* %20, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %21 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.ref_stack_params_s* %21, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %23 = load i32, i32* %bot_guard.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 %idx.ext
  %24 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %24, i32 0, i32 1
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %bot, align 8, !tbaa !20
  %25 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %25, i32 0, i32 1
  %26 = load %struct.ref_s*, %struct.ref_s** %bot11, align 8, !tbaa !20
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %27, i32 0, i32 0
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %p, align 8, !tbaa !19
  %28 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %28, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !19
  %30 = load i32, i32* %avail, align 4, !tbaa !5
  %idx.ext14 = zext i32 %30 to i64
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 %idx.ext14
  %31 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %31, i32 0, i32 2
  store %struct.ref_s* %add.ptr15, %struct.ref_s** %top, align 8, !tbaa !21
  %32 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %32, i32 0, i32 3
  %33 = load %struct.ref_s*, %struct.ref_s** %pblock_array.addr, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %current to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !27
  %36 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %36, i32 0, i32 4
  store i32 0, i32* %extension_size, align 4, !tbaa !31
  %37 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %37, i32 0, i32 5
  store i32 0, i32* %extension_used, align 4, !tbaa !32
  %38 = load i32, i32* %avail, align 4, !tbaa !5
  %conv16 = zext i32 %38 to i64
  %39 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %39, i32 0, i32 6
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value17 to i64*
  store i64 %conv16, i64* %intval, align 8, !tbaa !17
  %40 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %max_stack18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %40, i32 0, i32 6
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !7
  %41 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %41, i32 0, i32 7
  store i32 0, i32* %requested, align 4, !tbaa !33
  %42 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %margin = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %42, i32 0, i32 8
  store i32 0, i32* %margin, align 4, !tbaa !34
  %43 = load i32, i32* %avail, align 4, !tbaa !5
  %44 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %44, i32 0, i32 9
  store i32 %43, i32* %body_size, align 4, !tbaa !35
  %45 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %46 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %46, i32 0, i32 10
  store %struct.ref_stack_params_s* %45, %struct.ref_stack_params_s** %params20, align 8, !tbaa !13
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %48, i32 0, i32 11
  store %struct.gs_ref_memory_s* %47, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !36
  %49 = load i32, i32* %bot_guard.addr, align 4, !tbaa !5
  %50 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %bot_guard21 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %50, i32 0, i32 0
  store i32 %49, i32* %bot_guard21, align 4, !tbaa !37
  %51 = load i32, i32* %top_guard.addr, align 4, !tbaa !5
  %52 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %top_guard22 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %52, i32 0, i32 1
  store i32 %51, i32* %top_guard22, align 4, !tbaa !39
  %53 = load i32, i32* %size, align 4, !tbaa !5
  %54 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %54, i32 0, i32 2
  store i32 %53, i32* %block_size, align 4, !tbaa !40
  %55 = load i32, i32* %avail, align 4, !tbaa !5
  %56 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %56, i32 0, i32 3
  store i32 %55, i32* %data_size, align 4, !tbaa !41
  %57 = load %struct.ref_s*, %struct.ref_s** %pguard_value.addr, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.ref_s* %57, null
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.9
  %58 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %guard_value = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %58, i32 0, i32 4
  %59 = load %struct.ref_s*, %struct.ref_s** %pguard_value.addr, align 8, !tbaa !1
  %60 = bitcast %struct.ref_s* %guard_value to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false), !tbaa.struct !27
  br label %if.end.32

if.else:                                          ; preds = %if.end.9
  %62 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %guard_value26 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %62, i32 0, i32 4
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %guard_value26, i32 0, i32 1
  %intval28 = bitcast %union.v* %value27 to i64*
  store i64 0, i64* %intval28, align 8, !tbaa !17
  %63 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %guard_value29 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %63, i32 0, i32 4
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %guard_value29, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  store i16 0, i16* %type_attrs31, align 2, !tbaa !7
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.25
  %64 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %underflow_error = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %64, i32 0, i32 5
  store i32 -1, i32* %underflow_error, align 4, !tbaa !42
  %65 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %overflow_error = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %65, i32 0, i32 6
  store i32 -1, i32* %overflow_error, align 4, !tbaa !43
  %66 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params.addr, align 8, !tbaa !1
  %allow_expansion = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %66, i32 0, i32 7
  store i32 1, i32* %allow_expansion, align 4, !tbaa !44
  %67 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %68 = load %struct.ref_s*, %struct.ref_s** %pblock_array.addr, align 8, !tbaa !1
  call void @init_block(%struct.ref_stack_s* %67, %struct.ref_s* %68, i32 0) #4
  %69 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %69, i32 0, i32 1
  %70 = load %struct.ref_s*, %struct.ref_s** %bot33, align 8, !tbaa !20
  %71 = load i32, i32* %avail, align 4, !tbaa !5
  call void @refset_null_new(%struct.ref_s* %70, i32 %71, i32 0) #4
  %72 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %72, i32 0, i32 0
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next, i32 0, i32 1
  %refs35 = bitcast %union.v* %value34 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs35, align 8, !tbaa !1
  %73 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %next36 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %73, i32 0, i32 0
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next36, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 1024, i16* %type_attrs38, align 2, !tbaa !7
  %74 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %next39 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %74, i32 0, i32 0
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next39, i32 0, i32 0
  %rsize41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 2
  store i32 0, i32* %rsize41, align 4, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.8
  %75 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @init_block(%struct.ref_stack_s* %pstack, %struct.ref_s* %psb, i32 %used) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %psb.addr = alloca %struct.ref_s*, align 8
  %used.addr = alloca i32, align 4
  %params = alloca %struct.ref_stack_params_s*, align 8
  %brefs = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.ref_s*, align 8
  %top = alloca %struct.ref_s*, align 8
  %top_guard3 = alloca i32, align 4
  %pblock = alloca %struct.ref_stack_block_s*, align 8
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.ref_s* %psb, %struct.ref_s** %psb.addr, align 8, !tbaa !1
  store i32 %used, i32* %used.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 10
  %2 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params1, align 8, !tbaa !13
  store %struct.ref_stack_params_s* %2, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %brefs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %psb.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %brefs, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %bot_guard = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %8, i32 0, i32 0
  %9 = load i32, i32* %bot_guard, align 4, !tbaa !37
  store i32 %9, i32* %i, align 4, !tbaa !5
  %10 = load %struct.ref_s*, %struct.ref_s** %brefs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %13 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %guard_value = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %13, i32 0, i32 4
  %14 = bitcast %struct.ref_s* %12 to i8*
  %15 = bitcast %struct.ref_s* %guard_value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add i32 %16, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %17 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %top_guard = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %18, i32 0, i32 1
  %19 = load i32, i32* %top_guard, align 4, !tbaa !39
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.ref_s*, %struct.ref_s** %brefs, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %psb.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %23 = load i32, i32* %rsize, align 4, !tbaa !23
  %idx.ext = zext i32 %23 to i64
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idx.ext
  store %struct.ref_s* %add.ptr2, %struct.ref_s** %top, align 8, !tbaa !1
  %24 = bitcast i32* %top_guard3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %top_guard4 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %25, i32 0, i32 1
  %26 = load i32, i32* %top_guard4, align 4, !tbaa !39
  store i32 %26, i32* %top_guard3, align 4, !tbaa !5
  %27 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !1
  %28 = load i32, i32* %top_guard3, align 4, !tbaa !5
  %idx.ext5 = sext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 %idx.neg
  %29 = load i32, i32* %top_guard3, align 4, !tbaa !5
  call void @refset_null_new(%struct.ref_s* %add.ptr6, i32 %29, i32 0) #4
  %30 = bitcast i32* %top_guard3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %32 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %brefs, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %33 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %34, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %35 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used7 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %35, i32 0, i32 1
  %36 = load %struct.ref_s*, %struct.ref_s** %psb.addr, align 8, !tbaa !1
  %37 = bitcast %struct.ref_s* %used7 to i8*
  %38 = bitcast %struct.ref_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !27
  %39 = load %struct.ref_s*, %struct.ref_s** %brefs, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 2
  %40 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %bot_guard9 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %40, i32 0, i32 0
  %41 = load i32, i32* %bot_guard9, align 4, !tbaa !37
  %idx.ext10 = zext i32 %41 to i64
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i64 %idx.ext10
  %42 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used12 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %42, i32 0, i32 1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used12, i32 0, i32 1
  %refs14 = bitcast %union.v* %value13 to %struct.ref_s**
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %refs14, align 8, !tbaa !1
  %43 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used15 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %43, i32 0, i32 1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used15, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  store i32 0, i32* %rsize17, align 4, !tbaa !23
  %44 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.ref_s** %brefs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret void
}

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ref_stack_allow_expansion(%struct.ref_stack_s* %pstack, i32 %expand) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %expand.addr = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %expand, i32* %expand.addr, align 4, !tbaa !5
  %0 = load i32, i32* %expand.addr, align 4, !tbaa !5
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 10
  %2 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %allow_expansion = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %2, i32 0, i32 7
  store i32 %0, i32* %allow_expansion, align 4, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define void @ref_stack_set_error_codes(%struct.ref_stack_s* %pstack, i32 %underflow_error, i32 %overflow_error) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %underflow_error.addr = alloca i32, align 4
  %overflow_error.addr = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %underflow_error, i32* %underflow_error.addr, align 4, !tbaa !5
  store i32 %overflow_error, i32* %overflow_error.addr, align 4, !tbaa !5
  %0 = load i32, i32* %underflow_error.addr, align 4, !tbaa !5
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 10
  %2 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %underflow_error1 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %2, i32 0, i32 5
  store i32 %0, i32* %underflow_error1, align 4, !tbaa !42
  %3 = load i32, i32* %overflow_error.addr, align 4, !tbaa !5
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 10
  %5 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params2, align 8, !tbaa !13
  %overflow_error3 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %5, i32 0, i32 6
  store i32 %3, i32* %overflow_error3, align 4, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_set_max_count(%struct.ref_stack_s* %pstack, i64 %nmax) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %nmax.addr = alloca i64, align 8
  %nmin = alloca i32, align 4
  %ncur = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i64 %nmax, i64* %nmax.addr, align 8, !tbaa !17
  %0 = bitcast i32* %nmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %3, i32 0, i32 1
  %4 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %5, i32 0, i32 5
  %6 = load i32, i32* %extension_used, align 4, !tbaa !32
  %conv = zext i32 %6 to i64
  %add = add nsw i64 %sub.ptr.div, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %nmin, align 4, !tbaa !5
  %7 = load i64, i64* %nmax.addr, align 8, !tbaa !17
  %8 = load i32, i32* %nmin, align 4, !tbaa !5
  %conv2 = zext i32 %8 to i64
  %cmp = icmp slt i64 %7, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %nmin, align 4, !tbaa !5
  %conv4 = zext i32 %9 to i64
  store i64 %conv4, i64* %nmax.addr, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %nmax.addr, align 8, !tbaa !17
  %cmp5 = icmp ugt i64 %10, 268435455
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i64 268435455, i64* %nmax.addr, align 8, !tbaa !17
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %11, i32 0, i32 10
  %12 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %allow_expansion = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %12, i32 0, i32 7
  %13 = load i32, i32* %allow_expansion, align 4, !tbaa !44
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.16, label %if.then.9

if.then.9:                                        ; preds = %if.end.8
  %14 = bitcast i32* %ncur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %15, i32 0, i32 9
  %16 = load i32, i32* %body_size, align 4, !tbaa !35
  store i32 %16, i32* %ncur, align 4, !tbaa !5
  %17 = load i64, i64* %nmax.addr, align 8, !tbaa !17
  %18 = load i32, i32* %ncur, align 4, !tbaa !5
  %conv10 = zext i32 %18 to i64
  %cmp11 = icmp sgt i64 %17, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.9
  %19 = load i32, i32* %ncur, align 4, !tbaa !5
  %conv14 = zext i32 %19 to i64
  store i64 %conv14, i64* %nmax.addr, align 8, !tbaa !17
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.9
  %20 = bitcast i32* %ncur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.8
  %21 = load i64, i64* %nmax.addr, align 8, !tbaa !17
  %22 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %22, i32 0, i32 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %21, i64* %intval, align 8, !tbaa !17
  %23 = bitcast i32* %nmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_set_margin(%struct.ref_stack_s* %pstack, i32 %margin) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %margin.addr = alloca i32, align 4
  %params = alloca %struct.ref_stack_params_s*, align 8
  %data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %used = alloca i32, align 4
  %keep = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %margin, i32* %margin.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 10
  %2 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params1, align 8, !tbaa !13
  store %struct.ref_stack_params_s* %2, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %3 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %data_size2 = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %4, i32 0, i32 3
  %5 = load i32, i32* %data_size2, align 4, !tbaa !41
  store i32 %5, i32* %data_size, align 4, !tbaa !5
  %6 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %7 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %margin3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %7, i32 0, i32 8
  %8 = load i32, i32* %margin3, align 4, !tbaa !34
  %cmp = icmp ule i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %9, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %margin4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %11, i32 0, i32 8
  %12 = load i32, i32* %margin4, align 4, !tbaa !34
  %13 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %sub = sub i32 %12, %13
  call void @refset_null_new(%struct.ref_s* %add.ptr, i32 %sub, i32 0) #4
  br label %if.end.27

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %15 = load i32, i32* %data_size, align 4, !tbaa !5
  %shr = lshr i32 %15, 1
  %cmp5 = icmp ugt i32 %14, %shr
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end:                                           ; preds = %if.else
  %16 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %16, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top7, align 8, !tbaa !21
  %18 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %18, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %20 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %conv = zext i32 %20 to i64
  %cmp8 = icmp slt i64 %sub.ptr.div, %conv
  br i1 %cmp8, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %if.end
  %21 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %22, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !19
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 1
  %24 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %24, i32 0, i32 1
  %25 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast13 = ptrtoint %struct.ref_s* %add.ptr12 to i64
  %sub.ptr.rhs.cast14 = ptrtoint %struct.ref_s* %25 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %sub.ptr.div16 = sdiv exact i64 %sub.ptr.sub15, 16
  %conv17 = trunc i64 %sub.ptr.div16 to i32
  store i32 %conv17, i32* %used, align 4, !tbaa !5
  %26 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %data_size, align 4, !tbaa !5
  %28 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %sub18 = sub i32 %27, %28
  store i32 %sub18, i32* %keep, align 4, !tbaa !5
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %31 = load i32, i32* %keep, align 4, !tbaa !5
  %32 = load i32, i32* %used, align 4, !tbaa !5
  %33 = load i32, i32* %keep, align 4, !tbaa !5
  %sub19 = sub i32 %32, %33
  %call = call i32 @ref_stack_push_block(%struct.ref_stack_s* %30, i32 %31, i32 %sub19) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %34, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.10
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %39 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %40 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %margin28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %40, i32 0, i32 8
  store i32 %39, i32* %margin28, align 4, !tbaa !34
  %41 = load i32, i32* %data_size, align 4, !tbaa !5
  %42 = load i32, i32* %margin.addr, align 4, !tbaa !5
  %sub29 = sub i32 %41, %42
  %43 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %43, i32 0, i32 9
  store i32 %sub29, i32* %body_size, align 4, !tbaa !35
  %44 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %44, i32 0, i32 1
  %45 = load %struct.ref_s*, %struct.ref_s** %bot30, align 8, !tbaa !20
  %46 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %46, i32 0, i32 9
  %47 = load i32, i32* %body_size31, align 4, !tbaa !35
  %idx.ext = zext i32 %47 to i64
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 %idx.ext
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr32, i64 -1
  %48 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %48, i32 0, i32 2
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %top34, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %if.end.27, %cleanup, %if.then.6
  %49 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_stack_push_block(%struct.ref_stack_s* %pstack, i32 %keep, i32 %add) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %keep.addr = alloca i32, align 4
  %add.addr = alloca i32, align 4
  %params = alloca %struct.ref_stack_params_s*, align 8
  %count = alloca i32, align 4
  %move = alloca i32, align 4
  %pcur = alloca %struct.ref_stack_block_s*, align 8
  %next = alloca %struct.ref_s, align 8
  %pnext = alloca %struct.ref_stack_block_s*, align 8
  %body = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %keep, i32* %keep.addr, align 4, !tbaa !5
  store i32 %add, i32* %add.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 10
  %2 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params1, align 8, !tbaa !13
  store %struct.ref_stack_params_s* %2, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %6 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %6, i32 0, i32 1
  %7 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add2 = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add2 to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %8 = bitcast i32* %move to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %10 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %sub = sub i32 %9, %10
  store i32 %sub, i32* %move, align 4, !tbaa !5
  %11 = bitcast %struct.ref_stack_block_s** %pcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %12, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %13 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %14, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast %struct.ref_stack_block_s** %pnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %20 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ugt i32 %19, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %21, i32 0, i32 5
  %22 = load i32, i32* %extension_used, align 4, !tbaa !32
  %conv4 = zext i32 %22 to i64
  %23 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %23, i32 0, i32 2
  %24 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %25 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %25, i32 0, i32 1
  %26 = load %struct.ref_s*, %struct.ref_s** %bot5, align 8, !tbaa !20
  %sub.ptr.lhs.cast6 = ptrtoint %struct.ref_s* %24 to i64
  %sub.ptr.rhs.cast7 = ptrtoint %struct.ref_s* %26 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %sub.ptr.div9 = sdiv exact i64 %sub.ptr.sub8, 16
  %add10 = add nsw i64 %conv4, %sub.ptr.div9
  %27 = load i32, i32* %add.addr, align 4, !tbaa !5
  %conv11 = zext i32 %27 to i64
  %add12 = add nsw i64 %add10, %conv11
  %28 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %28, i32 0, i32 6
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value13 to i64*
  %29 = load i64, i64* %intval, align 8, !tbaa !17
  %cmp14 = icmp sge i64 %add12, %29
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %allow_expansion = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %30, i32 0, i32 7
  %31 = load i32, i32* %allow_expansion, align 4, !tbaa !44
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %32 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %overflow_error = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %32, i32 0, i32 6
  %33 = load i32, i32* %overflow_error, align 4, !tbaa !43
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false
  %34 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %34, i32 0, i32 11
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !36
  %36 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %36, i32 0, i32 2
  %37 = load i32, i32* %block_size, align 4, !tbaa !40
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %35, %struct.ref_s* %next, i32 0, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %38, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next, i32 0, i32 1
  %refs23 = bitcast %union.v* %value22 to %struct.ref_s**
  %40 = load %struct.ref_s*, %struct.ref_s** %refs23, align 8, !tbaa !1
  %41 = bitcast %struct.ref_s* %40 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %41, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %42 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %42, i64 1
  %43 = bitcast %struct.ref_stack_block_s* %add.ptr to %struct.ref_s*
  store %struct.ref_s* %43, %struct.ref_s** %body, align 8, !tbaa !1
  %44 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %45 = load i32, i32* %keep.addr, align 4, !tbaa !5
  call void @init_block(%struct.ref_stack_s* %44, %struct.ref_s* %next, i32 %45) #4
  %46 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %bot_guard = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %46, i32 0, i32 0
  %47 = load i32, i32* %bot_guard, align 4, !tbaa !37
  %48 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %idx.ext = zext i32 %47 to i64
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 %idx.ext
  store %struct.ref_s* %add.ptr24, %struct.ref_s** %body, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %50 = bitcast %struct.ref_s* %49 to i8*
  %51 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %51, i32 0, i32 1
  %52 = load %struct.ref_s*, %struct.ref_s** %bot25, align 8, !tbaa !20
  %53 = load i32, i32* %move, align 4, !tbaa !5
  %idx.ext26 = zext i32 %53 to i64
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 %idx.ext26
  %54 = bitcast %struct.ref_s* %add.ptr27 to i8*
  %55 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %conv28 = zext i32 %55 to i64
  %mul = mul i64 %conv28, 16
  %call29 = call i8* @memcpy(i8* %50, i8* %54, i64 %mul) #5
  %56 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %57 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %idx.ext30 = zext i32 %57 to i64
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 %idx.ext30
  %58 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %58, i32 0, i32 3
  %59 = load i32, i32* %data_size, align 4, !tbaa !41
  %60 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %sub32 = sub i32 %59, %60
  call void @refset_null_new(%struct.ref_s* %add.ptr31, i32 %sub32, i32 0) #4
  %61 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %61, i32 0, i32 1
  %62 = load %struct.ref_s*, %struct.ref_s** %bot33, align 8, !tbaa !20
  %63 = load i32, i32* %move, align 4, !tbaa !5
  %idx.ext34 = zext i32 %63 to i64
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 %idx.ext34
  %64 = load i32, i32* %keep.addr, align 4, !tbaa !5
  call void @refset_null_new(%struct.ref_s* %add.ptr35, i32 %64, i32 0) #4
  %65 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %next36 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %65, i32 0, i32 0
  %66 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %66, i32 0, i32 3
  %67 = bitcast %struct.ref_s* %next36 to i8*
  %68 = bitcast %struct.ref_s* %current37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 16, i32 8, i1 false), !tbaa.struct !27
  %69 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %69, i32 0, i32 1
  %70 = load %struct.ref_s*, %struct.ref_s** %bot38, align 8, !tbaa !20
  %71 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %71, i32 0, i32 1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used, i32 0, i32 1
  %refs40 = bitcast %union.v* %value39 to %struct.ref_s**
  store %struct.ref_s* %70, %struct.ref_s** %refs40, align 8, !tbaa !1
  %72 = load i32, i32* %move, align 4, !tbaa !5
  %73 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %used41 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %73, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used41, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  store i32 %72, i32* %rsize, align 4, !tbaa !23
  %74 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %74, i32 0, i32 3
  %75 = bitcast %struct.ref_s* %current42 to i8*
  %76 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false), !tbaa.struct !27
  %77 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %78 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %78, i32 0, i32 1
  store %struct.ref_s* %77, %struct.ref_s** %bot43, align 8, !tbaa !20
  %79 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %79, i32 0, i32 1
  %80 = load %struct.ref_s*, %struct.ref_s** %bot44, align 8, !tbaa !20
  %81 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %81, i32 0, i32 9
  %82 = load i32, i32* %body_size, align 4, !tbaa !35
  %idx.ext45 = zext i32 %82 to i64
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 %idx.ext45
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i64 -1
  %83 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %83, i32 0, i32 2
  store %struct.ref_s* %add.ptr47, %struct.ref_s** %top48, align 8, !tbaa !21
  %84 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %84, i32 0, i32 1
  %85 = load %struct.ref_s*, %struct.ref_s** %bot49, align 8, !tbaa !20
  %86 = load i32, i32* %keep.addr, align 4, !tbaa !5
  %idx.ext50 = zext i32 %86 to i64
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 %idx.ext50
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i64 -1
  %87 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p53 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %87, i32 0, i32 0
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %p53, align 8, !tbaa !19
  %88 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size54 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %88, i32 0, i32 9
  %89 = load i32, i32* %body_size54, align 4, !tbaa !35
  %90 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %90, i32 0, i32 4
  %91 = load i32, i32* %extension_size, align 4, !tbaa !31
  %add55 = add i32 %91, %89
  store i32 %add55, i32* %extension_size, align 4, !tbaa !31
  %92 = load i32, i32* %move, align 4, !tbaa !5
  %93 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %93, i32 0, i32 5
  %94 = load i32, i32* %extension_used56, align 4, !tbaa !32
  %add57 = add i32 %94, %92
  store i32 %add57, i32* %extension_used56, align 4, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.16, %if.then
  %95 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.ref_stack_block_s** %pnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.ref_s* %next to i8*
  call void @llvm.lifetime.end(i64 16, i8* %98) #1
  %99 = bitcast %struct.ref_stack_block_s** %pcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %move to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_count(%struct.ref_stack_s* %pstack) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %0, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 1
  %2 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %2, i32 0, i32 1
  %3 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 5
  %5 = load i32, i32* %extension_used, align 4, !tbaa !32
  %conv = zext i32 %5 to i64
  %add = add nsw i64 %sub.ptr.div, %conv
  %conv1 = trunc i64 %add to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %pstack, i64 %idx) #0 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %idx.addr = alloca i64, align 8
  %pblock = alloca %struct.ref_stack_block_s*, align 8
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i64 %idx, i64* %idx.addr, align 8, !tbaa !17
  %0 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %2, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %used, align 4, !tbaa !5
  %6 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %8 = load i32, i32* %used, align 4, !tbaa !5
  %conv2 = zext i32 %8 to i64
  %cmp3 = icmp slt i64 %7, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %9, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !19
  %11 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %conv7 = trunc i64 %11 to i32
  %idx.ext = zext i32 %conv7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 %idx.neg
  store %struct.ref_s* %add.ptr8, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %12 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %12, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %13 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %14, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.9
  %15 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %15, i32 0, i32 0
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next, i32 0, i32 1
  %refs11 = bitcast %union.v* %value10 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %refs11, align 8, !tbaa !1
  %17 = bitcast %struct.ref_s* %16 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %17, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %18 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.ref_stack_block_s* %18, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %do.body
  %19 = load i32, i32* %used, align 4, !tbaa !5
  %conv16 = zext i32 %19 to i64
  %20 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %sub = sub nsw i64 %20, %conv16
  store i64 %sub, i64* %idx.addr, align 8, !tbaa !17
  %21 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used17 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %21, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !23
  store i32 %22, i32* %used, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %23 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %24 = load i32, i32* %used, align 4, !tbaa !5
  %conv18 = zext i32 %24 to i64
  %cmp19 = icmp sge i64 %23, %conv18
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used21 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %25, i32 0, i32 1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used21, i32 0, i32 1
  %refs23 = bitcast %union.v* %value22 to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %refs23, align 8, !tbaa !1
  %27 = load i32, i32* %used, align 4, !tbaa !5
  %sub24 = sub i32 %27, 1
  %28 = load i64, i64* %idx.addr, align 8, !tbaa !17
  %conv25 = trunc i64 %28 to i32
  %sub26 = sub i32 %sub24, %conv25
  %idx.ext27 = zext i32 %sub26 to i64
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %idx.ext27
  store %struct.ref_s* %add.ptr28, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.14, %if.then.5, %if.then
  %29 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %31
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_counttomark(%struct.ref_stack_s* %pstack) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %scanned = alloca i32, align 4
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %count = alloca i32, align 4
  %p = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %scanned, align 4, !tbaa !5
  %1 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %2) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %4 = load i32, i32* %size, align 4, !tbaa !45
  store i32 %4, i32* %count, align 4, !tbaa !5
  %5 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !47
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !48
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %scanned, align 4, !tbaa !5
  %size3 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %13 = load i32, i32* %size3, align 4, !tbaa !45
  %14 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %13, %14
  %add = add i32 %sub, 1
  %add4 = add i32 %12, %add
  store i32 %add4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %15, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %16 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %size5 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %17 = load i32, i32* %size5, align 4, !tbaa !45
  %18 = load i32, i32* %scanned, align 4, !tbaa !5
  %add6 = add i32 %18, %17
  store i32 %add6, i32* %scanned, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %19 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %call = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #4
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %do.end, %cleanup
  %21 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %prse, %struct.ref_stack_s* %pstack) #0 {
entry:
  %prse.addr = alloca %struct.ref_stack_enum_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  store %struct.ref_stack_enum_s* %prse, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %0, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %1 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %1 to %struct.ref_stack_block_s*
  %3 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %block = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %3, i32 0, i32 0
  store %struct.ref_stack_block_s* %2, %struct.ref_stack_block_s** %block, align 8, !tbaa !49
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %6 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %6, i32 0, i32 1
  store %struct.ref_s* %5, %struct.ref_s** %ptr, align 8, !tbaa !47
  %7 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %7, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %9, i32 0, i32 1
  %10 = load %struct.ref_s*, %struct.ref_s** %bot1, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  %11 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %11, i32 0, i32 2
  store i32 %conv, i32* %size, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %prse) #0 {
entry:
  %retval = alloca i32, align 4
  %prse.addr = alloca %struct.ref_stack_enum_s*, align 8
  %block = alloca %struct.ref_stack_block_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_enum_s* %prse, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_block_s** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %block1 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %1, i32 0, i32 0
  %2 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %block1, align 8, !tbaa !49
  %next = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %2, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %3 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s* %3 to %struct.ref_stack_block_s*
  %5 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %block2 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %5, i32 0, i32 0
  store %struct.ref_stack_block_s* %4, %struct.ref_stack_block_s** %block2, align 8, !tbaa !49
  store %struct.ref_stack_block_s* %4, %struct.ref_stack_block_s** %block, align 8, !tbaa !1
  %6 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %block, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_stack_block_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %block, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %7, i32 0, i32 1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used, i32 0, i32 1
  %refs4 = bitcast %union.v* %value3 to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs4, align 8, !tbaa !1
  %9 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %9, i32 0, i32 1
  store %struct.ref_s* %8, %struct.ref_s** %ptr, align 8, !tbaa !47
  %10 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %block, align 8, !tbaa !1
  %used5 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %10, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !23
  %12 = load %struct.ref_stack_enum_s*, %struct.ref_stack_enum_s** %prse.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %12, i32 0, i32 2
  store i32 %11, i32* %size, align 4, !tbaa !45
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.ref_stack_block_s** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_store_check(%struct.ref_stack_s* %pstack, %struct.ref_s* %parray, i32 %count, i32 %skip) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %parray.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %space = alloca i32, align 4
  %left = alloca i32, align 4
  %pass = alloca i32, align 4
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %ptr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.ref_s* %parray, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !5
  %0 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %space, align 4, !tbaa !5
  %3 = load i32, i32* %space, align 4, !tbaa !5
  %cmp = icmp ne i32 %3, 12
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !5
  store i32 %5, i32* %left, align 4, !tbaa !5
  %6 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %skip.addr, align 4, !tbaa !5
  store i32 %7, i32* %pass, align 4, !tbaa !5
  %8 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %9) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %10 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %ptr2 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %11 = load %struct.ref_s*, %struct.ref_s** %ptr2, align 8, !tbaa !47
  store %struct.ref_s* %11, %struct.ref_s** %ptr, align 8, !tbaa !1
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %size3 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %13 = load i32, i32* %size3, align 4, !tbaa !45
  store i32 %13, i32* %size, align 4, !tbaa !5
  %14 = load i32, i32* %size, align 4, !tbaa !5
  %15 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp4 = icmp ule i32 %14, %15
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %17 = load i32, i32* %pass, align 4, !tbaa !5
  %sub = sub i32 %17, %16
  store i32 %sub, i32* %pass, align 4, !tbaa !5
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %19, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %20 = load i32, i32* %pass, align 4, !tbaa !5
  %21 = load i32, i32* %size, align 4, !tbaa !5
  %sub10 = sub i32 %21, %20
  store i32 %sub10, i32* %size, align 4, !tbaa !5
  store i32 0, i32* %pass, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  %22 = load i32, i32* %size, align 4, !tbaa !5
  %23 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %ptr, align 8, !tbaa !1
  %24 = load i32, i32* %size, align 4, !tbaa !5
  %25 = load i32, i32* %left, align 4, !tbaa !5
  %cmp11 = icmp ugt i32 %24, %25
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %26 = load i32, i32* %left, align 4, !tbaa !5
  store i32 %26, i32* %size, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %28 = load i32, i32* %left, align 4, !tbaa !5
  %sub15 = sub i32 %28, %27
  store i32 %sub15, i32* %left, align 4, !tbaa !5
  %29 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %30 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext16 = zext i32 %30 to i64
  %idx.neg = sub i64 0, %idx.ext16
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 %idx.neg
  %31 = load i32, i32* %size, align 4, !tbaa !5
  %32 = load i32, i32* %space, align 4, !tbaa !5
  %call = call i32 @refs_check_space(%struct.ref_s* %add.ptr17, i32 %31, i32 %32) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %33, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.14
  %35 = load i32, i32* %left, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %35, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.20
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont, %if.then.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %if.end.26, %cleanup
  %37 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.29, label %cleanup.32 [
    i32 0, label %cleanup.cont.30
    i32 2, label %do.end
  ]

cleanup.cont.30:                                  ; preds = %cleanup.27
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.30
  %call31 = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #4
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %do.end, %cleanup.27
  %39 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %39) #1
  %40 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.35, label %cleanup.38 [
    i32 0, label %cleanup.cont.36
  ]

cleanup.cont.36:                                  ; preds = %cleanup.32
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont.36, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup.32
  %42 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @refs_check_space(%struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ref_stack_store(%struct.ref_stack_s* %pstack, %struct.ref_s* %parray, i32 %count, i32 %skip, i32 %age, i32 %check, %struct.gs_dual_memory_s* %idmemory, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %parray.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %age.addr = alloca i32, align 4
  %check.addr = alloca i32, align 4
  %idmemory.addr = alloca %struct.gs_dual_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %left = alloca i32, align 4
  %pass = alloca i32, align 4
  %to = alloca %struct.ref_s*, align 8
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %from = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.ref_s* %parray, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !5
  store i32 %age, i32* %age.addr, align 4, !tbaa !5
  store i32 %check, i32* %check.addr, align 4, !tbaa !5
  store %struct.gs_dual_memory_s* %idmemory, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %5) #4
  %cmp = icmp ugt i32 %4, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  %7 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp1 = icmp ugt i32 %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, i32* %check.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %13 = load i32, i32* %count.addr, align 4, !tbaa !5
  %14 = load i32, i32* %skip.addr, align 4, !tbaa !5
  %call3 = call i32 @ref_stack_store_check(%struct.ref_stack_s* %11, %struct.ref_s* %12, i32 %13, i32 %14) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.66 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %20 = load i32, i32* %count.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %to, align 8, !tbaa !1
  %21 = load i32, i32* %count.addr, align 4, !tbaa !5
  store i32 %21, i32* %left, align 4, !tbaa !5
  %22 = load i32, i32* %skip.addr, align 4, !tbaa !5
  store i32 %22, i32* %pass, align 4, !tbaa !5
  %23 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %23) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %24 = bitcast %struct.ref_s** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %25 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !47
  store %struct.ref_s* %25, %struct.ref_s** %from, align 8, !tbaa !1
  %26 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %size8 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %27 = load i32, i32* %size8, align 4, !tbaa !45
  store i32 %27, i32* %size, align 4, !tbaa !5
  %28 = load i32, i32* %size, align 4, !tbaa !5
  %29 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp9 = icmp ule i32 %28, %29
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  %30 = load i32, i32* %size, align 4, !tbaa !5
  %31 = load i32, i32* %pass, align 4, !tbaa !5
  %sub = sub i32 %31, %30
  store i32 %sub, i32* %pass, align 4, !tbaa !5
  br label %if.end.57

if.else:                                          ; preds = %do.body
  %32 = load i32, i32* %pass, align 4, !tbaa !5
  %cmp11 = icmp ne i32 %32, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else
  %33 = load i32, i32* %pass, align 4, !tbaa !5
  %34 = load i32, i32* %size, align 4, !tbaa !5
  %sub13 = sub i32 %34, %33
  store i32 %sub13, i32* %size, align 4, !tbaa !5
  store i32 0, i32* %pass, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else
  %35 = load i32, i32* %size, align 4, !tbaa !5
  %36 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %idx.ext15 = zext i32 %35 to i64
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 %idx.ext15
  store %struct.ref_s* %add.ptr16, %struct.ref_s** %from, align 8, !tbaa !1
  %37 = load i32, i32* %size, align 4, !tbaa !5
  %38 = load i32, i32* %left, align 4, !tbaa !5
  %cmp17 = icmp ugt i32 %37, %38
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %39 = load i32, i32* %left, align 4, !tbaa !5
  store i32 %39, i32* %size, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  %40 = load i32, i32* %size, align 4, !tbaa !5
  %41 = load i32, i32* %left, align 4, !tbaa !5
  %sub20 = sub i32 %41, %40
  store i32 %sub20, i32* %left, align 4, !tbaa !5
  %42 = load i32, i32* %age.addr, align 4, !tbaa !5
  switch i32 %42, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.23
    i32 1, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %43 = load i32, i32* %size, align 4, !tbaa !5
  %dec = add i32 %43, -1
  store i32 %dec, i32* %size, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %from, align 8, !tbaa !1
  %45 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 -1
  store %struct.ref_s* %incdec.ptr22, %struct.ref_s** %to, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %47 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %48 = bitcast %struct.ref_s* %46 to i8*
  %49 = bitcast %struct.ref_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false), !tbaa.struct !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.19
  br label %while.cond.24

while.cond.24:                                    ; preds = %cond.end, %sw.bb.23
  %50 = load i32, i32* %size, align 4, !tbaa !5
  %dec25 = add i32 %50, -1
  store i32 %dec25, i32* %size, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %50, 0
  br i1 %tobool26, label %while.body.27, label %while.end.38

while.body.27:                                    ; preds = %while.cond.24
  %51 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 -1
  store %struct.ref_s* %incdec.ptr28, %struct.ref_s** %from, align 8, !tbaa !1
  %52 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 -1
  store %struct.ref_s* %incdec.ptr29, %struct.ref_s** %to, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %54 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %54 to i32
  %55 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %55, i32 0, i32 4
  %56 = load i32, i32* %test_mask, align 4, !tbaa !50
  %and = and i32 %conv, %56
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.27
  %57 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %60 = bitcast %struct.ref_s* %59 to i16*
  %61 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call33 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %57, %struct.ref_s* %58, i16* %60, i8* %61) #4
  br label %cond.end

cond.false:                                       ; preds = %while.body.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call33, %cond.true ], [ 0, %cond.false ]
  %62 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %62 to i8*
  %65 = bitcast %struct.ref_s* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !27
  %66 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %66, i32 0, i32 5
  %67 = load i32, i32* %new_mask, align 4, !tbaa !53
  %68 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  %69 = load i16, i16* %type_attrs35, align 2, !tbaa !7
  %conv36 = zext i16 %69 to i32
  %or = or i32 %conv36, %67
  %conv37 = trunc i32 %or to i16
  store i16 %conv37, i16* %type_attrs35, align 2, !tbaa !7
  br label %while.cond.24

while.end.38:                                     ; preds = %while.cond.24
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.19
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %sw.bb.39
  %70 = load i32, i32* %size, align 4, !tbaa !5
  %dec41 = add i32 %70, -1
  store i32 %dec41, i32* %size, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %70, 0
  br i1 %tobool42, label %while.body.43, label %while.end.52

while.body.43:                                    ; preds = %while.cond.40
  %71 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 -1
  store %struct.ref_s* %incdec.ptr44, %struct.ref_s** %from, align 8, !tbaa !1
  %72 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 -1
  store %struct.ref_s* %incdec.ptr45, %struct.ref_s** %to, align 8, !tbaa !1
  %73 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %74 = load %struct.ref_s*, %struct.ref_s** %from, align 8, !tbaa !1
  %75 = bitcast %struct.ref_s* %73 to i8*
  %76 = bitcast %struct.ref_s* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false), !tbaa.struct !27
  %77 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %idmemory.addr, align 8, !tbaa !1
  %new_mask46 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %77, i32 0, i32 5
  %78 = load i32, i32* %new_mask46, align 4, !tbaa !53
  %79 = load %struct.ref_s*, %struct.ref_s** %to, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  %80 = load i16, i16* %type_attrs48, align 2, !tbaa !7
  %conv49 = zext i16 %80 to i32
  %or50 = or i32 %conv49, %78
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %type_attrs48, align 2, !tbaa !7
  br label %while.cond.40

while.end.52:                                     ; preds = %while.cond.40
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.19, %while.end.52, %while.end.38, %while.end
  %81 = load i32, i32* %left, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %81, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.epilog
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.56:                                        ; preds = %sw.epilog
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.57, %if.then.55
  %82 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.ref_s** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %cleanup.dest.60 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.60, label %unreachable [
    i32 0, label %cleanup.cont.61
    i32 2, label %do.end
  ]

cleanup.cont.61:                                  ; preds = %cleanup.58
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.61
  %call62 = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #4
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup.58
  %84 = load i32, i32* %count.addr, align 4, !tbaa !5
  %85 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %rsize65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 2
  store i32 %84, i32* %rsize65, align 4, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %do.end, %cleanup, %if.then
  %86 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %86) #1
  %87 = bitcast %struct.ref_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90

unreachable:                                      ; preds = %cleanup.58
  unreachable
}

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ref_stack_pop(%struct.ref_stack_s* %pstack, i32 %count) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %3, i32 0, i32 1
  %4 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %used, align 4, !tbaa !5
  %5 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %conv, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %used, align 4, !tbaa !5
  %7 = load i32, i32* %count.addr, align 4, !tbaa !5
  %sub = sub i32 %7, %6
  store i32 %sub, i32* %count.addr, align 4, !tbaa !5
  %8 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %8, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %bot2, align 8, !tbaa !20
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %10 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %10, i32 0, i32 0
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %p4, align 8, !tbaa !19
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %11) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %count.addr, align 4, !tbaa !5
  %13 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %13, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !19
  %idx.ext = zext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %idx.neg
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !19
  %15 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_pop_block(%struct.ref_stack_s* %pstack) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %bot = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %pcur = alloca %struct.ref_stack_block_s*, align 8
  %pnext = alloca %struct.ref_stack_block_s*, align 8
  %used = alloca i32, align 4
  %body = alloca %struct.ref_s*, align 8
  %next4 = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %moved = alloca i32, align 4
  %left = alloca i32, align 4
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 1
  %2 = load %struct.ref_s*, %struct.ref_s** %bot1, align 8, !tbaa !20
  store %struct.ref_s* %2, %struct.ref_s** %bot, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  %6 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %7 = bitcast %struct.ref_stack_block_s** %pcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %8, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %9 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %10, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %11 = bitcast %struct.ref_stack_block_s** %pnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %12, i32 0, i32 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %next, i32 0, i32 1
  %refs3 = bitcast %union.v* %value2 to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs3, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %13 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %14, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %15 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s* %next4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_stack_block_s* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %19, i32 0, i32 10
  %20 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %underflow_error = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %20, i32 0, i32 5
  %21 = load i32, i32* %underflow_error, align 4, !tbaa !42
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %entry
  %22 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %used6 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %22, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %23 = load i32, i32* %rsize, align 4, !tbaa !23
  store i32 %23, i32* %used, align 4, !tbaa !5
  %24 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %24, i64 1
  %25 = bitcast %struct.ref_stack_block_s* %add.ptr7 to %struct.ref_s*
  %26 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %26, i32 0, i32 10
  %27 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params8, align 8, !tbaa !13
  %bot_guard = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %27, i32 0, i32 0
  %28 = load i32, i32* %bot_guard, align 4, !tbaa !37
  %idx.ext = zext i32 %28 to i64
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idx.ext
  store %struct.ref_s* %add.ptr9, %struct.ref_s** %body, align 8, !tbaa !1
  %29 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pcur, align 8, !tbaa !1
  %next10 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %29, i32 0, i32 0
  %30 = bitcast %struct.ref_s* %next4 to i8*
  %31 = bitcast %struct.ref_s* %next10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !27
  %32 = load i32, i32* %used, align 4, !tbaa !5
  %33 = load i32, i32* %count, align 4, !tbaa !5
  %add = add i32 %32, %33
  %34 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %34, i32 0, i32 9
  %35 = load i32, i32* %body_size, align 4, !tbaa !35
  %cmp11 = icmp ugt i32 %add, %35
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %36 = bitcast i32* %moved to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %37, i32 0, i32 9
  %38 = load i32, i32* %body_size14, align 4, !tbaa !35
  %39 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %38, %39
  store i32 %sub, i32* %moved, align 4, !tbaa !5
  %40 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %moved, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %41, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.13
  %42 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %43 = load i32, i32* %moved, align 4, !tbaa !5
  %idx.ext19 = zext i32 %43 to i64
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %idx.ext19
  %44 = bitcast %struct.ref_s* %add.ptr20 to i8*
  %45 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %46 = bitcast %struct.ref_s* %45 to i8*
  %47 = load i32, i32* %count, align 4, !tbaa !5
  %conv21 = zext i32 %47 to i64
  %mul = mul i64 %conv21, 16
  %call = call i8* @memmove(i8* %44, i8* %46, i64 %mul) #5
  %48 = load i32, i32* %used, align 4, !tbaa !5
  %49 = load i32, i32* %moved, align 4, !tbaa !5
  %sub22 = sub i32 %48, %49
  store i32 %sub22, i32* %left, align 4, !tbaa !5
  %50 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %51 = bitcast %struct.ref_s* %50 to i8*
  %52 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %53 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext23 = zext i32 %53 to i64
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 %idx.ext23
  %54 = bitcast %struct.ref_s* %add.ptr24 to i8*
  %55 = load i32, i32* %moved, align 4, !tbaa !5
  %conv25 = zext i32 %55 to i64
  %mul26 = mul i64 %conv25, 16
  %call27 = call i8* @memcpy(i8* %51, i8* %54, i64 %mul26) #5
  %56 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %57 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext28 = zext i32 %57 to i64
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 %idx.ext28
  %58 = load i32, i32* %moved, align 4, !tbaa !5
  call void @refset_null_new(%struct.ref_s* %add.ptr29, i32 %58, i32 0) #4
  %59 = load i32, i32* %moved, align 4, !tbaa !5
  %60 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pnext, align 8, !tbaa !1
  %used30 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %60, i32 0, i32 1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used30, i32 0, i32 0
  %rsize32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  %61 = load i32, i32* %rsize32, align 4, !tbaa !23
  %sub33 = sub i32 %61, %59
  store i32 %sub33, i32* %rsize32, align 4, !tbaa !23
  %62 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %62, i32 0, i32 2
  %63 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %64 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %64, i32 0, i32 0
  store %struct.ref_s* %63, %struct.ref_s** %p34, align 8, !tbaa !19
  %65 = load i32, i32* %moved, align 4, !tbaa !5
  %66 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %66, i32 0, i32 5
  %67 = load i32, i32* %extension_used, align 4, !tbaa !32
  %sub35 = sub i32 %67, %65
  store i32 %sub35, i32* %extension_used, align 4, !tbaa !32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %68 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %moved to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.59

if.else:                                          ; preds = %if.end
  %70 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  %71 = load i32, i32* %used, align 4, !tbaa !5
  %idx.ext37 = zext i32 %71 to i64
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 %idx.ext37
  %72 = bitcast %struct.ref_s* %add.ptr38 to i8*
  %73 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %74 = bitcast %struct.ref_s* %73 to i8*
  %75 = load i32, i32* %count, align 4, !tbaa !5
  %conv39 = zext i32 %75 to i64
  %mul40 = mul i64 %conv39, 16
  %call41 = call i8* @memcpy(i8* %72, i8* %74, i64 %mul40) #5
  %76 = load %struct.ref_s*, %struct.ref_s** %body, align 8, !tbaa !1
  store %struct.ref_s* %76, %struct.ref_s** %bot, align 8, !tbaa !1
  %77 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %77, i32 0, i32 1
  store %struct.ref_s* %76, %struct.ref_s** %bot42, align 8, !tbaa !20
  %78 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %79 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %79, i32 0, i32 9
  %80 = load i32, i32* %body_size43, align 4, !tbaa !35
  %idx.ext44 = zext i32 %80 to i64
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i64 -1
  %81 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %81, i32 0, i32 2
  store %struct.ref_s* %add.ptr46, %struct.ref_s** %top47, align 8, !tbaa !21
  %82 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %82, i32 0, i32 11
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !36
  %84 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %84, i32 0, i32 3
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %83, %struct.ref_s* %current48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %85 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %85, i32 0, i32 3
  %86 = bitcast %struct.ref_s* %current49 to i8*
  %87 = bitcast %struct.ref_s* %next4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 16, i32 8, i1 false), !tbaa.struct !27
  %88 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %89 = load i32, i32* %used, align 4, !tbaa !5
  %90 = load i32, i32* %count, align 4, !tbaa !5
  %add50 = add i32 %89, %90
  %sub51 = sub i32 %add50, 1
  %idx.ext52 = zext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 %idx.ext52
  %91 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p54 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %91, i32 0, i32 0
  store %struct.ref_s* %add.ptr53, %struct.ref_s** %p54, align 8, !tbaa !19
  %92 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %92, i32 0, i32 9
  %93 = load i32, i32* %body_size55, align 4, !tbaa !35
  %94 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %94, i32 0, i32 4
  %95 = load i32, i32* %extension_size, align 4, !tbaa !31
  %sub56 = sub i32 %95, %93
  store i32 %sub56, i32* %extension_size, align 4, !tbaa !31
  %96 = load i32, i32* %used, align 4, !tbaa !5
  %97 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %extension_used57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %97, i32 0, i32 5
  %98 = load i32, i32* %extension_used57, align 4, !tbaa !32
  %sub58 = sub i32 %98, %96
  store i32 %sub58, i32* %extension_used57, align 4, !tbaa !32
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %cleanup, %if.then
  %99 = bitcast %struct.ref_s* %next4 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %99) #1
  %100 = bitcast %struct.ref_s** %body to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.ref_stack_block_s** %pnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.ref_stack_block_s** %pcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @gs_free_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ref_stack_extend(%struct.ref_stack_s* %pstack, i32 %request) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %request.addr = alloca i32, align 4
  %keep = alloca i32, align 4
  %count = alloca i32, align 4
  %params = alloca %struct.ref_stack_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %request, i32* %request.addr, align 4, !tbaa !5
  %0 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 2
  %2 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %3, i32 0, i32 1
  %4 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %div = sdiv i64 %add, 3
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %keep, align 4, !tbaa !5
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %6, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %8 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %8, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %bot1, align 8, !tbaa !20
  %sub.ptr.lhs.cast2 = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 16
  %add6 = add nsw i64 %sub.ptr.div5, 1
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, i32* %count, align 4, !tbaa !5
  %10 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %11, i32 0, i32 10
  %12 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params8, align 8, !tbaa !13
  store %struct.ref_stack_params_s* %12, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %13 = load i32, i32* %request.addr, align 4, !tbaa !5
  %14 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %14, i32 0, i32 3
  %15 = load i32, i32* %data_size, align 4, !tbaa !41
  %cmp = icmp ugt i32 %13, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !1
  %overflow_error = getelementptr inbounds %struct.ref_stack_params_s, %struct.ref_stack_params_s* %16, i32 0, i32 6
  %17 = load i32, i32* %overflow_error, align 4, !tbaa !43
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %keep, align 4, !tbaa !5
  %19 = load i32, i32* %request.addr, align 4, !tbaa !5
  %add10 = add i32 %18, %19
  %20 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %20, i32 0, i32 9
  %21 = load i32, i32* %body_size, align 4, !tbaa !35
  %cmp11 = icmp ugt i32 %add10, %21
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %22 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %body_size14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %22, i32 0, i32 9
  %23 = load i32, i32* %body_size14, align 4, !tbaa !35
  %24 = load i32, i32* %request.addr, align 4, !tbaa !5
  %sub = sub i32 %23, %24
  store i32 %sub, i32* %keep, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %25 = load i32, i32* %keep, align 4, !tbaa !5
  %26 = load i32, i32* %count, align 4, !tbaa !5
  %cmp16 = icmp ugt i32 %25, %26
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %27 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %27, i32* %keep, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %28 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %29 = load i32, i32* %keep, align 4, !tbaa !5
  %30 = load i32, i32* %request.addr, align 4, !tbaa !5
  %call = call i32 @ref_stack_push_block(%struct.ref_stack_s* %28, i32 %29, i32 %30) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then
  %31 = bitcast %struct.ref_stack_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @ref_stack_push(%struct.ref_stack_s* %pstack, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %count.addr = alloca i32, align 4
  %needed = alloca i32, align 4
  %added = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  store i32 %1, i32* %needed, align 4, !tbaa !5
  %2 = bitcast i32* %added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %3, i32 0, i32 2
  %4 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %5, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %added, align 4, !tbaa !5
  %7 = load i32, i32* %needed, align 4, !tbaa !5
  %cmp = icmp ult i32 %conv, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %9, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top2, align 8, !tbaa !21
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %11, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p3, align 8, !tbaa !19
  %12 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %13 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %13, i32 0, i32 2
  %14 = load %struct.ref_s*, %struct.ref_s** %top4, align 8, !tbaa !21
  %15 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %15, i32 0, i32 1
  %16 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %sub.ptr.lhs.cast5 = ptrtoint %struct.ref_s* %14 to i64
  %sub.ptr.rhs.cast6 = ptrtoint %struct.ref_s* %16 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %sub.ptr.div8 = sdiv exact i64 %sub.ptr.sub7, 16
  %add = add nsw i64 %sub.ptr.div8, 1
  %div = sdiv i64 %add, 3
  %conv9 = trunc i64 %div to i32
  %17 = load i32, i32* %added, align 4, !tbaa !5
  %call = call i32 @ref_stack_push_block(%struct.ref_stack_s* %12, i32 %conv9, i32 %17) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %18, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %20 = load i32, i32* %count.addr, align 4, !tbaa !5
  %21 = load i32, i32* %needed, align 4, !tbaa !5
  %sub = sub i32 %20, %21
  %22 = load i32, i32* %added, align 4, !tbaa !5
  %add12 = add i32 %sub, %22
  call void @ref_stack_pop(%struct.ref_stack_s* %19, i32 %add12) #4
  %23 = load i32, i32* %count.addr, align 4, !tbaa !5
  %24 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %24, i32 0, i32 7
  store i32 %23, i32* %requested, align 4, !tbaa !33
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load i32, i32* %added, align 4, !tbaa !5
  %28 = load i32, i32* %needed, align 4, !tbaa !5
  %sub13 = sub i32 %28, %27
  store i32 %sub13, i32* %needed, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %needed, align 4, !tbaa !5
  %30 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %30, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !19
  %idx.ext = zext i32 %29 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p14, align 8, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %for.end, %cleanup
  %32 = bitcast i32* %added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @ref_stack_cleanup(%struct.ref_stack_s* %pstack) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %pblock = alloca %struct.ref_stack_block_s*, align 8
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %current, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %2 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %2 to %struct.ref_stack_block_s*
  store %struct.ref_stack_block_s* %3, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %4, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  %6 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %6, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !21
  %8 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %8, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p1, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  call void @refset_null_new(%struct.ref_s* %add.ptr, i32 %conv, i32 0) #4
  %10 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %10, i32 0, i32 1
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %11, i32 0, i32 3
  %12 = bitcast %struct.ref_s* %used to i8*
  %13 = bitcast %struct.ref_s* %current2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !27
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %14, i32 0, i32 1
  %15 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %16 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used3 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %16, i32 0, i32 1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used3, i32 0, i32 1
  %refs5 = bitcast %union.v* %value4 to %struct.ref_s**
  store %struct.ref_s* %15, %struct.ref_s** %refs5, align 8, !tbaa !1
  %17 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %17, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !19
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 1
  %19 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %bot8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %19, i32 0, i32 1
  %20 = load %struct.ref_s*, %struct.ref_s** %bot8, align 8, !tbaa !20
  %sub.ptr.lhs.cast9 = ptrtoint %struct.ref_s* %add.ptr7 to i64
  %sub.ptr.rhs.cast10 = ptrtoint %struct.ref_s* %20 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div12 = sdiv exact i64 %sub.ptr.sub11, 16
  %conv13 = trunc i64 %sub.ptr.div12 to i32
  %21 = load %struct.ref_stack_block_s*, %struct.ref_stack_block_s** %pblock, align 8, !tbaa !1
  %used14 = getelementptr inbounds %struct.ref_stack_block_s, %struct.ref_stack_block_s* %21, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %used14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  store i32 %conv13, i32* %rsize, align 4, !tbaa !23
  %22 = bitcast %struct.ref_stack_block_s** %pblock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ref_stack_release(%struct.ref_stack_s* %pstack) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 11
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !36
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %4) #4
  call void @ref_stack_pop(%struct.ref_stack_s* %3, i32 %call) #4
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %10, i32 0, i32 10
  %11 = load %struct.ref_stack_params_s*, %struct.ref_stack_params_s** %params, align 8, !tbaa !13
  %12 = bitcast %struct.ref_stack_params_s* %11 to i8*
  call void %7(%struct.gs_memory_s* %9, i8* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %14, i32 0, i32 3
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %13, %struct.ref_s* %current, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #4
  %15 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ref_stack_free(%struct.ref_stack_s* %pstack) #0 {
entry:
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %1, i32 0, i32 11
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !36
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  call void @ref_stack_release(%struct.ref_stack_s* %4) #4
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %9 = bitcast %struct.ref_stack_s* %8 to i8*
  call void %6(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #4
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

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
!7 = !{!8, !10, i64 0}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !6, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!14, !2, i64 80}
!14 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !6, i64 40, !6, i64 44, !8, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!15 = !{!16, !2, i64 40}
!16 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !3, i64 0}
!19 = !{!14, !2, i64 0}
!20 = !{!14, !2, i64 8}
!21 = !{!14, !2, i64 16}
!22 = !{!16, !2, i64 0}
!23 = !{!8, !6, i64 4}
!24 = !{!25, !2, i64 72}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 4, i64 4, !5, i64 8, i64 8, !17, i64 8, i64 2, !28, i64 8, i64 4, !29, i64 8, i64 8, !17, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !17}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !3, i64 0}
!31 = !{!14, !6, i64 40}
!32 = !{!14, !6, i64 44}
!33 = !{!14, !6, i64 64}
!34 = !{!14, !6, i64 68}
!35 = !{!14, !6, i64 72}
!36 = !{!14, !2, i64 88}
!37 = !{!38, !6, i64 0}
!38 = !{!"ref_stack_params_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !8, i64 16, !6, i64 32, !6, i64 36, !6, i64 40}
!39 = !{!38, !6, i64 4}
!40 = !{!38, !6, i64 8}
!41 = !{!38, !6, i64 12}
!42 = !{!38, !6, i64 32}
!43 = !{!38, !6, i64 36}
!44 = !{!38, !6, i64 40}
!45 = !{!46, !6, i64 16}
!46 = !{!"ref_stack_enum_s", !2, i64 0, !2, i64 8, !6, i64 16}
!47 = !{!46, !2, i64 8}
!48 = !{!3, !3, i64 0}
!49 = !{!46, !2, i64 0}
!50 = !{!51, !6, i64 64}
!51 = !{!"gs_dual_memory_s", !2, i64 0, !52, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!52 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!53 = !{!51, !6, i64 68}
!54 = !{!25, !2, i64 24}
