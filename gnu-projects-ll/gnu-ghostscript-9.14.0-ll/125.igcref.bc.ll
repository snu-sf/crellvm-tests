; ModuleID = './igcref.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gx_device_s = type opaque
%struct.dict_s = type opaque
%struct.name_s = type opaque
%union.anon.1 = type { i16* }
%union.anon.0 = type { i16* }

@.str = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@refs_shared_procs = internal constant %struct.struct_shared_procs_s { void (%struct.obj_header_s*, i32)* @refs_clear_reloc, i32 (%struct.obj_header_s*, i32, i32)* @refs_set_reloc, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* @refs_compact }, align 8
@st_refs = constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* @refs_shared_procs, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @refs_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* null, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @refs_do_reloc, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@ref_type_properties = external constant [64 x i8], align 16
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define internal void @refs_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %rp = alloca i16*, align 8
  %end = alloca i16*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %rp, align 8, !tbaa !1
  %3 = bitcast i16** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to i16*
  store i16* %6, i16** %end, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %entry
  %7 = load i16*, i16** %rp, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !7
  %conv = zext i16 %8 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %9 = load i16*, i16** %rp, align 8, !tbaa !1
  %10 = load i16, i16* %9, align 2, !tbaa !7
  %conv2 = zext i16 %10 to i32
  %and = and i32 %conv2, -4097
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %9, align 2, !tbaa !7
  %11 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %if.end.11

if.else:                                          ; preds = %for.cond
  %12 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i16*, i16** %rp, align 8, !tbaa !1
  %14 = bitcast i16* %13 to %struct.ref_s*
  store %struct.ref_s* %14, %struct.ref_s** %pref, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %16 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv4 = zext i16 %16 to i32
  %and5 = and i32 %conv4, -2
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %type_attrs, align 2, !tbaa !9
  %17 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i16, i16* %17, i64 8
  store i16* %add.ptr7, i16** %rp, align 8, !tbaa !1
  %18 = load i16*, i16** %rp, align 8, !tbaa !1
  %19 = load i16*, i16** %end, align 8, !tbaa !1
  %cmp8 = icmp uge i16* %18, %19
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %20 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.end.11:                                        ; preds = %cleanup.cont, %if.then
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %21 = bitcast i16** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @refs_do_reloc(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = bitcast i8* %add.ptr to i16*
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @igc_reloc_refs(i16* %1, i16* %4, %struct.gc_state_s* %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @ref_struct_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %end = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ref_s*
  store %struct.ref_s* %2, %struct.ref_s** %pref, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to %struct.ref_s*
  store %struct.ref_s* %6, %struct.ref_s** %end, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.ref_s* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pref, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv1 = zext i32 %1 to i64
  %div = udiv i64 %conv1, 16
  %cmp = icmp uge i64 %conv, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.ref_s*
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 %idx.ext
  %5 = bitcast %struct.ref_s* %add.ptr to i8*
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !12
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %7
}

; Function Attrs: nounwind uwtable
define void @ref_struct_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %spaces = alloca %struct.vm_spaces_s, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  %beg = alloca %struct.ref_s*, align 8
  %end = alloca %struct.ref_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %1, i32 0, i32 2
  %2 = bitcast %struct.vm_spaces_s* %spaces to i8*
  %3 = bitcast %struct.vm_spaces_s* %spaces1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 40, i32 8, i1 false), !tbaa.struct !14
  %4 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !18
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s** %beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.ref_s*
  store %struct.ref_s* %9, %struct.ref_s** %beg, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = bitcast i8* %add.ptr to %struct.ref_s*
  store %struct.ref_s* %13, %struct.ref_s** %end, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %beg, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %14 to i16*
  %16 = load %struct.ref_s*, %struct.ref_s** %end, align 8, !tbaa !1
  %17 = bitcast %struct.ref_s* %16 to i16*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @igc_reloc_refs(i16* %15, i16* %17, %struct.gc_state_s* %18) #3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = load i32, i32* %size.addr, align 4, !tbaa !5
  %22 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  call void @ref_struct_clear_marks(%struct.gs_memory_s* %19, i8* %20, i32 %21, %struct.gs_memory_struct_type_s* %22) #3
  %23 = bitcast %struct.ref_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.end(i64 40, i8* %26) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @igc_reloc_refs(i16* %from, i16* %to, %struct.gc_state_s* %gcst) #0 {
entry:
  %from.addr = alloca i16*, align 8
  %to.addr = alloca i16*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %min_trace = alloca i32, align 4
  %rp = alloca i16*, align 8
  %do_all = alloca i32, align 4
  %spaces = alloca %struct.vm_spaces_s, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %size81 = alloca i32, align 4
  %psub = alloca i8*, align 8
  %rsub = alloca i8*, align 8
  %str = alloca %struct.gs_string_s, align 8
  store i16* %from, i16** %from.addr, align 8, !tbaa !1
  store i16* %to, i16** %to.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %min_collect = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %1, i32 0, i32 3
  %2 = load i32, i32* %min_collect, align 4, !tbaa !27
  store i32 %2, i32* %min_trace, align 4, !tbaa !5
  %3 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i16*, i16** %from.addr, align 8, !tbaa !1
  store i16* %4, i16** %rp, align 8, !tbaa !1
  %5 = bitcast i32* %do_all to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %relocating_untraced = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %6, i32 0, i32 4
  %7 = load i32, i32* %relocating_untraced, align 4, !tbaa !30
  store i32 %7, i32* %do_all, align 4, !tbaa !5
  %8 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %9, i32 0, i32 2
  %10 = bitcast %struct.vm_spaces_s* %spaces to i8*
  %11 = bitcast %struct.vm_spaces_s* %spaces1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 40, i32 8, i1 false), !tbaa.struct !14
  %12 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !18
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %15 = load i16*, i16** %rp, align 8, !tbaa !1
  %16 = load i16*, i16** %to.addr, align 8, !tbaa !1
  %cmp = icmp ult i16* %15, %16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i16*, i16** %rp, align 8, !tbaa !1
  %19 = load i16, i16* %18, align 2, !tbaa !7
  %conv = zext i16 %19 to i32
  %cmp2 = icmp sge i32 %conv, 16384
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %20 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %21 = load i16*, i16** %rp, align 8, !tbaa !1
  %22 = bitcast i16* %21 to %struct.ref_s*
  store %struct.ref_s* %22, %struct.ref_s** %pref, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %24 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv4 = zext i16 %24 to i32
  %and = and i32 %conv4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %25 = load i32, i32* %do_all, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %25, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.129

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %26 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %27 = load i16, i16* %type_attrs7, align 2, !tbaa !9
  %conv8 = zext i16 %27 to i32
  %and9 = and i32 %conv8, 12
  %28 = load i32, i32* %min_trace, align 4, !tbaa !5
  %cmp10 = icmp uge i32 %and9, %28
  br i1 %cmp10, label %if.then.12, label %if.end.129

