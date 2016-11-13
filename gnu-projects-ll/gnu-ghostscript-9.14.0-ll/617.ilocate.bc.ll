; ModuleID = './ilocate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gc_state_s = type { %struct.gc_procs_with_refs_s*, %struct.chunk_locator_s, %struct.vm_spaces_s, i32, i32, %struct.gs_memory_s*, %struct.name_table_s*, %struct.gs_memory_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type { %struct.gs_ref_memory_s, %struct.vm_spaces_s, i32, i32, i64, i8* }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.chunk_s* @gc_locate(i8* %ptr, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.chunk_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %other = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %other to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %2, i32 0, i32 1
  %cp = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc, i32 0, i32 1
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !5
  %cmp = icmp ne %struct.chunk_s* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc1 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %5, i32 0, i32 1
  %cp2 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc1, i32 0, i32 1
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cp2, align 8, !tbaa !5
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %cbase, align 8, !tbaa !7
  %cmp3 = icmp uge i8* %4, %7
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc5 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %9, i32 0, i32 1
  %cp6 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc5, i32 0, i32 1
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp6, align 8, !tbaa !5
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %10, i32 0, i32 8
  %11 = load i8*, i8** %cend, align 8, !tbaa !10
  %cmp7 = icmp ult i8* %8, %11
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc9 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %12, i32 0, i32 1
  %cp10 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc9, i32 0, i32 1
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp10, align 8, !tbaa !5
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 12
  %14 = load i32, i32* %inner_count, align 4, !tbaa !11
  %cmp11 = icmp ne i32 %14, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.then

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %15 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc13 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %16, i32 0, i32 1
  %cp14 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc13, i32 0, i32 1
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp14, align 8, !tbaa !5
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %17, i32 0, i32 3
  %18 = load i8*, i8** %cbot, align 8, !tbaa !12
  %cmp15 = icmp uge i8* %15, %18
  br i1 %cmp15, label %land.lhs.true.16, label %if.then

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %19 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc17 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %20, i32 0, i32 1
  %cp18 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc17, i32 0, i32 1
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp18, align 8, !tbaa !5
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 6
  %22 = load i8*, i8** %ctop, align 8, !tbaa !13
  %cmp19 = icmp ult i8* %19, %22
  br i1 %cmp19, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.16, %land.lhs.true.4, %land.lhs.true, %entry
  %23 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc20 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %24, i32 0, i32 1
  %call = call i32 @chunk_locate_ptr(i8* %23, %struct.chunk_locator_s* %loc20) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true.8
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc21 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %25, i32 0, i32 1
  %cp22 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc21, i32 0, i32 1
  %26 = load %struct.chunk_s*, %struct.chunk_s** %cp22, align 8, !tbaa !14
  store %struct.chunk_s* %26, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc23 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %27, i32 0, i32 1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc23, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !17
  store %struct.gs_ref_memory_s* %28, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !18
  %31 = bitcast %struct.gs_memory_s* %30 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %31, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.gs_ref_memory_s* %31, %32
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 7
  %34 = load i32, i32* %space, align 4, !tbaa !25
  %shr = lshr i32 %34, 2
  %idxprom = zext i32 %shr to i64
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %35, i32 0, i32 2
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %36, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.gs_ref_memory_s* %36, %37
  br i1 %cmp26, label %if.then.27, label %if.end.68

if.then.27:                                       ; preds = %lor.lhs.false.25, %if.end
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc28 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %39, i32 0, i32 1
  %memory29 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc28, i32 0, i32 0
  store %struct.gs_ref_memory_s* %38, %struct.gs_ref_memory_s** %memory29, align 8, !tbaa !17
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc30 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %40, i32 0, i32 1
  %cp31 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc30, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp31, align 8, !tbaa !14
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc32 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %41, i32 0, i32 1
  %cp33 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc32, i32 0, i32 1
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp33, align 8, !tbaa !5
  %cmp34 = icmp ne %struct.chunk_s* %42, null
  br i1 %cmp34, label %land.lhs.true.35, label %lor.lhs.false.60

land.lhs.true.35:                                 ; preds = %if.then.27
  %43 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %44 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc36 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %44, i32 0, i32 1
  %cp37 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc36, i32 0, i32 1
  %45 = load %struct.chunk_s*, %struct.chunk_s** %cp37, align 8, !tbaa !5
  %cbase38 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %45, i32 0, i32 1
  %46 = load i8*, i8** %cbase38, align 8, !tbaa !7
  %cmp39 = icmp uge i8* %43, %46
  br i1 %cmp39, label %land.lhs.true.40, label %lor.lhs.false.60

land.lhs.true.40:                                 ; preds = %land.lhs.true.35
  %47 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %48 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc41 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %48, i32 0, i32 1
  %cp42 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc41, i32 0, i32 1
  %49 = load %struct.chunk_s*, %struct.chunk_s** %cp42, align 8, !tbaa !5
  %cend43 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %49, i32 0, i32 8
  %50 = load i8*, i8** %cend43, align 8, !tbaa !10
  %cmp44 = icmp ult i8* %47, %50
  br i1 %cmp44, label %land.lhs.true.45, label %lor.lhs.false.60

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc46 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %51, i32 0, i32 1
  %cp47 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc46, i32 0, i32 1
  %52 = load %struct.chunk_s*, %struct.chunk_s** %cp47, align 8, !tbaa !5
  %inner_count48 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %52, i32 0, i32 12
  %53 = load i32, i32* %inner_count48, align 4, !tbaa !11
  %cmp49 = icmp ne i32 %53, 0
  br i1 %cmp49, label %land.lhs.true.50, label %if.then.64

