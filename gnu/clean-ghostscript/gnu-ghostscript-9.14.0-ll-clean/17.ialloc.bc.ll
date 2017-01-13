; ModuleID = './ialloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type { %struct.gc_procs_with_refs_s*, %struct.chunk_locator_s, %struct.vm_spaces_s, i32, i32, %struct.gs_memory_s*, %struct.name_table_s*, %struct.gs_memory_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.name_table_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@.str = private unnamed_addr constant [17 x i8] c"gs_dual_memory_t\00", align 1
@st_gs_dual_memory = constant %struct.gs_memory_struct_type_s { i32 72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"gs_alloc_ref_array\00", align 1
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"gs_free_ref_array\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"./psi/ialloc.c\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Unknown type 0x%x in free_ref_array(%u,0x%lx)!\00", align 1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @ialloc_init(%struct.gs_dual_memory_s* %dmem, %struct.gs_memory_s* %rmem, i32 %chunk_size, i32 %level2) #1 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %rmem.addr = alloca %struct.gs_memory_s*, align 8
  %chunk_size.addr = alloca i32, align 4
  %level2.addr = alloca i32, align 4
  %ilmem = alloca %struct.gs_ref_memory_s*, align 8
  %ilmem_stable = alloca %struct.gs_ref_memory_s*, align 8
  %igmem = alloca %struct.gs_ref_memory_s*, align 8
  %igmem_stable = alloca %struct.gs_ref_memory_s*, align 8
  %ismem = alloca %struct.gs_ref_memory_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %rmem, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  store i32 %level2, i32* %level2.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_ref_memory_s** %ilmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %2 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %call = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %1, i32 %2) #3
  store %struct.gs_ref_memory_s* %call, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %ilmem_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %5 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %call1 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %4, i32 %5) #3
  store %struct.gs_ref_memory_s* %call1, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %igmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %7 = bitcast %struct.gs_ref_memory_s** %igmem_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  %8 = bitcast %struct.gs_ref_memory_s** %ismem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %10 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %call2 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %9, i32 %10) #3
  store %struct.gs_ref_memory_s* %call2, %struct.gs_ref_memory_s** %ismem, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_ref_memory_s* %12, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_ref_memory_s* %13, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ismem, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_ref_memory_s* %14, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  br label %fail

if.end:                                           ; preds = %lor.lhs.false.4
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 0
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %18 = load i32, i32* %level2.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %20 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %call7 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %19, i32 %20) #3
  store %struct.gs_ref_memory_s* %call7, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %22 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %call8 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %21, i32 %22) #3
  store %struct.gs_ref_memory_s* %call8, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_ref_memory_s* %23, null
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.6
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gs_ref_memory_s* %24, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.10, %if.then.6
  br label %fail

if.end.13:                                        ; preds = %lor.lhs.false.10
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %stable_memory14 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 0
  store %struct.gs_memory_s* %26, %struct.gs_memory_s** %stable_memory14, align 8, !tbaa !7
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %28, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %29, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end.13
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %cmp16 = icmp ult i64 %conv, 4
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %32, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  %35 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %35, i32 0, i32 1
  %memories19 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces18, i32 0, i32 1
  %named = bitcast %union.anon* %memories19 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  store %struct.gs_ref_memory_s* %34, %struct.gs_ref_memory_s** %local, align 8, !tbaa !16
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %37 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %37, i32 0, i32 1
  %memories21 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces20, i32 0, i32 1
  %named22 = bitcast %union.anon* %memories21 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named22, i32 0, i32 2
  store %struct.gs_ref_memory_s* %36, %struct.gs_ref_memory_s** %global, align 8, !tbaa !18
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ismem, align 8, !tbaa !1
  %39 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %39, i32 0, i32 1
  %memories24 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces23, i32 0, i32 1
  %named25 = bitcast %union.anon* %memories24 to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named25, i32 0, i32 1
  store %struct.gs_ref_memory_s* %38, %struct.gs_ref_memory_s** %system, align 8, !tbaa !19
  %40 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %40, i32 0, i32 1
  %vm_reclaim = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces26, i32 0, i32 0
  store void (%struct.vm_spaces_s*, i32)* @gs_gc_reclaim, void (%struct.vm_spaces_s*, i32)** %vm_reclaim, align 8, !tbaa !20
  %41 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %reclaim = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %41, i32 0, i32 3
  store i32 (%struct.gs_dual_memory_s*, i32)* null, i32 (%struct.gs_dual_memory_s*, i32)** %reclaim, align 8, !tbaa !23
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 7
  store i32 8, i32* %space, align 4, !tbaa !24
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  %space27 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %43, i32 0, i32 7
  store i32 8, i32* %space27, align 4, !tbaa !24
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  %space28 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 7
  store i32 12, i32* %space28, align 4, !tbaa !24
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  %space29 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %45, i32 0, i32 7
  store i32 12, i32* %space29, align 4, !tbaa !24
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ismem, align 8, !tbaa !1
  %space30 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %46, i32 0, i32 7
  store i32 4, i32* %space30, align 4, !tbaa !24
  %47 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %47, i32 8) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.12, %if.then
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem_stable, align 8, !tbaa !1
  call void @ialloc_free_state(%struct.gs_ref_memory_s* %48) #3
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %igmem, align 8, !tbaa !1
  call void @ialloc_free_state(%struct.gs_ref_memory_s* %49) #3
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ismem, align 8, !tbaa !1
  call void @ialloc_free_state(%struct.gs_ref_memory_s* %50) #3
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem_stable, align 8, !tbaa !1
  call void @ialloc_free_state(%struct.gs_ref_memory_s* %51) #3
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ilmem, align 8, !tbaa !1
  call void @ialloc_free_state(%struct.gs_ref_memory_s* %52) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.end
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.gs_ref_memory_s** %ismem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.gs_ref_memory_s** %igmem_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast %struct.gs_ref_memory_s** %igmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gs_ref_memory_s** %ilmem_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.gs_ref_memory_s** %ilmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s*, i32) #0