if.then.12:                                       ; preds = %land.lhs.true
  %29 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %30 = bitcast i16* %type_attrs14 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv15 = zext i8 %31 to i32
  switch i32 %conv15, label %sw.default [
    i32 3, label %sw.bb
    i32 19, label %sw.bb.18
    i32 10, label %sw.bb.24
    i32 8, label %sw.bb.24
    i32 9, label %sw.bb.24
    i32 2, label %sw.bb.30
    i32 4, label %sw.bb.38
    i32 5, label %sw.bb.66
    i32 6, label %sw.bb.80
    i32 13, label %sw.bb.102
    i32 18, label %sw.bb.110
    i32 20, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %if.then.12
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gc_state_s* %32 to %struct.gc_procs_with_refs_s**
  %34 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %33, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %34, i32 0, i32 0
  %35 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !31
  %36 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %37 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %38 = bitcast %struct.stream_s* %37 to i8*
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %35(i8* %38, %struct.gc_state_s* %39) #3
  %40 = bitcast i8* %call to %struct.stream_s*
  %41 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %pfile17 = bitcast %union.v* %value16 to %struct.stream_s**
  store %struct.stream_s* %40, %struct.stream_s** %pfile17, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.12
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gc_state_s* %42 to %struct.gc_procs_with_refs_s**
  %44 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %43, align 8, !tbaa !1
  %reloc_struct_ptr19 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %44, i32 0, i32 0
  %45 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr19, align 8, !tbaa !31
  %46 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %pdevice = bitcast %union.v* %value20 to %struct.gx_device_s**
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_s* %47 to i8*
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call21 = call i8* %45(i8* %48, %struct.gc_state_s* %49) #3
  %50 = bitcast i8* %call21 to %struct.gx_device_s*
  %51 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %pdevice23 = bitcast %union.v* %value22 to %struct.gx_device_s**
  store %struct.gx_device_s* %50, %struct.gx_device_s** %pdevice23, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.12, %if.then.12, %if.then.12
  %52 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gc_state_s* %52 to %struct.gc_procs_with_refs_s**
  %54 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %53, align 8, !tbaa !1
  %reloc_struct_ptr25 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %54, i32 0, i32 0
  %55 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr25, align 8, !tbaa !31
  %56 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %pstruct = bitcast %union.v* %value26 to %struct.obj_header_s**
  %57 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %58 = bitcast %struct.obj_header_s* %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call27 = call i8* %55(i8* %58, %struct.gc_state_s* %59) #3
  %60 = bitcast i8* %call27 to %struct.obj_header_s*
  %61 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %pstruct29 = bitcast %union.v* %value28 to %struct.obj_header_s**
  store %struct.obj_header_s* %60, %struct.obj_header_s** %pstruct29, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.12
  br label %do.body.31

do.body.31:                                       ; preds = %sw.bb.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %62 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  %pdict = bitcast %union.v* %value34 to %struct.dict_s**
  %63 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %64 = bitcast %struct.dict_s* %63 to i16*
  %65 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call35 = call i16* @igc_reloc_ref_ptr(i16* %64, %struct.gc_state_s* %65) #3
  %66 = bitcast i16* %call35 to %struct.dict_s*
  %67 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  %pdict37 = bitcast %union.v* %value36 to %struct.dict_s**
  store %struct.dict_s* %66, %struct.dict_s** %pdict37, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.12
  %68 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  %70 = load i32, i32* %rsize, align 4, !tbaa !33
  store i32 %70, i32* %size, align 4, !tbaa !5
  %71 = load i32, i32* %size, align 4, !tbaa !5
  %cmp40 = icmp ne i32 %71, 0
  br i1 %cmp40, label %if.then.42, label %if.end.65

if.then.42:                                       ; preds = %sw.bb.38
  %72 = load i32, i32* %size, align 4, !tbaa !5
  %conv43 = zext i32 %72 to i64
  %cmp44 = icmp ult i64 %conv43, 50
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.42
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %73 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %refs = bitcast %union.v* %value50 to %struct.ref_s**
  %74 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %75 = bitcast %struct.ref_s* %74 to i16*
  %76 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call51 = call i16* @igc_reloc_ref_ptr(i16* %75, %struct.gc_state_s* %76) #3
  %77 = bitcast i16* %call51 to %struct.ref_s*
  %78 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 1
  %refs53 = bitcast %union.v* %value52 to %struct.ref_s**
  store %struct.ref_s* %77, %struct.ref_s** %refs53, align 8, !tbaa !1
  br label %if.end.64

if.else:                                          ; preds = %if.then.42
  br label %do.body.54

do.body.54:                                       ; preds = %if.else
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %79 = load i32, i32* %size, align 4, !tbaa !5
  %dec = add i32 %79, -1
  store i32 %dec, i32* %size, align 4, !tbaa !5
  %80 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 1
  %refs58 = bitcast %union.v* %value57 to %struct.ref_s**
  %81 = load %struct.ref_s*, %struct.ref_s** %refs58, align 8, !tbaa !1
  %82 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %82 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 %idx.ext
  %83 = bitcast %struct.ref_s* %add.ptr to i16*
  %84 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call59 = call i16* @igc_reloc_ref_ptr(i16* %83, %struct.gc_state_s* %84) #3
  %85 = bitcast i16* %call59 to %struct.ref_s*
  %86 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext60 = zext i32 %86 to i64
  %idx.neg = sub i64 0, %idx.ext60
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 %idx.neg
  %87 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 1
  %refs63 = bitcast %union.v* %value62 to %struct.ref_s**
  store %struct.ref_s* %add.ptr61, %struct.ref_s** %refs63, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.56, %do.end.49
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %sw.bb.38
  %88 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.then.12
  %89 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 0
  %rsize68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 2
  %90 = load i32, i32* %rsize68, align 4, !tbaa !33
  %cmp69 = icmp ne i32 %90, 0
  br i1 %cmp69, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %sw.bb.66
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %91 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 1
  %packed = bitcast %union.v* %value75 to i16**
  %92 = load i16*, i16** %packed, align 8, !tbaa !1
  %93 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call76 = call i16* @igc_reloc_ref_ptr(i16* %92, %struct.gc_state_s* %93) #3
  %94 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %packed78 = bitcast %union.v* %value77 to i16**
  store i16* %call76, i16** %packed78, align 8, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.74, %sw.bb.66
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.then.12
  %95 = bitcast i32* %size81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %rsize83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 2
  %97 = load i32, i32* %rsize83, align 4, !tbaa !33
  store i32 %97, i32* %size81, align 4, !tbaa !5
  %98 = load i32, i32* %size81, align 4, !tbaa !5
  %cmp84 = icmp ne i32 %98, 0
  br i1 %cmp84, label %if.then.86, label %if.end.101

if.then.86:                                       ; preds = %sw.bb.80
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %99 = load i32, i32* %size81, align 4, !tbaa !5
  %dec90 = add i32 %99, -1
  store i32 %dec90, i32* %size81, align 4, !tbaa !5
  %100 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 1
  %packed92 = bitcast %union.v* %value91 to i16**
  %101 = load i16*, i16** %packed92, align 8, !tbaa !1
  %102 = load i32, i32* %size81, align 4, !tbaa !5
  %idx.ext93 = zext i32 %102 to i64
  %add.ptr94 = getelementptr inbounds i16, i16* %101, i64 %idx.ext93
  %103 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call95 = call i16* @igc_reloc_ref_ptr(i16* %add.ptr94, %struct.gc_state_s* %103) #3
  %104 = load i32, i32* %size81, align 4, !tbaa !5
  %idx.ext96 = zext i32 %104 to i64
  %idx.neg97 = sub i64 0, %idx.ext96
  %add.ptr98 = getelementptr inbounds i16, i16* %call95, i64 %idx.neg97
  %105 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 1
  %packed100 = bitcast %union.v* %value99 to i16**
  store i16* %add.ptr98, i16** %packed100, align 8, !tbaa !1
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.89, %sw.bb.80
  %106 = bitcast i32* %size81 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.then.12
  %107 = bitcast i8** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 2
  %109 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !34
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %109, i32 0, i32 16
  %110 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !36
  %111 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %call103 = call i8* @names_ref_sub_table(%struct.name_table_s* %110, %struct.ref_s* %111) #3
  store i8* %call103, i8** %psub, align 8, !tbaa !1
  %112 = bitcast i8** %rsub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %114 = bitcast %struct.gc_state_s* %113 to %struct.gc_procs_with_refs_s**
  %115 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %114, align 8, !tbaa !1
  %reloc_struct_ptr104 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %115, i32 0, i32 0
  %116 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr104, align 8, !tbaa !31
  %117 = load i8*, i8** %psub, align 8, !tbaa !1
  %118 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call105 = call i8* %116(i8* %117, %struct.gc_state_s* %118) #3
  store i8* %call105, i8** %rsub, align 8, !tbaa !1
  %119 = load i8*, i8** %rsub, align 8, !tbaa !1
  %120 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 1
  %pname = bitcast %union.v* %value106 to %struct.name_s**
  %121 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %122 = bitcast %struct.name_s* %121 to i8*
  %123 = load i8*, i8** %psub, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %123 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr107 = getelementptr inbounds i8, i8* %119, i64 %sub.ptr.sub
  %124 = bitcast i8* %add.ptr107 to %struct.name_s*
  %125 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i32 0, i32 1
  %pname109 = bitcast %union.v* %value108 to %struct.name_s**
  store %struct.name_s* %124, %struct.name_s** %pname109, align 8, !tbaa !1
  %126 = bitcast i8** %rsub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i8** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.then.12
  %128 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %128) #1
  %129 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 1
  %bytes = bitcast %union.v* %value111 to i8**
  %130 = load i8*, i8** %bytes, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  store i8* %130, i8** %data, align 8, !tbaa !38
  %131 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 0
  %rsize113 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 2
  %132 = load i32, i32* %rsize113, align 4, !tbaa !33
  %size114 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 %132, i32* %size114, align 4, !tbaa !40
  %133 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %134 = bitcast %struct.gc_state_s* %133 to %struct.gc_procs_with_refs_s**
  %135 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %134, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %135, i32 0, i32 1
  %136 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !41
  %137 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %136(%struct.gs_string_s* %str, %struct.gc_state_s* %137) #3
  %data115 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  %138 = load i8*, i8** %data115, align 8, !tbaa !38
  %139 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 1
  %bytes117 = bitcast %union.v* %value116 to i8**
  store i8* %138, i8** %bytes117, align 8, !tbaa !1
  %140 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %140) #1
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.then.12
  br label %do.body.119