land.lhs.true.50:                                 ; preds = %land.lhs.true.45
  %54 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc51 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %55, i32 0, i32 1
  %cp52 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc51, i32 0, i32 1
  %56 = load %struct.chunk_s*, %struct.chunk_s** %cp52, align 8, !tbaa !5
  %cbot53 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %56, i32 0, i32 3
  %57 = load i8*, i8** %cbot53, align 8, !tbaa !12
  %cmp54 = icmp uge i8* %54, %57
  br i1 %cmp54, label %land.lhs.true.55, label %if.then.64

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %58 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc56 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %59, i32 0, i32 1
  %cp57 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc56, i32 0, i32 1
  %60 = load %struct.chunk_s*, %struct.chunk_s** %cp57, align 8, !tbaa !5
  %ctop58 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %60, i32 0, i32 6
  %61 = load i8*, i8** %ctop58, align 8, !tbaa !13
  %cmp59 = icmp ult i8* %58, %61
  br i1 %cmp59, label %lor.lhs.false.60, label %if.then.64

lor.lhs.false.60:                                 ; preds = %land.lhs.true.55, %land.lhs.true.40, %land.lhs.true.35, %if.then.27
  %62 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc61 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %63, i32 0, i32 1
  %call62 = call i32 @chunk_locate_ptr(i8* %62, %struct.chunk_locator_s* %loc61) #3
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %lor.lhs.false.60, %land.lhs.true.55, %land.lhs.true.50, %land.lhs.true.45
  %64 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc65 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %64, i32 0, i32 1
  %cp66 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc65, i32 0, i32 1
  %65 = load %struct.chunk_s*, %struct.chunk_s** %cp66, align 8, !tbaa !14
  store %struct.chunk_s* %65, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %lor.lhs.false.60
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %lor.lhs.false.25
  %66 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces69 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %66, i32 0, i32 2
  %memories70 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces69, i32 0, i32 1
  %named = bitcast %union.anon* %memories70 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !26
  %68 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces71 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %68, i32 0, i32 2
  %memories72 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces71, i32 0, i32 1
  %named73 = bitcast %union.anon* %memories72 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named73, i32 0, i32 2
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !28
  %cmp74 = icmp ne %struct.gs_ref_memory_s* %67, %69
  br i1 %cmp74, label %if.then.75, label %if.end.219

if.then.75:                                       ; preds = %if.end.68
  %70 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space76 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %70, i32 0, i32 7
  %71 = load i32, i32* %space76, align 4, !tbaa !25
  %cmp77 = icmp eq i32 %71, 12
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.75
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces78 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %72, i32 0, i32 2
  %memories79 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces78, i32 0, i32 1
  %named80 = bitcast %union.anon* %memories79 to %struct._ssn*
  %global81 = getelementptr inbounds %struct._ssn, %struct._ssn* %named80, i32 0, i32 2
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global81, align 8, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %if.then.75
  %74 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces82 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %74, i32 0, i32 2
  %memories83 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces82, i32 0, i32 1
  %named84 = bitcast %union.anon* %memories83 to %struct._ssn*
  %local85 = getelementptr inbounds %struct._ssn, %struct._ssn* %named84, i32 0, i32 3
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local85, align 8, !tbaa !26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ref_memory_s* [ %73, %cond.true ], [ %75, %cond.false ]
  store %struct.gs_ref_memory_s* %cond, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %76 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc86 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %76, i32 0, i32 1
  %memory87 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc86, i32 0, i32 0
  store %struct.gs_ref_memory_s* %cond, %struct.gs_ref_memory_s** %memory87, align 8, !tbaa !17
  %77 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc88 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %77, i32 0, i32 1
  %cp89 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc88, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp89, align 8, !tbaa !14
  %78 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc90 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %78, i32 0, i32 1
  %cp91 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc90, i32 0, i32 1
  %79 = load %struct.chunk_s*, %struct.chunk_s** %cp91, align 8, !tbaa !5
  %cmp92 = icmp ne %struct.chunk_s* %79, null
  br i1 %cmp92, label %land.lhs.true.93, label %lor.lhs.false.118

land.lhs.true.93:                                 ; preds = %cond.end
  %80 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %81 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc94 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %81, i32 0, i32 1
  %cp95 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc94, i32 0, i32 1
  %82 = load %struct.chunk_s*, %struct.chunk_s** %cp95, align 8, !tbaa !5
  %cbase96 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %82, i32 0, i32 1
  %83 = load i8*, i8** %cbase96, align 8, !tbaa !7
  %cmp97 = icmp uge i8* %80, %83
  br i1 %cmp97, label %land.lhs.true.98, label %lor.lhs.false.118

land.lhs.true.98:                                 ; preds = %land.lhs.true.93
  %84 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %85 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc99 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %85, i32 0, i32 1
  %cp100 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc99, i32 0, i32 1
  %86 = load %struct.chunk_s*, %struct.chunk_s** %cp100, align 8, !tbaa !5
  %cend101 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %86, i32 0, i32 8
  %87 = load i8*, i8** %cend101, align 8, !tbaa !10
  %cmp102 = icmp ult i8* %84, %87
  br i1 %cmp102, label %land.lhs.true.103, label %lor.lhs.false.118

