; ModuleID = './gsnogc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_spaces_s = type { {}*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.stream_s = type opaque
%struct.ref_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type opaque
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }

; Function Attrs: nounwind uwtable
define void @gs_nogc_reclaim(%struct.vm_spaces_s* %pspaces, i32 %global) #0 {
entry:
  %pspaces.addr = alloca %struct.vm_spaces_s*, align 8
  %global.addr = alloca i32, align 4
  %space = alloca i32, align 4
  %mem_prev = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.vm_spaces_s* %pspaces, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  %0 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %mem_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %mem_prev, align 8, !tbaa !1
  store i32 0, i32* %space, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %space, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %space, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.vm_spaces_s*, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %5, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_ref_memory_s* %7, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_prev, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_ref_memory_s* %8, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %10, %struct.gs_ref_memory_s** %mem_prev, align 8, !tbaa !1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @set_procs(%struct.gs_ref_memory_s* %11) #2
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %consolidate_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 6
  %14 = load void (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*)** %consolidate_free, align 8, !tbaa !7
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  call void %14(%struct.gs_memory_s* %16) #2
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !10
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %cmp6 = icmp ne %struct.gs_memory_s* %18, %20
  br i1 %cmp6, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory8, align 8, !tbaa !10
  %cmp9 = icmp ne %struct.gs_memory_s* %22, null
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory12 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 0
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory12, align 8, !tbaa !10
  %25 = bitcast %struct.gs_memory_s* %24 to %struct.gs_ref_memory_s*
  call void @set_procs(%struct.gs_ref_memory_s* %25) #2
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory13, align 8, !tbaa !10
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %consolidate_free15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 6
  %28 = load void (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*)** %consolidate_free15, align 8, !tbaa !7
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory16, align 8, !tbaa !10
  call void %28(%struct.gs_memory_s* %30) #2
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %31 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %32 = load i32, i32* %space, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %space, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast %struct.gs_ref_memory_s** %mem_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @set_procs(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  store i8* (%struct.gs_memory_s*, i32, i8*)* @nogc_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !18
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 19
  store void (%struct.gs_memory_s*, i8*, i32, i8*)* @nogc_free_string, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !19
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 18
  store i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @nogc_resize_string, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !20
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 1
  %alloc_string_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 17
  store i8* (%struct.gs_memory_s*, i32, i8*)* @nogc_alloc_string_immovable, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string_immovable, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i8* @nogc_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %1 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !22
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, i32 %3, i8* %4) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @nogc_free_string(%struct.gs_memory_s* %mem, i8* %str, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %3, i8* %4) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @nogc_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !5
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 1
  %1 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !24
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, i8* %3, i32 %4, i8* %5) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @nogc_alloc_string_immovable(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %1 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !22
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, i32 %3, i8* %4) #2
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 56}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !2, i64 0}
!11 = !{!"gs_ref_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !12, i64 232, !6, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !14, i64 304, !2, i64 488, !15, i64 496, !13, i64 512, !13, i64 520, !16, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !17, i64 648, !6, i64 672, !3, i64 680}
!12 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !13, i64 32}
!13 = !{!"long", !3, i64 0}
!14 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!15 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!16 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!17 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !6, i64 16}
!18 = !{!11, !2, i64 136}
!19 = !{!11, !2, i64 160}
!20 = !{!11, !2, i64 152}
!21 = !{!11, !2, i64 144}
!22 = !{!8, !2, i64 64}
!23 = !{!8, !2, i64 24}
!24 = !{!8, !2, i64 16}
