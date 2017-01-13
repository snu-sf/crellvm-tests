; ModuleID = './igc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type { %struct.gc_procs_with_refs_s*, %struct.chunk_locator_s, %struct.vm_spaces_s, i32, i32, %struct.gs_memory_s*, %struct.name_table_s*, %struct.gs_memory_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_ptr_procs_s = type { {}*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type { %struct.gs_ref_memory_s, %struct.vm_spaces_s, i32, i32, i64, i8* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct._m = type { i32 }
%union.anon.0 = type { i8* }
%struct._b = type { i32 }
%struct._msd = type { %struct.gc_mark_stack_s, [100 x %struct.ms_entry] }
%struct.gc_mark_stack_s = type { %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s*, i32, i32, [1 x %struct.ms_entry] }
%struct.ms_entry = type { i8*, i32, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gx_device_s = type opaque
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@ptr_struct_procs = constant { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* } { void (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_struct_unmark, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_struct_mark, i8* (i8*, %struct.gc_state_s*)* @igc_reloc_struct_ptr }, align 8
@ptr_string_procs = constant { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* } { void (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_string_unmark, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_string_mark, i8* (i8*, %struct.gc_state_s*)* null }, align 8
@ptr_const_string_procs = constant { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* } { void (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_string_unmark, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_string_mark, i8* (i8*, %struct.gc_state_s*)* null }, align 8
@ptr_ref_procs = constant { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* } { void (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_ref_unmark, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_ref_mark, i8* (i8*, %struct.gc_state_s*)* null }, align 8
@ptr_name_index_procs = constant { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* } { void (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_name_index_unmark, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)* @ptr_name_index_mark, i8* (i8*, %struct.gc_state_s*)* null }, align 8
@igc_procs = internal constant %struct.gc_procs_with_refs_s { i8* (i8*, %struct.gc_state_s*)* @igc_reloc_struct_ptr, void (%struct.gs_string_s*, %struct.gc_state_s*)* @igc_reloc_string, void (%struct.gs_const_string_s*, %struct.gc_state_s*)* @igc_reloc_const_string, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* @igc_reloc_param_string, i16* (i16*, %struct.gc_state_s*)* @igc_reloc_ref_ptr, void (i16*, i16*, %struct.gc_state_s*)* @igc_reloc_refs }, align 8
@.str = private unnamed_addr constant [13 x i8] c"gc_top_level\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gc mark stack\00", align 1
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8
@st_free = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"./psi/igc.c\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"mark stack overflowed while outside collectible space at 0x%lx!\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @ptr_struct_unmark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %ignored) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %ignored.addr = alloca %struct.gc_state_s*, align 8
  %vptr = alloca i8*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %ignored, %struct.gc_state_s** %ignored.addr, align 8, !tbaa !1
  %0 = bitcast i8** %vptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %2, i8** %vptr, align 8, !tbaa !1
  %3 = load i8*, i8** %vptr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %vptr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %5, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %6 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i8** %vptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ptr_struct_mark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %ignored) #0 {
entry:
  %retval = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %ignored.addr = alloca %struct.gc_state_s*, align 8
  %ptr = alloca %struct.obj_header_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %ignored, %struct.gc_state_s** %ignored.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr1, align 8, !tbaa !5
  %3 = bitcast i8* %2 to %struct.obj_header_s*
  store %struct.obj_header_s* %3, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %cmp = icmp eq %struct.obj_header_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %5, i32 -1
  store %struct.obj_header_s* %incdec.ptr, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %6, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %7 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %cmp2 = icmp eq i32 %bf.lshr, 2147483647
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %8, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %f7 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 0
  %m8 = bitcast %union._f* %f7 to %struct._m*
  %9 = bitcast %struct._m* %m8 to i32*
  %bf.load9 = load i32, i32* %9, align 4
  %bf.clear = and i32 %bf.load9, 1
  store i32 %bf.clear, i32* %9, align 4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast %struct.obj_header_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i8* @igc_reloc_struct_ptr(i8* %obj, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca i8*, align 8
  %obj.addr = alloca i8*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %optr = alloca %struct.obj_header_s*, align 8
  %robj = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %back = alloca i32, align 4
  %pfree = alloca %struct.obj_header_s*, align 8
  %chead = alloca %struct.chunk_head_s*, align 8
  %u = alloca %union.anon.0, align 8
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %optr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.obj_header_s*
  store %struct.obj_header_s* %2, %struct.obj_header_s** %optr, align 8, !tbaa !1
  %3 = bitcast i8** %robj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %optr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %6, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %b = bitcast %union._f* %f to %struct._b*
  %7 = bitcast %struct._b* %b to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  store i32 %bf.lshr, i32* %back, align 4, !tbaa !8
  %8 = load i32, i32* %back, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %8, 2147483646
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.end
  %9 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  store i8* %9, i8** %robj, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %do.end
  %10 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %optr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %11, i64 -1
  %12 = bitcast %struct.obj_header_s* %add.ptr to i8*
  %13 = load i32, i32* %back, align 4, !tbaa !8
  %shl = shl i32 %13, 1
  %idx.ext = zext i32 %shl to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr3 = getelementptr inbounds i8, i8* %12, i64 %idx.neg
  %14 = bitcast i8* %add.ptr3 to %struct.obj_header_s*
  store %struct.obj_header_s* %14, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %15 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %17 = bitcast %struct.obj_header_s* %16 to i8*
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d4 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %18, i32 0, i32 0
  %o5 = bitcast %union._d* %d4 to %struct.obj_header_data_s*
  %f6 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o5, i32 0, i32 0
  %b7 = bitcast %union._f* %f6 to %struct._b*
  %19 = bitcast %struct._b* %b7 to i32*
  %bf.load8 = load i32, i32* %19, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 1
  %shl10 = shl i32 %bf.lshr9, 1
  %idx.ext11 = sext i32 %shl10 to i64
  %idx.neg12 = sub i64 0, %idx.ext11
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %idx.neg12
  %20 = bitcast i8* %add.ptr13 to %struct.chunk_head_s*
  store %struct.chunk_head_s* %20, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %21 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %dest, align 8, !tbaa !9
  %23 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %24 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %24, i64 1
  %25 = bitcast %struct.chunk_head_s* %add.ptr14 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %d15 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %26, i32 0, i32 0
  %o16 = bitcast %union._d* %d15 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o16, i32 0, i32 2
  %reloc = bitcast %union._t* %t to i64*
  %27 = load i64, i64* %reloc, align 8, !tbaa !12
  %sub = sub i64 %sub.ptr.sub, %27
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %sub
  store i8* %add.ptr17, i8** %robj, align 8, !tbaa !1
  %28 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.2
  %30 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load i8*, i8** %robj, align 8, !tbaa !1
  %r = bitcast %union.anon.0* %u to i8**
  store i8* %32, i8** %r, align 8, !tbaa !1
  %w = bitcast %union.anon.0* %u to i8**
  %33 = load i8*, i8** %w, align 8, !tbaa !1
  store i8* %33, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %34 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %35 = bitcast i8** %robj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.obj_header_s** %optr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i8*, i8** %retval
  ret i8* %37
}

; Function Attrs: nounwind uwtable
define internal void @ptr_string_unmark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %gcst) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !5
  %2 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !14
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i32 @gc_string_mark(i8* %1, i32 %3, i32 0, %struct.gc_state_s* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ptr_string_mark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %gcst) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !5
  %2 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !14
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i32 @gc_string_mark(i8* %1, i32 %3, i32 1, %struct.gc_state_s* %4) #4
  ret i32 %call
}

declare void @ptr_ref_unmark(%struct.enum_ptr_s*, %struct.gc_state_s*) #1

declare i32 @ptr_ref_mark(%struct.enum_ptr_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal void @ptr_name_index_unmark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %gcst) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ptr_name_index_mark(%struct.enum_ptr_s* %pep, %struct.gc_state_s* %gcst) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %0, i32 0, i32 5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !15
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  %3 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %4 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4, !tbaa !14
  %call = call i32 @names_mark_index(%struct.name_table_s* %3, i32 %5) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_gc_reclaim(%struct.vm_spaces_s* %pspaces, i32 %global) #0 {
entry:
  %pspaces.addr = alloca %struct.vm_spaces_s*, align 8
  %global.addr = alloca i32, align 4
  %spaces = alloca %struct.vm_spaces_s, align 8
  %space_memories = alloca [8 x %struct.gs_ref_memory_s*], align 16
  %space_roots = alloca [8 x %struct.gs_gc_root_s], align 16
  %max_trace = alloca i32, align 4
  %min_collect = alloca i32, align 4
  %min_collect_vm_space = alloca i32, align 4
  %ispace = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %rp = alloca %struct.gs_gc_root_s*, align 8
  %state = alloca %struct.gc_state_s, align 8
  %ms_default = alloca %struct._msd, align 8
  %mark_stack = alloca %struct.gc_mark_stack_s*, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  %eptr = alloca %struct.enum_ptr_s, align 8
  %global_ops = alloca %struct.op_array_table_s*, align 8
  %local_ops = alloca %struct.op_array_table_s*, align 8
  %end = alloca %struct.gc_mark_stack_s*, align 8
  %avail = alloca i32, align 4
  %pms = alloca %struct.gc_mark_stack_s*, align 8
  %more = alloca i32, align 4
  %pms246 = alloca %struct.gc_mark_stack_s*, align 8
  %prev256 = alloca %struct.gc_mark_stack_s*, align 8
  %i = alloca i32, align 4
  %mem287 = alloca %struct.gs_ref_memory_s*, align 8
  %i351 = alloca i32, align 4
  %i389 = alloca i32, align 4
  %pref = alloca %struct.ref_s*, align 8
  %curr = alloca %struct.alloc_save_s*, align 8
  %prev562 = alloca %struct.alloc_save_s*, align 8
  %next563 = alloca %struct.alloc_save_s*, align 8
  %total = alloca %struct.gs_memory_status_s, align 8
  store %struct.vm_spaces_s* %pspaces, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !8
  %0 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #2
  %1 = bitcast [8 x %struct.gs_ref_memory_s*]* %space_memories to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #2
  %2 = bitcast [8 x %struct.gs_gc_root_s]* %space_roots to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #2
  %3 = bitcast i32* %max_trace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %min_collect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %min_collect_vm_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ispace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.gs_gc_root_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct.gc_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 96, i8* %10) #2
  %11 = bitcast %struct._msd* %ms_default to i8*
  call void @llvm.lifetime.start(i64 1640, i8* %11) #2
  %12 = bitcast %struct.gc_mark_stack_s** %mark_stack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %stack = getelementptr inbounds %struct._msd, %struct._msd* %ms_default, i32 0, i32 0
  store %struct.gc_mark_stack_s* %stack, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  %13 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.vm_spaces_s*, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  %15 = bitcast %struct.vm_spaces_s* %spaces to i8*
  %16 = bitcast %struct.vm_spaces_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 40, i32 8, i1 false), !tbaa.struct !24
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !28
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %memories1 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named2 = bitcast %union.anon* %memories1 to %struct._ssn*
  %system3 = getelementptr inbounds %struct._ssn, %struct._ssn* %named2, i32 0, i32 1
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system3, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 1
  store %struct.gs_ref_memory_s* %19, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %memories4 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named5 = bitcast %union.anon* %memories4 to %struct._ssn*
  %global6 = getelementptr inbounds %struct._ssn, %struct._ssn* %named5, i32 0, i32 2
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global6, align 8, !tbaa !34
  %arrayidx7 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 2
  store %struct.gs_ref_memory_s* %20, %struct.gs_ref_memory_s** %arrayidx7, align 8, !tbaa !1
  store i32 2, i32* %max_trace, align 4, !tbaa !8
  store i32 2, i32* %min_collect, align 4, !tbaa !8
  store i32 2, i32* %min_collect_vm_space, align 4, !tbaa !8
  %memories8 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named9 = bitcast %union.anon* %memories8 to %struct._ssn*
  %global10 = getelementptr inbounds %struct._ssn, %struct._ssn* %named9, i32 0, i32 2
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global10, align 8, !tbaa !34
  %stable_memory11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory11, align 8, !tbaa !28
  %memories12 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named13 = bitcast %union.anon* %memories12 to %struct._ssn*
  %global14 = getelementptr inbounds %struct._ssn, %struct._ssn* %named13, i32 0, i32 2
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global14, align 8, !tbaa !34
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %cmp = icmp ne %struct.gs_memory_s* %22, %24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %memories15 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named16 = bitcast %union.anon* %memories15 to %struct._ssn*
  %global17 = getelementptr inbounds %struct._ssn, %struct._ssn* %named16, i32 0, i32 2
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global17, align 8, !tbaa !34
  %stable_memory18 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 0
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory18, align 8, !tbaa !28
  %27 = bitcast %struct.gs_memory_s* %26 to %struct.gs_ref_memory_s*
  %28 = load i32, i32* %max_trace, align 4, !tbaa !8
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %max_trace, align 4, !tbaa !8
  %idxprom = sext i32 %inc to i64
  %arrayidx19 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom
  store %struct.gs_ref_memory_s* %27, %struct.gs_ref_memory_s** %arrayidx19, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %memories20 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named21 = bitcast %union.anon* %memories20 to %struct._ssn*
  %global22 = getelementptr inbounds %struct._ssn, %struct._ssn* %named21, i32 0, i32 2
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global22, align 8, !tbaa !34
  %memories23 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named24 = bitcast %union.anon* %memories23 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named24, i32 0, i32 3
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !35
  %cmp25 = icmp ne %struct.gs_ref_memory_s* %29, %30
  br i1 %cmp25, label %if.then.26, label %if.end.50

if.then.26:                                       ; preds = %if.end
  %memories27 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named28 = bitcast %union.anon* %memories27 to %struct._ssn*
  %local29 = getelementptr inbounds %struct._ssn, %struct._ssn* %named28, i32 0, i32 3
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local29, align 8, !tbaa !35
  %32 = load i32, i32* %max_trace, align 4, !tbaa !8
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %max_trace, align 4, !tbaa !8
  %idxprom31 = sext i32 %inc30 to i64
  %arrayidx32 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom31
  store %struct.gs_ref_memory_s* %31, %struct.gs_ref_memory_s** %arrayidx32, align 8, !tbaa !1
  %33 = load i32, i32* %max_trace, align 4, !tbaa !8
  store i32 %33, i32* %min_collect, align 4, !tbaa !8
  store i32 3, i32* %min_collect_vm_space, align 4, !tbaa !8
  %memories33 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named34 = bitcast %union.anon* %memories33 to %struct._ssn*
  %local35 = getelementptr inbounds %struct._ssn, %struct._ssn* %named34, i32 0, i32 3
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local35, align 8, !tbaa !35
  %stable_memory36 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %34, i32 0, i32 0
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory36, align 8, !tbaa !28
  %memories37 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named38 = bitcast %union.anon* %memories37 to %struct._ssn*
  %local39 = getelementptr inbounds %struct._ssn, %struct._ssn* %named38, i32 0, i32 3
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local39, align 8, !tbaa !35
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %cmp40 = icmp ne %struct.gs_memory_s* %35, %37
  br i1 %cmp40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %if.then.26
  %memories42 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named43 = bitcast %union.anon* %memories42 to %struct._ssn*
  %local44 = getelementptr inbounds %struct._ssn, %struct._ssn* %named43, i32 0, i32 3
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local44, align 8, !tbaa !35
  %stable_memory45 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory45, align 8, !tbaa !28
  %40 = bitcast %struct.gs_memory_s* %39 to %struct.gs_ref_memory_s*
  %41 = load i32, i32* %max_trace, align 4, !tbaa !8
  %inc46 = add nsw i32 %41, 1
  store i32 %inc46, i32* %max_trace, align 4, !tbaa !8
  %idxprom47 = sext i32 %inc46 to i64
  %arrayidx48 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom47
  store %struct.gs_ref_memory_s* %40, %struct.gs_ref_memory_s** %arrayidx48, align 8, !tbaa !1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.41, %if.then.26
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end
  %42 = load i32, i32* %global.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.50
  store i32 1, i32* %min_collect_vm_space, align 4, !tbaa !8
  store i32 1, i32* %min_collect, align 4, !tbaa !8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.50
  %procs = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 0
  store %struct.gc_procs_with_refs_s* @igc_procs, %struct.gc_procs_with_refs_s** %procs, align 8, !tbaa !36
  %memories53 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named54 = bitcast %union.anon* %memories53 to %struct._ssn*
  %global55 = getelementptr inbounds %struct._ssn, %struct._ssn* %named54, i32 0, i32 2
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global55, align 8, !tbaa !34
  %loc = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc, i32 0, i32 0
  store %struct.gs_ref_memory_s* %43, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !37
  %loc56 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 1
  %cp57 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc56, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp57, align 8, !tbaa !38
  %spaces58 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 2
  %44 = bitcast %struct.vm_spaces_s* %spaces58 to i8*
  %45 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 40, i32 8, i1 false), !tbaa.struct !24
  %46 = load i32, i32* %min_collect_vm_space, align 4, !tbaa !8
  %shl = shl i32 %46, 2
  %min_collect59 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 3
  store i32 %shl, i32* %min_collect59, align 4, !tbaa !39
  %relocating_untraced = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 4
  store i32 0, i32* %relocating_untraced, align 4, !tbaa !40
  %loc60 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 1
  %memory61 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc60, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory61, align 8, !tbaa !37
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !41
  %heap = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 5
  store %struct.gs_memory_s* %48, %struct.gs_memory_s** %heap, align 8, !tbaa !15
  %heap62 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 5
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap62, align 8, !tbaa !15
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 2
  %50 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !19
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %50, i32 0, i32 16
  %51 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !22
  %ntable = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 6
  store %struct.name_table_s* %51, %struct.name_table_s** %ntable, align 8, !tbaa !42
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %52 = load i32, i32* %ispace, align 4, !tbaa !8
  %53 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp63 = icmp sle i32 %52, %53
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom64 = sext i32 %54 to i64
  %arrayidx65 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom64
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx65, align 8, !tbaa !1
  %56 = bitcast %struct.gs_ref_memory_s* %55 to %struct.gs_memory_s*
  %57 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds [8 x %struct.gs_gc_root_s], [8 x %struct.gs_gc_root_s]* %space_roots, i32 0, i64 %idxprom66
  %58 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom68 = sext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom68
  %59 = bitcast %struct.gs_ref_memory_s** %arrayidx69 to i8**
  %call = call i32 @gs_register_struct_root(%struct.gs_memory_s* %56, %struct.gs_gc_root_s* %arrayidx67, i8** %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %ispace, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %61 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %61, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.87, %do.end
  %62 = load i32, i32* %ispace, align 4, !tbaa !8
  %63 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp72 = icmp sle i32 %62, %63
  br i1 %cmp72, label %for.body.73, label %for.end.89

for.body.73:                                      ; preds = %for.cond.71
  %64 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom74 = sext i32 %64 to i64
  %arrayidx75 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom74
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx75, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %65, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.84, %for.body.73
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp77 = icmp ne %struct.gs_ref_memory_s* %66, null
  br i1 %cmp77, label %for.body.78, label %for.end.86

for.body.78:                                      ; preds = %for.cond.76
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %67, i32 0, i32 11
  %68 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !43
  store %struct.chunk_s* %68, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.82, %for.body.78
  %69 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp80 = icmp ne %struct.chunk_s* %69, null
  br i1 %cmp80, label %for.body.81, label %for.end.83

for.body.81:                                      ; preds = %for.cond.79
  %70 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %71 = bitcast %struct.gs_ref_memory_s* %70 to %struct.gs_memory_s*
  %72 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_objects_clear_marks(%struct.gs_memory_s* %71, %struct.chunk_s* %72) #4
  %73 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_strings_set_marks(%struct.chunk_s* %73, i32 0) #4
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.81
  %74 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %74, i32 0, i32 10
  %75 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !44
  store %struct.chunk_s* %75, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.79

for.end.83:                                       ; preds = %for.cond.79
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %76 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %76, i32 0, i32 28
  %77 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !45
  %state85 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %77, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state85, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.76

for.end.86:                                       ; preds = %for.cond.76
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %78 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc88 = add nsw i32 %78, 1
  store i32 %inc88, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.71

for.end.89:                                       ; preds = %for.cond.71
  br label %do.body.90

do.body.90:                                       ; preds = %for.end.89
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.body.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.107, %do.end.92
  %79 = load i32, i32* %ispace, align 4, !tbaa !8
  %80 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp94 = icmp sle i32 %79, %80
  br i1 %cmp94, label %for.body.95, label %for.end.109

for.body.95:                                      ; preds = %for.cond.93
  %81 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom96 = sext i32 %81 to i64
  %arrayidx97 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom96
  %82 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx97, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %82, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %roots = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %83, i32 0, i32 24
  %84 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %roots, align 8, !tbaa !46
  store %struct.gs_gc_root_s* %84, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.105, %for.body.95
  %85 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %cmp99 = icmp ne %struct.gs_gc_root_s* %85, null
  br i1 %cmp99, label %for.body.100, label %for.end.106

for.body.100:                                     ; preds = %for.cond.98
  %86 = bitcast %struct.enum_ptr_s* %eptr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %86) #2
  %87 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %87, i32 0, i32 2
  %88 = load i8**, i8*** %p, align 8, !tbaa !47
  %89 = load i8*, i8** %88, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %eptr, i32 0, i32 0
  store i8* %89, i8** %ptr, align 8, !tbaa !5
  br label %do.body.101

do.body.101:                                      ; preds = %for.body.100
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  %90 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %ptype = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %90, i32 0, i32 1
  %91 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !49
  %unmark = getelementptr inbounds %struct.gs_ptr_procs_s, %struct.gs_ptr_procs_s* %91, i32 0, i32 0
  %unmark104 = bitcast {}** %unmark to void (%struct.enum_ptr_s*, %struct.gc_state_s*)**
  %92 = load void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, void (%struct.enum_ptr_s*, %struct.gc_state_s*)** %unmark104, align 8, !tbaa !50
  call void %92(%struct.enum_ptr_s* %eptr, %struct.gc_state_s* %state) #4
  %93 = bitcast %struct.enum_ptr_s* %eptr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %93) #2
  br label %for.inc.105