land.lhs.true.103:                                ; preds = %land.lhs.true.98
  %88 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc104 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %88, i32 0, i32 1
  %cp105 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc104, i32 0, i32 1
  %89 = load %struct.chunk_s*, %struct.chunk_s** %cp105, align 8, !tbaa !5
  %inner_count106 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %89, i32 0, i32 12
  %90 = load i32, i32* %inner_count106, align 4, !tbaa !11
  %cmp107 = icmp ne i32 %90, 0
  br i1 %cmp107, label %land.lhs.true.108, label %if.then.122

land.lhs.true.108:                                ; preds = %land.lhs.true.103
  %91 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %92 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc109 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %92, i32 0, i32 1
  %cp110 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc109, i32 0, i32 1
  %93 = load %struct.chunk_s*, %struct.chunk_s** %cp110, align 8, !tbaa !5
  %cbot111 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %93, i32 0, i32 3
  %94 = load i8*, i8** %cbot111, align 8, !tbaa !12
  %cmp112 = icmp uge i8* %91, %94
  br i1 %cmp112, label %land.lhs.true.113, label %if.then.122

land.lhs.true.113:                                ; preds = %land.lhs.true.108
  %95 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %96 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc114 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %96, i32 0, i32 1
  %cp115 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc114, i32 0, i32 1
  %97 = load %struct.chunk_s*, %struct.chunk_s** %cp115, align 8, !tbaa !5
  %ctop116 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %97, i32 0, i32 6
  %98 = load i8*, i8** %ctop116, align 8, !tbaa !13
  %cmp117 = icmp ult i8* %95, %98
  br i1 %cmp117, label %lor.lhs.false.118, label %if.then.122

lor.lhs.false.118:                                ; preds = %land.lhs.true.113, %land.lhs.true.98, %land.lhs.true.93, %cond.end
  %99 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %100 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc119 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %100, i32 0, i32 1
  %call120 = call i32 @chunk_locate_ptr(i8* %99, %struct.chunk_locator_s* %loc119) #3
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %lor.lhs.false.118, %land.lhs.true.113, %land.lhs.true.108, %land.lhs.true.103
  %101 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc123 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %101, i32 0, i32 1
  %cp124 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc123, i32 0, i32 1
  %102 = load %struct.chunk_s*, %struct.chunk_s** %cp124, align 8, !tbaa !14
  store %struct.chunk_s* %102, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %lor.lhs.false.118
  %103 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %stable_memory126 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %103, i32 0, i32 0
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory126, align 8, !tbaa !18
  %105 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %106 = bitcast %struct.gs_ref_memory_s* %105 to %struct.gs_memory_s*
  %cmp127 = icmp ne %struct.gs_memory_s* %104, %106
  br i1 %cmp127, label %if.then.128, label %if.end.172

if.then.128:                                      ; preds = %if.end.125
  %107 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %stable_memory129 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %107, i32 0, i32 0
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory129, align 8, !tbaa !18
  %109 = bitcast %struct.gs_memory_s* %108 to %struct.gs_ref_memory_s*
  %110 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc130 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %110, i32 0, i32 1
  %memory131 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc130, i32 0, i32 0
  store %struct.gs_ref_memory_s* %109, %struct.gs_ref_memory_s** %memory131, align 8, !tbaa !17
  %111 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc132 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %111, i32 0, i32 1
  %cp133 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc132, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp133, align 8, !tbaa !14
  %112 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc134 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %112, i32 0, i32 1
  %cp135 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc134, i32 0, i32 1
  %113 = load %struct.chunk_s*, %struct.chunk_s** %cp135, align 8, !tbaa !5
  %cmp136 = icmp ne %struct.chunk_s* %113, null
  br i1 %cmp136, label %land.lhs.true.137, label %lor.lhs.false.162

land.lhs.true.137:                                ; preds = %if.then.128
  %114 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %115 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc138 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %115, i32 0, i32 1
  %cp139 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc138, i32 0, i32 1
  %116 = load %struct.chunk_s*, %struct.chunk_s** %cp139, align 8, !tbaa !5
  %cbase140 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %116, i32 0, i32 1
  %117 = load i8*, i8** %cbase140, align 8, !tbaa !7
  %cmp141 = icmp uge i8* %114, %117
  br i1 %cmp141, label %land.lhs.true.142, label %lor.lhs.false.162

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %118 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %119 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc143 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %119, i32 0, i32 1
  %cp144 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc143, i32 0, i32 1
  %120 = load %struct.chunk_s*, %struct.chunk_s** %cp144, align 8, !tbaa !5
  %cend145 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %120, i32 0, i32 8
  %121 = load i8*, i8** %cend145, align 8, !tbaa !10
  %cmp146 = icmp ult i8* %118, %121
  br i1 %cmp146, label %land.lhs.true.147, label %lor.lhs.false.162

land.lhs.true.147:                                ; preds = %land.lhs.true.142
  %122 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc148 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %122, i32 0, i32 1
  %cp149 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc148, i32 0, i32 1
  %123 = load %struct.chunk_s*, %struct.chunk_s** %cp149, align 8, !tbaa !5
  %inner_count150 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %123, i32 0, i32 12
  %124 = load i32, i32* %inner_count150, align 4, !tbaa !11
  %cmp151 = icmp ne i32 %124, 0
  br i1 %cmp151, label %land.lhs.true.152, label %if.then.166

land.lhs.true.152:                                ; preds = %land.lhs.true.147
  %125 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %126 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc153 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %126, i32 0, i32 1
  %cp154 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc153, i32 0, i32 1
  %127 = load %struct.chunk_s*, %struct.chunk_s** %cp154, align 8, !tbaa !5
  %cbot155 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %127, i32 0, i32 3
  %128 = load i8*, i8** %cbot155, align 8, !tbaa !12
  %cmp156 = icmp uge i8* %125, %128
  br i1 %cmp156, label %land.lhs.true.157, label %if.then.166