do.body.119:                                      ; preds = %sw.bb.118
  br label %do.cond.120

do.cond.120:                                      ; preds = %do.body.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %141 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i32 0, i32 1
  %const_refs = bitcast %union.v* %value122 to %struct.ref_s**
  %142 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %143 = bitcast %struct.ref_s* %142 to i16*
  %144 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call123 = call i16* @igc_reloc_ref_ptr(i16* %143, %struct.gc_state_s* %144) #3
  %145 = bitcast i16* %call123 to %struct.ref_s*
  %146 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 1
  %const_refs125 = bitcast %union.v* %value124 to %struct.ref_s**
  store %struct.ref_s* %145, %struct.ref_s** %const_refs125, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.12
  br label %no_reloc

sw.epilog:                                        ; preds = %do.end.121, %sw.bb.110, %sw.bb.102, %if.end.101, %if.end.79, %if.end.65, %do.end.33, %sw.bb.24, %sw.bb.18, %sw.bb
  br label %do.body.126

do.body.126:                                      ; preds = %sw.epilog
  br label %do.cond.127

do.cond.127:                                      ; preds = %do.body.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.cond.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %land.lhs.true, %lor.lhs.false
  br label %no_reloc

no_reloc:                                         ; preds = %if.end.129, %sw.default
  %147 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i16, i16* %147, i64 8
  store i16* %add.ptr130, i16** %rp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %no_reloc, %if.then
  %148 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %149 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.end(i64 40, i8* %150) #1
  %151 = bitcast i32* %do_all to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @ptr_ref_unmark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %ignored) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %ignored.addr = alloca %struct.gc_state_s*, align 8
  %rpp = alloca i16*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %ignored, %struct.gc_state_s** %ignored.addr, align 8, !tbaa !1
  %0 = bitcast i16** %rpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !12
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %rpp, align 8, !tbaa !1
  %4 = load i16*, i16** %rpp, align 8, !tbaa !1
  %5 = load i16, i16* %4, align 2, !tbaa !7
  %conv = zext i16 %5 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i16*, i16** %rpp, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !7
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, -4097
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %6, align 2, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i16*, i16** %rpp, align 8, !tbaa !1
  %9 = bitcast i16* %8 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv4 = zext i16 %10 to i32
  %and5 = and i32 %conv4, -2
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %type_attrs, align 2, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = bitcast i16** %rpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ptr_ref_mark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %ignored) #0 {
entry:
  %retval = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %ignored.addr = alloca %struct.gc_state_s*, align 8
  %rpp = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  %pref = alloca %struct.ref_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %ignored, %struct.gc_state_s** %ignored.addr, align 8, !tbaa !1
  %0 = bitcast i16** %rpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !12
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %rpp, align 8, !tbaa !1
  %4 = load i16*, i16** %rpp, align 8, !tbaa !1
  %5 = load i16, i16* %4, align 2, !tbaa !7
  %conv = zext i16 %5 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i16*, i16** %rpp, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !7
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end:                                           ; preds = %if.then
  %8 = load i16*, i16** %rpp, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !7
  %conv4 = zext i16 %9 to i32
  %or = or i32 %conv4, 4096
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %8, align 2, !tbaa !7
  br label %if.end.16