for.inc.105:                                      ; preds = %do.end.103
  %94 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %94, i32 0, i32 0
  %95 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %next, align 8, !tbaa !52
  store %struct.gs_gc_root_s* %95, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.98

for.end.106:                                      ; preds = %for.cond.98
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %96 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc108 = add nsw i32 %96, 1
  store i32 %inc108, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.93

for.end.109:                                      ; preds = %for.cond.93
  br label %do.body.110

do.body.110:                                      ; preds = %for.end.109
  br label %do.cond.111

do.cond.111:                                      ; preds = %do.body.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  %97 = load i32, i32* %global.addr, align 4, !tbaa !8
  %tobool113 = icmp ne i32 %97, 0
  br i1 %tobool113, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %do.end.112
  %98 = bitcast %struct.op_array_table_s** %global_ops to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #2
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %call115 = call %struct.op_array_table_s* @get_global_op_array(%struct.gs_memory_s* %99) #4
  store %struct.op_array_table_s* %call115, %struct.op_array_table_s** %global_ops, align 8, !tbaa !1
  %100 = bitcast %struct.op_array_table_s** %local_ops to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %call116 = call %struct.op_array_table_s* @get_local_op_array(%struct.gs_memory_s* %101) #4
  store %struct.op_array_table_s* %call116, %struct.op_array_table_s** %local_ops, align 8, !tbaa !1
  %ntable117 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 6
  %102 = load %struct.name_table_s*, %struct.name_table_s** %ntable117, align 8, !tbaa !42
  %103 = load %struct.op_array_table_s*, %struct.op_array_table_s** %global_ops, align 8, !tbaa !1
  %104 = load %struct.op_array_table_s*, %struct.op_array_table_s** %local_ops, align 8, !tbaa !1
  call void @gc_unmark_names(%struct.name_table_s* %102, %struct.op_array_table_s* %103, %struct.op_array_table_s* %104) #4
  %105 = bitcast %struct.op_array_table_s** %local_ops to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct.op_array_table_s** %global_ops to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %do.end.112
  %stack119 = getelementptr inbounds %struct._msd, %struct._msd* %ms_default, i32 0, i32 0
  call void @gc_init_mark_stack(%struct.gc_mark_stack_s* %stack119, i32 100) #4
  %stack120 = getelementptr inbounds %struct._msd, %struct._msd* %ms_default, i32 0, i32 0
  %prev = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %stack120, i32 0, i32 0
  store %struct.gc_mark_stack_s* null, %struct.gc_mark_stack_s** %prev, align 8, !tbaa !53
  %stack121 = getelementptr inbounds %struct._msd, %struct._msd* %ms_default, i32 0, i32 0
  %on_heap = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %stack121, i32 0, i32 3
  store i32 0, i32* %on_heap, align 4, !tbaa !56
  %107 = bitcast %struct.gc_mark_stack_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #2
  %108 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %108, %struct.gc_mark_stack_s** %end, align 8, !tbaa !1
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.156, %if.end.118
  %109 = load i32, i32* %ispace, align 4, !tbaa !8
  %110 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp123 = icmp sle i32 %109, %110
  br i1 %cmp123, label %for.body.124, label %for.end.158

for.body.124:                                     ; preds = %for.cond.122
  %111 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom125 = sext i32 %111 to i64
  %arrayidx126 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom125
  %112 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx126, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %112, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.152, %for.body.124
  %113 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp128 = icmp ne %struct.gs_ref_memory_s* %113, null
  br i1 %cmp128, label %for.body.129, label %for.end.155

for.body.129:                                     ; preds = %for.cond.127
  %114 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst130 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %114, i32 0, i32 11
  %115 = load %struct.chunk_s*, %struct.chunk_s** %cfirst130, align 8, !tbaa !43
  store %struct.chunk_s* %115, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.149, %for.body.129
  %116 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp132 = icmp ne %struct.chunk_s* %116, null
  br i1 %cmp132, label %for.body.133, label %for.end.151

for.body.133:                                     ; preds = %for.cond.131
  %117 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #2
  %118 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %118, i32 0, i32 6
  %119 = load i8*, i8** %ctop, align 8, !tbaa !57
  %120 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %120, i32 0, i32 3
  %121 = load i8*, i8** %cbot, align 8, !tbaa !58
  %sub.ptr.lhs.cast = ptrtoint i8* %119 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %121 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %avail, align 4, !tbaa !8
  %122 = load i32, i32* %avail, align 4, !tbaa !8
  %conv134 = zext i32 %122 to i64
  %cmp135 = icmp uge i64 %conv134, 840
  br i1 %cmp135, label %land.lhs.true, label %if.end.148

land.lhs.true:                                    ; preds = %for.body.133
  %123 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %123, i32 0, i32 12
  %124 = load i32, i32* %inner_count, align 4, !tbaa !59
  %tobool137 = icmp ne i32 %124, 0
  br i1 %tobool137, label %if.end.148, label %if.then.138

if.then.138:                                      ; preds = %land.lhs.true
  %125 = bitcast %struct.gc_mark_stack_s** %pms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #2
  %126 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot139 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %126, i32 0, i32 3
  %127 = load i8*, i8** %cbot139, align 8, !tbaa !58
  %128 = bitcast i8* %127 to %struct.gc_mark_stack_s*
  store %struct.gc_mark_stack_s* %128, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %129 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %130 = load i32, i32* %avail, align 4, !tbaa !8
  %conv140 = zext i32 %130 to i64
  %sub = sub i64 %conv140, 40
  %div = udiv i64 %sub, 16
  %conv141 = trunc i64 %div to i32
  call void @gc_init_mark_stack(%struct.gc_mark_stack_s* %129, i32 %conv141) #4
  %131 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %132 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %end, align 8, !tbaa !1
  %next142 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %132, i32 0, i32 1
  store %struct.gc_mark_stack_s* %131, %struct.gc_mark_stack_s** %next142, align 8, !tbaa !60
  %133 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %end, align 8, !tbaa !1
  %134 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %prev143 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %134, i32 0, i32 0
  store %struct.gc_mark_stack_s* %133, %struct.gc_mark_stack_s** %prev143, align 8, !tbaa !61
  %135 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %on_heap144 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %135, i32 0, i32 3
  store i32 0, i32* %on_heap144, align 4, !tbaa !62
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.138
  br label %do.cond.146

do.cond.146:                                      ; preds = %do.body.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  %136 = bitcast %struct.gc_mark_stack_s** %pms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  br label %if.end.148

if.end.148:                                       ; preds = %do.end.147, %land.lhs.true, %for.body.133
  %137 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %137, i32 0, i32 8
  %138 = load i8*, i8** %cend, align 8, !tbaa !63
  %139 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_bot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %139, i32 0, i32 22
  store i8* %138, i8** %rescan_bot, align 8, !tbaa !64
  %140 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %140, i32 0, i32 1
  %141 = load i8*, i8** %cbase, align 8, !tbaa !65
  %142 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %142, i32 0, i32 23
  store i8* %141, i8** %rescan_top, align 8, !tbaa !66
  %143 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %144 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext150 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %144, i32 0, i32 10
  %145 = load %struct.chunk_s*, %struct.chunk_s** %cnext150, align 8, !tbaa !44
  store %struct.chunk_s* %145, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.131

for.end.151:                                      ; preds = %for.cond.131
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.end.151
  %146 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved153 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %146, i32 0, i32 28
  %147 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved153, align 8, !tbaa !45
  %state154 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %147, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state154, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.127

for.end.155:                                      ; preds = %for.cond.127
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.end.155
  %148 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc157 = add nsw i32 %148, 1
  store i32 %inc157, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.122

for.end.158:                                      ; preds = %for.cond.122
  %149 = bitcast %struct.gc_mark_stack_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast i32* %more to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #2
  store i32 0, i32* %more, align 4, !tbaa !8
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.177, %for.end.158
  %151 = load i32, i32* %ispace, align 4, !tbaa !8
  %152 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp160 = icmp sle i32 %151, %152
  br i1 %cmp160, label %for.body.162, label %for.end.179

for.body.162:                                     ; preds = %for.cond.159
  %153 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom163 = sext i32 %153 to i64
  %arrayidx164 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom163
  %154 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx164, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %154, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %155 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %roots165 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %155, i32 0, i32 24
  %156 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %roots165, align 8, !tbaa !46
  store %struct.gs_gc_root_s* %156, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.174, %for.body.162
  %157 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %cmp167 = icmp ne %struct.gs_gc_root_s* %157, null
  br i1 %cmp167, label %for.body.169, label %for.end.176

for.body.169:                                     ; preds = %for.cond.166
  br label %do.body.170

do.body.170:                                      ; preds = %for.body.169
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.170
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %158 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %159 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  %call173 = call i32 @gc_trace(%struct.gs_gc_root_s* %158, %struct.gc_state_s* %state, %struct.gc_mark_stack_s* %159) #4
  %160 = load i32, i32* %more, align 4, !tbaa !8
  %or = or i32 %160, %call173
  store i32 %or, i32* %more, align 4, !tbaa !8
  br label %for.inc.174

for.inc.174:                                      ; preds = %do.end.172
  %161 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %next175 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %161, i32 0, i32 0
  %162 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %next175, align 8, !tbaa !52
  store %struct.gs_gc_root_s* %162, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.166

for.end.176:                                      ; preds = %for.cond.166
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %163 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc178 = add nsw i32 %163, 1
  store i32 %inc178, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.159

for.end.179:                                      ; preds = %for.cond.159
  br label %do.body.180

do.body.180:                                      ; preds = %for.end.179
  br label %do.cond.181

do.cond.181:                                      ; preds = %do.body.180
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  %164 = load i32, i32* %global.addr, align 4, !tbaa !8
  %tobool183 = icmp ne i32 %164, 0
  br i1 %tobool183, label %if.end.213, label %if.then.184

if.then.184:                                      ; preds = %do.end.182
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.210, %if.then.184
  %165 = load i32, i32* %ispace, align 4, !tbaa !8
  %166 = load i32, i32* %min_collect, align 4, !tbaa !8
  %sub186 = sub nsw i32 %166, 1
  %cmp187 = icmp sle i32 %165, %sub186
  br i1 %cmp187, label %for.body.189, label %for.end.212

for.body.189:                                     ; preds = %for.cond.185
  %167 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom190 = sext i32 %167 to i64
  %arrayidx191 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom190
  %168 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx191, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %168, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.206, %for.body.189
  %169 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp193 = icmp ne %struct.gs_ref_memory_s* %169, null
  br i1 %cmp193, label %for.body.195, label %for.end.209

for.body.195:                                     ; preds = %for.cond.192
  %170 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst196 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %170, i32 0, i32 11
  %171 = load %struct.chunk_s*, %struct.chunk_s** %cfirst196, align 8, !tbaa !43
  store %struct.chunk_s* %171, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.203, %for.body.195
  %172 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp198 = icmp ne %struct.chunk_s* %172, null
  br i1 %cmp198, label %for.body.200, label %for.end.205

for.body.200:                                     ; preds = %for.cond.197
  %173 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %174 = bitcast %struct.gs_ref_memory_s* %173 to %struct.gs_memory_s*
  %175 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %176 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  %call201 = call i32 @gc_trace_chunk(%struct.gs_memory_s* %174, %struct.chunk_s* %175, %struct.gc_state_s* %state, %struct.gc_mark_stack_s* %176) #4
  %177 = load i32, i32* %more, align 4, !tbaa !8
  %or202 = or i32 %177, %call201
  store i32 %or202, i32* %more, align 4, !tbaa !8
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.200
  %178 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext204 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %178, i32 0, i32 10
  %179 = load %struct.chunk_s*, %struct.chunk_s** %cnext204, align 8, !tbaa !44
  store %struct.chunk_s* %179, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.197

for.end.205:                                      ; preds = %for.cond.197
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %180 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved207 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %180, i32 0, i32 28
  %181 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved207, align 8, !tbaa !45
  %state208 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %181, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state208, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.192

for.end.209:                                      ; preds = %for.cond.192
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.end.209
  %182 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc211 = add nsw i32 %182, 1
  store i32 %inc211, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.185

for.end.212:                                      ; preds = %for.cond.185
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %do.end.182
  br label %while.cond

while.cond:                                       ; preds = %for.end.242, %if.end.213
  %183 = load i32, i32* %more, align 4, !tbaa !8
  %cmp214 = icmp slt i32 %183, 0
  br i1 %cmp214, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %more, align 4, !tbaa !8
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.240, %while.body
  %184 = load i32, i32* %ispace, align 4, !tbaa !8
  %185 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp217 = icmp sle i32 %184, %185
  br i1 %cmp217, label %for.body.219, label %for.end.242

for.body.219:                                     ; preds = %for.cond.216
  %186 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom220 = sext i32 %186 to i64
  %arrayidx221 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom220
  %187 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx221, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %187, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.236, %for.body.219
  %188 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp223 = icmp ne %struct.gs_ref_memory_s* %188, null
  br i1 %cmp223, label %for.body.225, label %for.end.239

for.body.225:                                     ; preds = %for.cond.222
  %189 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst226 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %189, i32 0, i32 11
  %190 = load %struct.chunk_s*, %struct.chunk_s** %cfirst226, align 8, !tbaa !43
  store %struct.chunk_s* %190, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.233, %for.body.225
  %191 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp228 = icmp ne %struct.chunk_s* %191, null
  br i1 %cmp228, label %for.body.230, label %for.end.235

for.body.230:                                     ; preds = %for.cond.227
  %192 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %193 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  %call231 = call i32 @gc_rescan_chunk(%struct.chunk_s* %192, %struct.gc_state_s* %state, %struct.gc_mark_stack_s* %193) #4
  %194 = load i32, i32* %more, align 4, !tbaa !8
  %or232 = or i32 %194, %call231
  store i32 %or232, i32* %more, align 4, !tbaa !8
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.230
  %195 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext234 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %195, i32 0, i32 10
  %196 = load %struct.chunk_s*, %struct.chunk_s** %cnext234, align 8, !tbaa !44
  store %struct.chunk_s* %196, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.227

for.end.235:                                      ; preds = %for.cond.227
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.end.235
  %197 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved237 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %197, i32 0, i32 28
  %198 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved237, align 8, !tbaa !45
  %state238 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %198, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state238, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.222

for.end.239:                                      ; preds = %for.cond.222
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.end.239
  %199 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc241 = add nsw i32 %199, 1
  store i32 %inc241, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.216

for.end.242:                                      ; preds = %for.cond.216
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.243

do.body.243:                                      ; preds = %while.end
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.body.243
  br label %do.end.245

do.end.245:                                       ; preds = %do.cond.244
  %200 = bitcast i32* %more to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  %201 = bitcast %struct.gc_mark_stack_s** %pms246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #2
  %202 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %mark_stack, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %202, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  br label %while.cond.247

while.cond.247:                                   ; preds = %while.body.250, %do.end.245
  %203 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %next248 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %203, i32 0, i32 1
  %204 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next248, align 8, !tbaa !60
  %tobool249 = icmp ne %struct.gc_mark_stack_s* %204, null
  br i1 %tobool249, label %while.body.250, label %while.end.252

while.body.250:                                   ; preds = %while.cond.247
  %205 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %next251 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %205, i32 0, i32 1
  %206 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next251, align 8, !tbaa !60
  store %struct.gc_mark_stack_s* %206, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  br label %while.cond.247

while.end.252:                                    ; preds = %while.cond.247
  br label %while.cond.253

while.cond.253:                                   ; preds = %if.end.270, %while.end.252
  %207 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %tobool254 = icmp ne %struct.gc_mark_stack_s* %207, null
  br i1 %tobool254, label %while.body.255, label %while.end.271

while.body.255:                                   ; preds = %while.cond.253
  %208 = bitcast %struct.gc_mark_stack_s** %prev256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #2
  %209 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %prev257 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %209, i32 0, i32 0
  %210 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %prev257, align 8, !tbaa !61
  store %struct.gc_mark_stack_s* %210, %struct.gc_mark_stack_s** %prev256, align 8, !tbaa !1
  %211 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %on_heap258 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %211, i32 0, i32 3
  %212 = load i32, i32* %on_heap258, align 4, !tbaa !62
  %tobool259 = icmp ne i32 %212, 0
  br i1 %tobool259, label %if.then.260, label %if.else

if.then.260:                                      ; preds = %while.body.255
  %heap261 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 5
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap261, align 8, !tbaa !15
  %procs262 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs262, i32 0, i32 2
  %214 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !67
  %heap263 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 5
  %215 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap263, align 8, !tbaa !15
  %216 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %217 = bitcast %struct.gc_mark_stack_s* %216 to i8*
  call void %214(%struct.gs_memory_s* %215, i8* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.270

if.else:                                          ; preds = %while.body.255
  br label %do.body.264

do.body.264:                                      ; preds = %if.else
  br label %do.body.265

do.body.265:                                      ; preds = %do.body.264
  br label %do.cond.266

do.cond.266:                                      ; preds = %do.body.265
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  br label %do.cond.268

do.cond.268:                                      ; preds = %do.end.267
  br label %do.end.269

do.end.269:                                       ; preds = %do.cond.268
  br label %if.end.270

if.end.270:                                       ; preds = %do.end.269, %if.then.260
  %218 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %prev256, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %218, %struct.gc_mark_stack_s** %pms246, align 8, !tbaa !1
  %219 = bitcast %struct.gc_mark_stack_s** %prev256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  br label %while.cond.253

while.end.271:                                    ; preds = %while.cond.253
  %220 = bitcast %struct.gc_mark_stack_s** %pms246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #2
  br label %do.body.272

do.body.272:                                      ; preds = %while.end.271
  br label %do.cond.273

do.cond.273:                                      ; preds = %do.body.272
  br label %do.end.274

do.end.274:                                       ; preds = %do.cond.273
  %221 = load i32, i32* %global.addr, align 4, !tbaa !8
  %tobool275 = icmp ne i32 %221, 0
  br i1 %tobool275, label %if.then.276, label %if.end.282

if.then.276:                                      ; preds = %do.end.274
  %call277 = call i32 @gc_trace_finish(%struct.gc_state_s* %state) #4
  %ntable278 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 6
  %222 = load %struct.name_table_s*, %struct.name_table_s** %ntable278, align 8, !tbaa !42
  call void @names_trace_finish(%struct.name_table_s* %222, %struct.gc_state_s* %state) #4
  br label %do.body.279

do.body.279:                                      ; preds = %if.then.276
  br label %do.cond.280

do.cond.280:                                      ; preds = %do.body.279
  br label %do.end.281

do.end.281:                                       ; preds = %do.cond.280
  br label %if.end.282

if.end.282:                                       ; preds = %do.end.281, %do.end.274
  %223 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #2
  %224 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %224, i32* %i, align 4, !tbaa !8
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.290, %if.end.282
  %225 = load i32, i32* %i, align 4, !tbaa !8
  %226 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp284 = icmp sle i32 %225, %226
  br i1 %cmp284, label %for.body.286, label %for.end.292

for.body.286:                                     ; preds = %for.cond.283
  %227 = bitcast %struct.gs_ref_memory_s** %mem287 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %227) #2
  %228 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom288 = sext i32 %228 to i64
  %arrayidx289 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom288
  %229 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx289, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %229, %struct.gs_ref_memory_s** %mem287, align 8, !tbaa !1
  %230 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem287, align 8, !tbaa !1
  call void @alloc_save__filter_changes(%struct.gs_ref_memory_s* %230) #4
  %231 = bitcast %struct.gs_ref_memory_s** %mem287 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.body.286
  %232 = load i32, i32* %i, align 4, !tbaa !8
  %inc291 = add nsw i32 %232, 1
  store i32 %inc291, i32* %i, align 4, !tbaa !8
  br label %for.cond.283

for.end.292:                                      ; preds = %for.cond.283
  %233 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.316, %for.end.292
  %234 = load i32, i32* %ispace, align 4, !tbaa !8
  %235 = load i32, i32* %min_collect, align 4, !tbaa !8
  %sub294 = sub nsw i32 %235, 1
  %cmp295 = icmp sle i32 %234, %sub294
  br i1 %cmp295, label %for.body.297, label %for.end.318

for.body.297:                                     ; preds = %for.cond.293
  %236 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom298 = sext i32 %236 to i64
  %arrayidx299 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom298
  %237 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx299, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %237, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.312, %for.body.297
  %238 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp301 = icmp ne %struct.gs_ref_memory_s* %238, null
  br i1 %cmp301, label %for.body.303, label %for.end.315

for.body.303:                                     ; preds = %for.cond.300
  %239 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst304 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %239, i32 0, i32 11
  %240 = load %struct.chunk_s*, %struct.chunk_s** %cfirst304, align 8, !tbaa !43
  store %struct.chunk_s* %240, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.309, %for.body.303
  %241 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp306 = icmp ne %struct.chunk_s* %241, null
  br i1 %cmp306, label %for.body.308, label %for.end.311

for.body.308:                                     ; preds = %for.cond.305
  %242 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %243 = bitcast %struct.gs_ref_memory_s* %242 to %struct.gs_memory_s*
  %244 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_objects_clear_marks(%struct.gs_memory_s* %243, %struct.chunk_s* %244) #4
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.body.308
  %245 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext310 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %245, i32 0, i32 10
  %246 = load %struct.chunk_s*, %struct.chunk_s** %cnext310, align 8, !tbaa !44
  store %struct.chunk_s* %246, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.305

for.end.311:                                      ; preds = %for.cond.305
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.end.311
  %247 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved313 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %247, i32 0, i32 28
  %248 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved313, align 8, !tbaa !45
  %state314 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %248, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state314, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.300

for.end.315:                                      ; preds = %for.cond.300
  br label %for.inc.316

for.inc.316:                                      ; preds = %for.end.315
  %249 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc317 = add nsw i32 %249, 1
  store i32 %inc317, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.293