land.lhs.true.157:                                ; preds = %land.lhs.true.152
  %129 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %130 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc158 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %130, i32 0, i32 1
  %cp159 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc158, i32 0, i32 1
  %131 = load %struct.chunk_s*, %struct.chunk_s** %cp159, align 8, !tbaa !5
  %ctop160 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %131, i32 0, i32 6
  %132 = load i8*, i8** %ctop160, align 8, !tbaa !13
  %cmp161 = icmp ult i8* %129, %132
  br i1 %cmp161, label %lor.lhs.false.162, label %if.then.166

lor.lhs.false.162:                                ; preds = %land.lhs.true.157, %land.lhs.true.142, %land.lhs.true.137, %if.then.128
  %133 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %134 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc163 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %134, i32 0, i32 1
  %call164 = call i32 @chunk_locate_ptr(i8* %133, %struct.chunk_locator_s* %loc163) #3
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %lor.lhs.false.162, %land.lhs.true.157, %land.lhs.true.152, %land.lhs.true.147
  %135 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc167 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %135, i32 0, i32 1
  %cp168 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc167, i32 0, i32 1
  %136 = load %struct.chunk_s*, %struct.chunk_s** %cp168, align 8, !tbaa !14
  store %struct.chunk_s* %136, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %lor.lhs.false.162
  %137 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %138 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc170 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %138, i32 0, i32 1
  %memory171 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc170, i32 0, i32 0
  store %struct.gs_ref_memory_s* %137, %struct.gs_ref_memory_s** %memory171, align 8, !tbaa !17
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.169, %if.end.125
  br label %while.cond

while.cond:                                       ; preds = %if.end.218, %if.end.172
  %139 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc173 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %139, i32 0, i32 1
  %memory174 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc173, i32 0, i32 0
  %140 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory174, align 8, !tbaa !17
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %140, i32 0, i32 28
  %141 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !29
  %cmp175 = icmp ne %struct.alloc_save_s* %141, null
  br i1 %cmp175, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %142 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc176 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %142, i32 0, i32 1
  %memory177 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc176, i32 0, i32 0
  %143 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory177, align 8, !tbaa !17
  %saved178 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %143, i32 0, i32 28
  %144 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved178, align 8, !tbaa !29
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %144, i32 0, i32 0
  %145 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc179 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %145, i32 0, i32 1
  %memory180 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc179, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state, %struct.gs_ref_memory_s** %memory180, align 8, !tbaa !17
  %146 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc181 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %146, i32 0, i32 1
  %cp182 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc181, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp182, align 8, !tbaa !14
  %147 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc183 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %147, i32 0, i32 1
  %cp184 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc183, i32 0, i32 1
  %148 = load %struct.chunk_s*, %struct.chunk_s** %cp184, align 8, !tbaa !5
  %cmp185 = icmp ne %struct.chunk_s* %148, null
  br i1 %cmp185, label %land.lhs.true.186, label %lor.lhs.false.211

land.lhs.true.186:                                ; preds = %while.body
  %149 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %150 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc187 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %150, i32 0, i32 1
  %cp188 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc187, i32 0, i32 1
  %151 = load %struct.chunk_s*, %struct.chunk_s** %cp188, align 8, !tbaa !5
  %cbase189 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %151, i32 0, i32 1
  %152 = load i8*, i8** %cbase189, align 8, !tbaa !7
  %cmp190 = icmp uge i8* %149, %152
  br i1 %cmp190, label %land.lhs.true.191, label %lor.lhs.false.211

land.lhs.true.191:                                ; preds = %land.lhs.true.186
  %153 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %154 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc192 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %154, i32 0, i32 1
  %cp193 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc192, i32 0, i32 1
  %155 = load %struct.chunk_s*, %struct.chunk_s** %cp193, align 8, !tbaa !5
  %cend194 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %155, i32 0, i32 8
  %156 = load i8*, i8** %cend194, align 8, !tbaa !10
  %cmp195 = icmp ult i8* %153, %156
  br i1 %cmp195, label %land.lhs.true.196, label %lor.lhs.false.211

land.lhs.true.196:                                ; preds = %land.lhs.true.191
  %157 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc197 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %157, i32 0, i32 1
  %cp198 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc197, i32 0, i32 1
  %158 = load %struct.chunk_s*, %struct.chunk_s** %cp198, align 8, !tbaa !5
  %inner_count199 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %158, i32 0, i32 12
  %159 = load i32, i32* %inner_count199, align 4, !tbaa !11
  %cmp200 = icmp ne i32 %159, 0
  br i1 %cmp200, label %land.lhs.true.201, label %if.then.215

land.lhs.true.201:                                ; preds = %land.lhs.true.196
  %160 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %161 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc202 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %161, i32 0, i32 1
  %cp203 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc202, i32 0, i32 1
  %162 = load %struct.chunk_s*, %struct.chunk_s** %cp203, align 8, !tbaa !5
  %cbot204 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %162, i32 0, i32 3
  %163 = load i8*, i8** %cbot204, align 8, !tbaa !12
  %cmp205 = icmp uge i8* %160, %163
  br i1 %cmp205, label %land.lhs.true.206, label %if.then.215