if.else:                                          ; preds = %entry
  %10 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i16*, i16** %rpp, align 8, !tbaa !1
  %12 = bitcast i16* %11 to %struct.ref_s*
  store %struct.ref_s* %12, %struct.ref_s** %pref, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv6 = zext i16 %14 to i32
  %and7 = and i32 %conv6, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.else
  %15 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %16 = load i16, i16* %type_attrs12, align 2, !tbaa !9
  %conv13 = zext i16 %16 to i32
  %or14 = or i32 %conv13, 1
  %conv15 = trunc i32 %or14 to i16
  store i16 %conv15, i16* %type_attrs12, align 2, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9
  %17 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.16, %cleanup, %if.then.3
  %18 = bitcast i16** %rpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i16* @igc_reloc_ref_ptr(i16* %prp, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca i16*, align 8
  %prp.addr = alloca i16*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %rp = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  %u = alloca %union.anon.1, align 8
  store i16* %prp, i16** %prp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  store i16* %1, i16** %rp, align 8, !tbaa !1
  %2 = load i16*, i16** %rp, align 8, !tbaa !1
  %3 = load i16, i16* %2, align 2, !tbaa !7
  %conv = zext i16 %3 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16*, i16** %rp, align 8, !tbaa !1
  %5 = load i16, i16* %4, align 2, !tbaa !7
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  br label %ret_rp

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load i16*, i16** %rp, align 8, !tbaa !1
  %7 = bitcast i16* %6 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv4 = zext i16 %8 to i32
  %and5 = and i32 %conv4, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.else
  br label %ret_rp

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %9 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i16* @igc_reloc_ref_ptr_nocheck(i16* %9, %struct.gc_state_s* %10) #3
  store i16* %call, i16** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

ret_rp:                                           ; preds = %if.then.7, %if.then.3
  %11 = bitcast %union.anon.1* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i16*, i16** %rp, align 8, !tbaa !1
  %r = bitcast %union.anon.1* %u to i16**
  store i16* %12, i16** %r, align 8, !tbaa !1
  %w = bitcast %union.anon.1* %u to i16**
  %13 = load i16*, i16** %w, align 8, !tbaa !1
  store i16* %13, i16** %retval
  store i32 1, i32* %cleanup.dest.slot
  %14 = bitcast %union.anon.1* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  br label %cleanup

cleanup:                                          ; preds = %ret_rp, %if.end.9
  %15 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i16*, i16** %retval
  ret i16* %16
}

declare i8* @names_ref_sub_table(%struct.name_table_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i16* @igc_reloc_ref_ptr_nocheck(i16* %prp, %struct.gc_state_s* %gcst) #0 {
entry:
  %prp.addr = alloca i16*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %rp = alloca i16*, align 8
  %dec = alloca i32, align 4
  %u = alloca %union.anon.0, align 8
  store i16* %prp, i16** %prp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  store i16* %1, i16** %rp, align 8, !tbaa !1
  %2 = bitcast i32* %dec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %dec, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %do.end.42, %if.end.18, %entry
  %3 = load i16*, i16** %rp, align 8, !tbaa !1
  %4 = load i16, i16* %3, align 2, !tbaa !7
  %conv = zext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i16*, i16** %rp, align 8, !tbaa !1
  %6 = load i16, i16* %5, align 2, !tbaa !7
  %conv2 = zext i16 %6 to i32
  %and = and i32 %conv2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.end
  %7 = load i16*, i16** %rp, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !7
  %conv4 = zext i16 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 28671
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.3
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %9 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  %10 = bitcast i16* %9 to i8*
  %11 = load i16*, i16** %rp, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !7
  %conv11 = zext i16 %12 to i32
  %and12 = and i32 %conv11, 4095
  %idx.ext = sext i32 %and12 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.neg
  %13 = load i32, i32* %dec, align 4, !tbaa !5
  %idx.ext13 = zext i32 %13 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext13
  %14 = bitcast i8* %add.ptr14 to i16*
  store i16* %14, i16** %rp, align 8, !tbaa !1
  br label %for.end

if.end:                                           ; preds = %if.then.3
  %15 = load i32, i32* %dec, align 4, !tbaa !5
  %conv15 = zext i32 %15 to i64
  %add = add i64 %conv15, 8
  %conv16 = trunc i64 %add to i32
  store i32 %conv16, i32* %dec, align 4, !tbaa !5
  %16 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i16, i16* %16, i64 4
  store i16* %add.ptr17, i16** %rp, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %do.end
  %17 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  br label %for.cond

if.end.19:                                        ; preds = %for.cond
  %18 = load i16*, i16** %rp, align 8, !tbaa !1
  %19 = bitcast i16* %18 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %idxprom = zext i8 %21 to i64
  %arrayidx20 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx20, align 1, !tbaa !15
  %conv21 = zext i8 %22 to i32
  %and22 = and i32 %conv21, 6
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.end.39, label %if.then.25

if.then.25:                                       ; preds = %if.end.19
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %23 = load i16*, i16** %rp, align 8, !tbaa !1
  %24 = bitcast i16* %23 to %struct.ref_s*
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  %25 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp30 = icmp eq i32 %25, 0
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.28
  %26 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %do.end.28
  %27 = load i16*, i16** %prp.addr, align 8, !tbaa !1
  %28 = bitcast i16* %27 to i8*
  %29 = load i16*, i16** %rp, align 8, !tbaa !1
  %30 = bitcast i16* %29 to %struct.ref_s*
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  %31 = load i32, i32* %rsize33, align 4, !tbaa !33
  %idx.ext34 = zext i32 %31 to i64
  %idx.neg35 = sub i64 0, %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, i8* %28, i64 %idx.neg35
  %32 = load i32, i32* %dec, align 4, !tbaa !5
  %idx.ext37 = zext i32 %32 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr36, i64 %idx.ext37
  %33 = bitcast i8* %add.ptr38 to i16*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %26, %cond.true ], [ %33, %cond.false ]
  store i16* %cond, i16** %rp, align 8, !tbaa !1
  br label %for.end

if.end.39:                                        ; preds = %if.end.19
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %34 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i16, i16* %34, i64 8
  store i16* %add.ptr43, i16** %rp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cond.end, %do.end.10
  %35 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i16*, i16** %rp, align 8, !tbaa !1
  %r = bitcast %union.anon.0* %u to i16**
  store i16* %36, i16** %r, align 8, !tbaa !1
  %w = bitcast %union.anon.0* %u to i16**
  %37 = load i16*, i16** %w, align 8, !tbaa !1
  %38 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %dec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret i16* %37
}