for.end.318:                                      ; preds = %for.cond.293
  br label %do.body.319

do.body.319:                                      ; preds = %for.end.318
  br label %do.cond.320

do.cond.320:                                      ; preds = %do.body.319
  br label %do.end.321

do.end.321:                                       ; preds = %do.cond.320
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.345, %do.end.321
  %250 = load i32, i32* %ispace, align 4, !tbaa !8
  %251 = load i32, i32* %min_collect, align 4, !tbaa !8
  %sub323 = sub nsw i32 %251, 1
  %cmp324 = icmp sle i32 %250, %sub323
  br i1 %cmp324, label %for.body.326, label %for.end.347

for.body.326:                                     ; preds = %for.cond.322
  %252 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom327 = sext i32 %252 to i64
  %arrayidx328 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom327
  %253 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx328, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %253, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.341, %for.body.326
  %254 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp330 = icmp ne %struct.gs_ref_memory_s* %254, null
  br i1 %cmp330, label %for.body.332, label %for.end.344

for.body.332:                                     ; preds = %for.cond.329
  %255 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst333 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %255, i32 0, i32 11
  %256 = load %struct.chunk_s*, %struct.chunk_s** %cfirst333, align 8, !tbaa !43
  store %struct.chunk_s* %256, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.338, %for.body.332
  %257 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp335 = icmp ne %struct.chunk_s* %257, null
  br i1 %cmp335, label %for.body.337, label %for.end.340

for.body.337:                                     ; preds = %for.cond.334
  %258 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_clear_reloc(%struct.chunk_s* %258) #4
  br label %for.inc.338

for.inc.338:                                      ; preds = %for.body.337
  %259 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext339 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %259, i32 0, i32 10
  %260 = load %struct.chunk_s*, %struct.chunk_s** %cnext339, align 8, !tbaa !44
  store %struct.chunk_s* %260, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.334

for.end.340:                                      ; preds = %for.cond.334
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.end.340
  %261 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved342 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %261, i32 0, i32 28
  %262 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved342, align 8, !tbaa !45
  %state343 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %262, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state343, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.329

for.end.344:                                      ; preds = %for.cond.329
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.end.344
  %263 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc346 = add nsw i32 %263, 1
  store i32 %inc346, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.322

for.end.347:                                      ; preds = %for.cond.322
  br label %do.body.348

do.body.348:                                      ; preds = %for.end.347
  br label %do.cond.349

do.cond.349:                                      ; preds = %do.body.348
  br label %do.end.350

do.end.350:                                       ; preds = %do.cond.349
  %264 = bitcast i32* %i351 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #2
  %265 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %265, i32* %i351, align 4, !tbaa !8
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.361, %do.end.350
  %266 = load i32, i32* %i351, align 4, !tbaa !8
  %267 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp353 = icmp sle i32 %266, %267
  br i1 %cmp353, label %for.body.355, label %for.end.363

for.body.355:                                     ; preds = %for.cond.352
  %268 = load i32, i32* %i351, align 4, !tbaa !8
  %idxprom356 = sext i32 %268 to i64
  %arrayidx357 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom356
  %269 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx357, align 8, !tbaa !1
  %270 = bitcast %struct.gs_ref_memory_s* %269 to %struct.gs_memory_s*
  %procs358 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %270, i32 0, i32 1
  %enable_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs358, i32 0, i32 22
  %271 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free, align 8, !tbaa !68
  %272 = load i32, i32* %i351, align 4, !tbaa !8
  %idxprom359 = sext i32 %272 to i64
  %arrayidx360 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom359
  %273 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx360, align 8, !tbaa !1
  %274 = bitcast %struct.gs_ref_memory_s* %273 to %struct.gs_memory_s*
  call void %271(%struct.gs_memory_s* %274, i32 0) #4
  br label %for.inc.361

for.inc.361:                                      ; preds = %for.body.355
  %275 = load i32, i32* %i351, align 4, !tbaa !8
  %inc362 = add nsw i32 %275, 1
  store i32 %inc362, i32* %i351, align 4, !tbaa !8
  br label %for.cond.352

for.end.363:                                      ; preds = %for.cond.352
  %276 = bitcast i32* %i351 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %278 = bitcast %struct.gs_ref_memory_s* %277 to %struct.gs_memory_s*
  %cur_mem = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 7
  store %struct.gs_memory_s* %278, %struct.gs_memory_s** %cur_mem, align 8, !tbaa !69
  %279 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %279, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.386, %for.end.363
  %280 = load i32, i32* %ispace, align 4, !tbaa !8
  %281 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp365 = icmp sle i32 %280, %281
  br i1 %cmp365, label %for.body.367, label %for.end.388

for.body.367:                                     ; preds = %for.cond.364
  %282 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom368 = sext i32 %282 to i64
  %arrayidx369 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom368
  %283 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx369, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %283, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.382, %for.body.367
  %284 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp371 = icmp ne %struct.gs_ref_memory_s* %284, null
  br i1 %cmp371, label %for.body.373, label %for.end.385

for.body.373:                                     ; preds = %for.cond.370
  %285 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst374 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %285, i32 0, i32 11
  %286 = load %struct.chunk_s*, %struct.chunk_s** %cfirst374, align 8, !tbaa !43
  store %struct.chunk_s* %286, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.379, %for.body.373
  %287 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp376 = icmp ne %struct.chunk_s* %287, null
  br i1 %cmp376, label %for.body.378, label %for.end.381

for.body.378:                                     ; preds = %for.cond.375
  %288 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_objects_set_reloc(%struct.gc_state_s* %state, %struct.chunk_s* %288) #4
  %289 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_strings_set_reloc(%struct.chunk_s* %289) #4
  br label %for.inc.379

for.inc.379:                                      ; preds = %for.body.378
  %290 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext380 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %290, i32 0, i32 10
  %291 = load %struct.chunk_s*, %struct.chunk_s** %cnext380, align 8, !tbaa !44
  store %struct.chunk_s* %291, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.375

for.end.381:                                      ; preds = %for.cond.375
  br label %for.inc.382

for.inc.382:                                      ; preds = %for.end.381
  %292 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved383 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %292, i32 0, i32 28
  %293 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved383, align 8, !tbaa !45
  %state384 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %293, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state384, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.370

for.end.385:                                      ; preds = %for.cond.370
  br label %for.inc.386

for.inc.386:                                      ; preds = %for.end.385
  %294 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc387 = add nsw i32 %294, 1
  store i32 %inc387, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.364

for.end.388:                                      ; preds = %for.cond.364
  %295 = bitcast i32* %i389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #2
  %296 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %296, i32* %i389, align 4, !tbaa !8
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.400, %for.end.388
  %297 = load i32, i32* %i389, align 4, !tbaa !8
  %298 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp391 = icmp sle i32 %297, %298
  br i1 %cmp391, label %for.body.393, label %for.end.402

for.body.393:                                     ; preds = %for.cond.390
  %299 = load i32, i32* %i389, align 4, !tbaa !8
  %idxprom394 = sext i32 %299 to i64
  %arrayidx395 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom394
  %300 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx395, align 8, !tbaa !1
  %301 = bitcast %struct.gs_ref_memory_s* %300 to %struct.gs_memory_s*
  %procs396 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %301, i32 0, i32 1
  %enable_free397 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs396, i32 0, i32 22
  %302 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free397, align 8, !tbaa !68
  %303 = load i32, i32* %i389, align 4, !tbaa !8
  %idxprom398 = sext i32 %303 to i64
  %arrayidx399 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom398
  %304 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx399, align 8, !tbaa !1
  %305 = bitcast %struct.gs_ref_memory_s* %304 to %struct.gs_memory_s*
  call void %302(%struct.gs_memory_s* %305, i32 1) #4
  br label %for.inc.400

for.inc.400:                                      ; preds = %for.body.393
  %306 = load i32, i32* %i389, align 4, !tbaa !8
  %inc401 = add nsw i32 %306, 1
  store i32 %inc401, i32* %i389, align 4, !tbaa !8
  br label %for.cond.390

for.end.402:                                      ; preds = %for.cond.390
  %307 = bitcast i32* %i389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  br label %do.body.403

do.body.403:                                      ; preds = %for.end.402
  br label %do.cond.404

do.cond.404:                                      ; preds = %do.body.403
  br label %do.end.405

do.end.405:                                       ; preds = %do.cond.404
  %relocating_untraced406 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 4
  store i32 1, i32* %relocating_untraced406, align 4, !tbaa !40
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.430, %do.end.405
  %308 = load i32, i32* %ispace, align 4, !tbaa !8
  %309 = load i32, i32* %min_collect, align 4, !tbaa !8
  %sub408 = sub nsw i32 %309, 1
  %cmp409 = icmp sle i32 %308, %sub408
  br i1 %cmp409, label %for.body.411, label %for.end.432

for.body.411:                                     ; preds = %for.cond.407
  %310 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom412 = sext i32 %310 to i64
  %arrayidx413 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom412
  %311 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx413, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %311, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.414

for.cond.414:                                     ; preds = %for.inc.426, %for.body.411
  %312 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp415 = icmp ne %struct.gs_ref_memory_s* %312, null
  br i1 %cmp415, label %for.body.417, label %for.end.429

for.body.417:                                     ; preds = %for.cond.414
  %313 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst418 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %313, i32 0, i32 11
  %314 = load %struct.chunk_s*, %struct.chunk_s** %cfirst418, align 8, !tbaa !43
  store %struct.chunk_s* %314, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.423, %for.body.417
  %315 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp420 = icmp ne %struct.chunk_s* %315, null
  br i1 %cmp420, label %for.body.422, label %for.end.425

for.body.422:                                     ; preds = %for.cond.419
  %316 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %317 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @gc_do_reloc(%struct.chunk_s* %316, %struct.gs_ref_memory_s* %317, %struct.gc_state_s* %state) #4
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.body.422
  %318 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext424 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %318, i32 0, i32 10
  %319 = load %struct.chunk_s*, %struct.chunk_s** %cnext424, align 8, !tbaa !44
  store %struct.chunk_s* %319, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.419

for.end.425:                                      ; preds = %for.cond.419
  br label %for.inc.426

for.inc.426:                                      ; preds = %for.end.425
  %320 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved427 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %320, i32 0, i32 28
  %321 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved427, align 8, !tbaa !45
  %state428 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %321, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state428, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.414

for.end.429:                                      ; preds = %for.cond.414
  br label %for.inc.430

for.inc.430:                                      ; preds = %for.end.429
  %322 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc431 = add nsw i32 %322, 1
  store i32 %inc431, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.407

for.end.432:                                      ; preds = %for.cond.407
  %relocating_untraced433 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %state, i32 0, i32 4
  store i32 0, i32* %relocating_untraced433, align 4, !tbaa !40
  %323 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %323, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.434

for.cond.434:                                     ; preds = %for.inc.456, %for.end.432
  %324 = load i32, i32* %ispace, align 4, !tbaa !8
  %325 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp435 = icmp sle i32 %324, %325
  br i1 %cmp435, label %for.body.437, label %for.end.458

for.body.437:                                     ; preds = %for.cond.434
  %326 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom438 = sext i32 %326 to i64
  %arrayidx439 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom438
  %327 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx439, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %327, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.452, %for.body.437
  %328 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp441 = icmp ne %struct.gs_ref_memory_s* %328, null
  br i1 %cmp441, label %for.body.443, label %for.end.455

for.body.443:                                     ; preds = %for.cond.440
  %329 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst444 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %329, i32 0, i32 11
  %330 = load %struct.chunk_s*, %struct.chunk_s** %cfirst444, align 8, !tbaa !43
  store %struct.chunk_s* %330, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.449, %for.body.443
  %331 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp446 = icmp ne %struct.chunk_s* %331, null
  br i1 %cmp446, label %for.body.448, label %for.end.451

for.body.448:                                     ; preds = %for.cond.445
  %332 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %333 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @gc_do_reloc(%struct.chunk_s* %332, %struct.gs_ref_memory_s* %333, %struct.gc_state_s* %state) #4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.448
  %334 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext450 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %334, i32 0, i32 10
  %335 = load %struct.chunk_s*, %struct.chunk_s** %cnext450, align 8, !tbaa !44
  store %struct.chunk_s* %335, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.445

for.end.451:                                      ; preds = %for.cond.445
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.end.451
  %336 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved453 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %336, i32 0, i32 28
  %337 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved453, align 8, !tbaa !45
  %state454 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %337, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state454, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.440

for.end.455:                                      ; preds = %for.cond.440
  br label %for.inc.456

for.inc.456:                                      ; preds = %for.end.455
  %338 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc457 = add nsw i32 %338, 1
  store i32 %inc457, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.434

for.end.458:                                      ; preds = %for.cond.434
  br label %do.body.459

do.body.459:                                      ; preds = %for.end.458
  br label %do.cond.460

do.cond.460:                                      ; preds = %do.body.459
  br label %do.end.461

do.end.461:                                       ; preds = %do.cond.460
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.462

for.cond.462:                                     ; preds = %for.inc.493, %do.end.461
  %339 = load i32, i32* %ispace, align 4, !tbaa !8
  %340 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp463 = icmp sle i32 %339, %340
  br i1 %cmp463, label %for.body.465, label %for.end.495

for.body.465:                                     ; preds = %for.cond.462
  %341 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom466 = sext i32 %341 to i64
  %arrayidx467 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom466
  %342 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx467, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %342, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %343 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %roots468 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %343, i32 0, i32 24
  %344 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %roots468, align 8, !tbaa !46
  store %struct.gs_gc_root_s* %344, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.469

for.cond.469:                                     ; preds = %for.inc.490, %for.body.465
  %345 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %cmp470 = icmp ne %struct.gs_gc_root_s* %345, null
  br i1 %cmp470, label %for.body.472, label %for.end.492

for.body.472:                                     ; preds = %for.cond.469
  br label %do.body.473

do.body.473:                                      ; preds = %for.body.472
  br label %do.cond.474

do.cond.474:                                      ; preds = %do.body.473
  br label %do.end.475

do.end.475:                                       ; preds = %do.cond.474
  %346 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %ptype476 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %346, i32 0, i32 1
  %347 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype476, align 8, !tbaa !49
  %cmp477 = icmp eq %struct.gs_ptr_procs_s* %347, bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*)
  br i1 %cmp477, label %if.then.479, label %if.else.481

if.then.479:                                      ; preds = %do.end.475
  %348 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #2
  %349 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %p480 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %349, i32 0, i32 2
  %350 = load i8**, i8*** %p480, align 8, !tbaa !47
  %351 = load i8*, i8** %350, align 8, !tbaa !1
  %352 = bitcast i8* %351 to %struct.ref_s*
  store %struct.ref_s* %352, %struct.ref_s** %pref, align 8, !tbaa !1
  %353 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %354 = bitcast %struct.ref_s* %353 to i16*
  %355 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %355, i64 1
  %356 = bitcast %struct.ref_s* %add.ptr to i16*
  call void @igc_reloc_refs(i16* %354, i16* %356, %struct.gc_state_s* %state) #4
  %357 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #2
  br label %if.end.486

if.else.481:                                      ; preds = %do.end.475
  %358 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %ptype482 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %358, i32 0, i32 1
  %359 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype482, align 8, !tbaa !49
  %reloc = getelementptr inbounds %struct.gs_ptr_procs_s, %struct.gs_ptr_procs_s* %359, i32 0, i32 2
  %360 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc, align 8, !tbaa !70
  %361 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %p483 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %361, i32 0, i32 2
  %362 = load i8**, i8*** %p483, align 8, !tbaa !47
  %363 = load i8*, i8** %362, align 8, !tbaa !1
  %call484 = call i8* %360(i8* %363, %struct.gc_state_s* %state) #4
  %364 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %p485 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %364, i32 0, i32 2
  %365 = load i8**, i8*** %p485, align 8, !tbaa !47
  store i8* %call484, i8** %365, align 8, !tbaa !1
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.481, %if.then.479
  br label %do.body.487

do.body.487:                                      ; preds = %if.end.486
  br label %do.cond.488

do.cond.488:                                      ; preds = %do.body.487
  br label %do.end.489

do.end.489:                                       ; preds = %do.cond.488
  br label %for.inc.490

for.inc.490:                                      ; preds = %do.end.489
  %366 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  %next491 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %366, i32 0, i32 0
  %367 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %next491, align 8, !tbaa !52
  store %struct.gs_gc_root_s* %367, %struct.gs_gc_root_s** %rp, align 8, !tbaa !1
  br label %for.cond.469

for.end.492:                                      ; preds = %for.cond.469
  br label %for.inc.493

for.inc.493:                                      ; preds = %for.end.492
  %368 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc494 = add nsw i32 %368, 1
  store i32 %inc494, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.462

for.end.495:                                      ; preds = %for.cond.462
  br label %do.body.496

do.body.496:                                      ; preds = %for.end.495
  br label %do.cond.497

do.cond.497:                                      ; preds = %do.body.496
  br label %do.end.498

do.end.498:                                       ; preds = %do.cond.497
  %369 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %369, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.532, %do.end.498
  %370 = load i32, i32* %ispace, align 4, !tbaa !8
  %371 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp500 = icmp sle i32 %370, %371
  br i1 %cmp500, label %for.body.502, label %for.end.534

for.body.502:                                     ; preds = %for.cond.499
  %372 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom503 = sext i32 %372 to i64
  %arrayidx504 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom503
  %373 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx504, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %373, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.505

for.cond.505:                                     ; preds = %for.inc.528, %for.body.502
  %374 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp506 = icmp ne %struct.gs_ref_memory_s* %374, null
  br i1 %cmp506, label %for.body.508, label %for.end.531

for.body.508:                                     ; preds = %for.cond.505
  %375 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst509 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %375, i32 0, i32 11
  %376 = load %struct.chunk_s*, %struct.chunk_s** %cfirst509, align 8, !tbaa !43
  store %struct.chunk_s* %376, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.510

for.cond.510:                                     ; preds = %for.inc.524, %for.body.508
  %377 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp511 = icmp ne %struct.chunk_s* %377, null
  br i1 %cmp511, label %for.body.513, label %for.end.526

for.body.513:                                     ; preds = %for.cond.510
  br label %do.body.514

do.body.514:                                      ; preds = %for.body.513
  br label %do.cond.515

do.cond.515:                                      ; preds = %do.body.514
  br label %do.end.516

do.end.516:                                       ; preds = %do.cond.515
  %378 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @gc_objects_compact(%struct.chunk_s* %378, %struct.gc_state_s* %state) #4
  %379 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %380 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  call void @gc_strings_compact(%struct.chunk_s* %379, %struct.gs_memory_s* %380) #4
  br label %do.body.517

do.body.517:                                      ; preds = %do.end.516
  br label %do.cond.518

do.cond.518:                                      ; preds = %do.body.517
  br label %do.end.519

do.end.519:                                       ; preds = %do.cond.518
  %381 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %381, i32 0, i32 14
  %382 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !71
  %383 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp520 = icmp eq %struct.chunk_s* %382, %383
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %do.end.519
  %384 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %384, i32 0, i32 13
  %385 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %386 = bitcast %struct.chunk_s* %cc to i8*
  %387 = bitcast %struct.chunk_s* %385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %386, i8* %387, i64 184, i32 8, i1 false), !tbaa.struct !72
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.522, %do.end.519
  br label %for.inc.524

for.inc.524:                                      ; preds = %if.end.523
  %388 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext525 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %388, i32 0, i32 10
  %389 = load %struct.chunk_s*, %struct.chunk_s** %cnext525, align 8, !tbaa !44
  store %struct.chunk_s* %389, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.510

for.end.526:                                      ; preds = %for.cond.510
  %390 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %reloc_saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %390, i32 0, i32 31
  %391 = load %struct.alloc_save_s*, %struct.alloc_save_s** %reloc_saved, align 8, !tbaa !73
  %392 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved527 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %392, i32 0, i32 28
  store %struct.alloc_save_s* %391, %struct.alloc_save_s** %saved527, align 8, !tbaa !45
  %393 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @ialloc_reset_free(%struct.gs_ref_memory_s* %393) #4
  br label %for.inc.528

for.inc.528:                                      ; preds = %for.end.526
  %394 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved529 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %394, i32 0, i32 28
  %395 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved529, align 8, !tbaa !45
  %state530 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %395, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state530, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.505

for.end.531:                                      ; preds = %for.cond.505
  br label %for.inc.532

for.inc.532:                                      ; preds = %for.end.531
  %396 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc533 = add nsw i32 %396, 1
  store i32 %inc533, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.499

for.end.534:                                      ; preds = %for.cond.499
  br label %do.body.535

do.body.535:                                      ; preds = %for.end.534
  br label %do.cond.536

do.cond.536:                                      ; preds = %do.body.535
  br label %do.end.537

do.end.537:                                       ; preds = %do.cond.536
  %397 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %397, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.552, %do.end.537
  %398 = load i32, i32* %ispace, align 4, !tbaa !8
  %399 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp539 = icmp sle i32 %398, %399
  br i1 %cmp539, label %for.body.541, label %for.end.554

for.body.541:                                     ; preds = %for.cond.538
  %400 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom542 = sext i32 %400 to i64
  %arrayidx543 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom542
  %401 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx543, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %401, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.544

for.cond.544:                                     ; preds = %for.inc.548, %for.body.541
  %402 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp545 = icmp ne %struct.gs_ref_memory_s* %402, null
  br i1 %cmp545, label %for.body.547, label %for.end.551

for.body.547:                                     ; preds = %for.cond.544
  %403 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @gc_free_empty_chunks(%struct.gs_ref_memory_s* %403) #4
  br label %for.inc.548

for.inc.548:                                      ; preds = %for.body.547
  %404 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved549 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %404, i32 0, i32 28
  %405 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved549, align 8, !tbaa !45
  %state550 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %405, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state550, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond.544

for.end.551:                                      ; preds = %for.cond.544
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.end.551
  %406 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc553 = add nsw i32 %406, 1
  store i32 %inc553, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.538