declare void @gs_gc_reclaim(%struct.vm_spaces_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @ialloc_set_space(%struct.gs_dual_memory_s* %dmem, i32 %space) #1 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %space.addr = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %space.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 2
  %idxprom = zext i32 %shr to i64
  %2 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %2, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %3, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %5 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %5, i32 0, i32 0
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %current, align 8, !tbaa !25
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 7
  %7 = load i32, i32* %space1, align 4, !tbaa !24
  %8 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %8, i32 0, i32 2
  store i32 %7, i32* %current_space, align 4, !tbaa !26
  %9 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void
}

declare void @ialloc_free_state(%struct.gs_ref_memory_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @imemory_space(%struct.gs_ref_memory_s* %iimem) #1 {
entry:
  %iimem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %iimem, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 7
  %1 = load i32, i32* %space, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @imemory_new_mask(%struct.gs_ref_memory_s* %imem) #1 {
entry:
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 20
  %1 = load i32, i32* %new_mask, align 4, !tbaa !27
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @imemory_save_level(%struct.gs_ref_memory_s* %imem) #1 {
entry:
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 19
  %1 = load i32, i32* %save_level, align 4, !tbaa !28
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @ialloc_reset_requested(%struct.gs_dual_memory_s* %dmem) #1 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %0, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !19
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 8
  %requested = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 5
  store i64 0, i64* %requested, align 8, !tbaa !29
  %2 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %2, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 2
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !18
  %gc_status4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 8
  %requested5 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status4, i32 0, i32 5
  store i64 0, i64* %requested5, align 8, !tbaa !29
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces6 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories7 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces6, i32 0, i32 1
  %named8 = bitcast %union.anon* %memories7 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named8, i32 0, i32 3
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !16
  %gc_status9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 8
  %requested10 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status9, i32 0, i32 5
  store i64 0, i64* %requested10, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_register_ref_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %root, i8** %pp, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %root.addr = alloca %struct.gs_gc_root_s*, align 8
  %pp.addr = alloca i8**, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %root, %struct.gs_gc_root_s** %root.addr, align 8, !tbaa !1
  store i8** %pp, i8*** %pp.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %register_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 20
  %1 = load i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)** %register_root, align 8, !tbaa !30
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root.addr, align 8, !tbaa !1
  %4 = load i8**, i8*** %pp.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gs_memory_s* %2, %struct.gs_gc_root_s* %3, %struct.gs_ptr_procs_s* @ptr_ref_procs, i8** %4, i8* %5) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %mem, %struct.ref_s* %parr, i32 %attrs, i32 %num_refs, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %parr.addr = alloca %struct.ref_s*, align 8
  %attrs.addr = alloca i32, align 4
  %num_refs.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %end = alloca %struct.ref_s*, align 8
  %pcc = alloca %struct.chunk_s*, align 8
  %end35 = alloca %struct.ref_s*, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cl = alloca %struct.chunk_locator_s, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %parr, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  store i32 %attrs, i32* %attrs.addr, align 4, !tbaa !5
  store i32 %num_refs, i32* %num_refs.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 13
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 5
  %2 = load i8*, i8** %rtop, align 8, !tbaa !32
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc1, i32 0, i32 3
  %4 = load i8*, i8** %cbot, align 8, !tbaa !33
  %cmp = icmp eq i8* %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc2, i32 0, i32 6
  %7 = load i8*, i8** %ctop, align 8, !tbaa !34
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 13
  %cbot4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc3, i32 0, i32 3
  %9 = load i8*, i8** %cbot4, align 8, !tbaa !33
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i64 %sub.ptr.sub, 16
  %cmp5 = icmp ult i64 %conv, %div
  br i1 %cmp5, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 13
  %rtop9 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc8, i32 0, i32 5
  %11 = load i8*, i8** %rtop9, align 8, !tbaa !32
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 13
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc10, i32 0, i32 4
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur, align 8, !tbaa !35
  %14 = bitcast %struct.obj_header_s* %13 to i8*
  %sub.ptr.lhs.cast11 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %14 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %15 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %conv14 = zext i32 %15 to i64
  %mul = mul i64 %conv14, 16
  %add = add i64 %sub.ptr.sub13, %mul
  %cmp15 = icmp ult i64 %add, 800
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.7
  %16 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc17 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 13
  %rtop18 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc17, i32 0, i32 5
  %18 = load i8*, i8** %rtop18, align 8, !tbaa !32
  %19 = bitcast i8* %18 to %struct.ref_s*
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %conv19 = zext i32 %20 to i64
  %mul20 = mul i64 %conv19, 16
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc21 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 13
  %rcur22 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc21, i32 0, i32 4
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur22, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %22, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !36
  %conv23 = zext i32 %23 to i64
  %add24 = add i64 %conv23, %mul20
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, i32* %size, align 4, !tbaa !36
  %24 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %conv26 = zext i32 %24 to i64
  %mul27 = mul i64 %conv26, 16
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc28 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 13
  %cbot29 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc28, i32 0, i32 3
  %26 = load i8*, i8** %cbot29, align 8, !tbaa !33
  %add.ptr30 = getelementptr inbounds i8, i8* %26, i64 %mul27
  store i8* %add.ptr30, i8** %cbot29, align 8, !tbaa !33
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc31 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 13
  %rtop32 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc31, i32 0, i32 5
  store i8* %add.ptr30, i8** %rtop32, align 8, !tbaa !32
  %28 = bitcast i8* %add.ptr30 to %struct.ref_s*
  store %struct.ref_s* %28, %struct.ref_s** %end, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %end, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3072, i16* %type_attrs, align 2, !tbaa !38
  %30 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %entry
  %31 = bitcast %struct.chunk_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc34 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 14
  %33 = load %struct.chunk_s*, %struct.chunk_s** %pcc34, align 8, !tbaa !42
  store %struct.chunk_s* %33, %struct.chunk_s** %pcc, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s** %end35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %39, i32 0, i32 0
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %cmp36 = icmp ne %struct.gs_memory_s* %38, %40
  br i1 %cmp36, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.else
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @alloc_save_change_alloc(%struct.gs_ref_memory_s* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.alloc_change_s** %cp) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %42, 0
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.38
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.else
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %46 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !43
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %add43 = add i32 %49, 1
  %50 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call44 = call i8* %46(%struct.gs_memory_s* %48, i32 %add43, %struct.gs_memory_struct_type_s* @st_refs, i8* %50) #3
  %51 = bitcast i8* %call44 to %struct.ref_s*
  store %struct.ref_s* %51, %struct.ref_s** %obj, align 8, !tbaa !1
  %52 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %cmp45 = icmp eq %struct.ref_s* %52, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.42
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.42
  %53 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %54 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %54 to i64
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 %idx.ext
  store %struct.ref_s* %add.ptr49, %struct.ref_s** %end35, align 8, !tbaa !1
  %55 = load %struct.ref_s*, %struct.ref_s** %end35, align 8, !tbaa !1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  store i16 3072, i16* %type_attrs51, align 2, !tbaa !38
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc52 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %56, i32 0, i32 14
  %57 = load %struct.chunk_s*, %struct.chunk_s** %pcc52, align 8, !tbaa !42
  %58 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !1
  %cmp53 = icmp ne %struct.chunk_s* %57, %58
  br i1 %cmp53, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc55 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %59, i32 0, i32 13
  %cbot56 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc55, i32 0, i32 3
  %60 = load i8*, i8** %cbot56, align 8, !tbaa !33
  %61 = load %struct.ref_s*, %struct.ref_s** %end35, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 1
  %62 = bitcast %struct.ref_s* %add.ptr57 to i8*
  %cmp58 = icmp eq i8* %60, %62
  br i1 %cmp58, label %if.then.60, label %if.else.67