land.lhs.true.206:                                ; preds = %land.lhs.true.201
  %164 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %165 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc207 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %165, i32 0, i32 1
  %cp208 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc207, i32 0, i32 1
  %166 = load %struct.chunk_s*, %struct.chunk_s** %cp208, align 8, !tbaa !5
  %ctop209 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %166, i32 0, i32 6
  %167 = load i8*, i8** %ctop209, align 8, !tbaa !13
  %cmp210 = icmp ult i8* %164, %167
  br i1 %cmp210, label %lor.lhs.false.211, label %if.then.215

lor.lhs.false.211:                                ; preds = %land.lhs.true.206, %land.lhs.true.191, %land.lhs.true.186, %while.body
  %168 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %169 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc212 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %169, i32 0, i32 1
  %call213 = call i32 @chunk_locate_ptr(i8* %168, %struct.chunk_locator_s* %loc212) #3
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %lor.lhs.false.211, %land.lhs.true.206, %land.lhs.true.201, %land.lhs.true.196
  %170 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc216 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %170, i32 0, i32 1
  %cp217 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc216, i32 0, i32 1
  %171 = load %struct.chunk_s*, %struct.chunk_s** %cp217, align 8, !tbaa !14
  store %struct.chunk_s* %171, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.218:                                       ; preds = %lor.lhs.false.211
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.219

if.end.219:                                       ; preds = %while.end, %if.end.68
  %172 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %173 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces220 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %173, i32 0, i32 2
  %memories221 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces220, i32 0, i32 1
  %named222 = bitcast %union.anon* %memories221 to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named222, i32 0, i32 1
  %174 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !30
  %cmp223 = icmp ne %struct.gs_ref_memory_s* %172, %174
  br i1 %cmp223, label %if.then.224, label %if.end.269

if.then.224:                                      ; preds = %if.end.219
  %175 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces225 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %175, i32 0, i32 2
  %memories226 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces225, i32 0, i32 1
  %named227 = bitcast %union.anon* %memories226 to %struct._ssn*
  %system228 = getelementptr inbounds %struct._ssn, %struct._ssn* %named227, i32 0, i32 1
  %176 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system228, align 8, !tbaa !30
  %177 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc229 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %177, i32 0, i32 1
  %memory230 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc229, i32 0, i32 0
  store %struct.gs_ref_memory_s* %176, %struct.gs_ref_memory_s** %memory230, align 8, !tbaa !17
  %178 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc231 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %178, i32 0, i32 1
  %cp232 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc231, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp232, align 8, !tbaa !14
  %179 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc233 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %179, i32 0, i32 1
  %cp234 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc233, i32 0, i32 1
  %180 = load %struct.chunk_s*, %struct.chunk_s** %cp234, align 8, !tbaa !5
  %cmp235 = icmp ne %struct.chunk_s* %180, null
  br i1 %cmp235, label %land.lhs.true.236, label %lor.lhs.false.261

land.lhs.true.236:                                ; preds = %if.then.224
  %181 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %182 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc237 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %182, i32 0, i32 1
  %cp238 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc237, i32 0, i32 1
  %183 = load %struct.chunk_s*, %struct.chunk_s** %cp238, align 8, !tbaa !5
  %cbase239 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %183, i32 0, i32 1
  %184 = load i8*, i8** %cbase239, align 8, !tbaa !7
  %cmp240 = icmp uge i8* %181, %184
  br i1 %cmp240, label %land.lhs.true.241, label %lor.lhs.false.261

land.lhs.true.241:                                ; preds = %land.lhs.true.236
  %185 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %186 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc242 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %186, i32 0, i32 1
  %cp243 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc242, i32 0, i32 1
  %187 = load %struct.chunk_s*, %struct.chunk_s** %cp243, align 8, !tbaa !5
  %cend244 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %187, i32 0, i32 8
  %188 = load i8*, i8** %cend244, align 8, !tbaa !10
  %cmp245 = icmp ult i8* %185, %188
  br i1 %cmp245, label %land.lhs.true.246, label %lor.lhs.false.261

land.lhs.true.246:                                ; preds = %land.lhs.true.241
  %189 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc247 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %189, i32 0, i32 1
  %cp248 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc247, i32 0, i32 1
  %190 = load %struct.chunk_s*, %struct.chunk_s** %cp248, align 8, !tbaa !5
  %inner_count249 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %190, i32 0, i32 12
  %191 = load i32, i32* %inner_count249, align 4, !tbaa !11
  %cmp250 = icmp ne i32 %191, 0
  br i1 %cmp250, label %land.lhs.true.251, label %if.then.265

land.lhs.true.251:                                ; preds = %land.lhs.true.246
  %192 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %193 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc252 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %193, i32 0, i32 1
  %cp253 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc252, i32 0, i32 1
  %194 = load %struct.chunk_s*, %struct.chunk_s** %cp253, align 8, !tbaa !5
  %cbot254 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %194, i32 0, i32 3
  %195 = load i8*, i8** %cbot254, align 8, !tbaa !12
  %cmp255 = icmp uge i8* %192, %195
  br i1 %cmp255, label %land.lhs.true.256, label %if.then.265

land.lhs.true.256:                                ; preds = %land.lhs.true.251
  %196 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %197 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc257 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %197, i32 0, i32 1
  %cp258 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc257, i32 0, i32 1
  %198 = load %struct.chunk_s*, %struct.chunk_s** %cp258, align 8, !tbaa !5
  %ctop259 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %198, i32 0, i32 6
  %199 = load i8*, i8** %ctop259, align 8, !tbaa !13
  %cmp260 = icmp ult i8* %196, %199
  br i1 %cmp260, label %lor.lhs.false.261, label %if.then.265