; Function Attrs: nounwind uwtable
define internal void @refs_clear_reloc(%struct.obj_header_s* %hdr, i32 %size) #0 {
entry:
  %hdr.addr = alloca %struct.obj_header_s*, align 8
  %size.addr = alloca i32, align 4
  %rp = alloca i16*, align 8
  %end = alloca i16*, align 8
  %pref = alloca %struct.ref_s*, align 8
  store %struct.obj_header_s* %hdr, %struct.obj_header_s** %hdr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.obj_header_s*, %struct.obj_header_s** %hdr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %1, i64 1
  %2 = bitcast %struct.obj_header_s* %add.ptr to i16*
  store i16* %2, i16** %rp, align 8, !tbaa !1
  %3 = bitcast i16** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i16*, i16** %rp, align 8, !tbaa !1
  %5 = bitcast i16* %4 to i8*
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %6 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = bitcast i8* %add.ptr1 to i16*
  store i16* %7, i16** %end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %8 = load i16*, i16** %rp, align 8, !tbaa !1
  %9 = load i16*, i16** %end, align 8, !tbaa !1
  %cmp = icmp ult i16* %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %rp, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !7
  %conv = zext i16 %11 to i32
  %cmp2 = icmp sge i32 %conv, 16384
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %12, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %13 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i16*, i16** %rp, align 8, !tbaa !1
  %15 = bitcast i16* %14 to %struct.ref_s*
  store %struct.ref_s* %15, %struct.ref_s** %pref, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %idxprom = zext i8 %18 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx4, align 1, !tbaa !15
  %conv5 = zext i8 %19 to i32
  %and = and i32 %conv5, 6
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else
  %21 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i16, i16* %21, i64 8
  store i16* %add.ptr10, i16** %rp, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = bitcast i16** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @refs_set_reloc(%struct.obj_header_s* %hdr, i32 %reloc, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca %struct.obj_header_s*, align 8
  %reloc.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %rp = alloca i16*, align 8
  %end = alloca i16*, align 8
  %freed = alloca i32, align 4
  %i = alloca i32, align 4
  %rel = alloca i32, align 4
  %rel34 = alloca i32, align 4
  %pref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pref97 = alloca %struct.ref_s*, align 8
  store %struct.obj_header_s* %hdr, %struct.obj_header_s** %hdr.addr, align 8, !tbaa !1
  store i32 %reloc, i32* %reloc.addr, align 4, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.obj_header_s*, %struct.obj_header_s** %hdr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %1, i64 1
  %2 = bitcast %struct.obj_header_s* %add.ptr to i16*
  store i16* %2, i16** %rp, align 8, !tbaa !1
  %3 = bitcast i16** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i16*, i16** %rp, align 8, !tbaa !1
  %5 = bitcast i16* %4 to i8*
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %6 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = bitcast i8* %add.ptr1 to i16*
  store i16* %7, i16** %end, align 8, !tbaa !1
  %8 = bitcast i32* %freed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %freed, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %9 = load i16*, i16** %rp, align 8, !tbaa !1
  %10 = load i16*, i16** %end, align 8, !tbaa !1
  %cmp = icmp ult i16* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i16*, i16** %rp, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !7
  %conv = zext i16 %12 to i32
  %cmp2 = icmp sge i32 %conv, 16384
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i16*, i16** %rp, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !7
  %conv4 = zext i16 %15 to i32
  %and = and i32 %conv4, 4096
  %16 = load i16*, i16** %rp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 1
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %conv5 = zext i16 %17 to i32
  %and6 = and i32 %conv5, 4096
  %add = add nsw i32 %and, %and6
  %18 = load i16*, i16** %rp, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %18, i64 2
  %19 = load i16, i16* %arrayidx7, align 2, !tbaa !7
  %conv8 = zext i16 %19 to i32
  %and9 = and i32 %conv8, 4096
  %add10 = add nsw i32 %add, %and9
  %20 = load i16*, i16** %rp, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %20, i64 3
  %21 = load i16, i16* %arrayidx11, align 2, !tbaa !7
  %conv12 = zext i16 %21 to i32
  %and13 = and i32 %conv12, 4096
  %add14 = add nsw i32 %add10, %and13
  switch i32 %add14, label %sw.default [
    i32 16384, label %sw.bb
    i32 0, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i16, i16* %22, i64 4
  store i16* %add.ptr15, i16** %rp, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i16*, i16** %rp, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !7
  %conv16 = zext i16 %25 to i32
  %or = or i32 %conv16, 4096
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %24, align 2, !tbaa !7
  br label %do.body.18

do.body.18:                                       ; preds = %for.body
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %for.inc

for.inc:                                          ; preds = %do.end.20
  %26 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then
  br label %do.body.22

do.body.22:                                       ; preds = %sw.bb.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %27 = bitcast i32* %rel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %reloc.addr, align 4, !tbaa !5
  %29 = load i32, i32* %freed, align 4, !tbaa !5
  %add25 = add i32 %28, %29
  store i32 %add25, i32* %rel, align 4, !tbaa !5
  %30 = load i32, i32* %rel, align 4, !tbaa !5
  %cmp26 = icmp ult i32 %30, 4095
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.24
  %31 = load i32, i32* %rel, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %do.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 4095, %cond.false ]
  %add28 = add i32 24576, %cond
  %conv29 = trunc i32 %add28 to i16
  %32 = load i16*, i16** %rp, align 8, !tbaa !1
  store i16 %conv29, i16* %32, align 2, !tbaa !7
  %33 = bitcast i32* %rel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i16, i16* %34, i64 4
  store i16* %add.ptr30, i16** %rp, align 8, !tbaa !1
  %35 = load i32, i32* %freed, align 4, !tbaa !5
  %conv31 = zext i32 %35 to i64
  %add32 = add i64 %conv31, 8
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %freed, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %for.end, %do.end
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %if.end.69

if.else:                                          ; preds = %while.body
  %37 = bitcast i32* %rel34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %reloc.addr, align 4, !tbaa !5
  %39 = load i32, i32* %freed, align 4, !tbaa !5
  %add35 = add i32 %38, %39
  store i32 %add35, i32* %rel34, align 4, !tbaa !5
  %40 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i16*, i16** %rp, align 8, !tbaa !1
  %42 = bitcast i16* %41 to %struct.ref_s*
  store %struct.ref_s* %42, %struct.ref_s** %pref, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %44 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv36 = zext i16 %44 to i32
  %and37 = and i32 %conv36, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.else.49, label %if.then.39

if.then.39:                                       ; preds = %if.else
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %45 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  store i16 3072, i16* %type_attrs44, align 2, !tbaa !9
  %46 = load i32, i32* %rel34, align 4, !tbaa !5
  %47 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 2
  store i32 %46, i32* %rsize, align 4, !tbaa !33
  %48 = load i32, i32* %freed, align 4, !tbaa !5
  %conv46 = zext i32 %48 to i64
  %add47 = add i64 %conv46, 16
  %conv48 = trunc i64 %add47 to i32
  store i32 %conv48, i32* %freed, align 4, !tbaa !5
  br label %if.end.67

if.else.49:                                       ; preds = %if.else
  br label %do.body.50

do.body.50:                                       ; preds = %if.else.49
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %49 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  %50 = bitcast i16* %type_attrs54 to i8*
  %arrayidx55 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx55, align 1, !tbaa !15
  %idxprom = zext i8 %51 to i64
  %arrayidx56 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom
  %52 = load i8, i8* %arrayidx56, align 1, !tbaa !15
  %conv57 = zext i8 %52 to i32
  %and58 = and i32 %conv57, 6
  %cmp59 = icmp ne i32 %and58, 0
  br i1 %cmp59, label %if.end, label %if.then.61

if.then.61:                                       ; preds = %do.end.52
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  %53 = load i32, i32* %rel34, align 4, !tbaa !5
  %54 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %rsize66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 2
  store i32 %53, i32* %rsize66, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %do.end.64, %do.end.52
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %do.end.42
  %55 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds i16, i16* %55, i64 8
  store i16* %add.ptr68, i16** %rp, align 8, !tbaa !1
  %56 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %rel34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.67, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.70

do.body.70:                                       ; preds = %while.end
  br label %do.cond.71

do.cond.71:                                       ; preds = %do.body.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  %58 = load i32, i32* %freed, align 4, !tbaa !5
  %59 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp73 = icmp eq i32 %58, %59
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.end.72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %do.end.72
  %60 = load i32, i32* %freed, align 4, !tbaa !5
  %cmp77 = icmp ule i32 %60, 65535
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.end.76
  %61 = load %struct.obj_header_s*, %struct.obj_header_s** %hdr.addr, align 8, !tbaa !1
  %add.ptr81 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %61, i64 1
  %62 = bitcast %struct.obj_header_s* %add.ptr81 to i16*
  store i16* %62, i16** %rp, align 8, !tbaa !1
  br label %while.cond.82

while.cond.82:                                    ; preds = %if.end.124, %if.end.80
  %63 = load i16*, i16** %rp, align 8, !tbaa !1
  %64 = load i16*, i16** %end, align 8, !tbaa !1
  %cmp83 = icmp ult i16* %63, %64
  br i1 %cmp83, label %while.body.85, label %while.end.125

while.body.85:                                    ; preds = %while.cond.82
  %65 = load i16*, i16** %rp, align 8, !tbaa !1
  %66 = load i16, i16* %65, align 2, !tbaa !7
  %conv86 = zext i16 %66 to i32
  %cmp87 = icmp sge i32 %conv86, 16384
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %while.body.85
  %67 = load i16*, i16** %rp, align 8, !tbaa !1
  %68 = load i16, i16* %67, align 2, !tbaa !7
  %conv90 = zext i16 %68 to i32
  %and91 = and i32 %conv90, 4096
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.89
  %69 = load i16*, i16** %rp, align 8, !tbaa !1
  store i16 28672, i16* %69, align 2, !tbaa !7
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.89
  %70 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %incdec.ptr95, i16** %rp, align 8, !tbaa !1
  br label %if.end.124

if.else.96:                                       ; preds = %while.body.85
  %71 = bitcast %struct.ref_s** %pref97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i16*, i16** %rp, align 8, !tbaa !1
  %73 = bitcast i16* %72 to %struct.ref_s*
  store %struct.ref_s* %73, %struct.ref_s** %pref97, align 8, !tbaa !1
  %74 = load %struct.ref_s*, %struct.ref_s** %pref97, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 0
  %75 = load i16, i16* %type_attrs99, align 2, !tbaa !9
  %conv100 = zext i16 %75 to i32
  %and101 = and i32 %conv100, 1
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.else.108, label %if.then.103

if.then.103:                                      ; preds = %if.else.96
  %76 = load %struct.ref_s*, %struct.ref_s** %pref97, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  store i16 3073, i16* %type_attrs105, align 2, !tbaa !9
  %77 = load i32, i32* %reloc.addr, align 4, !tbaa !5
  %78 = load %struct.ref_s*, %struct.ref_s** %pref97, align 8, !tbaa !1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %rsize107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 2
  store i32 %77, i32* %rsize107, align 4, !tbaa !33
  br label %if.end.122

if.else.108:                                      ; preds = %if.else.96
  %79 = load %struct.ref_s*, %struct.ref_s** %pref97, align 8, !tbaa !1
  %tas109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %type_attrs110 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas109, i32 0, i32 0
  %80 = bitcast i16* %type_attrs110 to i8*
  %arrayidx111 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx111, align 1, !tbaa !15
  %idxprom112 = zext i8 %81 to i64
  %arrayidx113 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom112
  %82 = load i8, i8* %arrayidx113, align 1, !tbaa !15
  %conv114 = zext i8 %82 to i32
  %and115 = and i32 %conv114, 6
  %cmp116 = icmp ne i32 %and115, 0
  br i1 %cmp116, label %if.end.121, label %if.then.118

if.then.118:                                      ; preds = %if.else.108
  %83 = load i32, i32* %reloc.addr, align 4, !tbaa !5
  %84 = load %struct.ref_s*, %struct.ref_s** %pref97, align 8, !tbaa !1
  %tas119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %rsize120 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas119, i32 0, i32 2
  store i32 %83, i32* %rsize120, align 4, !tbaa !33
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %if.else.108
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.103
  %85 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i16, i16* %85, i64 8
  store i16* %add.ptr123, i16** %rp, align 8, !tbaa !1
  %86 = bitcast %struct.ref_s** %pref97 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.122, %if.end.94
  br label %while.cond.82

while.end.125:                                    ; preds = %while.cond.82
  %87 = load i16*, i16** %rp, align 8, !tbaa !1
  %88 = bitcast i16* %87 to %struct.ref_s*
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -1
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr126, i32 0, i32 0
  %type_attrs128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 0
  %89 = load i16, i16* %type_attrs128, align 2, !tbaa !9
  %conv129 = zext i16 %89 to i32
  %and130 = and i32 %conv129, -2
  %conv131 = trunc i32 %and130 to i16
  store i16 %conv131, i16* %type_attrs128, align 2, !tbaa !9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.125, %if.then.79, %if.then.75
  %90 = bitcast i32* %freed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i16** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal void @refs_compact(%struct.gs_memory_s* %mem, %struct.obj_header_s* %pre, %struct.obj_header_s* %dpre, i32 %size) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pre.addr = alloca %struct.obj_header_s*, align 8
  %dpre.addr = alloca %struct.obj_header_s*, align 8
  %size.addr = alloca i32, align 4
  %dest = alloca i16*, align 8
  %src = alloca i16*, align 8
  %end = alloca i16*, align 8
  %new_size = alloca i32, align 4
  %pref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rtemp = alloca %struct.ref_s, align 8
  %pfree = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.obj_header_s* %pre, %struct.obj_header_s** %pre.addr, align 8, !tbaa !1
  store %struct.obj_header_s* %dpre, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i16** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i16** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i16** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pre.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %4, i64 1
  %5 = bitcast %struct.obj_header_s* %add.ptr to i16*
  store i16* %5, i16** %src, align 8, !tbaa !1
  %6 = load i16*, i16** %src, align 8, !tbaa !1
  %7 = bitcast i16* %6 to i8*
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %8 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = bitcast i8* %add.ptr1 to i16*
  store i16* %9, i16** %end, align 8, !tbaa !1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %pre.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.obj_header_s* %10, %11
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %if.then
  %12 = load i16*, i16** %src, align 8, !tbaa !1
  %13 = load i16, i16* %12, align 2, !tbaa !7
  %conv = zext i16 %13 to i32
  %cmp2 = icmp sge i32 %conv, 16384
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.cond
  %14 = load i16*, i16** %src, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !7
  %conv5 = zext i16 %15 to i32
  %and = and i32 %conv5, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  br label %for.end

if.end:                                           ; preds = %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i16*, i16** %src, align 8, !tbaa !1
  %17 = load i16, i16* %16, align 2, !tbaa !7
  %conv7 = zext i16 %17 to i32
  %and8 = and i32 %conv7, -4097
  %conv9 = trunc i32 %and8 to i16
  store i16 %conv9, i16* %16, align 2, !tbaa !7
  %18 = load i16*, i16** %src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %src, align 8, !tbaa !1
  br label %if.end.24

if.else:                                          ; preds = %for.cond
  %19 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i16*, i16** %src, align 8, !tbaa !1
  %21 = bitcast i16* %20 to %struct.ref_s*
  store %struct.ref_s* %21, %struct.ref_s** %pref, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %23 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv10 = zext i16 %23 to i32
  %and11 = and i32 %conv10, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.else
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %24 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %25 = load i16, i16* %type_attrs19, align 2, !tbaa !9
  %conv20 = zext i16 %25 to i32
  %and21 = and i32 %conv20, -2
  %conv22 = trunc i32 %and21 to i16
  store i16 %conv22, i16* %type_attrs19, align 2, !tbaa !9
  %26 = load i16*, i16** %src, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i16, i16* %26, i64 8
  store i16* %add.ptr23, i16** %src, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.17, %if.then.13
  %27 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %do.end
  br label %for.cond

for.end:                                          ; preds = %cleanup, %if.then.6
  br label %if.end.26

if.else.25:                                       ; preds = %entry
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  %29 = load %struct.obj_header_s*, %struct.obj_header_s** %pre.addr, align 8, !tbaa !1
  %30 = bitcast %struct.obj_header_s* %28 to i8*
  %31 = bitcast %struct.obj_header_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false), !tbaa.struct !42
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %for.end
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  %33 = bitcast %struct.obj_header_s* %32 to i8*
  %34 = load i16*, i16** %src, align 8, !tbaa !1
  %35 = bitcast i16* %34 to i8*
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %pre.addr, align 8, !tbaa !1
  %37 = bitcast %struct.obj_header_s* %36 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr27 = getelementptr inbounds i8, i8* %33, i64 %sub.ptr.sub
  %38 = bitcast i8* %add.ptr27 to i16*
  store i16* %38, i16** %dest, align 8, !tbaa !1
  br label %for.cond.28