if.then.60:                                       ; preds = %lor.lhs.false, %if.end.48
  %63 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %63 to %struct.obj_header_s*
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc61 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %65, i32 0, i32 13
  %rcur62 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc61, i32 0, i32 4
  store %struct.obj_header_s* %64, %struct.obj_header_s** %rcur62, align 8, !tbaa !35
  %66 = load %struct.ref_s*, %struct.ref_s** %end35, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 1
  %67 = bitcast %struct.ref_s* %add.ptr63 to i8*
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc64 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %68, i32 0, i32 13
  %rtop65 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc64, i32 0, i32 5
  store i8* %67, i8** %rtop65, align 8, !tbaa !32
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc66 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %69, i32 0, i32 13
  %has_refs = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc66, i32 0, i32 13
  store i32 1, i32* %has_refs, align 4, !tbaa !44
  br label %if.end.72

if.else.67:                                       ; preds = %lor.lhs.false
  %70 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.start(i64 16, i8* %70) #2
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 0
  store %struct.gs_ref_memory_s* %71, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !45
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %72, i32 0, i32 12
  %73 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !46
  %cp68 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  store %struct.chunk_s* %73, %struct.chunk_s** %cp68, align 8, !tbaa !47
  %74 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %75 = bitcast %struct.ref_s* %74 to i8*
  %call69 = call i32 @chunk_locate_ptr(i8* %75, %struct.chunk_locator_s* %cl) #3
  %cp70 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  %76 = load %struct.chunk_s*, %struct.chunk_s** %cp70, align 8, !tbaa !47
  %has_refs71 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %76, i32 0, i32 13
  store i32 1, i32* %has_refs71, align 4, !tbaa !48
  %77 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #2
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.then.60
  %78 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.alloc_change_s* %78, null
  br i1 %tobool, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.72
  %79 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %80, i32 0, i32 26
  store %struct.alloc_change_s* %79, %struct.alloc_change_s** %changes, align 8, !tbaa !49
  %81 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %82 = bitcast %struct.ref_s* %81 to i16*
  %83 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %83, i32 0, i32 1
  store i16* %82, i16** %where, align 8, !tbaa !50
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.72
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.47, %if.then.41
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct.ref_s** %end35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast %struct.chunk_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.78