lor.lhs.false.261:                                ; preds = %land.lhs.true.256, %land.lhs.true.241, %land.lhs.true.236, %if.then.224
  %200 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %201 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc262 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %201, i32 0, i32 1
  %call263 = call i32 @chunk_locate_ptr(i8* %200, %struct.chunk_locator_s* %loc262) #3
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.268

if.then.265:                                      ; preds = %lor.lhs.false.261, %land.lhs.true.256, %land.lhs.true.251, %land.lhs.true.246
  %202 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc266 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %202, i32 0, i32 1
  %cp267 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc266, i32 0, i32 1
  %203 = load %struct.chunk_s*, %struct.chunk_s** %cp267, align 8, !tbaa !14
  store %struct.chunk_s* %203, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.268:                                       ; preds = %lor.lhs.false.261
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.219
  %204 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space270 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %204, i32 0, i32 7
  %205 = load i32, i32* %space270, align 4, !tbaa !25
  switch i32 %205, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.328
  ]

sw.default:                                       ; preds = %if.end.269
  %206 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces271 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %206, i32 0, i32 2
  %memories272 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces271, i32 0, i32 1
  %named273 = bitcast %union.anon* %memories272 to %struct._ssn*
  %global274 = getelementptr inbounds %struct._ssn, %struct._ssn* %named273, i32 0, i32 2
  %207 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global274, align 8, !tbaa !28
  store %struct.gs_ref_memory_s* %207, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %208 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %stable_memory275 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %208, i32 0, i32 0
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory275, align 8, !tbaa !18
  %210 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %211 = bitcast %struct.gs_ref_memory_s* %210 to %struct.gs_memory_s*
  %cmp276 = icmp ne %struct.gs_memory_s* %209, %211
  br i1 %cmp276, label %if.then.277, label %if.end.319

if.then.277:                                      ; preds = %sw.default
  %212 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %stable_memory278 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %212, i32 0, i32 0
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory278, align 8, !tbaa !18
  %214 = bitcast %struct.gs_memory_s* %213 to %struct.gs_ref_memory_s*
  %215 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc279 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %215, i32 0, i32 1
  %memory280 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc279, i32 0, i32 0
  store %struct.gs_ref_memory_s* %214, %struct.gs_ref_memory_s** %memory280, align 8, !tbaa !17
  %216 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc281 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %216, i32 0, i32 1
  %cp282 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc281, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp282, align 8, !tbaa !14
  %217 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc283 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %217, i32 0, i32 1
  %cp284 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc283, i32 0, i32 1
  %218 = load %struct.chunk_s*, %struct.chunk_s** %cp284, align 8, !tbaa !5
  %cmp285 = icmp ne %struct.chunk_s* %218, null
  br i1 %cmp285, label %land.lhs.true.286, label %lor.lhs.false.311

land.lhs.true.286:                                ; preds = %if.then.277
  %219 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %220 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc287 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %220, i32 0, i32 1
  %cp288 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc287, i32 0, i32 1
  %221 = load %struct.chunk_s*, %struct.chunk_s** %cp288, align 8, !tbaa !5
  %cbase289 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %221, i32 0, i32 1
  %222 = load i8*, i8** %cbase289, align 8, !tbaa !7
  %cmp290 = icmp uge i8* %219, %222
  br i1 %cmp290, label %land.lhs.true.291, label %lor.lhs.false.311

land.lhs.true.291:                                ; preds = %land.lhs.true.286
  %223 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %224 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc292 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %224, i32 0, i32 1
  %cp293 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc292, i32 0, i32 1
  %225 = load %struct.chunk_s*, %struct.chunk_s** %cp293, align 8, !tbaa !5
  %cend294 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %225, i32 0, i32 8
  %226 = load i8*, i8** %cend294, align 8, !tbaa !10
  %cmp295 = icmp ult i8* %223, %226
  br i1 %cmp295, label %land.lhs.true.296, label %lor.lhs.false.311

land.lhs.true.296:                                ; preds = %land.lhs.true.291
  %227 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc297 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %227, i32 0, i32 1
  %cp298 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc297, i32 0, i32 1
  %228 = load %struct.chunk_s*, %struct.chunk_s** %cp298, align 8, !tbaa !5
  %inner_count299 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %228, i32 0, i32 12
  %229 = load i32, i32* %inner_count299, align 4, !tbaa !11
  %cmp300 = icmp ne i32 %229, 0
  br i1 %cmp300, label %land.lhs.true.301, label %if.then.315

land.lhs.true.301:                                ; preds = %land.lhs.true.296
  %230 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %231 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc302 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %231, i32 0, i32 1
  %cp303 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc302, i32 0, i32 1
  %232 = load %struct.chunk_s*, %struct.chunk_s** %cp303, align 8, !tbaa !5
  %cbot304 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %232, i32 0, i32 3
  %233 = load i8*, i8** %cbot304, align 8, !tbaa !12
  %cmp305 = icmp uge i8* %230, %233
  br i1 %cmp305, label %land.lhs.true.306, label %if.then.315

land.lhs.true.306:                                ; preds = %land.lhs.true.301
  %234 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %235 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc307 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %235, i32 0, i32 1
  %cp308 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc307, i32 0, i32 1
  %236 = load %struct.chunk_s*, %struct.chunk_s** %cp308, align 8, !tbaa !5
  %ctop309 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %236, i32 0, i32 6
  %237 = load i8*, i8** %ctop309, align 8, !tbaa !13
  %cmp310 = icmp ult i8* %234, %237
  br i1 %cmp310, label %lor.lhs.false.311, label %if.then.315