for.cond.28:                                      ; preds = %if.end.70, %if.end.26
  %39 = load i16*, i16** %src, align 8, !tbaa !1
  %40 = load i16, i16* %39, align 2, !tbaa !7
  %conv29 = zext i16 %40 to i32
  %cmp30 = icmp sge i32 %conv29, 16384
  br i1 %cmp30, label %if.then.32, label %if.else.46

if.then.32:                                       ; preds = %for.cond.28
  %41 = load i16*, i16** %src, align 8, !tbaa !1
  %42 = load i16, i16* %41, align 2, !tbaa !7
  %conv33 = zext i16 %42 to i32
  %and34 = and i32 %conv33, 4096
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.then.32
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %43 = load i16*, i16** %src, align 8, !tbaa !1
  %44 = load i16, i16* %43, align 2, !tbaa !7
  %conv40 = zext i16 %44 to i32
  %and41 = and i32 %conv40, -4097
  %conv42 = trunc i32 %and41 to i16
  %45 = load i16*, i16** %dest, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %incdec.ptr43, i16** %dest, align 8, !tbaa !1
  store i16 %conv42, i16* %45, align 2, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.39, %if.then.32
  %46 = load i16*, i16** %src, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %incdec.ptr45, i16** %src, align 8, !tbaa !1
  br label %if.end.70