if.end.78:                                        ; preds = %cleanup.cont, %do.end
  %88 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %89 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* %88, %struct.ref_s** %refs, align 8, !tbaa !1
  %90 = load i32, i32* %attrs.addr, align 4, !tbaa !5
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %91, i32 0, i32 7
  %92 = load i32, i32* %space, align 4, !tbaa !24
  %or = or i32 %90, %92
  %add79 = add i32 1024, %or
  %conv80 = trunc i32 %add79 to i16
  %93 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  store i16 %conv80, i16* %type_attrs82, align 2, !tbaa !38
  %94 = load i32, i32* %num_refs.addr, align 4, !tbaa !5
  %95 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 2
  store i32 %94, i32* %rsize, align 4, !tbaa !52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.78, %cleanup
  %96 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = load i32, i32* %retval
  ret i32 %97
}

declare i32 @alloc_save_change_alloc(%struct.gs_ref_memory_s*, i8*, %struct.alloc_change_s**) #0

declare i32 @chunk_locate_ptr(i8*, %struct.chunk_locator_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_resize_ref_array(%struct.gs_ref_memory_s* %mem, %struct.ref_s* %parr, i32 %new_num_refs, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %parr.addr = alloca %struct.ref_s*, align 8
  %new_num_refs.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %old_num_refs = alloca i32, align 4
  %diff = alloca i32, align 4
  %obj = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %end = alloca %struct.ref_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %parr, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  store i32 %new_num_refs, i32* %new_num_refs.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %old_num_refs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !52
  store i32 %2, i32* %old_num_refs, align 4, !tbaa !5
  %3 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %6, %struct.ref_s** %obj, align 8, !tbaa !1
  %7 = load i32, i32* %new_num_refs.addr, align 4, !tbaa !5
  %8 = load i32, i32* %old_num_refs, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv = zext i8 %11 to i32
  %cmp2 = icmp eq i32 %conv, 4
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, i32* %old_num_refs, align 4, !tbaa !5
  %13 = load i32, i32* %new_num_refs.addr, align 4, !tbaa !5
  %sub = sub i32 %12, %13
  store i32 %sub, i32* %diff, align 4, !tbaa !5
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 13
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 5
  %15 = load i8*, i8** %rtop, align 8, !tbaa !32
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %16, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc4, i32 0, i32 3
  %17 = load i8*, i8** %cbot, align 8, !tbaa !33
  %cmp5 = icmp eq i8* %15, %17
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %19 = load i32, i32* %old_num_refs, align 4, !tbaa !5
  %add = add i32 %19, 1
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.ext
  %20 = bitcast %struct.ref_s* %add.ptr to i8*
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 13
  %rtop8 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc7, i32 0, i32 5
  %22 = load i8*, i8** %rtop8, align 8, !tbaa !32
  %cmp9 = icmp eq i8* %20, %22
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %23 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load i32, i32* %diff, align 4, !tbaa !5
  %conv12 = zext i32 %24 to i64
  %mul = mul i64 %conv12, 16
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 13
  %rtop14 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc13, i32 0, i32 5
  %26 = load i8*, i8** %rtop14, align 8, !tbaa !32
  %idx.neg = sub i64 0, %mul
  %add.ptr15 = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr15, i8** %rtop14, align 8, !tbaa !32
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 13
  %cbot17 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc16, i32 0, i32 3
  store i8* %add.ptr15, i8** %cbot17, align 8, !tbaa !33
  %28 = bitcast i8* %add.ptr15 to %struct.ref_s*
  store %struct.ref_s* %28, %struct.ref_s** %end, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.11
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %diff, align 4, !tbaa !5
  %conv18 = zext i32 %29 to i64
  %mul19 = mul i64 %conv18, 16
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 13
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc20, i32 0, i32 4
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur, align 8, !tbaa !35
  %arrayidx21 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %31, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx21, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %32 = load i32, i32* %size, align 4, !tbaa !36
  %conv22 = zext i32 %32 to i64
  %sub23 = sub i64 %conv22, %mul19
  %conv24 = trunc i64 %sub23 to i32
  store i32 %conv24, i32* %size, align 4, !tbaa !36
  %33 = load %struct.ref_s*, %struct.ref_s** %end, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 3072, i16* %type_attrs27, align 2, !tbaa !38
  %34 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %if.end
  br label %do.body.28

do.body.28:                                       ; preds = %if.else
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %35 = load i32, i32* %diff, align 4, !tbaa !5
  %conv31 = zext i32 %35 to i64
  %mul32 = mul i64 %conv31, 16
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 18
  %refs33 = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 1
  %37 = load i64, i64* %refs33, align 8, !tbaa !54
  %add34 = add i64 %37, %mul32
  store i64 %add34, i64* %refs33, align 8, !tbaa !54
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.30, %do.end
  %38 = load i32, i32* %new_num_refs.addr, align 4, !tbaa !5
  %39 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %rsize37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 2
  store i32 %38, i32* %rsize37, align 4, !tbaa !52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then
  %40 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %old_num_refs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @gs_free_ref_array(%struct.gs_ref_memory_s* %mem, %struct.ref_s* %parr, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %parr.addr = alloca %struct.ref_s*, align 8
  %cname.addr = alloca i8*, align 8
  %num_refs = alloca i32, align 4
  %obj = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cl = alloca %struct.chunk_locator_s, align 8
  %size76 = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i16*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %parr, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_refs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !52
  store i32 %2, i32* %num_refs, align 4, !tbaa !5
  %3 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %obj, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.72

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 13
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 5
  %10 = load i8*, i8** %rtop, align 8, !tbaa !32
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc3, i32 0, i32 3
  %12 = load i8*, i8** %cbot, align 8, !tbaa !33
  %cmp4 = icmp eq i8* %10, %12
  br i1 %cmp4, label %land.lhs.true, label %if.else.40

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %14 = load i32, i32* %num_refs, align 4, !tbaa !5
  %add = add i32 %14, 1
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.ext
  %15 = bitcast %struct.ref_s* %add.ptr to i8*
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %16, i32 0, i32 13
  %rtop7 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc6, i32 0, i32 5
  %17 = load i8*, i8** %rtop7, align 8, !tbaa !32
  %cmp8 = icmp eq i8* %15, %17
  br i1 %cmp8, label %if.then.10, label %if.else.40

if.then.10:                                       ; preds = %land.lhs.true
  %18 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %19 = bitcast %struct.ref_s* %18 to %struct.obj_header_s*
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %20, i32 0, i32 13
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc11, i32 0, i32 4
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur, align 8, !tbaa !35
  %cmp12 = icmp eq %struct.obj_header_s* %19, %21
  br i1 %cmp12, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %if.then.10
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 0
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %cmp15 = icmp ne %struct.gs_memory_s* %23, %25
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.14
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %27 to i16*
  call void @alloc_save_remove(%struct.gs_ref_memory_s* %26, i16* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.14
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gs_ref_memory_s* %29 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %31 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %34 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %35 = bitcast %struct.ref_s* %34 to i8*
  %36 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %31(%struct.gs_memory_s* %33, i8* %35, i8* %36) #3
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc18 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %37, i32 0, i32 13
  %rcur19 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc18, i32 0, i32 4
  store %struct.obj_header_s* null, %struct.obj_header_s** %rcur19, align 8, !tbaa !35
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 13
  %rtop21 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc20, i32 0, i32 5
  store i8* null, i8** %rtop21, align 8, !tbaa !32
  br label %if.end.39

if.else.22:                                       ; preds = %if.then.10
  br label %do.body.23

do.body.23:                                       ; preds = %if.else.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %39 = load i32, i32* %num_refs, align 4, !tbaa !5
  %conv26 = zext i32 %39 to i64
  %mul = mul i64 %conv26, 16
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc27 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 13
  %rcur28 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc27, i32 0, i32 4
  %41 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur28, align 8, !tbaa !35
  %arrayidx29 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %41, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx29, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %42 = load i32, i32* %size, align 4, !tbaa !36
  %conv30 = zext i32 %42 to i64
  %sub = sub i64 %conv30, %mul
  %conv31 = trunc i64 %sub to i32
  store i32 %conv31, i32* %size, align 4, !tbaa !36
  %43 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 1
  %44 = bitcast %struct.ref_s* %add.ptr32 to i8*
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc33 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %45, i32 0, i32 13
  %cbot34 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc33, i32 0, i32 3
  store i8* %44, i8** %cbot34, align 8, !tbaa !33
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc35 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %46, i32 0, i32 13
  %rtop36 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc35, i32 0, i32 5
  store i8* %44, i8** %rtop36, align 8, !tbaa !32
  %47 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 3072, i16* %type_attrs38, align 2, !tbaa !38
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.25, %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.else.40:                                       ; preds = %land.lhs.true, %if.else
  %48 = load i32, i32* %num_refs, align 4, !tbaa !5
  %conv41 = zext i32 %48 to i64
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %49, i32 0, i32 6
  %50 = load i32, i32* %large_size, align 4, !tbaa !56
  %conv42 = zext i32 %50 to i64
  %div = udiv i64 %conv42, 16
  %sub43 = sub i64 %div, 1
  %cmp44 = icmp uge i64 %conv41, %sub43
  br i1 %cmp44, label %if.then.46, label %if.end.70

if.then.46:                                       ; preds = %if.else.40
  %51 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.start(i64 16, i8* %51) #2
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 0
  store %struct.gs_ref_memory_s* %52, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !45
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %53, i32 0, i32 12
  %54 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !46
  %cp = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  store %struct.chunk_s* %54, %struct.chunk_s** %cp, align 8, !tbaa !47
  %55 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %call = call i32 @chunk_locate_ptr(i8* %56, %struct.chunk_locator_s* %cl) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.47, label %if.end.69

land.lhs.true.47:                                 ; preds = %if.then.46
  %57 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %cp48 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  %58 = load %struct.chunk_s*, %struct.chunk_s** %cp48, align 8, !tbaa !47
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %cbase, align 8, !tbaa !57
  %60 = bitcast i8* %59 to %struct.obj_header_s*
  %add.ptr49 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %60, i64 1
  %61 = bitcast %struct.obj_header_s* %add.ptr49 to %struct.ref_s*
  %cmp50 = icmp eq %struct.ref_s* %57, %61
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.69

land.lhs.true.52:                                 ; preds = %land.lhs.true.47
  %62 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %63 = load i32, i32* %num_refs, align 4, !tbaa !5
  %add53 = add i32 %63, 1
  %idx.ext54 = zext i32 %add53 to i64
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 %idx.ext54
  %64 = bitcast %struct.ref_s* %add.ptr55 to i8*
  %cp56 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  %65 = load %struct.chunk_s*, %struct.chunk_s** %cp56, align 8, !tbaa !47
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %65, i32 0, i32 8
  %66 = load i8*, i8** %cend, align 8, !tbaa !58
  %cmp57 = icmp eq i8* %64, %66
  br i1 %cmp57, label %if.then.59, label %if.end.69

if.then.59:                                       ; preds = %land.lhs.true.52
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gs_ref_memory_s* %67 to %struct.gs_memory_s*
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory63 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %69, i32 0, i32 0
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory63, align 8, !tbaa !7
  %cmp64 = icmp ne %struct.gs_memory_s* %68, %70
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %do.end.62
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %72 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %73 = bitcast %struct.ref_s* %72 to i16*
  call void @alloc_save_remove(%struct.gs_ref_memory_s* %71, i16* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %do.end.62
  %cp68 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  %74 = load %struct.chunk_s*, %struct.chunk_s** %cp68, align 8, !tbaa !47
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %74, %struct.gs_ref_memory_s* %75) #3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %land.lhs.true.52, %land.lhs.true.47, %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.end.67
  %76 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.118 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup.cont, %if.else.40
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.end
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  %77 = bitcast i32* %size76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #2
  %78 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  %79 = bitcast i16* %type_attrs78 to i8*
  %arrayidx79 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx79, align 1, !tbaa !53
  %conv80 = zext i8 %80 to i32
  switch i32 %conv80, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.84
    i32 4, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %do.end.75
  %81 = load i32, i32* %num_refs, align 4, !tbaa !5
  %conv81 = zext i32 %81 to i64
  %mul82 = mul i64 %conv81, 2
  %conv83 = trunc i64 %mul82 to i32
  store i32 %conv83, i32* %size76, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.84:                                         ; preds = %do.end.75
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %83 = bitcast i16** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %packed = bitcast %union.v* %value85 to i16**
  %85 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %85, i16** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.84
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %87 = load i32, i32* %num_refs, align 4, !tbaa !5
  %cmp86 = icmp ult i32 %86, %87
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i16*, i16** %p, align 8, !tbaa !1
  %89 = load i16, i16* %88, align 2, !tbaa !59
  %conv88 = zext i16 %89 to i32
  %cmp89 = icmp sge i32 %conv88, 16384
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %90 = load i16*, i16** %p, align 8, !tbaa !1
  %add.ptr91 = getelementptr inbounds i16, i16* %90, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %91 = load i16*, i16** %p, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i16, i16* %91, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr91, %cond.true ], [ %add.ptr92, %cond.false ]
  store i16* %cond, i16** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %92, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = load i16*, i16** %p, align 8, !tbaa !1
  %94 = bitcast i16* %93 to i8*
  %95 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %value93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  %packed94 = bitcast %union.v* %value93 to i16**
  %96 = load i16*, i16** %packed94, align 8, !tbaa !1
  %97 = bitcast i16* %96 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %97 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv95 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv95, i32* %size76, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  %98 = bitcast i16** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  br label %sw.epilog

sw.bb.98:                                         ; preds = %do.end.75
  %100 = load i32, i32* %num_refs, align 4, !tbaa !5
  %conv99 = zext i32 %100 to i64
  %mul100 = mul i64 %conv99, 16
  %conv101 = trunc i64 %mul100 to i32
  store i32 %conv101, i32* %size76, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.75
  %call102 = call i8* @gs_program_name() #3
  %call103 = call i64 @gs_revision_number() #3
  call void @eprintf_program_ident(i8* %call102, i64 %call103) #3
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 353) #3
  %101 = load %struct.ref_s*, %struct.ref_s** %parr.addr, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  %102 = bitcast i16* %type_attrs105 to i8*
  %arrayidx106 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx106, align 1, !tbaa !53
  %conv107 = zext i8 %103 to i32
  %104 = load i32, i32* %num_refs, align 4, !tbaa !5
  %105 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %106 = ptrtoint %struct.ref_s* %105 to i64
  %call108 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i32 %conv107, i32 %104, i64 %106) #3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

sw.epilog:                                        ; preds = %sw.bb.98, %for.end, %sw.bb
  %107 = load %struct.ref_s*, %struct.ref_s** %obj, align 8, !tbaa !1
  %108 = load i32, i32* %size76, align 4, !tbaa !5
  %conv109 = zext i32 %108 to i64
  %div110 = udiv i64 %conv109, 16
  %conv111 = trunc i64 %div110 to i32
  call void @refset_null_new(%struct.ref_s* %107, i32 %conv111, i32 0) #3
  %109 = load i32, i32* %size76, align 4, !tbaa !5
  %conv112 = zext i32 %109 to i64
  %110 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %110, i32 0, i32 18
  %refs113 = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 1
  %111 = load i64, i64* %refs113, align 8, !tbaa !54
  %add114 = add i64 %111, %conv112
  store i64 %add114, i64* %refs113, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %sw.epilog, %sw.default
  %112 = bitcast i32* %size76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %cleanup.dest.116 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.116, label %cleanup.118 [
    i32 0, label %cleanup.cont.117
  ]

cleanup.cont.117:                                 ; preds = %cleanup.115
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %cleanup.cont.117, %cleanup.115, %cleanup, %if.end.39
  %113 = bitcast %struct.ref_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i32* %num_refs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %cleanup.dest.120 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.120, label %unreachable [
    i32 0, label %cleanup.cont.121
    i32 1, label %cleanup.cont.121
  ]

cleanup.cont.121:                                 ; preds = %cleanup.118, %cleanup.118
  ret void

unreachable:                                      ; preds = %cleanup.118
  unreachable
}