for.end.554:                                      ; preds = %for.cond.538
  br label %do.body.555

do.body.555:                                      ; preds = %for.end.554
  br label %do.cond.556

do.cond.556:                                      ; preds = %do.body.555
  br label %do.end.557

do.end.557:                                       ; preds = %do.cond.556
  %407 = load i32, i32* %min_collect, align 4, !tbaa !8
  store i32 %407, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.558

for.cond.558:                                     ; preds = %for.inc.602, %do.end.557
  %408 = load i32, i32* %ispace, align 4, !tbaa !8
  %409 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp559 = icmp sle i32 %408, %409
  br i1 %cmp559, label %for.body.561, label %for.end.604

for.body.561:                                     ; preds = %for.cond.558
  %410 = bitcast %struct.alloc_save_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %410) #2
  %411 = bitcast %struct.alloc_save_s** %prev562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %411) #2
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  %412 = bitcast %struct.alloc_save_s** %next563 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %412) #2
  %413 = bitcast %struct.gs_memory_status_s* %total to i8*
  call void @llvm.lifetime.start(i64 24, i8* %413) #2
  %414 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom564 = sext i32 %414 to i64
  %arrayidx565 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom564
  %415 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx565, align 8, !tbaa !1
  %saved566 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %415, i32 0, i32 28
  %416 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved566, align 8, !tbaa !45
  store %struct.alloc_save_s* %416, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  br label %for.cond.567

for.cond.567:                                     ; preds = %for.inc.575, %for.body.561
  %417 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  %cmp568 = icmp ne %struct.alloc_save_s* %417, null
  br i1 %cmp568, label %for.body.570, label %for.end.576

for.body.570:                                     ; preds = %for.cond.567
  %418 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  %state571 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %418, i32 0, i32 0
  %saved572 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state571, i32 0, i32 28
  %419 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved572, align 8, !tbaa !74
  store %struct.alloc_save_s* %419, %struct.alloc_save_s** %next563, align 8, !tbaa !1
  %420 = load %struct.alloc_save_s*, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  %421 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  %state573 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %421, i32 0, i32 0
  %saved574 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state573, i32 0, i32 28
  store %struct.alloc_save_s* %420, %struct.alloc_save_s** %saved574, align 8, !tbaa !74
  br label %for.inc.575

for.inc.575:                                      ; preds = %for.body.570
  %422 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  store %struct.alloc_save_s* %422, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  %423 = load %struct.alloc_save_s*, %struct.alloc_save_s** %next563, align 8, !tbaa !1
  store %struct.alloc_save_s* %423, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  br label %for.cond.567

for.end.576:                                      ; preds = %for.cond.567
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %total, i32 0, i32 0
  store i64 0, i64* %allocated, align 8, !tbaa !76
  %used = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %total, i32 0, i32 1
  store i64 0, i64* %used, align 8, !tbaa !77
  %424 = load %struct.alloc_save_s*, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  store %struct.alloc_save_s* %424, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  br label %for.cond.577

for.cond.577:                                     ; preds = %for.inc.590, %for.end.576
  %425 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  %cmp578 = icmp ne %struct.alloc_save_s* %425, null
  br i1 %cmp578, label %for.body.580, label %for.end.591

for.body.580:                                     ; preds = %for.cond.577
  %426 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  %state581 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %426, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state581, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %427 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved582 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %427, i32 0, i32 28
  %428 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved582, align 8, !tbaa !45
  store %struct.alloc_save_s* %428, %struct.alloc_save_s** %next563, align 8, !tbaa !1
  %429 = load %struct.alloc_save_s*, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  %430 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved583 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %430, i32 0, i32 28
  store %struct.alloc_save_s* %429, %struct.alloc_save_s** %saved583, align 8, !tbaa !45
  %431 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %431, i32 0, i32 32
  %432 = bitcast %struct.gs_memory_status_s* %previous_status to i8*
  %433 = bitcast %struct.gs_memory_status_s* %total to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %432, i8* %433, i64 24, i32 8, i1 false), !tbaa.struct !78
  br label %do.body.584

do.body.584:                                      ; preds = %for.body.580
  br label %do.cond.585

do.cond.585:                                      ; preds = %do.body.584
  br label %do.end.586

do.end.586:                                       ; preds = %do.cond.585
  %434 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %435 = bitcast %struct.gs_ref_memory_s* %434 to %struct.gs_memory_s*
  %procs587 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %435, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs587, i32 0, i32 4
  %436 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !79
  %437 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %438 = bitcast %struct.gs_ref_memory_s* %437 to %struct.gs_memory_s*
  call void %436(%struct.gs_memory_s* %438, %struct.gs_memory_status_s* %total) #4
  %439 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %allocated588 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %439, i32 0, i32 16
  %440 = load i64, i64* %allocated588, align 8, !tbaa !80
  %allocated589 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %total, i32 0, i32 0
  %441 = load i64, i64* %allocated589, align 8, !tbaa !76
  %add = add i64 %440, %441
  %442 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %442, i32 0, i32 17
  store i64 %add, i64* %gc_allocated, align 8, !tbaa !81
  br label %for.inc.590

for.inc.590:                                      ; preds = %do.end.586
  %443 = load %struct.alloc_save_s*, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  store %struct.alloc_save_s* %443, %struct.alloc_save_s** %prev562, align 8, !tbaa !1
  %444 = load %struct.alloc_save_s*, %struct.alloc_save_s** %next563, align 8, !tbaa !1
  store %struct.alloc_save_s* %444, %struct.alloc_save_s** %curr, align 8, !tbaa !1
  br label %for.cond.577

for.end.591:                                      ; preds = %for.cond.577
  %445 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom592 = sext i32 %445 to i64
  %arrayidx593 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom592
  %446 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx593, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %446, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %447 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %previous_status594 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %447, i32 0, i32 32
  %448 = bitcast %struct.gs_memory_status_s* %previous_status594 to i8*
  %449 = bitcast %struct.gs_memory_status_s* %total to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %448, i8* %449, i64 24, i32 8, i1 false), !tbaa.struct !78
  %450 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %allocated595 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %450, i32 0, i32 16
  %451 = load i64, i64* %allocated595, align 8, !tbaa !80
  %allocated596 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %total, i32 0, i32 0
  %452 = load i64, i64* %allocated596, align 8, !tbaa !76
  %add597 = add i64 %451, %452
  %453 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_allocated598 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %453, i32 0, i32 17
  store i64 %add597, i64* %gc_allocated598, align 8, !tbaa !81
  br label %do.body.599

do.body.599:                                      ; preds = %for.end.591
  br label %do.cond.600

do.cond.600:                                      ; preds = %do.body.599
  br label %do.end.601

do.end.601:                                       ; preds = %do.cond.600
  %454 = bitcast %struct.gs_memory_status_s* %total to i8*
  call void @llvm.lifetime.end(i64 24, i8* %454) #2
  %455 = bitcast %struct.alloc_save_s** %next563 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %455) #2
  %456 = bitcast %struct.alloc_save_s** %prev562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %456) #2
  %457 = bitcast %struct.alloc_save_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %457) #2
  br label %for.inc.602

for.inc.602:                                      ; preds = %do.end.601
  %458 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc603 = add nsw i32 %458, 1
  store i32 %inc603, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.558

for.end.604:                                      ; preds = %for.cond.558
  br label %do.body.605

do.body.605:                                      ; preds = %for.end.604
  br label %do.cond.606

do.cond.606:                                      ; preds = %do.body.605
  br label %do.end.607

do.end.607:                                       ; preds = %do.cond.606
  br label %no_collect

no_collect:                                       ; preds = %do.end.607
  store i32 1, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.608

for.cond.608:                                     ; preds = %for.inc.619, %no_collect
  %459 = load i32, i32* %ispace, align 4, !tbaa !8
  %460 = load i32, i32* %max_trace, align 4, !tbaa !8
  %cmp609 = icmp sle i32 %459, %460
  br i1 %cmp609, label %for.body.611, label %for.end.621

for.body.611:                                     ; preds = %for.cond.608
  %461 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom612 = sext i32 %461 to i64
  %arrayidx613 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom612
  %462 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx613, align 8, !tbaa !1
  %463 = bitcast %struct.gs_ref_memory_s* %462 to %struct.gs_memory_s*
  %procs614 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %463, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs614, i32 0, i32 21
  %464 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !82
  %465 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom615 = sext i32 %465 to i64
  %arrayidx616 = getelementptr inbounds [8 x %struct.gs_ref_memory_s*], [8 x %struct.gs_ref_memory_s*]* %space_memories, i32 0, i64 %idxprom615
  %466 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx616, align 8, !tbaa !1
  %467 = bitcast %struct.gs_ref_memory_s* %466 to %struct.gs_memory_s*
  %468 = load i32, i32* %ispace, align 4, !tbaa !8
  %idxprom617 = sext i32 %468 to i64
  %arrayidx618 = getelementptr inbounds [8 x %struct.gs_gc_root_s], [8 x %struct.gs_gc_root_s]* %space_roots, i32 0, i64 %idxprom617
  call void %464(%struct.gs_memory_s* %467, %struct.gs_gc_root_s* %arrayidx618, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #4
  br label %for.inc.619

for.inc.619:                                      ; preds = %for.body.611
  %469 = load i32, i32* %ispace, align 4, !tbaa !8
  %inc620 = add nsw i32 %469, 1
  store i32 %inc620, i32* %ispace, align 4, !tbaa !8
  br label %for.cond.608

for.end.621:                                      ; preds = %for.cond.608
  br label %do.body.622

do.body.622:                                      ; preds = %for.end.621
  br label %do.cond.623

do.cond.623:                                      ; preds = %do.body.622
  br label %do.end.624

do.end.624:                                       ; preds = %do.cond.623
  %470 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #2
  %471 = bitcast %struct.gc_mark_stack_s** %mark_stack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %471) #2
  %472 = bitcast %struct._msd* %ms_default to i8*
  call void @llvm.lifetime.end(i64 1640, i8* %472) #2
  %473 = bitcast %struct.gc_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 96, i8* %473) #2
  %474 = bitcast %struct.gs_gc_root_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #2
  %475 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #2
  %476 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #2
  %477 = bitcast i32* %ispace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #2
  %478 = bitcast i32* %min_collect_vm_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #2
  %479 = bitcast i32* %min_collect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #2
  %480 = bitcast i32* %max_trace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #2
  %481 = bitcast [8 x %struct.gs_gc_root_s]* %space_roots to i8*
  call void @llvm.lifetime.end(i64 256, i8* %481) #2
  %482 = bitcast [8 x %struct.gs_ref_memory_s*]* %space_memories to i8*
  call void @llvm.lifetime.end(i64 64, i8* %482) #2
  %483 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.end(i64 40, i8* %483) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_objects_clear_marks(%struct.gs_memory_s* %mem, %struct.chunk_s* %cp) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cp.addr = alloca %struct.chunk_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %proc = alloca void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %cbase, align 8, !tbaa !65
  %3 = bitcast i8* %2 to %struct.obj_header_s*
  store %struct.obj_header_s* %3, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 3
  %6 = load i8*, i8** %cbot, align 8, !tbaa !58
  %7 = bitcast i8* %6 to %struct.obj_header_s*
  store %struct.obj_header_s* %7, %struct.obj_header_s** %end, align 8, !tbaa !1
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %11, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %12 = load i32, i32* %size1, align 4, !tbaa !83
  store i32 %12, i32* %size, align 4, !tbaa !8
  %13 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %14, i32 0, i32 0
  %o3 = bitcast %union._d* %d2 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o3, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %clear_marks = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %15, i32 0, i32 3
  %16 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %clear_marks, align 8, !tbaa !85
  store void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %16, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  br label %do.body.4

do.body.4:                                        ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d6 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %17, i32 0, i32 0
  %o7 = bitcast %union._d* %d6 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o7, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %18 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %18, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %18, align 4
  %19 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %cmp8 = icmp ne void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %19, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.5
  %20 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %22, i64 1
  %23 = bitcast %struct.obj_header_s* %add.ptr to i8*
  %24 = load i32, i32* %size, align 4, !tbaa !8
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d9 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %25, i32 0, i32 0
  %o10 = bitcast %union._d* %d9 to %struct.obj_header_data_s*
  %t11 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o10, i32 0, i32 2
  %type12 = bitcast %union._t* %t11 to %struct.gs_memory_struct_type_s**
  %26 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type12, align 8, !tbaa !1
  call void %20(%struct.gs_memory_s* %21, i8* %23, i32 %24, %struct.gs_memory_struct_type_s* %26) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.5
  %27 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %29 = bitcast %struct.obj_header_s* %28 to i8*
  %30 = load i32, i32* %size, align 4, !tbaa !8
  %conv = zext i32 %30 to i64
  %add = add i64 %conv, 24
  %add13 = add i64 %add, 7
  %and = and i64 %add13, -8
  %add.ptr14 = getelementptr inbounds i8, i8* %29, i64 %and
  %31 = bitcast i8* %add.ptr14 to %struct.obj_header_s*
  store %struct.obj_header_s* %31, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  ret void
}

declare void @gc_strings_set_marks(%struct.chunk_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.op_array_table_s* @get_global_op_array(%struct.gs_memory_s*) #1

declare %struct.op_array_table_s* @get_local_op_array(%struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_unmark_names(%struct.name_table_s* %nt, %struct.op_array_table_s* %op_array_table_global, %struct.op_array_table_s* %op_array_table_local) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %op_array_table_global.addr = alloca %struct.op_array_table_s*, align 8
  %op_array_table_local.addr = alloca %struct.op_array_table_s*, align 8
  %i = alloca i32, align 4
  %nidx = alloca i32, align 4
  %nidx6 = alloca i32, align 4
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !1
  store %struct.op_array_table_s* %op_array_table_global, %struct.op_array_table_s** %op_array_table_global.addr, align 8, !tbaa !1
  store %struct.op_array_table_s* %op_array_table_local, %struct.op_array_table_s** %op_array_table_local.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !1
  call void @names_unmark_all(%struct.name_table_s* %1) #4
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !8
  %3 = load %struct.op_array_table_s*, %struct.op_array_table_s** %op_array_table_global.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %3, i32 0, i32 2
  %4 = load i32, i32* %count, align 4, !tbaa !87
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.op_array_table_s*, %struct.op_array_table_s** %op_array_table_global.addr, align 8, !tbaa !1
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %7, i32 0, i32 1
  %8 = load i16*, i16** %nx_table, align 8, !tbaa !92
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !93
  %conv = zext i16 %9 to i32
  store i32 %conv, i32* %nidx, align 4, !tbaa !8
  %10 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !1
  %11 = load i32, i32* %nidx, align 4, !tbaa !8
  %call = call i32 @names_mark_index(%struct.name_table_s* %10, i32 %11) #4
  %12 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.12, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %15 = load %struct.op_array_table_s*, %struct.op_array_table_s** %op_array_table_local.addr, align 8, !tbaa !1
  %count2 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %15, i32 0, i32 2
  %16 = load i32, i32* %count2, align 4, !tbaa !87
  %cmp3 = icmp ult i32 %14, %16
  br i1 %cmp3, label %for.body.5, label %for.end.14

for.body.5:                                       ; preds = %for.cond.1
  %17 = bitcast i32* %nidx6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom7 = zext i32 %18 to i64
  %19 = load %struct.op_array_table_s*, %struct.op_array_table_s** %op_array_table_local.addr, align 8, !tbaa !1
  %nx_table8 = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %19, i32 0, i32 1
  %20 = load i16*, i16** %nx_table8, align 8, !tbaa !92
  %arrayidx9 = getelementptr inbounds i16, i16* %20, i64 %idxprom7
  %21 = load i16, i16* %arrayidx9, align 2, !tbaa !93
  %conv10 = zext i16 %21 to i32
  store i32 %conv10, i32* %nidx6, align 4, !tbaa !8
  %22 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !1
  %23 = load i32, i32* %nidx6, align 4, !tbaa !8
  %call11 = call i32 @names_mark_index(%struct.name_table_s* %22, i32 %23) #4
  %24 = bitcast i32* %nidx6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.5
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %inc13 = add i32 %25, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !8
  br label %for.cond.1

for.end.14:                                       ; preds = %for.cond.1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gc_init_mark_stack(%struct.gc_mark_stack_s* %pms, i32 %count) #0 {
entry:
  %pms.addr = alloca %struct.gc_mark_stack_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.gc_mark_stack_s* %pms, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !8
  %0 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %0, i32 0, i32 1
  store %struct.gc_mark_stack_s* null, %struct.gc_mark_stack_s** %next, align 8, !tbaa !60
  %1 = load i32, i32* %count.addr, align 4, !tbaa !8
  %2 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %2, i32 0, i32 2
  store i32 %1, i32* %count1, align 4, !tbaa !94
  %3 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries, i32 0, i64 0
  %ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !95
  %4 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %entries2 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %4, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries2, i32 0, i64 0
  %index = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx3, i32 0, i32 1
  store i32 0, i32* %index, align 4, !tbaa !97
  %5 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %entries4 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %5, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries4, i32 0, i64 0
  %is_refs = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %is_refs, align 4, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_trace(%struct.gs_gc_root_s* %rp, %struct.gc_state_s* %pstate, %struct.gc_mark_stack_s* %pmstack) #0 {
entry:
  %retval = alloca i32, align 4
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %pmstack.addr = alloca %struct.gc_mark_stack_s*, align 8
  %min_trace = alloca i32, align 4
  %pms = alloca %struct.gc_mark_stack_s*, align 8
  %sp = alloca %struct.ms_entry*, align 8
  %stop = alloca %struct.ms_entry*, align 8
  %new = alloca i32, align 4
  %nep = alloca %struct.enum_ptr_s, align 8
  %nptr = alloca i8*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ptp = alloca %struct.gs_ptr_procs_s*, align 8
  %ptr16 = alloca %struct.obj_header_s*, align 8
  %mproc = alloca %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, align 8
  %pptr = alloca i16*, align 8
  %rptr = alloca %struct.ref_s*, align 8
  %nidx = alloca i32, align 4
  %new_added = alloca i32, align 4
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %pmstack, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %0 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %min_collect = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %1, i32 0, i32 3
  %2 = load i32, i32* %min_collect, align 4, !tbaa !39
  store i32 %2, i32* %min_trace, align 4, !tbaa !8
  %3 = bitcast %struct.gc_mark_stack_s** %pms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %4, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %5 = bitcast %struct.ms_entry** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arraydecay, i64 1
  store %struct.ms_entry* %add.ptr, %struct.ms_entry** %sp, align 8, !tbaa !1
  %7 = bitcast %struct.ms_entry** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %9 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %9, i32 0, i32 2
  %10 = load i32, i32* %count, align 4, !tbaa !94
  %idx.ext = zext i32 %10 to i64
  %add.ptr1 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %8, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %add.ptr1, i64 -2
  store %struct.ms_entry* %add.ptr2, %struct.ms_entry** %stop, align 8, !tbaa !1
  %11 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %new, align 4, !tbaa !8
  %12 = bitcast %struct.enum_ptr_s* %nep to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i8** %nptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %ntable = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %15, i32 0, i32 6
  %16 = load %struct.name_table_s*, %struct.name_table_s** %ntable, align 8, !tbaa !42
  store %struct.name_table_s* %16, %struct.name_table_s** %nt, align 8, !tbaa !1
  %17 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %17, i32 0, i32 2
  %18 = load i8**, i8*** %p, align 8, !tbaa !47
  %19 = load i8*, i8** %18, align 8, !tbaa !1
  store i8* %19, i8** %nptr, align 8, !tbaa !1
  %20 = load i8*, i8** %nptr, align 8, !tbaa !1
  %cmp = icmp eq i8* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.283

if.end:                                           ; preds = %entry
  %21 = load i8*, i8** %nptr, align 8, !tbaa !1
  %22 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %22, i32 0, i32 0
  store i8* %21, i8** %ptr, align 8, !tbaa !95
  %23 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %ptype = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %23, i32 0, i32 1
  %24 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !49
  %cmp3 = icmp eq %struct.gs_ptr_procs_s* %24, bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*)
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %25 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %25, i32 0, i32 1
  store i32 1, i32* %index, align 4, !tbaa !97
  %26 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %is_refs = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %26, i32 0, i32 2
  store i32 1, i32* %is_refs, align 4, !tbaa !98
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %27 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %27, i32 0, i32 1
  store i32 0, i32* %index5, align 4, !tbaa !97
  %28 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %is_refs6 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %28, i32 0, i32 2
  store i32 0, i32* %is_refs6, align 4, !tbaa !98
  %29 = load i8*, i8** %nptr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %nep, i32 0, i32 0
  store i8* %29, i8** %ptr7, align 8, !tbaa !5
  %30 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %ptype8 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %30, i32 0, i32 1
  %31 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype8, align 8, !tbaa !49
  %mark = getelementptr inbounds %struct.gs_ptr_procs_s, %struct.gs_ptr_procs_s* %31, i32 0, i32 1
  %32 = load i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)** %mark, align 8, !tbaa !99
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call = call i32 %32(%struct.enum_ptr_s* %nep, %struct.gc_state_s* %33) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %34 = load i32, i32* %new, align 4, !tbaa !8
  %or = or i32 %34, 1
  store i32 %or, i32* %new, align 4, !tbaa !8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.282, %cleanup.280, %if.end.11
  %35 = bitcast %struct.gs_ptr_procs_s** %ptp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %is_refs12 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %36, i32 0, i32 2
  %37 = load i32, i32* %is_refs12, align 4, !tbaa !98
  %tobool13 = icmp ne i32 %37, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.cond
  br label %do_refs

if.end.15:                                        ; preds = %for.cond
  br label %do_struct