if.else.46:                                       ; preds = %for.cond.28
  %47 = load i16*, i16** %src, align 8, !tbaa !1
  %48 = bitcast i16* %47 to %struct.ref_s*
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  %49 = load i16, i16* %type_attrs48, align 2, !tbaa !9
  %conv49 = zext i16 %49 to i32
  %and50 = and i32 %conv49, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.63

if.then.52:                                       ; preds = %if.else.46
  %50 = bitcast %struct.ref_s* %rtemp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  %51 = load i16*, i16** %src, align 8, !tbaa !1
  %52 = bitcast i16* %51 to %struct.ref_s*
  %53 = bitcast %struct.ref_s* %rtemp to i8*
  %54 = bitcast %struct.ref_s* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !44
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rtemp, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %55 = load i16, i16* %type_attrs57, align 2, !tbaa !9
  %conv58 = zext i16 %55 to i32
  %and59 = and i32 %conv58, -2
  %conv60 = trunc i32 %and59 to i16
  store i16 %conv60, i16* %type_attrs57, align 2, !tbaa !9
  %56 = load i16*, i16** %dest, align 8, !tbaa !1
  %57 = bitcast i16* %56 to %struct.ref_s*
  %58 = bitcast %struct.ref_s* %57 to i8*
  %59 = bitcast %struct.ref_s* %rtemp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false), !tbaa.struct !44
  %60 = load i16*, i16** %src, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i16, i16* %60, i64 8
  store i16* %add.ptr61, i16** %src, align 8, !tbaa !1
  %61 = load i16*, i16** %dest, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i16, i16* %61, i64 8
  store i16* %add.ptr62, i16** %dest, align 8, !tbaa !1
  %62 = bitcast %struct.ref_s* %rtemp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  br label %if.end.69

if.else.63:                                       ; preds = %if.else.46
  %63 = load i16*, i16** %src, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i16, i16* %63, i64 8
  store i16* %add.ptr64, i16** %src, align 8, !tbaa !1
  %64 = load i16*, i16** %src, align 8, !tbaa !1
  %65 = load i16*, i16** %end, align 8, !tbaa !1
  %cmp65 = icmp uge i16* %64, %65
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.63
  br label %for.end.71

if.end.68:                                        ; preds = %if.else.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.end.55
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.44
  br label %for.cond.28