declare void @alloc_save_remove(%struct.gs_ref_memory_s*, i16*, i8*) #0

declare void @alloc_free_chunk(%struct.chunk_s*, %struct.gs_ref_memory_s*) #0

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare void @refset_null_new(%struct.ref_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gs_alloc_string_ref(%struct.gs_ref_memory_s* %mem, %struct.ref_s* %psref, i32 %attrs, i32 %nbytes, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  %attrs.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  store i32 %attrs, i32* %attrs.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !60
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_ref_memory_s* %4 to %struct.gs_memory_s*
  %6 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %5, i32 %6, i8* %7) #3
  store i8* %call, i8** %str, align 8, !tbaa !1
  %8 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %str, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %9, i8** %bytes, align 8, !tbaa !1
  %11 = load i32, i32* %attrs.addr, align 4, !tbaa !5
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 7
  %13 = load i32, i32* %space, align 4, !tbaa !24
  %or = or i32 %11, %13
  %add = add i32 4608, %or
  %conv = trunc i32 %add to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !38
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %16 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %15, i32* %rsize, align 4, !tbaa !52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gs_ref_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !10, i64 232, !6, i64 272, !11, i64 280, !2, i64 288, !2, i64 296, !12, i64 304, !2, i64 488, !13, i64 496, !11, i64 512, !11, i64 520, !14, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !11, i64 624, !11, i64 632, !2, i64 640, !15, i64 648, !6, i64 672, !3, i64 680}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!"gs_memory_gc_status_s", !11, i64 0, !11, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !11, i64 32}
!11 = !{!"long", !3, i64 0}
!12 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!13 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!14 = !{!"lost_", !11, i64 0, !11, i64 8, !11, i64 16}
!15 = !{!"gs_memory_status_s", !11, i64 0, !11, i64 8, !6, i64 16}
!16 = !{!17, !2, i64 24}
!17 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!18 = !{!17, !2, i64 16}
!19 = !{!17, !2, i64 8}
!20 = !{!21, !2, i64 8}
!21 = !{!"gs_dual_memory_s", !2, i64 0, !22, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!22 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!23 = !{!21, !2, i64 56}
!24 = !{!8, !6, i64 224}
!25 = !{!21, !2, i64 0}
!26 = !{!21, !6, i64 48}
!27 = !{!8, !6, i64 556}
!28 = !{!8, !6, i64 552}
!29 = !{!8, !11, i64 264}
!30 = !{!31, !2, i64 168}
!31 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!8, !2, i64 344}
!33 = !{!8, !2, i64 328}
!34 = !{!8, !2, i64 352}
!35 = !{!8, !2, i64 336}
!36 = !{!37, !6, i64 4}
!37 = !{!"obj_header_data_s", !3, i64 0, !6, i64 4, !3, i64 8, !11, i64 16}
!38 = !{!39, !41, i64 0}
!39 = !{!"ref_s", !40, i64 0, !3, i64 8}
!40 = !{!"tas_s", !41, i64 0, !41, i64 2, !6, i64 4}
!41 = !{!"short", !3, i64 0}
!42 = !{!8, !2, i64 488}
!43 = !{!31, !2, i64 104}
!44 = !{!8, !6, i64 404}
!45 = !{!13, !2, i64 0}
!46 = !{!8, !2, i64 296}
!47 = !{!13, !2, i64 8}
!48 = !{!12, !6, i64 100}
!49 = !{!8, !2, i64 600}
!50 = !{!51, !2, i64 8}
!51 = !{!"alloc_change_s", !2, i64 0, !2, i64 8, !39, i64 16, !41, i64 32}
!52 = !{!39, !6, i64 4}
!53 = !{!3, !3, i64 0}
!54 = !{!8, !11, i64 536}
!55 = !{!31, !2, i64 24}
!56 = !{!8, !6, i64 220}
!57 = !{!12, !2, i64 8}
!58 = !{!12, !2, i64 64}
!59 = !{!41, !41, i64 0}
!60 = !{!31, !2, i64 136}