do_struct:                                        ; preds = %cleanup.240, %cleanup, %if.end.15
  %38 = bitcast %struct.obj_header_s** %ptr16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %39, i32 0, i32 0
  %40 = load i8*, i8** %ptr17, align 8, !tbaa !95
  %41 = bitcast i8* %40 to %struct.obj_header_s*
  store %struct.obj_header_s* %41, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %42 = bitcast %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %mproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.obj_header_s* %43, null
  br i1 %cmp18, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %do_struct
  %44 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %44, i32 0, i32 0
  %45 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %prev, align 8, !tbaa !61
  store %struct.gc_mark_stack_s* %45, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %46 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.gc_mark_stack_s* %46, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.19
  %47 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %entries23 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %47, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries23, i32 0, i32 0
  %48 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %count25 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %48, i32 0, i32 2
  %49 = load i32, i32* %count25, align 4, !tbaa !94
  %idx.ext26 = zext i32 %49 to i64
  %add.ptr27 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arraydecay24, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %add.ptr27, i64 -1
  store %struct.ms_entry* %add.ptr28, %struct.ms_entry** %stop, align 8, !tbaa !1
  %50 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  store %struct.ms_entry* %50, %struct.ms_entry** %sp, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %do_struct
  br label %do.body

do.body:                                          ; preds = %if.end.29
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %ts

ts:                                               ; preds = %if.else.85, %if.then.67, %do.end
  br label %do.body.30

do.body.30:                                       ; preds = %ts
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %51 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %51, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %52 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %enum_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %52, i32 0, i32 4
  %53 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %enum_ptrs, align 8, !tbaa !100
  store %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* %53, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %mproc, align 8, !tbaa !1
  %54 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %mproc, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* %54, @gs_no_struct_enum_ptrs
  br i1 %cmp33, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.32
  %55 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %mproc, align 8, !tbaa !1
  %56 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call34 = call %struct.gs_memory_s* @gcst_get_memory_ptr(%struct.gc_state_s* %56) #4
  %57 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %58 = bitcast %struct.obj_header_s* %57 to i8*
  %59 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %59, i64 -1
  %d36 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr35, i32 0, i32 0
  %o37 = bitcast %union._d* %d36 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o37, i32 0, i32 1
  %60 = load i32, i32* %size, align 4, !tbaa !83
  %61 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index38 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %61, i32 0, i32 1
  %62 = load i32, i32* %index38, align 4, !tbaa !97
  %63 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr16, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %63, i64 -1
  %d40 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx39, i32 0, i32 0
  %o41 = bitcast %union._d* %d40 to %struct.obj_header_data_s*
  %t42 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o41, i32 0, i32 2
  %type43 = bitcast %union._t* %t42 to %struct.gs_memory_struct_type_s**
  %64 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type43, align 8, !tbaa !1
  %65 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call44 = call %struct.gs_ptr_procs_s* %55(%struct.gs_memory_s* %call34, i8* %58, i32 %60, i32 %62, %struct.enum_ptr_s* %nep, %struct.gs_memory_struct_type_s* %64, %struct.gc_state_s* %65) #4
  store %struct.gs_ptr_procs_s* %call44, %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  %cmp45 = icmp eq %struct.gs_ptr_procs_s* %call44, null
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %lor.lhs.false, %do.end.32
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %66 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %66, i32 -1
  store %struct.ms_entry* %incdec.ptr, %struct.ms_entry** %sp, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %lor.lhs.false
  %ptr51 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %nep, i32 0, i32 0
  %67 = load i8*, i8** %ptr51, align 8, !tbaa !5
  store i8* %67, i8** %nptr, align 8, !tbaa !1
  %68 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index52 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %68, i32 0, i32 1
  %69 = load i32, i32* %index52, align 4, !tbaa !97
  %inc = add i32 %69, 1
  store i32 %inc, i32* %index52, align 4, !tbaa !97
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.50
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  %70 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.gs_ptr_procs_s* %70, bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_struct_procs to %struct.gs_ptr_procs_s*)
  br i1 %cmp56, label %if.then.57, label %if.else.72

if.then.57:                                       ; preds = %do.end.55
  %71 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %71, i64 1
  %index59 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx58, i32 0, i32 1
  store i32 0, i32* %index59, align 4, !tbaa !97
  %72 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %72, i64 1
  %is_refs61 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx60, i32 0, i32 2
  store i32 0, i32* %is_refs61, align 4, !tbaa !98
  %73 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %74 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  %cmp62 = icmp eq %struct.ms_entry* %73, %74
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.57
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.then.57
  %75 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call65 = call i32 @ptr_struct_mark(%struct.enum_ptr_s* %nep, %struct.gc_state_s* %75) #4
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  br label %ts

if.end.68:                                        ; preds = %if.end.64
  %76 = load i32, i32* %new, align 4, !tbaa !8
  %or69 = or i32 %76, 1
  store i32 %or69, i32* %new, align 4, !tbaa !8
  %77 = load i8*, i8** %nptr, align 8, !tbaa !1
  %78 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %78, i32 1
  store %struct.ms_entry* %incdec.ptr70, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr71 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %incdec.ptr70, i32 0, i32 0
  store i8* %77, i8** %ptr71, align 8, !tbaa !95
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %do.end.55
  %79 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  %cmp73 = icmp eq %struct.gs_ptr_procs_s* %79, bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*)
  br i1 %cmp73, label %if.then.74, label %if.else.85

if.then.74:                                       ; preds = %if.else.72
  %80 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %80, i64 1
  %index76 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx75, i32 0, i32 1
  store i32 1, i32* %index76, align 4, !tbaa !97
  %81 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %81, i64 1
  %is_refs78 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx77, i32 0, i32 2
  store i32 1, i32* %is_refs78, align 4, !tbaa !98
  %82 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %83 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  %cmp79 = icmp eq %struct.ms_entry* %82, %83
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.74
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.then.74
  %84 = load i32, i32* %new, align 4, !tbaa !8
  %or82 = or i32 %84, 1
  store i32 %or82, i32* %new, align 4, !tbaa !8
  %85 = load i8*, i8** %nptr, align 8, !tbaa !1
  %86 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %86, i32 1
  store %struct.ms_entry* %incdec.ptr83, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr84 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %incdec.ptr83, i32 0, i32 0
  store i8* %85, i8** %ptr84, align 8, !tbaa !95
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.else.85:                                       ; preds = %if.else.72
  %87 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  %mark86 = getelementptr inbounds %struct.gs_ptr_procs_s, %struct.gs_ptr_procs_s* %87, i32 0, i32 1
  %88 = load i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)** %mark86, align 8, !tbaa !99
  %89 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call87 = call i32 %88(%struct.enum_ptr_s* %nep, %struct.gc_state_s* %89) #4
  %tobool88 = icmp ne i32 %call87, 0
  %cond = select i1 %tobool88, i32 1, i32 0
  %90 = load i32, i32* %new, align 4, !tbaa !8
  %or89 = or i32 %90, %cond
  store i32 %or89, i32* %new, align 4, !tbaa !8
  br label %ts

cleanup:                                          ; preds = %if.end.81, %if.then.80, %if.then.63, %if.end.68, %do.end.49, %if.end.22, %if.then.21
  %91 = bitcast %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %mproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast %struct.obj_header_s** %ptr16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.280 [
    i32 5, label %do_struct
    i32 4, label %do_refs
    i32 15, label %push
  ]

do_refs:                                          ; preds = %cleanup.240, %cleanup, %if.then.14
  %93 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  %94 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr91 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %94, i32 0, i32 0
  %95 = load i8*, i8** %ptr91, align 8, !tbaa !95
  %96 = bitcast i8* %95 to i16*
  store i16* %96, i16** %pptr, align 8, !tbaa !1
  %97 = bitcast %struct.ref_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  br label %tr

tr:                                               ; preds = %nr, %if.then.150, %if.then.135, %if.end.129, %do_refs
  %98 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index92 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %98, i32 0, i32 1
  %99 = load i32, i32* %index92, align 4, !tbaa !97
  %tobool93 = icmp ne i32 %99, 0
  br i1 %tobool93, label %if.end.96, label %if.then.94

if.then.94:                                       ; preds = %tr
  %100 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %100, i32 -1
  store %struct.ms_entry* %incdec.ptr95, %struct.ms_entry** %sp, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.96:                                        ; preds = %tr
  %101 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %index97 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %101, i32 0, i32 1
  %102 = load i32, i32* %index97, align 4, !tbaa !97
  %dec = add i32 %102, -1
  store i32 %dec, i32* %index97, align 4, !tbaa !97
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.96
  br label %do.cond.99

do.cond.99:                                       ; preds = %do.body.98
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  %103 = load i16*, i16** %pptr, align 8, !tbaa !1
  %104 = load i16, i16* %103, align 2, !tbaa !93
  %conv = zext i16 %104 to i32
  %cmp101 = icmp sge i32 %conv, 16384
  br i1 %cmp101, label %if.then.103, label %if.end.131

if.then.103:                                      ; preds = %do.end.100
  %105 = load i16*, i16** %pptr, align 8, !tbaa !1
  %106 = load i16, i16* %105, align 2, !tbaa !93
  %conv104 = zext i16 %106 to i32
  %and = and i32 %conv104, 4096
  %tobool105 = icmp ne i32 %and, 0
  br i1 %tobool105, label %if.end.129, label %if.then.106

if.then.106:                                      ; preds = %if.then.103
  %107 = load i16*, i16** %pptr, align 8, !tbaa !1
  %108 = load i16, i16* %107, align 2, !tbaa !93
  %conv107 = zext i16 %108 to i32
  %or108 = or i32 %conv107, 4096
  %conv109 = trunc i32 %or108 to i16
  store i16 %conv109, i16* %107, align 2, !tbaa !93
  %109 = load i32, i32* %new, align 4, !tbaa !8
  %or110 = or i32 %109, 1
  store i32 %or110, i32* %new, align 4, !tbaa !8
  %110 = load i16*, i16** %pptr, align 8, !tbaa !1
  %111 = load i16, i16* %110, align 2, !tbaa !93
  %conv111 = zext i16 %111 to i32
  %cmp112 = icmp sge i32 %conv111, 49152
  br i1 %cmp112, label %if.then.114, label %if.end.128

if.then.114:                                      ; preds = %if.then.106
  %112 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load i16*, i16** %pptr, align 8, !tbaa !1
  %114 = load i16, i16* %113, align 2, !tbaa !93
  %conv115 = zext i16 %114 to i32
  %and116 = and i32 %conv115, 4095
  store i32 %and116, i32* %nidx, align 4, !tbaa !8
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.114
  %115 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %116 = load i32, i32* %nidx, align 4, !tbaa !8
  %call118 = call i32 @names_mark_index(%struct.name_table_s* %115, i32 %116) #4
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %do.body.117
  %117 = load i32, i32* %new, align 4, !tbaa !8
  %or121 = or i32 %117, 1
  store i32 %or121, i32* %new, align 4, !tbaa !8
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.120
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %do.body.117
  br label %do.cond.126

do.cond.126:                                      ; preds = %if.end.125
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %118 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %if.then.106
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.103
  %119 = load i16*, i16** %pptr, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i16, i16* %119, i32 1
  store i16* %incdec.ptr130, i16** %pptr, align 8, !tbaa !1
  br label %tr

if.end.131:                                       ; preds = %do.end.100
  %120 = load i16*, i16** %pptr, align 8, !tbaa !1
  %121 = bitcast i16* %120 to %struct.ref_s*
  store %struct.ref_s* %121, %struct.ref_s** %rptr, align 8, !tbaa !1
  %122 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %123 = load i16, i16* %type_attrs, align 2, !tbaa !101
  %conv132 = zext i16 %123 to i32
  %and133 = and i32 %conv132, 1
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.131
  %124 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %add.ptr136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i64 1
  %125 = bitcast %struct.ref_s* %add.ptr136 to i16*
  store i16* %125, i16** %pptr, align 8, !tbaa !1
  br label %tr

if.end.137:                                       ; preds = %if.end.131
  %126 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %126, i32 0, i32 0
  %type_attrs139 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas138, i32 0, i32 0
  %127 = load i16, i16* %type_attrs139, align 2, !tbaa !101
  %conv140 = zext i16 %127 to i32
  %or141 = or i32 %conv140, 1
  %conv142 = trunc i32 %or141 to i16
  store i16 %conv142, i16* %type_attrs139, align 2, !tbaa !101
  %128 = load i32, i32* %new, align 4, !tbaa !8
  %or143 = or i32 %128, 1
  store i32 %or143, i32* %new, align 4, !tbaa !8
  %129 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %type_attrs145 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 0
  %130 = load i16, i16* %type_attrs145, align 2, !tbaa !101
  %conv146 = zext i16 %130 to i32
  %and147 = and i32 %conv146, 12
  %131 = load i32, i32* %min_trace, align 4, !tbaa !8
  %cmp148 = icmp ult i32 %and147, %131
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.end.137
  %132 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i64 1
  %133 = bitcast %struct.ref_s* %add.ptr151 to i16*
  store i16* %133, i16** %pptr, align 8, !tbaa !1
  br label %tr

if.end.152:                                       ; preds = %if.end.137
  %134 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %add.ptr153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i64 1
  %135 = bitcast %struct.ref_s* %add.ptr153 to i8*
  %136 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr154 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %136, i32 0, i32 0
  store i8* %135, i8** %ptr154, align 8, !tbaa !95
  %137 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i32 0, i32 0
  %type_attrs156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 0
  %138 = bitcast i16* %type_attrs156 to i8*
  %arrayidx157 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx157, align 1, !tbaa !25
  %conv158 = zext i8 %139 to i32
  switch i32 %conv158, label %sw.default [
    i32 3, label %sw.bb
    i32 19, label %sw.bb.175
    i32 10, label %sw.bb.177
    i32 8, label %sw.bb.177
    i32 9, label %sw.bb.177
    i32 2, label %sw.bb.179
    i32 4, label %sw.bb.183
    i32 5, label %sw.bb.203
    i32 6, label %sw.bb.203
    i32 13, label %sw.bb.205
    i32 18, label %sw.bb.226
    i32 20, label %sw.bb.235
  ]

sw.bb:                                            ; preds = %if.end.152
  %140 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %141 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %142 = bitcast %struct.stream_s* %141 to i8*
  store i8* %142, i8** %nptr, align 8, !tbaa !1
  br label %rs

rs:                                               ; preds = %sw.bb.177, %sw.bb.175, %sw.bb
  %143 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %143, i64 1
  %is_refs160 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx159, i32 0, i32 2
  store i32 0, i32* %is_refs160, align 4, !tbaa !98
  %144 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %144, i64 1
  %index162 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx161, i32 0, i32 1
  store i32 0, i32* %index162, align 4, !tbaa !97
  %145 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %146 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  %cmp163 = icmp eq %struct.ms_entry* %145, %146
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %rs
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_struct_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  br label %sw.epilog

if.end.166:                                       ; preds = %rs
  %147 = load i8*, i8** %nptr, align 8, !tbaa !1
  %ptr167 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %nep, i32 0, i32 0
  store i8* %147, i8** %ptr167, align 8, !tbaa !5
  %148 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call168 = call i32 @ptr_struct_mark(%struct.enum_ptr_s* %nep, %struct.gc_state_s* %148) #4
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.end.166
  br label %nr

if.end.171:                                       ; preds = %if.end.166
  %149 = load i32, i32* %new, align 4, !tbaa !8
  %or172 = or i32 %149, 1
  store i32 %or172, i32* %new, align 4, !tbaa !8
  %150 = load i8*, i8** %nptr, align 8, !tbaa !1
  %151 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr173 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %151, i32 1
  store %struct.ms_entry* %incdec.ptr173, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr174 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %incdec.ptr173, i32 0, i32 0
  store i8* %150, i8** %ptr174, align 8, !tbaa !95
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.bb.175:                                        ; preds = %if.end.152
  %152 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 1
  %pdevice = bitcast %union.v* %value176 to %struct.gx_device_s**
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_s* %153 to i8*
  store i8* %154, i8** %nptr, align 8, !tbaa !1
  br label %rs

sw.bb.177:                                        ; preds = %if.end.152, %if.end.152, %if.end.152
  %155 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value178 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i32 0, i32 1
  %pstruct = bitcast %union.v* %value178 to %struct.obj_header_s**
  %156 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %157 = bitcast %struct.obj_header_s* %156 to i8*
  store i8* %157, i8** %nptr, align 8, !tbaa !1
  br label %rs

sw.bb.179:                                        ; preds = %if.end.152
  %158 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value180 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i32 0, i32 1
  %pdict = bitcast %union.v* %value180 to %struct.dict_s**
  %159 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %160 = bitcast %struct.dict_s* %159 to i8*
  store i8* %160, i8** %nptr, align 8, !tbaa !1
  %161 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %161, i64 1
  %index182 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx181, i32 0, i32 1
  store i32 5, i32* %index182, align 4, !tbaa !97
  br label %rrp

sw.bb.183:                                        ; preds = %if.end.152
  %162 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i32 0, i32 1
  %refs = bitcast %union.v* %value184 to %struct.ref_s**
  %163 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %164 = bitcast %struct.ref_s* %163 to i8*
  store i8* %164, i8** %nptr, align 8, !tbaa !1
  br label %rr

rr:                                               ; preds = %sw.bb.203, %sw.bb.183
  %165 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas185, i32 0, i32 2
  %166 = load i32, i32* %rsize, align 4, !tbaa !102
  %167 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %167, i64 1
  %index187 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx186, i32 0, i32 1
  store i32 %166, i32* %index187, align 4, !tbaa !97
  %cmp188 = icmp eq i32 %166, 0
  br i1 %cmp188, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %rr
  %168 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 1
  %refs192 = bitcast %union.v* %value191 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs192, align 8, !tbaa !1
  br label %nr

if.end.193:                                       ; preds = %rr
  br label %rrp

rrp:                                              ; preds = %if.end.193, %sw.bb.179
  br label %rrc

rrc:                                              ; preds = %sw.bb.235, %rrp
  %169 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %169, i64 1
  %is_refs195 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx194, i32 0, i32 2
  store i32 1, i32* %is_refs195, align 4, !tbaa !98
  %170 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %171 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  %cmp196 = icmp eq %struct.ms_entry* %170, %171
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %rrc
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  br label %sw.epilog

if.end.199:                                       ; preds = %rrc
  %172 = load i32, i32* %new, align 4, !tbaa !8
  %or200 = or i32 %172, 1
  store i32 %or200, i32* %new, align 4, !tbaa !8
  %173 = load i8*, i8** %nptr, align 8, !tbaa !1
  %174 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %174, i32 1
  store %struct.ms_entry* %incdec.ptr201, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr202 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %incdec.ptr201, i32 0, i32 0
  store i8* %173, i8** %ptr202, align 8, !tbaa !95
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.bb.203:                                        ; preds = %if.end.152, %if.end.152
  %175 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value204 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 1
  %writable_packed = bitcast %union.v* %value204 to i16**
  %176 = load i16*, i16** %writable_packed, align 8, !tbaa !1
  %177 = bitcast i16* %176 to i8*
  store i8* %177, i8** %nptr, align 8, !tbaa !1
  br label %rr

sw.bb.205:                                        ; preds = %if.end.152
  br label %do.body.206

do.body.206:                                      ; preds = %sw.bb.205
  %178 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %179 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %179, i32 0, i32 1
  %pname = bitcast %union.v* %value207 to %struct.name_s**
  %180 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %181 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i32 0, i32 0
  %rsize209 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas208, i32 0, i32 2
  %182 = load i32, i32* %rsize209, align 4, !tbaa !102
  %and210 = and i32 %182, 511
  %idx.ext211 = zext i32 %and210 to i64
  %idx.neg = sub i64 0, %idx.ext211
  %add.ptr212 = getelementptr inbounds %struct.name_s, %struct.name_s* %180, i64 %idx.neg
  %183 = bitcast %struct.name_s* %add.ptr212 to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %183, i32 0, i32 1
  %184 = load i32, i32* %high_index, align 4, !tbaa !103
  %185 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i32 0, i32 0
  %rsize214 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas213, i32 0, i32 2
  %186 = load i32, i32* %rsize214, align 4, !tbaa !102
  %add = add i32 %184, %186
  %call215 = call i32 @names_mark_index(%struct.name_table_s* %178, i32 %add) #4
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.222

if.then.217:                                      ; preds = %do.body.206
  %187 = load i32, i32* %new, align 4, !tbaa !8
  %or218 = or i32 %187, 1
  store i32 %or218, i32* %new, align 4, !tbaa !8
  br label %do.body.219

do.body.219:                                      ; preds = %if.then.217
  br label %do.cond.220

do.cond.220:                                      ; preds = %do.body.219
  br label %do.end.221

do.end.221:                                       ; preds = %do.cond.220
  br label %if.end.222

if.end.222:                                       ; preds = %do.end.221, %do.body.206
  br label %do.cond.223

do.cond.223:                                      ; preds = %if.end.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  br label %nr

nr:                                               ; preds = %sw.default, %if.end.234, %do.end.224, %if.then.190, %if.then.170
  %188 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %add.ptr225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %188, i64 1
  %189 = bitcast %struct.ref_s* %add.ptr225 to i16*
  store i16* %189, i16** %pptr, align 8, !tbaa !1
  br label %tr

sw.bb.226:                                        ; preds = %if.end.152
  %190 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %190, i32 0, i32 1
  %bytes = bitcast %union.v* %value227 to i8**
  %191 = load i8*, i8** %bytes, align 8, !tbaa !1
  %192 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %tas228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i32 0, i32 0
  %rsize229 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas228, i32 0, i32 2
  %193 = load i32, i32* %rsize229, align 4, !tbaa !102
  %194 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call230 = call i32 @gc_string_mark(i8* %191, i32 %193, i32 1, %struct.gc_state_s* %194) #4
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %sw.bb.226
  %195 = load i32, i32* %new, align 4, !tbaa !8
  %or233 = or i32 %195, 1
  store i32 %or233, i32* %new, align 4, !tbaa !8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %sw.bb.226
  br label %nr