lor.lhs.false.311:                                ; preds = %land.lhs.true.306, %land.lhs.true.291, %land.lhs.true.286, %if.then.277
  %238 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %239 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc312 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %239, i32 0, i32 1
  %call313 = call i32 @chunk_locate_ptr(i8* %238, %struct.chunk_locator_s* %loc312) #3
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %lor.lhs.false.311, %land.lhs.true.306, %land.lhs.true.301, %land.lhs.true.296
  %240 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc316 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %240, i32 0, i32 1
  %cp317 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc316, i32 0, i32 1
  %241 = load %struct.chunk_s*, %struct.chunk_s** %cp317, align 8, !tbaa !14
  store %struct.chunk_s* %241, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.318:                                       ; preds = %lor.lhs.false.311
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %sw.default
  %242 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %other, align 8, !tbaa !1
  %243 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc320 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %243, i32 0, i32 1
  %memory321 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc320, i32 0, i32 0
  store %struct.gs_ref_memory_s* %242, %struct.gs_ref_memory_s** %memory321, align 8, !tbaa !17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.269
  %244 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces322 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %244, i32 0, i32 2
  %memories323 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces322, i32 0, i32 1
  %named324 = bitcast %union.anon* %memories323 to %struct._ssn*
  %global325 = getelementptr inbounds %struct._ssn, %struct._ssn* %named324, i32 0, i32 2
  %245 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global325, align 8, !tbaa !28
  %246 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc326 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %246, i32 0, i32 1
  %memory327 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc326, i32 0, i32 0
  store %struct.gs_ref_memory_s* %245, %struct.gs_ref_memory_s** %memory327, align 8, !tbaa !17
  br label %sw.epilog

sw.bb.328:                                        ; preds = %if.end.269
  %247 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces329 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %247, i32 0, i32 2
  %memories330 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces329, i32 0, i32 1
  %named331 = bitcast %union.anon* %memories330 to %struct._ssn*
  %local332 = getelementptr inbounds %struct._ssn, %struct._ssn* %named331, i32 0, i32 3
  %248 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local332, align 8, !tbaa !26
  %249 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc333 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %249, i32 0, i32 1
  %memory334 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc333, i32 0, i32 0
  store %struct.gs_ref_memory_s* %248, %struct.gs_ref_memory_s** %memory334, align 8, !tbaa !17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.328, %sw.bb, %if.end.319
  br label %for.cond

for.cond:                                         ; preds = %if.end.383, %sw.epilog
  %250 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc335 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %250, i32 0, i32 1
  %memory336 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc335, i32 0, i32 0
  %251 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory336, align 8, !tbaa !17
  %252 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp337 = icmp ne %struct.gs_ref_memory_s* %251, %252
  br i1 %cmp337, label %if.then.338, label %if.end.377

if.then.338:                                      ; preds = %for.cond
  %253 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc339 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %253, i32 0, i32 1
  %cp340 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc339, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp340, align 8, !tbaa !14
  %254 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc341 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %254, i32 0, i32 1
  %cp342 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc341, i32 0, i32 1
  %255 = load %struct.chunk_s*, %struct.chunk_s** %cp342, align 8, !tbaa !5
  %cmp343 = icmp ne %struct.chunk_s* %255, null
  br i1 %cmp343, label %land.lhs.true.344, label %lor.lhs.false.369

land.lhs.true.344:                                ; preds = %if.then.338
  %256 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %257 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc345 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %257, i32 0, i32 1
  %cp346 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc345, i32 0, i32 1
  %258 = load %struct.chunk_s*, %struct.chunk_s** %cp346, align 8, !tbaa !5
  %cbase347 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %258, i32 0, i32 1
  %259 = load i8*, i8** %cbase347, align 8, !tbaa !7
  %cmp348 = icmp uge i8* %256, %259
  br i1 %cmp348, label %land.lhs.true.349, label %lor.lhs.false.369

land.lhs.true.349:                                ; preds = %land.lhs.true.344
  %260 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %261 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc350 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %261, i32 0, i32 1
  %cp351 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc350, i32 0, i32 1
  %262 = load %struct.chunk_s*, %struct.chunk_s** %cp351, align 8, !tbaa !5
  %cend352 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %262, i32 0, i32 8
  %263 = load i8*, i8** %cend352, align 8, !tbaa !10
  %cmp353 = icmp ult i8* %260, %263
  br i1 %cmp353, label %land.lhs.true.354, label %lor.lhs.false.369

land.lhs.true.354:                                ; preds = %land.lhs.true.349
  %264 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc355 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %264, i32 0, i32 1
  %cp356 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc355, i32 0, i32 1
  %265 = load %struct.chunk_s*, %struct.chunk_s** %cp356, align 8, !tbaa !5
  %inner_count357 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %265, i32 0, i32 12
  %266 = load i32, i32* %inner_count357, align 4, !tbaa !11
  %cmp358 = icmp ne i32 %266, 0
  br i1 %cmp358, label %land.lhs.true.359, label %if.then.373

land.lhs.true.359:                                ; preds = %land.lhs.true.354
  %267 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %268 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc360 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %268, i32 0, i32 1
  %cp361 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc360, i32 0, i32 1
  %269 = load %struct.chunk_s*, %struct.chunk_s** %cp361, align 8, !tbaa !5
  %cbot362 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %269, i32 0, i32 3
  %270 = load i8*, i8** %cbot362, align 8, !tbaa !12
  %cmp363 = icmp uge i8* %267, %270
  br i1 %cmp363, label %land.lhs.true.364, label %if.then.373