for.end.71:                                       ; preds = %if.then.67
  %66 = load i16*, i16** %dest, align 8, !tbaa !1
  %67 = bitcast i16* %66 to i8*
  %68 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %68, i64 1
  %69 = bitcast %struct.obj_header_s* %add.ptr72 to i8*
  %sub.ptr.lhs.cast73 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %69 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %add = add i64 %sub.ptr.sub75, 16
  %conv76 = trunc i64 %add to i32
  store i32 %conv76, i32* %new_size, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.71
  %70 = load i32, i32* %new_size, align 4, !tbaa !5
  %conv77 = zext i32 %70 to i64
  %rem = urem i64 %conv77, 16
  %tobool78 = icmp ne i64 %rem, 0
  br i1 %tobool78, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i16*, i16** %dest, align 8, !tbaa !1
  %incdec.ptr79 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %incdec.ptr79, i16** %dest, align 8, !tbaa !1
  store i16 24576, i16* %71, align 2, !tbaa !7
  %72 = load i32, i32* %new_size, align 4, !tbaa !5
  %conv80 = zext i32 %72 to i64
  %add81 = add i64 %conv80, 2
  %conv82 = trunc i64 %add81 to i32
  store i32 %conv82, i32* %new_size, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load i32, i32* %size.addr, align 4, !tbaa !5
  %74 = load i32, i32* %new_size, align 4, !tbaa !5
  %sub = sub i32 %73, %74
  %conv83 = zext i32 %sub to i64
  %cmp84 = icmp ult i64 %conv83, 24
  br i1 %cmp84, label %if.then.86, label %if.else.96

if.then.86:                                       ; preds = %while.end
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %if.then.86
  %75 = load i32, i32* %new_size, align 4, !tbaa !5
  %76 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp88 = icmp ult i32 %75, %76
  br i1 %cmp88, label %while.body.90, label %while.end.95

while.body.90:                                    ; preds = %while.cond.87
  %77 = load i16*, i16** %dest, align 8, !tbaa !1
  %incdec.ptr91 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr91, i16** %dest, align 8, !tbaa !1
  store i16 24576, i16* %77, align 2, !tbaa !7
  %78 = load i32, i32* %new_size, align 4, !tbaa !5
  %conv92 = zext i32 %78 to i64
  %add93 = add i64 %conv92, 2
  %conv94 = trunc i64 %add93 to i32
  store i32 %conv94, i32* %new_size, align 4, !tbaa !5
  br label %while.cond.87

while.end.95:                                     ; preds = %while.cond.87
  br label %if.end.113

if.else.96:                                       ; preds = %while.end
  %79 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i16*, i16** %dest, align 8, !tbaa !1
  %81 = bitcast i16* %80 to %struct.ref_s*
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 1
  %82 = bitcast %struct.ref_s* %add.ptr97 to %struct.obj_header_s*
  store %struct.obj_header_s* %82, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %83 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %83, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %84 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %84, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %84, align 4
  %85 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d98 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %85, i32 0, i32 0
  %o99 = bitcast %union._d* %d98 to %struct.obj_header_data_s*
  %f100 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o99, i32 0, i32 0
  %h101 = bitcast %union._f* %f100 to %struct._h*
  %86 = bitcast %struct._h* %h101 to i32*
  %bf.load102 = load i32, i32* %86, align 4
  %bf.clear103 = and i32 %bf.load102, -2
  store i32 %bf.clear103, i32* %86, align 4
  %87 = load i32, i32* %size.addr, align 4, !tbaa !5
  %88 = load i32, i32* %new_size, align 4, !tbaa !5
  %sub104 = sub i32 %87, %88
  %conv105 = zext i32 %sub104 to i64
  %sub106 = sub i64 %conv105, 24
  %conv107 = trunc i64 %sub106 to i32
  %89 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d108 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %89, i32 0, i32 0
  %o109 = bitcast %union._d* %d108 to %struct.obj_header_data_s*
  %size110 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o109, i32 0, i32 1
  store i32 %conv107, i32* %size110, align 4, !tbaa !47
  %90 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d111 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %90, i32 0, i32 0
  %o112 = bitcast %union._d* %d111 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o112, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %91 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.96, %while.end.95
  %92 = load i16*, i16** %dest, align 8, !tbaa !1
  %93 = bitcast i16* %92 to %struct.ref_s*
  %tas114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 0
  %type_attrs115 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas114, i32 0, i32 0
  store i16 2816, i16* %type_attrs115, align 2, !tbaa !9
  %94 = load i32, i32* %new_size, align 4, !tbaa !5
  %95 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre.addr, align 8, !tbaa !1
  %d116 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %95, i32 0, i32 0
  %o117 = bitcast %union._d* %d116 to %struct.obj_header_data_s*
  %size118 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o117, i32 0, i32 1
  store i32 %94, i32* %size118, align 4, !tbaa !47
  %96 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i16** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i16** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i16** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

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
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !8, i64 0, !8, i64 2, !6, i64 4}
!12 = !{!13, !2, i64 0}
!13 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!14 = !{i64 0, i64 8, !1, i64 8, i64 32, !15, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !2, i64 8}
!17 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_ref_memory_s", !2, i64 0, !20, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !21, i64 232, !6, i64 272, !22, i64 280, !2, i64 288, !2, i64 296, !23, i64 304, !2, i64 488, !24, i64 496, !22, i64 512, !22, i64 520, !25, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !22, i64 624, !22, i64 632, !2, i64 640, !26, i64 648, !6, i64 672, !3, i64 680}
!20 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!21 = !{!"gs_memory_gc_status_s", !22, i64 0, !22, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !22, i64 32}
!22 = !{!"long", !3, i64 0}
!23 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!24 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!25 = !{!"lost_", !22, i64 0, !22, i64 8, !22, i64 16}
!26 = !{!"gs_memory_status_s", !22, i64 0, !22, i64 8, !6, i64 16}
!27 = !{!28, !6, i64 64}
!28 = !{!"gc_state_s", !2, i64 0, !24, i64 8, !29, i64 24, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80, !2, i64 88}
!29 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!30 = !{!28, !6, i64 68}
!31 = !{!32, !2, i64 0}
!32 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!33 = !{!10, !6, i64 4}
!34 = !{!35, !2, i64 192}
!35 = !{!"gs_memory_s", !2, i64 0, !20, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!37, !2, i64 120}
!37 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !22, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!40 = !{!39, !6, i64 8}
!41 = !{!32, !2, i64 8}
!42 = !{i64 0, i64 4, !5, i64 0, i64 4, !5, i64 0, i64 4, !5, i64 0, i64 4, !5, i64 0, i64 4, !5, i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 0, i64 24, !15}
!43 = !{!22, !22, i64 0}
!44 = !{i64 0, i64 2, !7, i64 2, i64 2, !7, i64 4, i64 4, !5, i64 8, i64 8, !43, i64 8, i64 2, !7, i64 8, i64 4, !45, i64 8, i64 8, !43, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !43}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !3, i64 0}
!47 = !{!48, !6, i64 4}
!48 = !{!"obj_header_data_s", !3, i64 0, !6, i64 4, !3, i64 8, !22, i64 16}