sw.bb.235:                                        ; preds = %if.end.152
  %196 = load %struct.ref_s*, %struct.ref_s** %rptr, align 8, !tbaa !1
  %value236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %196, i32 0, i32 1
  %refs237 = bitcast %union.v* %value236 to %struct.ref_s**
  %197 = load %struct.ref_s*, %struct.ref_s** %refs237, align 8, !tbaa !1
  %198 = bitcast %struct.ref_s* %197 to i8*
  store i8* %198, i8** %nptr, align 8, !tbaa !1
  %199 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %199, i64 1
  %index239 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx238, i32 0, i32 1
  store i32 1, i32* %index239, align 4, !tbaa !97
  br label %rrc

sw.default:                                       ; preds = %if.end.152
  br label %nr

sw.epilog:                                        ; preds = %if.then.198, %if.then.165
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.240

cleanup.240:                                      ; preds = %sw.epilog, %if.end.199, %if.end.171, %if.then.94
  %200 = bitcast %struct.ref_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #2
  %201 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #2
  %cleanup.dest.242 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.242, label %cleanup.280 [
    i32 0, label %cleanup.cont
    i32 5, label %do_struct
    i32 4, label %do_refs
  ]

cleanup.cont:                                     ; preds = %cleanup.240
  br label %push

push:                                             ; preds = %cleanup.cont, %cleanup
  %202 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %203 = load %struct.ms_entry*, %struct.ms_entry** %stop, align 8, !tbaa !1
  %cmp243 = icmp eq %struct.ms_entry* %202, %203
  br i1 %cmp243, label %if.then.245, label %if.end.265

if.then.245:                                      ; preds = %push
  %204 = bitcast i32* %new_added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #2
  %205 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %206 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call246 = call i32 @gc_extend_stack(%struct.gc_mark_stack_s* %205, %struct.gc_state_s* %206) #4
  store i32 %call246, i32* %new_added, align 4, !tbaa !8
  %207 = load i32, i32* %new_added, align 4, !tbaa !8
  %tobool247 = icmp ne i32 %207, 0
  br i1 %tobool247, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %if.then.245
  %208 = load i32, i32* %new_added, align 4, !tbaa !8
  %209 = load i32, i32* %new, align 4, !tbaa !8
  %or249 = or i32 %209, %208
  store i32 %or249, i32* %new, align 4, !tbaa !8
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.262

if.end.250:                                       ; preds = %if.then.245
  %210 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %210, i32 0, i32 1
  %211 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next, align 8, !tbaa !60
  store %struct.gc_mark_stack_s* %211, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %212 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %entries251 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %212, i32 0, i32 4
  %arraydecay252 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries251, i32 0, i32 0
  %213 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %count253 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %213, i32 0, i32 2
  %214 = load i32, i32* %count253, align 4, !tbaa !94
  %idx.ext254 = zext i32 %214 to i64
  %add.ptr255 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arraydecay252, i64 %idx.ext254
  %add.ptr256 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %add.ptr255, i64 -1
  store %struct.ms_entry* %add.ptr256, %struct.ms_entry** %stop, align 8, !tbaa !1
  %215 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %entries257 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %215, i32 0, i32 4
  %arrayidx258 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries257, i32 0, i64 1
  %216 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %216, i64 1
  %217 = bitcast %struct.ms_entry* %arrayidx258 to i8*
  %218 = bitcast %struct.ms_entry* %arrayidx259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 16, i32 8, i1 false), !tbaa.struct !105
  %219 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms, align 8, !tbaa !1
  %entries260 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %219, i32 0, i32 4
  %arraydecay261 = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries260, i32 0, i32 0
  store %struct.ms_entry* %arraydecay261, %struct.ms_entry** %sp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.262

cleanup.262:                                      ; preds = %if.end.250, %if.then.248
  %220 = bitcast i32* %new_added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %cleanup.dest.263 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.263, label %cleanup.280 [
    i32 0, label %cleanup.cont.264
  ]

cleanup.cont.264:                                 ; preds = %cleanup.262
  br label %if.end.265

if.end.265:                                       ; preds = %cleanup.cont.264, %push
  %221 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %221, i64 1
  %is_refs267 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arrayidx266, i32 0, i32 2
  %222 = load i32, i32* %is_refs267, align 4, !tbaa !98
  %tobool268 = icmp ne i32 %222, 0
  br i1 %tobool268, label %if.end.277, label %if.then.269

if.then.269:                                      ; preds = %if.end.265
  %223 = load i8*, i8** %nptr, align 8, !tbaa !1
  %ptr270 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %nep, i32 0, i32 0
  store i8* %223, i8** %ptr270, align 8, !tbaa !5
  %224 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptp, align 8, !tbaa !1
  %mark271 = getelementptr inbounds %struct.gs_ptr_procs_s, %struct.gs_ptr_procs_s* %224, i32 0, i32 1
  %225 = load i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)** %mark271, align 8, !tbaa !99
  %226 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call272 = call i32 %225(%struct.enum_ptr_s* %nep, %struct.gc_state_s* %226) #4
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.end.275, label %if.then.274

if.then.274:                                      ; preds = %if.then.269
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.275:                                       ; preds = %if.then.269
  %227 = load i32, i32* %new, align 4, !tbaa !8
  %or276 = or i32 %227, 1
  store i32 %or276, i32* %new, align 4, !tbaa !8
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.275, %if.end.265
  %228 = load i8*, i8** %nptr, align 8, !tbaa !1
  %229 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %incdec.ptr278 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %229, i32 1
  store %struct.ms_entry* %incdec.ptr278, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr279 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %incdec.ptr278, i32 0, i32 0
  store i8* %228, i8** %ptr279, align 8, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.280

cleanup.280:                                      ; preds = %if.end.277, %if.then.274, %cleanup.262, %cleanup.240, %cleanup
  %230 = bitcast %struct.gs_ptr_procs_s** %ptp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %cleanup.dest.281 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.281, label %unreachable [
    i32 0, label %cleanup.cont.282
    i32 2, label %for.end
    i32 3, label %for.cond
  ]

cleanup.cont.282:                                 ; preds = %cleanup.280
  br label %for.cond

for.end:                                          ; preds = %cleanup.280
  %231 = load i32, i32* %new, align 4, !tbaa !8
  store i32 %231, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.283

cleanup.283:                                      ; preds = %for.end, %if.then
  %232 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast i8** %nptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast %struct.enum_ptr_s* %nep to i8*
  call void @llvm.lifetime.end(i64 16, i8* %234) #2
  %235 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast %struct.ms_entry** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast %struct.ms_entry** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast %struct.gc_mark_stack_s** %pms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = load i32, i32* %retval
  ret i32 %240

unreachable:                                      ; preds = %cleanup.280
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_trace_chunk(%struct.gs_memory_s* %mem, %struct.chunk_s* %cp, %struct.gc_state_s* %pstate, %struct.gc_mark_stack_s* %pmstack) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cp.addr = alloca %struct.chunk_s*, align 8
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %pmstack.addr = alloca %struct.gc_mark_stack_s*, align 8
  %root = alloca %struct.gs_gc_root_s, align 8
  %comp = alloca i8*, align 8
  %more = alloca i32, align 4
  %min_trace = alloca i32, align 4
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %rp = alloca i16*, align 8
  %end8 = alloca i8*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %proc = alloca void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %pmstack, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_gc_root_s* %root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i8** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %more to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %more, align 4, !tbaa !8
  %3 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %min_collect = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %4, i32 0, i32 3
  %5 = load i32, i32* %min_collect, align 4, !tbaa !39
  store i32 %5, i32* %min_trace, align 4, !tbaa !8
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 2
  store i8** %comp, i8*** %p, align 8, !tbaa !47
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %cbase, align 8, !tbaa !65
  %9 = bitcast i8* %8 to %struct.obj_header_s*
  store %struct.obj_header_s* %9, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 3
  %12 = load i8*, i8** %cbot, align 8, !tbaa !58
  %13 = bitcast i8* %12 to %struct.obj_header_s*
  store %struct.obj_header_s* %13, %struct.obj_header_s** %end, align 8, !tbaa !1
  %14 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %17, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %18 = load i32, i32* %size1, align 4, !tbaa !83
  store i32 %18, i32* %size, align 4, !tbaa !8
  br label %do.body.2

do.body.2:                                        ; preds = %for.body
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %19, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_memory_struct_type_s* %20, @st_refs
  br i1 %cmp7, label %if.then, label %if.else.25

if.then:                                          ; preds = %do.end.4
  %21 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %22, i64 1
  %23 = bitcast %struct.obj_header_s* %add.ptr to i16*
  store i16* %23, i16** %rp, align 8, !tbaa !1
  %24 = bitcast i8** %end8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i16*, i16** %rp, align 8, !tbaa !1
  %26 = bitcast i16* %25 to i8*
  %27 = load i32, i32* %size, align 4, !tbaa !8
  %idx.ext = zext i32 %27 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr9, i8** %end8, align 8, !tbaa !1
  %ptype = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 1
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !49
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then
  %28 = load i16*, i16** %rp, align 8, !tbaa !1
  %29 = bitcast i16* %28 to i8*
  %30 = load i8*, i8** %end8, align 8, !tbaa !1
  %cmp10 = icmp ult i8* %29, %30
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i16*, i16** %rp, align 8, !tbaa !1
  %32 = bitcast i16* %31 to i8*
  store i8* %32, i8** %comp, align 8, !tbaa !1
  %33 = load i16*, i16** %rp, align 8, !tbaa !1
  %34 = load i16, i16* %33, align 2, !tbaa !93
  %conv = zext i16 %34 to i32
  %cmp11 = icmp sge i32 %conv, 16384
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.body
  %35 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %36 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #2
  %37 = load i16*, i16** %rp, align 8, !tbaa !1
  %38 = bitcast i16* %37 to %struct.ref_s*
  store %struct.ref_s* %38, %struct.ref_s** %pref, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %40 = load i16, i16* %type_attrs, align 2, !tbaa !101
  %conv14 = zext i16 %40 to i32
  %and = and i32 %conv14, 12
  %41 = load i32, i32* %min_trace, align 4, !tbaa !8
  %cmp15 = icmp uge i32 %and, %41
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %42 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %43 = load i16, i16* %type_attrs19, align 2, !tbaa !101
  %conv20 = zext i16 %43 to i32
  %and21 = and i32 %conv20, -2
  %conv22 = trunc i32 %and21 to i16
  store i16 %conv22, i16* %type_attrs19, align 2, !tbaa !101
  %44 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %45 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %call = call i32 @gc_trace(%struct.gs_gc_root_s* %root, %struct.gc_state_s* %44, %struct.gc_mark_stack_s* %45) #4
  %46 = load i32, i32* %more, align 4, !tbaa !8
  %or = or i32 %46, %call
  store i32 %or, i32* %more, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  %47 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i16, i16* %47, i64 8
  store i16* %add.ptr23, i16** %rp, align 8, !tbaa !1
  %48 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = bitcast i8** %end8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  br label %if.end.71

if.else.25:                                       ; preds = %do.end.4
  %51 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d26 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %51, i32 0, i32 0
  %o27 = bitcast %union._d* %d26 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o27, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %52 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %52, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %cmp28 = icmp eq i32 %bf.lshr, 2147483647
  br i1 %cmp28, label %if.end.70, label %if.then.30

if.then.30:                                       ; preds = %if.else.25
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d31 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %53, i32 0, i32 0
  %o32 = bitcast %union._d* %d31 to %struct.obj_header_data_s*
  %f33 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o32, i32 0, i32 0
  %m34 = bitcast %union._f* %f33 to %struct._m*
  %54 = bitcast %struct._m* %m34 to i32*
  %bf.load35 = load i32, i32* %54, align 4
  %bf.lshr36 = lshr i32 %bf.load35, 1
  %cmp37 = icmp eq i32 %bf.lshr36, 2147483646
  br i1 %cmp37, label %if.end.45, label %if.then.39

if.then.39:                                       ; preds = %if.then.30
  %55 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d40 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %55, i32 0, i32 0
  %o41 = bitcast %union._d* %d40 to %struct.obj_header_data_s*
  %f42 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o41, i32 0, i32 0
  %m43 = bitcast %union._f* %f42 to %struct._m*
  %56 = bitcast %struct._m* %m43 to i32*
  %bf.load44 = load i32, i32* %56, align 4
  %bf.clear = and i32 %bf.load44, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %56, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %if.then.30
  %57 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d46 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %57, i32 0, i32 0
  %o47 = bitcast %union._d* %d46 to %struct.obj_header_data_s*
  %t48 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o47, i32 0, i32 2
  %type49 = bitcast %union._t* %t48 to %struct.gs_memory_struct_type_s**
  %58 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type49, align 8, !tbaa !1
  %cmp50 = icmp ne %struct.gs_memory_struct_type_s* %58, @st_free
  br i1 %cmp50, label %if.then.52, label %if.end.69

if.then.52:                                       ; preds = %if.end.45
  %59 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d53 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %60, i32 0, i32 0
  %o54 = bitcast %union._d* %d53 to %struct.obj_header_data_s*
  %t55 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o54, i32 0, i32 2
  %type56 = bitcast %union._t* %t55 to %struct.gs_memory_struct_type_s**
  %61 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type56, align 8, !tbaa !1
  %clear_marks = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %61, i32 0, i32 3
  %62 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %clear_marks, align 8, !tbaa !85
  store void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %62, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %ptype57 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 1
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_struct_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptype57, align 8, !tbaa !49
  %63 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %63, i64 1
  %64 = bitcast %struct.obj_header_s* %add.ptr58 to i8*
  store i8* %64, i8** %comp, align 8, !tbaa !1
  %65 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %cmp59 = icmp ne void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %65, null
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.then.52
  %66 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %comp, align 8, !tbaa !1
  %69 = load i32, i32* %size, align 4, !tbaa !8
  %70 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d62 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %70, i32 0, i32 0
  %o63 = bitcast %union._d* %d62 to %struct.obj_header_data_s*
  %t64 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o63, i32 0, i32 2
  %type65 = bitcast %union._t* %t64 to %struct.gs_memory_struct_type_s**
  %71 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type65, align 8, !tbaa !1
  call void %66(%struct.gs_memory_s* %67, i8* %68, i32 %69, %struct.gs_memory_struct_type_s* %71) #4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.then.52
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %73 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %call67 = call i32 @gc_trace(%struct.gs_gc_root_s* %root, %struct.gc_state_s* %72, %struct.gc_mark_stack_s* %73) #4
  %74 = load i32, i32* %more, align 4, !tbaa !8
  %or68 = or i32 %74, %call67
  store i32 %or68, i32* %more, align 4, !tbaa !8
  %75 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %if.end.45
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.else.25
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %76 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %77 = bitcast %struct.obj_header_s* %76 to i8*
  %78 = load i32, i32* %size, align 4, !tbaa !8
  %conv72 = zext i32 %78 to i64
  %add = add i64 %conv72, 24
  %add73 = add i64 %add, 7
  %and74 = and i64 %add73, -8
  %add.ptr75 = getelementptr inbounds i8, i8* %77, i64 %and74
  %79 = bitcast i8* %add.ptr75 to %struct.obj_header_s*
  store %struct.obj_header_s* %79, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = load i32, i32* %more, align 4, !tbaa !8
  %84 = bitcast i32* %min_trace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %more to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i8** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast %struct.gs_gc_root_s* %root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %87) #2
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_rescan_chunk(%struct.chunk_s* %cp, %struct.gc_state_s* %pstate, %struct.gc_mark_stack_s* %pmstack) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca %struct.chunk_s*, align 8
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %pmstack.addr = alloca %struct.gc_mark_stack_s*, align 8
  %sbot = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %root = alloca %struct.gs_gc_root_s, align 8
  %comp = alloca i8*, align 8
  %more = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %rp = alloca i16*, align 8
  %end21 = alloca i8*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %proc = alloca void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  store %struct.gc_mark_stack_s* %pmstack, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %0 = bitcast i8** %sbot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rescan_bot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 22
  %2 = load i8*, i8** %rescan_bot, align 8, !tbaa !64
  store i8* %2, i8** %sbot, align 8, !tbaa !1
  %3 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rescan_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %4, i32 0, i32 23
  %5 = load i8*, i8** %rescan_top, align 8, !tbaa !66
  store i8* %5, i8** %stop, align 8, !tbaa !1
  %6 = bitcast %struct.gs_gc_root_s* %root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #2
  %7 = bitcast i8** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %more to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %more, align 4, !tbaa !8
  %9 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gcst_get_memory_ptr(%struct.gc_state_s* %10) #4
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i8*, i8** %sbot, align 8, !tbaa !1
  %12 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp = icmp ugt i8* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 2
  store i8** %comp, i8*** %p, align 8, !tbaa !47
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 8
  %14 = load i8*, i8** %cend, align 8, !tbaa !63
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rescan_bot1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 22
  store i8* %14, i8** %rescan_bot1, align 8, !tbaa !64
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %cbase, align 8, !tbaa !65
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rescan_top2 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 23
  store i8* %17, i8** %rescan_top2, align 8, !tbaa !66
  %19 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase3 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %cbase3, align 8, !tbaa !65
  %22 = bitcast i8* %21 to %struct.obj_header_s*
  store %struct.obj_header_s* %22, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %23 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %24, i32 0, i32 3
  %25 = load i8*, i8** %cbot, align 8, !tbaa !58
  %26 = bitcast i8* %25 to %struct.obj_header_s*
  store %struct.obj_header_s* %26, %struct.obj_header_s** %end, align 8, !tbaa !1
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %29 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp4 = icmp ult %struct.obj_header_s* %28, %29
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %30, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size5 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %31 = load i32, i32* %size5, align 4, !tbaa !83
  store i32 %31, i32* %size, align 4, !tbaa !8
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %32, i64 1
  %33 = bitcast %struct.obj_header_s* %add.ptr to i8*
  %34 = load i32, i32* %size, align 4, !tbaa !8
  %idx.ext = zext i32 %34 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  %35 = load i8*, i8** %sbot, align 8, !tbaa !1
  %cmp7 = icmp ult i8* %add.ptr6, %35
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  br label %if.end.90

if.else:                                          ; preds = %for.body
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i64 1
  %37 = bitcast %struct.obj_header_s* %add.ptr9 to i8*
  %38 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp10 = icmp ugt i8* %37, %38
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %39 = load i32, i32* %more, align 4, !tbaa !8
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.12:                                       ; preds = %if.else
  br label %do.body.13

do.body.13:                                       ; preds = %if.else.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  %40 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d16 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %40, i32 0, i32 0
  %o17 = bitcast %union._d* %d16 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o17, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %41 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.gs_memory_struct_type_s* %41, @st_refs
  br i1 %cmp18, label %if.then.19, label %if.else.50

if.then.19:                                       ; preds = %do.end.15
  %42 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %43, i64 1
  %44 = bitcast %struct.obj_header_s* %add.ptr20 to i16*
  store i16* %44, i16** %rp, align 8, !tbaa !1
  %45 = bitcast i8** %end21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load i16*, i16** %rp, align 8, !tbaa !1
  %47 = bitcast i16* %46 to i8*
  %48 = load i32, i32* %size, align 4, !tbaa !8
  %idx.ext22 = zext i32 %48 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %47, i64 %idx.ext22
  store i8* %add.ptr23, i8** %end21, align 8, !tbaa !1
  %ptype = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 1
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_ref_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !49
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.then.19
  %49 = load i16*, i16** %rp, align 8, !tbaa !1
  %50 = bitcast i16* %49 to i8*
  %51 = load i8*, i8** %end21, align 8, !tbaa !1
  %cmp24 = icmp ult i8* %50, %51
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i16*, i16** %rp, align 8, !tbaa !1
  %53 = bitcast i16* %52 to i8*
  store i8* %53, i8** %comp, align 8, !tbaa !1
  %54 = load i16*, i16** %rp, align 8, !tbaa !1
  %55 = load i16, i16* %54, align 2, !tbaa !93
  %conv = zext i16 %55 to i32
  %cmp25 = icmp sge i32 %conv, 16384
  br i1 %cmp25, label %if.then.27, label %if.else.35

if.then.27:                                       ; preds = %while.body
  %56 = load i16*, i16** %rp, align 8, !tbaa !1
  %57 = load i16, i16* %56, align 2, !tbaa !93
  %conv28 = zext i16 %57 to i32
  %and = and i32 %conv28, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.27
  %58 = load i16*, i16** %rp, align 8, !tbaa !1
  %59 = load i16, i16* %58, align 2, !tbaa !93
  %conv30 = zext i16 %59 to i32
  %and31 = and i32 %conv30, -4097
  %conv32 = trunc i32 %and31 to i16
  store i16 %conv32, i16* %58, align 2, !tbaa !93
  %60 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %61 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %call33 = call i32 @gc_trace(%struct.gs_gc_root_s* %root, %struct.gc_state_s* %60, %struct.gc_mark_stack_s* %61) #4
  %62 = load i32, i32* %more, align 4, !tbaa !8
  %or = or i32 %62, %call33
  store i32 %or, i32* %more, align 4, !tbaa !8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.27
  %63 = load i16*, i16** %rp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8, !tbaa !1
  br label %if.end.49

if.else.35:                                       ; preds = %while.body
  %64 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i16*, i16** %rp, align 8, !tbaa !1
  %66 = bitcast i16* %65 to %struct.ref_s*
  store %struct.ref_s* %66, %struct.ref_s** %pref, align 8, !tbaa !1
  %67 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %68 = load i16, i16* %type_attrs, align 2, !tbaa !101
  %conv36 = zext i16 %68 to i32
  %and37 = and i32 %conv36, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.else.35
  %69 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  %70 = load i16, i16* %type_attrs41, align 2, !tbaa !101
  %conv42 = zext i16 %70 to i32
  %and43 = and i32 %conv42, -2
  %conv44 = trunc i32 %and43 to i16
  store i16 %conv44, i16* %type_attrs41, align 2, !tbaa !101
  %71 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %72 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %call45 = call i32 @gc_trace(%struct.gs_gc_root_s* %root, %struct.gc_state_s* %71, %struct.gc_mark_stack_s* %72) #4
  %73 = load i32, i32* %more, align 4, !tbaa !8
  %or46 = or i32 %73, %call45
  store i32 %or46, i32* %more, align 4, !tbaa !8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.39, %if.else.35
  %74 = load i16*, i16** %rp, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i16, i16* %74, i64 8
  store i16* %add.ptr48, i16** %rp, align 8, !tbaa !1
  %75 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %if.end.34
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = bitcast i8** %end21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast i16** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  br label %if.end.88