land.lhs.true.364:                                ; preds = %land.lhs.true.359
  %271 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %272 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc365 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %272, i32 0, i32 1
  %cp366 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc365, i32 0, i32 1
  %273 = load %struct.chunk_s*, %struct.chunk_s** %cp366, align 8, !tbaa !5
  %ctop367 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %273, i32 0, i32 6
  %274 = load i8*, i8** %ctop367, align 8, !tbaa !13
  %cmp368 = icmp ult i8* %271, %274
  br i1 %cmp368, label %lor.lhs.false.369, label %if.then.373

lor.lhs.false.369:                                ; preds = %land.lhs.true.364, %land.lhs.true.349, %land.lhs.true.344, %if.then.338
  %275 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %276 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc370 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %276, i32 0, i32 1
  %call371 = call i32 @chunk_locate_ptr(i8* %275, %struct.chunk_locator_s* %loc370) #3
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %if.then.373, label %if.end.376

if.then.373:                                      ; preds = %lor.lhs.false.369, %land.lhs.true.364, %land.lhs.true.359, %land.lhs.true.354
  %277 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc374 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %277, i32 0, i32 1
  %cp375 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc374, i32 0, i32 1
  %278 = load %struct.chunk_s*, %struct.chunk_s** %cp375, align 8, !tbaa !14
  store %struct.chunk_s* %278, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.376:                                       ; preds = %lor.lhs.false.369
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %for.cond
  %279 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc378 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %279, i32 0, i32 1
  %memory379 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc378, i32 0, i32 0
  %280 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory379, align 8, !tbaa !17
  %saved380 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %280, i32 0, i32 28
  %281 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved380, align 8, !tbaa !29
  %cmp381 = icmp eq %struct.alloc_save_s* %281, null
  br i1 %cmp381, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %if.end.377
  br label %for.end

if.end.383:                                       ; preds = %if.end.377
  %282 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc384 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %282, i32 0, i32 1
  %memory385 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc384, i32 0, i32 0
  %283 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory385, align 8, !tbaa !17
  %saved386 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %283, i32 0, i32 28
  %284 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved386, align 8, !tbaa !29
  %state387 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %284, i32 0, i32 0
  %285 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc388 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %285, i32 0, i32 1
  %memory389 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc388, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state387, %struct.gs_ref_memory_s** %memory389, align 8, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %if.then.382
  %286 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %287 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc390 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %287, i32 0, i32 1
  %memory391 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc390, i32 0, i32 0
  store %struct.gs_ref_memory_s* %286, %struct.gs_ref_memory_s** %memory391, align 8, !tbaa !17
  %288 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %loc392 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %288, i32 0, i32 1
  %cp393 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc392, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp393, align 8, !tbaa !14
  store %struct.chunk_s* null, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.373, %if.then.315, %if.then.265, %if.then.215, %if.then.166, %if.then.122, %if.then.64, %if.then
  %289 = bitcast %struct.gs_ref_memory_s** %other to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = load %struct.chunk_s*, %struct.chunk_s** %retval
  ret %struct.chunk_s* %291
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @chunk_locate_ptr(i8*, %struct.chunk_locator_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ialloc_validate_spaces(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_validate_memory(%struct.gs_ref_memory_s* %mem, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_validate_chunk(%struct.chunk_s* %cp, %struct.gc_state_s* %gcst) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_validate_object(%struct.obj_header_s* %ptr, %struct.chunk_s* %cp, %struct.gc_state_s* %gcst) #0 {
entry:
  %ptr.addr = alloca %struct.obj_header_s*, align 8
  %cp.addr = alloca %struct.chunk_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.obj_header_s* %ptr, %struct.obj_header_s** %ptr.addr, align 8, !tbaa !1
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
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
!5 = !{!6, !2, i64 8}
!6 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!7 = !{!8, !2, i64 8}
!8 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!9 = !{!"int", !3, i64 0}
!10 = !{!8, !2, i64 64}
!11 = !{!8, !9, i64 96}
!12 = !{!8, !2, i64 24}
!13 = !{!8, !2, i64 48}
!14 = !{!15, !2, i64 16}
!15 = !{!"gc_state_s", !2, i64 0, !6, i64 8, !16, i64 24, !9, i64 64, !9, i64 68, !2, i64 72, !2, i64 80, !2, i64 88}
!16 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!17 = !{!15, !2, i64 8}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_ref_memory_s", !2, i64 0, !20, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !21, i64 232, !9, i64 272, !22, i64 280, !2, i64 288, !2, i64 296, !8, i64 304, !2, i64 488, !6, i64 496, !22, i64 512, !22, i64 520, !23, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !22, i64 624, !22, i64 632, !2, i64 640, !24, i64 648, !9, i64 672, !3, i64 680}
!20 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!21 = !{!"gs_memory_gc_status_s", !22, i64 0, !22, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !22, i64 32}
!22 = !{!"long", !3, i64 0}
!23 = !{!"lost_", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"gs_memory_status_s", !22, i64 0, !22, i64 8, !9, i64 16}
!25 = !{!19, !9, i64 224}
!26 = !{!27, !2, i64 24}
!27 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!28 = !{!27, !2, i64 16}
!29 = !{!19, !2, i64 616}
!30 = !{!27, !2, i64 8}