if.else.50:                                       ; preds = %do.end.15
  %78 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d51 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %78, i32 0, i32 0
  %o52 = bitcast %union._d* %d51 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o52, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %79 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %79, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %cmp53 = icmp eq i32 %bf.lshr, 2147483647
  br i1 %cmp53, label %if.end.87, label %if.then.55

if.then.55:                                       ; preds = %if.else.50
  %80 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  %81 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d56 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %81, i32 0, i32 0
  %o57 = bitcast %union._d* %d56 to %struct.obj_header_data_s*
  %t58 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o57, i32 0, i32 2
  %type59 = bitcast %union._t* %t58 to %struct.gs_memory_struct_type_s**
  %82 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type59, align 8, !tbaa !1
  %clear_marks = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %82, i32 0, i32 3
  %83 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %clear_marks, align 8, !tbaa !85
  store void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %83, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %ptype60 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %root, i32 0, i32 1
  store %struct.gs_ptr_procs_s* bitcast ({ void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }* @ptr_struct_procs to %struct.gs_ptr_procs_s*), %struct.gs_ptr_procs_s** %ptype60, align 8, !tbaa !49
  %84 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %84, i64 1
  %85 = bitcast %struct.obj_header_s* %add.ptr61 to i8*
  store i8* %85, i8** %comp, align 8, !tbaa !1
  %86 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d62 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %86, i32 0, i32 0
  %o63 = bitcast %union._d* %d62 to %struct.obj_header_data_s*
  %f64 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o63, i32 0, i32 0
  %m65 = bitcast %union._f* %f64 to %struct._m*
  %87 = bitcast %struct._m* %m65 to i32*
  %bf.load66 = load i32, i32* %87, align 4
  %bf.lshr67 = lshr i32 %bf.load66, 1
  %cmp68 = icmp eq i32 %bf.lshr67, 2147483646
  br i1 %cmp68, label %if.end.76, label %if.then.70

if.then.70:                                       ; preds = %if.then.55
  %88 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d71 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %88, i32 0, i32 0
  %o72 = bitcast %union._d* %d71 to %struct.obj_header_data_s*
  %f73 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o72, i32 0, i32 0
  %m74 = bitcast %union._f* %f73 to %struct._m*
  %89 = bitcast %struct._m* %m74 to i32*
  %bf.load75 = load i32, i32* %89, align 4
  %bf.clear = and i32 %bf.load75, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %89, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.70, %if.then.55
  %90 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %cmp77 = icmp ne void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* %90, null
  br i1 %cmp77, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %if.end.76
  %91 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc, align 8, !tbaa !1
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %93 = load i8*, i8** %comp, align 8, !tbaa !1
  %94 = load i32, i32* %size, align 4, !tbaa !8
  %95 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d80 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %95, i32 0, i32 0
  %o81 = bitcast %union._d* %d80 to %struct.obj_header_data_s*
  %t82 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o81, i32 0, i32 2
  %type83 = bitcast %union._t* %t82 to %struct.gs_memory_struct_type_s**
  %96 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type83, align 8, !tbaa !1
  call void %91(%struct.gs_memory_s* %92, i8* %93, i32 %94, %struct.gs_memory_struct_type_s* %96) #4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.79, %if.end.76
  %97 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %98 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pmstack.addr, align 8, !tbaa !1
  %call85 = call i32 @gc_trace(%struct.gs_gc_root_s* %root, %struct.gc_state_s* %97, %struct.gc_mark_stack_s* %98) #4
  %99 = load i32, i32* %more, align 4, !tbaa !8
  %or86 = or i32 %99, %call85
  store i32 %or86, i32* %more, align 4, !tbaa !8
  %100 = bitcast void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.84, %if.else.50
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %while.end
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %101 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %102 = bitcast %struct.obj_header_s* %101 to i8*
  %103 = load i32, i32* %size, align 4, !tbaa !8
  %conv91 = zext i32 %103 to i64
  %add = add i64 %conv91, 24
  %add92 = add i64 %add, 7
  %and93 = and i64 %add92, -8
  %add.ptr94 = getelementptr inbounds i8, i8* %102, i64 %and93
  %104 = bitcast i8* %add.ptr94 to %struct.obj_header_s*
  store %struct.obj_header_s* %104, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11
  %105 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.97 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %108 = load i32, i32* %more, align 4, !tbaa !8
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97

cleanup.97:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %109 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast i32* %more to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i8** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast %struct.gs_gc_root_s* %root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %112) #2
  %113 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i8** %sbot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_trace_finish(%struct.gc_state_s* %pstate) #0 {
entry:
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  %nidx = alloca i32, align 4
  %marked = alloca i32, align 4
  %pnstr = alloca %struct.name_string_s*, align 8
  %enst = alloca %struct.enum_ptr_s, align 8
  %ensst = alloca %struct.enum_ptr_s, align 8
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %ntable = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %1, i32 0, i32 6
  %2 = load %struct.name_table_s*, %struct.name_table_s** %ntable, align 8, !tbaa !42
  store %struct.name_table_s* %2, %struct.name_table_s** %nt, align 8, !tbaa !1
  %3 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %nidx, align 4, !tbaa !8
  %4 = bitcast i32* %marked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %marked, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %5 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %6 = load i32, i32* %nidx, align 4, !tbaa !8
  %call = call i32 @names_next_valid_index(%struct.name_table_s* %5, i32 %6) #4
  store i32 %call, i32* %nidx, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %nidx, align 4, !tbaa !8
  %shr = lshr i32 %8, 9
  %idxprom = zext i32 %shr to i64
  %9 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %10 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !106
  %strings1 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %10, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings1, i32 0, i32 0
  %11 = load i32, i32* %nidx, align 4, !tbaa !8
  %and = and i32 %11, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext
  store %struct.name_string_s* %add.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %12 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %13 = bitcast %struct.name_string_s* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load, 21
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %while.body
  %14 = bitcast %struct.enum_ptr_s* %enst to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast %struct.enum_ptr_s* %ensst to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %17 = bitcast %struct.name_string_s* %16 to i32*
  %bf.load2 = load i32, i32* %17, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 20
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %string_bytes, align 8, !tbaa !108
  %20 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %21 = bitcast %struct.name_string_s* %20 to i32*
  %bf.load6 = load i32, i32* %21, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 22
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call8 = call i32 @gc_string_mark(i8* %19, i32 %bf.lshr7, i32 1, %struct.gc_state_s* %22) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %marked, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  %23 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %24 = load i32, i32* %nidx, align 4, !tbaa !8
  %call11 = call i8* @names_index_sub_table(%struct.name_table_s* %23, i32 %24) #4
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %enst, i32 0, i32 0
  store i8* %call11, i8** %ptr, align 8, !tbaa !5
  %25 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %26 = load i32, i32* %nidx, align 4, !tbaa !8
  %call12 = call i8* @names_index_string_sub_table(%struct.name_table_s* %25, i32 %26) #4
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %ensst, i32 0, i32 0
  store i8* %call12, i8** %ptr13, align 8, !tbaa !5
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call14 = call i32 @ptr_struct_mark(%struct.enum_ptr_s* %enst, %struct.gc_state_s* %27) #4
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call15 = call i32 @ptr_struct_mark(%struct.enum_ptr_s* %ensst, %struct.gc_state_s* %28) #4
  %or = or i32 %call14, %call15
  %29 = load i32, i32* %marked, align 4, !tbaa !8
  %or16 = or i32 %29, %or
  store i32 %or16, i32* %marked, align 4, !tbaa !8
  %30 = bitcast %struct.enum_ptr_s* %ensst to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  %31 = bitcast %struct.enum_ptr_s* %enst to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #2
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %while.body
  %32 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %marked, align 4, !tbaa !8
  %34 = bitcast i32* %marked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  ret i32 %33
}

declare void @names_trace_finish(%struct.name_table_s*, %struct.gc_state_s*) #1

declare void @alloc_save__filter_changes(%struct.gs_ref_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_clear_reloc(%struct.chunk_s* %cp) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %pfree = alloca i8*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %procs = alloca %struct.struct_shared_procs_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 0
  %2 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !110
  %free = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %2, i32 0, i32 1
  %3 = bitcast %struct.obj_header_s* %free to i8*
  store i8* %3, i8** %pfree, align 8, !tbaa !1
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_init_reloc(%struct.chunk_s* %4) #4
  %5 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %cbase, align 8, !tbaa !65
  %8 = bitcast i8* %7 to %struct.obj_header_s*
  store %struct.obj_header_s* %8, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %10, i32 0, i32 3
  %11 = load i8*, i8** %cbot, align 8, !tbaa !58
  %12 = bitcast i8* %11 to %struct.obj_header_s*
  store %struct.obj_header_s* %12, %struct.obj_header_s** %end, align 8, !tbaa !1
  %13 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %16, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %17 = load i32, i32* %size1, align 4, !tbaa !83
  store i32 %17, i32* %size, align 4, !tbaa !8
  %18 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %19, i32 0, i32 0
  %o3 = bitcast %union._d* %d2 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o3, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %shared = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %20, i32 0, i32 2
  %21 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %shared, align 8, !tbaa !111
  store %struct.struct_shared_procs_s* %21, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %22 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.struct_shared_procs_s* %22, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %clear_reloc = getelementptr inbounds %struct.struct_shared_procs_s, %struct.struct_shared_procs_s* %23, i32 0, i32 0
  %24 = load void (%struct.obj_header_s*, i32)*, void (%struct.obj_header_s*, i32)** %clear_reloc, align 8, !tbaa !112
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !8
  call void %24(%struct.obj_header_s* %25, i32 %26) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %27 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %27, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %28 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %28, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, -4
  store i32 %bf.set, i32* %28, align 4
  %29 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %30 = bitcast %struct.obj_header_s* %29 to i8*
  %31 = load i8*, i8** %pfree, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = ashr i64 %sub.ptr.sub, 1
  %conv = trunc i64 %shr to i32
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d7 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %32, i32 0, i32 0
  %o8 = bitcast %union._d* %d7 to %struct.obj_header_data_s*
  %f9 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o8, i32 0, i32 0
  %b = bitcast %union._f* %f9 to %struct._b*
  %33 = bitcast %struct._b* %b to i32*
  %bf.load10 = load i32, i32* %33, align 4
  %bf.value = and i32 %conv, 2147483647
  %bf.shl = shl i32 %bf.value, 1
  %bf.clear11 = and i32 %bf.load10, 1
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, i32* %33, align 4
  %34 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %36 = bitcast %struct.obj_header_s* %35 to i8*
  %37 = load i32, i32* %size, align 4, !tbaa !8
  %conv13 = zext i32 %37 to i64
  %add = add i64 %conv13, 24
  %add14 = add i64 %add, 7
  %and = and i64 %add14, -8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %and
  %38 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %38, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_strings_set_marks(%struct.chunk_s* %42, i32 1) #4
  %43 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_strings_clear_reloc(%struct.chunk_s* %43) #4
  %44 = bitcast i8** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gc_objects_set_reloc(%struct.gc_state_s* %gcst, %struct.chunk_s* %cp) #0 {
entry:
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cp.addr = alloca %struct.chunk_s*, align 8
  %reloc = alloca i64, align 8
  %chead = alloca %struct.chunk_head_s*, align 8
  %pfree = alloca i8*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %finalize = alloca void (%struct.gs_memory_s*, i8*)*, align 8
  %procs = alloca %struct.struct_shared_procs_s*, align 8
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %reloc, align 8, !tbaa !12
  %1 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 0
  %3 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead1, align 8, !tbaa !110
  store %struct.chunk_head_s* %3, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %4 = bitcast i8** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %5, i32 0, i32 1
  %6 = bitcast %struct.obj_header_s* %free to i8*
  store i8* %6, i8** %pfree, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_init_reloc(%struct.chunk_s* %7) #4
  %8 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %cbase, align 8, !tbaa !65
  %11 = bitcast i8* %10 to %struct.obj_header_s*
  store %struct.obj_header_s* %11, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %12 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 3
  %14 = load i8*, i8** %cbot, align 8, !tbaa !58
  %15 = bitcast i8* %14 to %struct.obj_header_s*
  store %struct.obj_header_s* %15, %struct.obj_header_s** %end, align 8, !tbaa !1
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %19, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size2 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %20 = load i32, i32* %size2, align 4, !tbaa !83
  store i32 %20, i32* %size, align 4, !tbaa !8
  %21 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d3 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %23, i32 0, i32 0
  %o4 = bitcast %union._d* %d3 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o4, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %24 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %shared = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %24, i32 0, i32 2
  %25 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %shared, align 8, !tbaa !111
  store %struct.struct_shared_procs_s* %25, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %26 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.struct_shared_procs_s* %26, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %27 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d6 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %27, i32 0, i32 0
  %o7 = bitcast %union._d* %d6 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o7, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %28 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %28, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %cmp8 = icmp eq i32 %bf.lshr, 2147483647
  br i1 %cmp8, label %if.then, label %if.else

cond.false:                                       ; preds = %for.body
  %29 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %set_reloc = getelementptr inbounds %struct.struct_shared_procs_s, %struct.struct_shared_procs_s* %29, i32 0, i32 1
  %30 = load i32 (%struct.obj_header_s*, i32, i32)*, i32 (%struct.obj_header_s*, i32, i32)** %set_reloc, align 8, !tbaa !114
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %32 = load i64, i64* %reloc, align 8, !tbaa !12
  %conv = trunc i64 %32 to i32
  %33 = load i32, i32* %size, align 4, !tbaa !8
  %call = call i32 %30(%struct.obj_header_s* %31, i32 %conv, i32 %33) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %34 = load i32, i32* %size, align 4, !tbaa !8
  %add = add i32 %34, 7
  %and = and i32 %add, -8
  %conv9 = zext i32 %and to i64
  %add10 = add i64 24, %conv9
  %35 = load i64, i64* %reloc, align 8, !tbaa !12
  %add11 = add i64 %35, %add10
  store i64 %add11, i64* %reloc, align 8, !tbaa !12
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d12 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i32 0, i32 0
  %o13 = bitcast %union._d* %d12 to %struct.obj_header_data_s*
  %t14 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o13, i32 0, i32 2
  %type15 = bitcast %union._t* %t14 to %struct.gs_memory_struct_type_s**
  %37 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type15, align 8, !tbaa !1
  %finalize16 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %37, i32 0, i32 6
  %38 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize16, align 8, !tbaa !115
  store void (%struct.gs_memory_s*, i8*)* %38, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %cmp17 = icmp ne void (%struct.gs_memory_s*, i8*)* %38, null
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %39 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %cur_mem = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %40, i32 0, i32 7
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cur_mem, align 8, !tbaa !69
  %42 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %42, i64 1
  %43 = bitcast %struct.obj_header_s* %add.ptr to i8*
  call void %39(%struct.gs_memory_s* %41, i8* %43) #4
  br label %if.end

if.end:                                           ; preds = %do.end.22, %if.then
  %44 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %45 = bitcast %struct.obj_header_s* %44 to i8*
  store i8* %45, i8** %pfree, align 8, !tbaa !1
  %46 = load i8*, i8** %pfree, align 8, !tbaa !1
  %47 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %48 = bitcast %struct.chunk_head_s* %47 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = ashr i64 %sub.ptr.sub, 1
  %conv23 = trunc i64 %shr to i32
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d24 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %49, i32 0, i32 0
  %o25 = bitcast %union._d* %d24 to %struct.obj_header_data_s*
  %f26 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o25, i32 0, i32 0
  %b = bitcast %union._f* %f26 to %struct._b*
  %50 = bitcast %struct._b* %b to i32*
  %bf.load27 = load i32, i32* %50, align 4
  %bf.value = and i32 %conv23, 2147483647
  %bf.shl = shl i32 %bf.value, 1
  %bf.clear = and i32 %bf.load27, 1
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %50, align 4
  %51 = load i64, i64* %reloc, align 8, !tbaa !12
  %52 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d28 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %52, i32 0, i32 0
  %o29 = bitcast %union._d* %d28 to %struct.obj_header_data_s*
  %t30 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o29, i32 0, i32 2
  %reloc31 = bitcast %union._t* %t30 to i64*
  store i64 %51, i64* %reloc31, align 8, !tbaa !12
  br label %do.body.32

do.body.32:                                       ; preds = %if.end
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.52

if.else:                                          ; preds = %cond.false, %cond.true
  br label %do.body.35

do.body.35:                                       ; preds = %if.else
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %54 = bitcast %struct.obj_header_s* %53 to i8*
  %55 = load i8*, i8** %pfree, align 8, !tbaa !1
  %sub.ptr.lhs.cast38 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %55 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %shr41 = ashr i64 %sub.ptr.sub40, 1
  %conv42 = trunc i64 %shr41 to i32
  %56 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d43 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %56, i32 0, i32 0
  %o44 = bitcast %union._d* %d43 to %struct.obj_header_data_s*
  %f45 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o44, i32 0, i32 0
  %b46 = bitcast %union._f* %f45 to %struct._b*
  %57 = bitcast %struct._b* %b46 to i32*
  %bf.load47 = load i32, i32* %57, align 4
  %bf.value48 = and i32 %conv42, 2147483647
  %bf.shl49 = shl i32 %bf.value48, 1
  %bf.clear50 = and i32 %bf.load47, 1
  %bf.set51 = or i32 %bf.clear50, %bf.shl49
  store i32 %bf.set51, i32* %57, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.37, %do.end.34
  %58 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %60 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %61 = bitcast %struct.obj_header_s* %60 to i8*
  %62 = load i32, i32* %size, align 4, !tbaa !8
  %conv53 = zext i32 %62 to i64
  %add54 = add i64 %conv53, 24
  %add55 = add i64 %add54, 7
  %and56 = and i64 %add55, -8
  %add.ptr57 = getelementptr inbounds i8, i8* %61, i64 %and56
  %63 = bitcast i8* %add.ptr57 to %struct.obj_header_s*
  store %struct.obj_header_s* %63, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i8** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  ret void
}

declare void @gc_strings_set_reloc(%struct.chunk_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_do_reloc(%struct.chunk_s* %cp, %struct.gs_ref_memory_s* %mem, %struct.gc_state_s* %pstate) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %chead = alloca %struct.chunk_head_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %proc = alloca void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 0
  %2 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead1, align 8, !tbaa !110
  store %struct.chunk_head_s* %2, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %cbase, align 8, !tbaa !65
  %6 = bitcast i8* %5 to %struct.obj_header_s*
  store %struct.obj_header_s* %6, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %8, i32 0, i32 3
  %9 = load i8*, i8** %cbot, align 8, !tbaa !58
  %10 = bitcast i8* %9 to %struct.obj_header_s*
  store %struct.obj_header_s* %10, %struct.obj_header_s** %end, align 8, !tbaa !1
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %14, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size2 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %15 = load i32, i32* %size2, align 4, !tbaa !83
  store i32 %15, i32* %size, align 4, !tbaa !8
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d3 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %16, i32 0, i32 0
  %o4 = bitcast %union._d* %d3 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o4, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %17 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %17, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %cmp5 = icmp eq i32 %bf.lshr, 2147483646
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d6 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %18, i32 0, i32 0
  %o7 = bitcast %union._d* %d6 to %struct.obj_header_data_s*
  %f8 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o7, i32 0, i32 0
  %b = bitcast %union._f* %f8 to %struct._b*
  %19 = bitcast %struct._b* %b to i32*
  %bf.load9 = load i32, i32* %19, align 4
  %bf.lshr10 = lshr i32 %bf.load9, 1
  %shl = shl i32 %bf.lshr10, 1
  %conv = sext i32 %shl to i64
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %21 = bitcast %struct.obj_header_s* %20 to i8*
  %22 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %23 = bitcast %struct.chunk_head_s* %22 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp11 = icmp ne i64 %conv, %sub.ptr.sub
  br i1 %cmp11, label %if.then, label %if.end.25

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %24 = bitcast void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d13 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %25, i32 0, i32 0
  %o14 = bitcast %union._d* %d13 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o14, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %26 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %reloc_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %26, i32 0, i32 5
  %27 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %reloc_ptrs, align 8, !tbaa !116
  store void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* %27, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %proc, align 8, !tbaa !1
  br label %do.body.15

do.body.15:                                       ; preds = %if.then
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %28 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %proc, align 8, !tbaa !1
  %cmp18 = icmp ne void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* %28, null
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %do.end.17
  %29 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %proc, align 8, !tbaa !1
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %30, i64 1
  %31 = bitcast %struct.obj_header_s* %add.ptr to i8*
  %32 = load i32, i32* %size, align 4, !tbaa !8
  %33 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d21 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %33, i32 0, i32 0
  %o22 = bitcast %union._d* %d21 to %struct.obj_header_data_s*
  %t23 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o22, i32 0, i32 2
  %type24 = bitcast %union._t* %t23 to %struct.gs_memory_struct_type_s**
  %34 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type24, align 8, !tbaa !1
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  call void %29(i8* %31, i32 %32, %struct.gs_memory_struct_type_s* %34, %struct.gc_state_s* %35) #4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %do.end.17
  %36 = bitcast void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %39 = load i32, i32* %size, align 4, !tbaa !8
  %conv26 = zext i32 %39 to i64
  %add = add i64 %conv26, 24
  %add27 = add i64 %add, 7
  %and = and i64 %add27, -8
  %add.ptr28 = getelementptr inbounds i8, i8* %38, i64 %and
  %40 = bitcast i8* %add.ptr28 to %struct.obj_header_s*
  store %struct.obj_header_s* %40, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  ret void
}

declare void @igc_reloc_refs(i16*, i16*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_objects_compact(%struct.chunk_s* %cp, %struct.gc_state_s* %gcst) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %chead = alloca %struct.chunk_head_s*, align 8
  %dpre = alloca %struct.obj_header_s*, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %procs = alloca %struct.struct_shared_procs_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 0
  %2 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead1, align 8, !tbaa !110
  store %struct.chunk_head_s* %2, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %dpre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %dest, align 8, !tbaa !9
  %6 = bitcast i8* %5 to %struct.obj_header_s*
  store %struct.obj_header_s* %6, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %7 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %8, i32 0, i32 2
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !28
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %cbase, align 8, !tbaa !65
  %14 = bitcast i8* %13 to %struct.obj_header_s*
  store %struct.obj_header_s* %14, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %cbot, align 8, !tbaa !58
  %18 = bitcast i8* %17 to %struct.obj_header_s*
  store %struct.obj_header_s* %18, %struct.obj_header_s** %end, align 8, !tbaa !1
  %19 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %22, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size2 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %23 = load i32, i32* %size2, align 4, !tbaa !83
  store i32 %23, i32* %size, align 4, !tbaa !8
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d3 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %24, i32 0, i32 0
  %o4 = bitcast %union._d* %d3 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o4, i32 0, i32 0
  %b = bitcast %union._f* %f to %struct._b*
  %25 = bitcast %struct._b* %b to i32*
  %bf.load = load i32, i32* %25, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %shl = shl i32 %bf.lshr, 1
  %conv = sext i32 %shl to i64
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to i8*
  %28 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %29 = bitcast %struct.chunk_head_s* %28 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp ne i64 %conv, %sub.ptr.sub
  br i1 %cmp5, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body
  %30 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d7 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %31, i32 0, i32 0
  %o8 = bitcast %union._d* %d7 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o8, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %32 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %shared = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %32, i32 0, i32 2
  %33 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %shared, align 8, !tbaa !111
  store %struct.struct_shared_procs_s* %33, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %34 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.struct_shared_procs_s* %34, null
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.end.11
  %35 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.obj_header_s* %35, %36
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.14
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %39 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %40 = bitcast %struct.obj_header_s* %39 to i8*
  %41 = load i32, i32* %size, align 4, !tbaa !8
  %conv18 = zext i32 %41 to i64
  %add = add i64 24, %conv18
  %call = call i8* @memmove(i8* %38, i8* %40, i64 %add) #5
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.14
  br label %if.end.19

if.else:                                          ; preds = %do.end.11
  %42 = load %struct.struct_shared_procs_s*, %struct.struct_shared_procs_s** %procs, align 8, !tbaa !1
  %compact = getelementptr inbounds %struct.struct_shared_procs_s, %struct.struct_shared_procs_s* %42, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)** %compact, align 8, !tbaa !117
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %45 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %46 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %47 = load i32, i32* %size, align 4, !tbaa !8
  call void %43(%struct.gs_memory_s* %44, %struct.obj_header_s* %45, %struct.obj_header_s* %46, i32 %47) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  %48 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %49 = bitcast %struct.obj_header_s* %48 to i8*
  %50 = load i32, i32* %size, align 4, !tbaa !8
  %conv20 = zext i32 %50 to i64
  %add21 = add i64 %conv20, 24
  %add22 = add i64 %add21, 7
  %and = and i64 %add22, -8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %and
  %51 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %51, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %52 = bitcast %struct.struct_shared_procs_s** %procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %54 = bitcast %struct.obj_header_s* %53 to i8*
  %55 = load i32, i32* %size, align 4, !tbaa !8
  %conv24 = zext i32 %55 to i64
  %add25 = add i64 %conv24, 24
  %add26 = add i64 %add25, 7
  %and27 = and i64 %add26, -8
  %add.ptr28 = getelementptr inbounds i8, i8* %54, i64 %and27
  %56 = bitcast i8* %add.ptr28 to %struct.obj_header_s*
  store %struct.obj_header_s* %56, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %outer = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %60, i32 0, i32 11
  %61 = load %struct.chunk_s*, %struct.chunk_s** %outer, align 8, !tbaa !118
  %cmp29 = icmp eq %struct.chunk_s* %61, null
  br i1 %cmp29, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %for.end
  %62 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %dest31 = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %62, i32 0, i32 0
  %63 = load i8*, i8** %dest31, align 8, !tbaa !9
  %64 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase32 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %cbase32, align 8, !tbaa !65
  %cmp33 = icmp ne i8* %63, %65
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true
  %66 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase36 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %66, i32 0, i32 1
  %67 = load i8*, i8** %cbase36, align 8, !tbaa !65
  %68 = bitcast i8* %67 to %struct.obj_header_s*
  store %struct.obj_header_s* %68, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true, %for.end
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %69 = load %struct.obj_header_s*, %struct.obj_header_s** %dpre, align 8, !tbaa !1
  %70 = bitcast %struct.obj_header_s* %69 to i8*
  %71 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot44 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %71, i32 0, i32 3
  store i8* %70, i8** %cbot44, align 8, !tbaa !58
  %72 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %72, i32 0, i32 4
  store %struct.obj_header_s* null, %struct.obj_header_s** %rcur, align 8, !tbaa !119
  %73 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %73, i32 0, i32 5
  store i8* null, i8** %rtop, align 8, !tbaa !120
  %74 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast %struct.obj_header_s** %dpre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  ret void
}

declare void @gc_strings_compact(%struct.chunk_s*, %struct.gs_memory_s*) #1

declare void @ialloc_reset_free(%struct.gs_ref_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gc_free_empty_chunks(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %csucc = alloca %struct.chunk_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 12
  %3 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !121
  store %struct.chunk_s* %3, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 9
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !122
  store %struct.chunk_s* %6, %struct.chunk_s** %csucc, align 8, !tbaa !1
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 3
  %8 = load i8*, i8** %cbot, align 8, !tbaa !58
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %cbase, align 8, !tbaa !65
  %cmp1 = icmp eq i8* %8, %10
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 6
  %12 = load i8*, i8** %ctop, align 8, !tbaa !57
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 7
  %14 = load i8*, i8** %climit, align 8, !tbaa !123
  %cmp2 = icmp eq i8* %12, %14
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.10

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %outer = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 11
  %16 = load %struct.chunk_s*, %struct.chunk_s** %outer, align 8, !tbaa !118
  %cmp4 = icmp eq %struct.chunk_s* %16, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.10

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %17, i32 0, i32 12
  %18 = load i32, i32* %inner_count, align 4, !tbaa !59
  %cmp6 = icmp eq i32 %18, 0
  br i1 %cmp6, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true.5
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %19, %struct.gs_ref_memory_s* %20) #4
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 14
  %22 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !71
  %23 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.chunk_s* %22, %23
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 14
  store %struct.chunk_s* null, %struct.chunk_s** %pcc9, align 8, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %25 = load %struct.chunk_s*, %struct.chunk_s** %csucc, align 8, !tbaa !1
  store %struct.chunk_s* %25, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @print_reloc_proc(i8* %obj, i8* %cname, i8* %robj) #0 {
entry:
  %obj.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %robj.addr = alloca i8*, align 8
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  store i8* %robj, i8** %robj.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %robj.addr, align 8, !tbaa !1
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gcst_get_memory_ptr(%struct.gc_state_s* %gcst) #0 {
entry:
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %spaces = alloca %struct.vm_spaces_s, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #2
  %1 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %1, i32 0, i32 2
  %2 = bitcast %struct.vm_spaces_s* %spaces to i8*
  %3 = bitcast %struct.vm_spaces_s* %spaces1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 40, i32 8, i1 false), !tbaa.struct !24
  %4 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !28
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = bitcast %struct.vm_spaces_s* %spaces to i8*
  call void @llvm.lifetime.end(i64 40, i8* %9) #2
  ret %struct.gs_memory_s* %7
}

declare void @igc_reloc_string(%struct.gs_string_s*, %struct.gc_state_s*) #1

declare void @igc_reloc_const_string(%struct.gs_const_string_s*, %struct.gc_state_s*) #1

declare void @igc_reloc_param_string(%struct.gs_param_string_s*, %struct.gc_state_s*) #1

declare i16* @igc_reloc_ref_ptr(i16*, %struct.gc_state_s*) #1

declare i32 @gc_string_mark(i8*, i32, i32, %struct.gc_state_s*) #1

declare void @names_unmark_all(%struct.name_table_s*) #1

declare i32 @names_mark_index(%struct.name_table_s*, i32) #1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gc_extend_stack(%struct.gc_mark_stack_s* %pms, %struct.gc_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %pms.addr = alloca %struct.gc_mark_stack_s*, align 8
  %pstate.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %sp = alloca %struct.ms_entry*, align 8
  %cptr = alloca i8*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gc_mark_stack_s* %pms, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %pstate, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %0, i32 0, i32 1
  %1 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next, align 8, !tbaa !60
  %cmp = icmp eq %struct.gc_mark_stack_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 4083, i32* %count, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %count, align 4, !tbaa !8
  %cmp1 = icmp uge i32 %3, 50
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !15
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !124
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %heap2 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %7, i32 0, i32 5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap2, align 8, !tbaa !15
  %9 = load i32, i32* %count, align 4, !tbaa !8
  %conv = zext i32 %9 to i64
  %mul = mul i64 16, %conv
  %add = add i64 40, %mul
  %conv3 = trunc i64 %add to i32
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 %conv3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %10 = bitcast i8* %call to %struct.gc_mark_stack_s*
  %11 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %11, i32 0, i32 1
  store %struct.gc_mark_stack_s* %10, %struct.gc_mark_stack_s** %next4, align 8, !tbaa !60
  %12 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %12, i32 0, i32 1
  %13 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next5, align 8, !tbaa !60
  %cmp6 = icmp ne %struct.gc_mark_stack_s* %13, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %count, align 4, !tbaa !8
  %shr = lshr i32 %14, 1
  store i32 %shr, i32* %count, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %15 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %15, i32 0, i32 1
  %16 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next9, align 8, !tbaa !60
  %cmp10 = icmp eq %struct.gc_mark_stack_s* %16, null
  br i1 %cmp10, label %if.then.12, label %if.end.34

if.then.12:                                       ; preds = %for.end
  %17 = bitcast %struct.ms_entry** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %18, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x %struct.ms_entry], [1 x %struct.ms_entry]* %entries, i32 0, i32 0
  %19 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %count13 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %19, i32 0, i32 2
  %20 = load i32, i32* %count13, align 4, !tbaa !94
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %arraydecay, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %add.ptr, i64 -1
  store %struct.ms_entry* %add.ptr14, %struct.ms_entry** %sp, align 8, !tbaa !1
  %21 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.ms_entry*, %struct.ms_entry** %sp, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.ms_entry, %struct.ms_entry* %22, i32 0, i32 0
  %23 = load i8*, i8** %ptr, align 8, !tbaa !95
  store i8* %23, i8** %cptr, align 8, !tbaa !1
  %24 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i8*, i8** %cptr, align 8, !tbaa !1
  %26 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %call15 = call %struct.chunk_s* @gc_locate(i8* %25, %struct.gc_state_s* %26) #4
  store %struct.chunk_s* %call15, %struct.chunk_s** %cp, align 8, !tbaa !1
  %27 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  store i32 1, i32* %new, align 4, !tbaa !8
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.chunk_s* %28, null
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.then.12
  %call19 = call i8* @gs_program_name() #4
  %call20 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call19, i64 %call20) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1063) #4
  %29 = load i8*, i8** %cptr, align 8, !tbaa !1
  %30 = ptrtoint i8* %29 to i64
  %call21 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i64 %30) #4
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %pstate.addr, align 8, !tbaa !1
  %heap22 = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %31, i32 0, i32 5
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap22, align 8, !tbaa !15
  call void @gs_abort(%struct.gs_memory_s* %32) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.then.12
  %33 = load i8*, i8** %cptr, align 8, !tbaa !1
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_bot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %34, i32 0, i32 22
  %35 = load i8*, i8** %rescan_bot, align 8, !tbaa !64
  %cmp24 = icmp ult i8* %33, %35
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %36 = load i8*, i8** %cptr, align 8, !tbaa !1
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_bot27 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %37, i32 0, i32 22
  store i8* %36, i8** %rescan_bot27, align 8, !tbaa !64
  store i32 -1, i32* %new, align 4, !tbaa !8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %38 = load i8*, i8** %cptr, align 8, !tbaa !1
  %39 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %39, i32 0, i32 23
  %40 = load i8*, i8** %rescan_top, align 8, !tbaa !66
  %cmp29 = icmp ugt i8* %38, %40
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %41 = load i8*, i8** %cptr, align 8, !tbaa !1
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rescan_top32 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %42, i32 0, i32 23
  store i8* %41, i8** %rescan_top32, align 8, !tbaa !66
  store i32 -1, i32* %new, align 4, !tbaa !8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %43 = load i32, i32* %new, align 4, !tbaa !8
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %44 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.ms_entry** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  br label %cleanup

if.end.34:                                        ; preds = %for.end
  %48 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next35 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %48, i32 0, i32 1
  %49 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next35, align 8, !tbaa !60
  %50 = load i32, i32* %count, align 4, !tbaa !8
  call void @gc_init_mark_stack(%struct.gc_mark_stack_s* %49, i32 %50) #4
  %51 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %52 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next36 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %52, i32 0, i32 1
  %53 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next36, align 8, !tbaa !60
  %prev = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %53, i32 0, i32 0
  store %struct.gc_mark_stack_s* %51, %struct.gc_mark_stack_s** %prev, align 8, !tbaa !61
  %54 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %pms.addr, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %54, i32 0, i32 1
  %55 = load %struct.gc_mark_stack_s*, %struct.gc_mark_stack_s** %next37, align 8, !tbaa !60
  %on_heap = getelementptr inbounds %struct.gc_mark_stack_s, %struct.gc_mark_stack_s* %55, i32 0, i32 3
  store i32 1, i32* %on_heap, align 4, !tbaa !62
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.end.33
  %56 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %cleanup
  %57 = load i32, i32* %retval
  ret i32 %57

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct.chunk_s* @gc_locate(i8*, %struct.gc_state_s*) #1

declare void @eprintf_program_ident(i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare void @lprintf_file_and_line(i8*, i32) #1

declare i32 @errprintf_nomem(i8*, ...) #1

declare void @gs_abort(%struct.gs_memory_s*) #1

declare i32 @names_next_valid_index(%struct.name_table_s*, i32) #1

declare i8* @names_index_sub_table(%struct.name_table_s*, i32) #1

declare i8* @names_index_string_sub_table(%struct.name_table_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gc_init_reloc(%struct.chunk_s* %cp) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %chead = alloca %struct.chunk_head_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 0
  %2 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead1, align 8, !tbaa !110
  store %struct.chunk_head_s* %2, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %cbase, align 8, !tbaa !65
  %5 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %5, i32 0, i32 0
  store i8* %4, i8** %dest, align 8, !tbaa !9
  %6 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %6, i32 0, i32 1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %free, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %b = bitcast %union._f* %f to %struct._b*
  %7 = bitcast %struct._b* %b to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, shl (i32 and (i32 ashr (i32 ptrtoint (%struct.obj_header_s* getelementptr inbounds (%struct.chunk_head_s, %struct.chunk_head_s* null, i32 0, i32 1) to i32), i32 1), i32 2147483647), i32 1)
  store i32 %bf.set, i32* %7, align 4
  %8 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %free2 = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %8, i32 0, i32 1
  %d3 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %free2, i32 0, i32 0
  %o4 = bitcast %union._d* %d3 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o4, i32 0, i32 1
  store i32 24, i32* %size, align 4, !tbaa !83
  %9 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !1
  %free5 = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %9, i32 0, i32 1
  %d6 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %free5, i32 0, i32 0
  %o7 = bitcast %union._d* %d6 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o7, i32 0, i32 2
  %reloc = bitcast %union._t* %t to i64*
  store i64 0, i64* %reloc, align 8, !tbaa !12
  %10 = bitcast %struct.chunk_head_s** %chead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

declare void @gc_strings_clear_reloc(%struct.chunk_s*) #1

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

declare void @alloc_free_chunk(%struct.chunk_s*, %struct.gs_ref_memory_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !2, i64 0}
!10 = !{!"chunk_head_s", !2, i64 0, !11, i64 8}
!11 = !{!"obj_header_s", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!6, !7, i64 8}
!15 = !{!16, !2, i64 72}
!16 = !{!"gc_state_s", !2, i64 0, !17, i64 8, !18, i64 24, !7, i64 64, !7, i64 68, !2, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!18 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!19 = !{!20, !2, i64 192}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!23, !2, i64 120}
!23 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !7, i64 128, !2, i64 136, !7, i64 144, !7, i64 148, !3, i64 152, !2, i64 168, !7, i64 176, !2, i64 184, !7, i64 192, !2, i64 200, !2, i64 208}
!24 = !{i64 0, i64 8, !1, i64 8, i64 32, !25, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1}
!25 = !{!3, !3, i64 0}
!26 = !{!27, !2, i64 8}
!27 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!28 = !{!29, !2, i64 0}
!29 = !{!"gs_ref_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !7, i64 216, !7, i64 220, !7, i64 224, !30, i64 232, !7, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !31, i64 304, !2, i64 488, !17, i64 496, !13, i64 512, !13, i64 520, !32, i64 528, !7, i64 552, !7, i64 556, !7, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !7, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !33, i64 648, !7, i64 672, !3, i64 680}
!30 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !13, i64 32}
!31 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !7, i64 96, !7, i64 100, !2, i64 104, !7, i64 112, !2, i64 120, !2, i64 128, !7, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!33 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !7, i64 16}
!34 = !{!27, !2, i64 16}
!35 = !{!27, !2, i64 24}
!36 = !{!16, !2, i64 0}
!37 = !{!16, !2, i64 8}
!38 = !{!16, !2, i64 16}
!39 = !{!16, !7, i64 64}
!40 = !{!16, !7, i64 68}
!41 = !{!29, !2, i64 200}
!42 = !{!16, !2, i64 80}
!43 = !{!29, !2, i64 288}
!44 = !{!31, !2, i64 80}
!45 = !{!29, !2, i64 616}
!46 = !{!29, !2, i64 584}
!47 = !{!48, !2, i64 16}
!48 = !{!"gs_gc_root_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24}
!49 = !{!48, !2, i64 8}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_ptr_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!52 = !{!48, !2, i64 0}
!53 = !{!54, !2, i64 0}
!54 = !{!"_msd", !55, i64 0, !3, i64 40}
!55 = !{!"gc_mark_stack_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !3, i64 24}
!56 = !{!54, !7, i64 20}
!57 = !{!31, !2, i64 48}
!58 = !{!31, !2, i64 24}
!59 = !{!31, !7, i64 96}
!60 = !{!55, !2, i64 8}
!61 = !{!55, !2, i64 0}
!62 = !{!55, !7, i64 20}
!63 = !{!31, !2, i64 64}
!64 = !{!31, !2, i64 168}
!65 = !{!31, !2, i64 8}
!66 = !{!31, !2, i64 176}
!67 = !{!20, !2, i64 24}
!68 = !{!20, !2, i64 184}
!69 = !{!16, !2, i64 88}
!70 = !{!51, !2, i64 16}
!71 = !{!29, !2, i64 488}
!72 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 4, !8, i64 100, i64 4, !8, i64 104, i64 8, !1, i64 112, i64 4, !8, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 4, !8, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!73 = !{!29, !2, i64 640}
!74 = !{!75, !2, i64 616}
!75 = !{!"alloc_save_s", !29, i64 0, !18, i64 1496, !7, i64 1536, !7, i64 1540, !13, i64 1544, !2, i64 1552}
!76 = !{!33, !13, i64 0}
!77 = !{!33, !13, i64 8}
!78 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 4, !8}
!79 = !{!20, !2, i64 40}
!80 = !{!29, !13, i64 512}
!81 = !{!29, !13, i64 520}
!82 = !{!20, !2, i64 176}
!83 = !{!84, !7, i64 4}
!84 = !{!"obj_header_data_s", !3, i64 0, !7, i64 4, !3, i64 8, !13, i64 16}
!85 = !{!86, !2, i64 24}
!86 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!87 = !{!88, !7, i64 24}
!88 = !{!"op_array_table_s", !89, i64 0, !2, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!89 = !{!"ref_s", !90, i64 0, !3, i64 8}
!90 = !{!"tas_s", !91, i64 0, !91, i64 2, !7, i64 4}
!91 = !{!"short", !3, i64 0}
!92 = !{!88, !2, i64 16}
!93 = !{!91, !91, i64 0}
!94 = !{!55, !7, i64 16}
!95 = !{!96, !2, i64 0}
!96 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12}
!97 = !{!96, !7, i64 8}
!98 = !{!96, !7, i64 12}
!99 = !{!51, !2, i64 8}
!100 = !{!86, !2, i64 32}
!101 = !{!89, !91, i64 0}
!102 = !{!89, !7, i64 4}
!103 = !{!104, !7, i64 4096}
!104 = !{!"name_sub_table_s", !3, i64 0, !7, i64 4096}
!105 = !{i64 0, i64 8, !1, i64 8, i64 4, !8, i64 12, i64 4, !8}
!106 = !{!107, !2, i64 8}
!107 = !{!"sub_", !2, i64 0, !2, i64 8}
!108 = !{!109, !2, i64 8}
!109 = !{!"name_string_s", !7, i64 0, !7, i64 2, !7, i64 2, !7, i64 2, !2, i64 8}
!110 = !{!31, !2, i64 0}
!111 = !{!86, !2, i64 16}
!112 = !{!113, !2, i64 0}
!113 = !{!"struct_shared_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!114 = !{!113, !2, i64 8}
!115 = !{!86, !2, i64 48}
!116 = !{!86, !2, i64 40}
!117 = !{!113, !2, i64 16}
!118 = !{!31, !2, i64 88}
!119 = !{!31, !2, i64 32}
!120 = !{!31, !2, i64 40}
!121 = !{!29, !2, i64 296}
!122 = !{!31, !2, i64 72}
!123 = !{!31, !2, i64 56}
!124 = !{!20, !2, i64 8}
