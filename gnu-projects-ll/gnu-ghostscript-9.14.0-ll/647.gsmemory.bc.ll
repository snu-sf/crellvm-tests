; ModuleID = './gsmemory.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_bytestring_s = type { i8*, i32, i8* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%union.anon = type { i8* }
%union.anon.0 = type { i8* }

@gs_alloc_fill_alloc = constant i8 -95, align 1
@gs_alloc_fill_block = constant i8 -79, align 1
@gs_alloc_fill_collected = constant i8 -63, align 1
@gs_alloc_fill_deleted = constant i8 -47, align 1
@gs_alloc_fill_free = constant i8 -15, align 1
@.str = private unnamed_addr constant [7 x i8] c"(free)\00", align 1
@st_free = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@st_bytes = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"gs_gc_root_t\00", align 1
@gc_root_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @gc_root_enum_ptrs, i32 0, i32 0) }, align 8
@st_gc_root_t = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gc_root_reloc_ptrs to i8*) }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"gs_const_string[]\00", align 1
@st_const_string_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @const_string_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @const_string_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@gc_root_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.4 = private unnamed_addr constant [16 x i8] c"gs_const_string\00", align 1
@const_string_sdata = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @const_string_elts, i32 0, i32 0) }, align 8
@st_const_string = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @const_string_sdata to i8*) }, align 8
@const_string_elts = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 0 }], align 2

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
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
  ret %struct.gs_ptr_procs_s* null
}

; Function Attrs: nounwind uwtable
define void @gs_no_struct_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psd = alloca %struct.gc_struct_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ppe = alloca %struct.gc_ptr_element_s*, align 8
  %pptr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gc_struct_data_s** %psd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %1, i32 0, i32 7
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %3 = bitcast i8* %2 to %struct.gc_struct_data_s*
  store %struct.gc_struct_data_s* %3, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %6 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %num_ptrs = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %6, i32 0, i32 0
  %7 = load i16, i16* %num_ptrs, align 2, !tbaa !9
  %conv = zext i16 %7 to i32
  %cmp1 = icmp slt i32 %5, %conv
  br i1 %cmp1, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %if.end
  %8 = bitcast %struct.gc_ptr_element_s** %ppe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %ptrs = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %10, i32 0, i32 3
  %11 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ptrs, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %11, i64 %idxprom
  store %struct.gc_ptr_element_s* %arrayidx, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %12 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %14, i32 0, i32 1
  %15 = load i16, i16* %offset, align 2, !tbaa !13
  %conv4 = zext i16 %15 to i32
  %idx.ext = sext i32 %conv4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %pptr, align 8, !tbaa !1
  %16 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %16, i32 0, i32 0
  %17 = load i16, i16* %type, align 2, !tbaa !15
  %conv5 = zext i16 %17 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then.3
  %18 = load i8*, i8** %pptr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !1
  %21 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %21, i32 0, i32 0
  store i8* %20, i8** %ptr, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %if.then.3
  %22 = load i8*, i8** %pptr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8, !tbaa !18
  %25 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr7, align 8, !tbaa !16
  %26 = load i8*, i8** %pptr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_string_s*
  %size8 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %27, i32 0, i32 1
  %28 = load i32, i32* %size8, align 4, !tbaa !20
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 1
  store i32 %28, i32* %size9, align 4, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %if.then.3
  %30 = load i8*, i8** %pptr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_const_string_s*
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %data11, align 8, !tbaa !22
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %33, i32 0, i32 0
  store i8* %32, i8** %ptr12, align 8, !tbaa !16
  %34 = load i8*, i8** %pptr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_const_string_s*
  %size13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %35, i32 0, i32 1
  %36 = load i32, i32* %size13, align 4, !tbaa !24
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 1
  store i32 %36, i32* %size14, align 4, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.10, %sw.bb.6, %sw.bb
  %38 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gc_ptr_element_s** %ppe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %if.end
  %40 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %40, i32 0, i32 2
  %41 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type, align 8, !tbaa !25
  %tobool = icmp ne %struct.gs_memory_struct_type_s* %41, null
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.16
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.18:                                        ; preds = %if.end.16
  %42 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type19 = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %42, i32 0, i32 2
  %43 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type19, align 8, !tbaa !25
  %enum_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %43, i32 0, i32 4
  %44 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %enum_ptrs, align 8, !tbaa !26
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %47 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_offset = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %47, i32 0, i32 1
  %48 = load i16, i16* %super_offset, align 2, !tbaa !27
  %conv20 = zext i16 %48 to i32
  %idx.ext21 = sext i32 %conv20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %46, i64 %idx.ext21
  %49 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %49, i32 0, i32 0
  %50 = load i32, i32* %ssize, align 4, !tbaa !28
  %51 = load i32, i32* %index.addr, align 4, !tbaa !5
  %52 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %num_ptrs23 = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %52, i32 0, i32 0
  %53 = load i16, i16* %num_ptrs23, align 2, !tbaa !9
  %conv24 = zext i16 %53 to i32
  %sub = sub nsw i32 %51, %conv24
  %54 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %55 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type25 = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %55, i32 0, i32 2
  %56 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type25, align 8, !tbaa !25
  %57 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %44(%struct.gs_memory_s* %45, i8* %add.ptr22, i32 %50, i32 %sub, %struct.enum_ptr_s* %54, %struct.gs_memory_struct_type_s* %56, %struct.gc_state_s* %57) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.18, %if.then.17, %cleanup, %if.then
  %58 = bitcast %struct.gc_struct_data_s** %psd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %59
}

; Function Attrs: nounwind uwtable
define void @basic_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psd = alloca %struct.gc_struct_data_s*, align 8
  %i = alloca i32, align 4
  %ppe = alloca %struct.gc_ptr_element_s*, align 8
  %pptr = alloca i8*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gc_struct_data_s** %psd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %1, i32 0, i32 7
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %3 = bitcast i8* %2 to %struct.gc_struct_data_s*
  store %struct.gc_struct_data_s* %3, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %num_ptrs = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %6, i32 0, i32 0
  %7 = load i16, i16* %num_ptrs, align 2, !tbaa !9
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.gc_ptr_element_s** %ppe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %ptrs = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %10, i32 0, i32 3
  %11 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ptrs, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %11, i64 %idxprom
  store %struct.gc_ptr_element_s* %arrayidx, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %12 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %14, i32 0, i32 1
  %15 = load i16, i16* %offset, align 2, !tbaa !13
  %conv2 = zext i16 %15 to i32
  %idx.ext = sext i32 %conv2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %pptr, align 8, !tbaa !1
  %16 = load %struct.gc_ptr_element_s*, %struct.gc_ptr_element_s** %ppe, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gc_ptr_element_s, %struct.gc_ptr_element_s* %16, i32 0, i32 0
  %17 = load i16, i16* %type, align 2, !tbaa !15
  %conv3 = zext i16 %17 to i32
  switch i32 %conv3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gc_state_s* %18 to %struct.gc_procs_common_s**
  %20 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %19, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %20, i32 0, i32 0
  %21 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %22 = load i8*, i8** %pptr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !1
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %21(i8* %24, %struct.gc_state_s* %25) #3
  %26 = load i8*, i8** %pptr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to i8**
  store i8* %call, i8** %27, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 1
  %31 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !31
  %32 = load i8*, i8** %pptr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to %struct.gs_string_s*
  %34 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %31(%struct.gs_string_s* %33, %struct.gc_state_s* %34) #3
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gc_state_s* %35 to %struct.gc_procs_common_s**
  %37 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %36, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %37, i32 0, i32 2
  %38 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !32
  %39 = load i8*, i8** %pptr, align 8, !tbaa !1
  %40 = bitcast i8* %39 to %struct.gs_const_string_s*
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %38(%struct.gs_const_string_s* %40, %struct.gc_state_s* %41) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.5, %sw.bb.4, %sw.bb
  %42 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gc_ptr_element_s** %ppe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %45, i32 0, i32 2
  %46 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type, align 8, !tbaa !25
  %tobool = icmp ne %struct.gs_memory_struct_type_s* %46, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %47 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type6 = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %47, i32 0, i32 2
  %48 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type6, align 8, !tbaa !25
  %reloc_ptrs = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %48, i32 0, i32 5
  %49 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** %reloc_ptrs, align 8, !tbaa !33
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_offset = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %51, i32 0, i32 1
  %52 = load i16, i16* %super_offset, align 2, !tbaa !27
  %conv7 = zext i16 %52 to i32
  %idx.ext8 = sext i32 %conv7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %50, i64 %idx.ext8
  %53 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %53, i32 0, i32 0
  %54 = load i32, i32* %ssize, align 4, !tbaa !28
  %55 = load %struct.gc_struct_data_s*, %struct.gc_struct_data_s** %psd, align 8, !tbaa !1
  %super_type10 = getelementptr inbounds %struct.gc_struct_data_s, %struct.gc_struct_data_s* %55, i32 0, i32 2
  %56 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %super_type10, align 8, !tbaa !25
  %57 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %49(i8* %add.ptr9, i32 %54, %struct.gs_memory_struct_type_s* %56, %struct.gc_state_s* %57) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.gc_struct_data_s** %psd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @const_string_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 16
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_const_string to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !26
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 16
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 16, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_const_string to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @const_string_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 16
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_const_string to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !33
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 16, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_const_string to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 16
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @enum_bytestring(%struct.enum_ptr_s* %pep, %struct.gs_bytestring_s* %pbs) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pbs.addr = alloca %struct.gs_bytestring_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_bytestring_s* %pbs, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !34
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes1 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %bytes1, align 8, !tbaa !34
  %4 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %4, i32 0, i32 0
  store i8* %3, i8** %ptr, align 8, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !36
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr2, align 8, !tbaa !16
  %8 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !37
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 1
  store i32 %9, i32* %size3, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_struct_procs, %cond.true ], [ @ptr_string_procs, %cond.false ]
  ret %struct.gs_ptr_procs_s* %cond
}

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s* %pep, %struct.gs_const_bytestring_s* %pbs) #0 {
entry:
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pbs.addr = alloca %struct.gs_const_bytestring_s*, align 8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_const_bytestring_s* %pbs, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !38
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %bytes1, align 8, !tbaa !38
  %4 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %4, i32 0, i32 0
  store i8* %3, i8** %ptr, align 8, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !40
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr2, align 8, !tbaa !16
  %8 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !41
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 1
  store i32 %9, i32* %size3, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_struct_procs, %cond.true ], [ @ptr_const_string_procs, %cond.false ]
  ret %struct.gs_ptr_procs_s* %cond
}

; Function Attrs: nounwind uwtable
define void @reloc_bytestring(%struct.gs_bytestring_s* %pbs, %struct.gc_state_s* %gcst) #0 {
entry:
  %pbs.addr = alloca %struct.gs_bytestring_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %bytes1 = alloca i8*, align 8
  %offset = alloca i64, align 8
  store %struct.gs_bytestring_s* %pbs, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !34
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %bytes1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes2 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %bytes2, align 8, !tbaa !34
  store i8* %4, i8** %bytes1, align 8, !tbaa !1
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !36
  %8 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %offset, align 8, !tbaa !42
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gc_state_s* %9 to %struct.gc_procs_common_s**
  %11 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %10, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %11, i32 0, i32 0
  %12 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %13 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %12(i8* %13, %struct.gc_state_s* %14) #3
  store i8* %call, i8** %bytes1, align 8, !tbaa !1
  %15 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes3 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %15, i32 0, i32 2
  store i8* %call, i8** %bytes3, align 8, !tbaa !34
  %16 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %17 = load i64, i64* %offset, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %18, i32 0, i32 0
  store i8* %add.ptr, i8** %data4, align 8, !tbaa !36
  %19 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i8** %bytes1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 1
  %24 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !31
  %25 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_bytestring_s* %25 to %struct.gs_string_s*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %24(%struct.gs_string_s* %26, %struct.gc_state_s* %27) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @reloc_const_bytestring(%struct.gs_const_bytestring_s* %pbs, %struct.gc_state_s* %gcst) #0 {
entry:
  %pbs.addr = alloca %struct.gs_const_bytestring_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %bytes1 = alloca i8*, align 8
  %offset = alloca i64, align 8
  store %struct.gs_const_bytestring_s* %pbs, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !38
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %bytes1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes2 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %bytes2, align 8, !tbaa !38
  store i8* %4, i8** %bytes1, align 8, !tbaa !1
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !40
  %8 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %offset, align 8, !tbaa !42
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gc_state_s* %9 to %struct.gc_procs_common_s**
  %11 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %10, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %11, i32 0, i32 0
  %12 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %13 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %12(i8* %13, %struct.gc_state_s* %14) #3
  store i8* %call, i8** %bytes1, align 8, !tbaa !1
  %15 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes3 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %15, i32 0, i32 2
  store i8* %call, i8** %bytes3, align 8, !tbaa !38
  %16 = load i8*, i8** %bytes1, align 8, !tbaa !1
  %17 = load i64, i64* %offset, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %18, i32 0, i32 0
  store i8* %add.ptr, i8** %data4, align 8, !tbaa !40
  %19 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i8** %bytes1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 2
  %24 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !32
  %25 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_const_bytestring_s* %25 to %struct.gs_const_string_s*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %24(%struct.gs_const_string_s* %26, %struct.gc_state_s* %27) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_alloc_memset(i8* %ptr, i32 %fill, i64 %lsize) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %fill.addr = alloca i32, align 4
  %lsize.addr = alloca i64, align 8
  %msize = alloca i64, align 8
  %p = alloca i8*, align 8
  %isize = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %fill, i32* %fill.addr, align 4, !tbaa !5
  store i64 %lsize, i64* %lsize.addr, align 8, !tbaa !42
  %0 = bitcast i64* %msize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %lsize.addr, align 8, !tbaa !42
  store i64 %1, i64* %msize, align 8, !tbaa !42
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %p, align 8, !tbaa !1
  %4 = bitcast i32* %isize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %msize, align 8, !tbaa !42
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %msize, align 8, !tbaa !42
  %cmp = icmp ult i64 %6, 2147483647
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i64, i64* %msize, align 8, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ 2147483647, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %isize, align 4, !tbaa !5
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i32, i32* %fill.addr, align 4, !tbaa !5
  %10 = load i32, i32* %isize, align 4, !tbaa !5
  %conv1 = sext i32 %10 to i64
  %call = call i8* @memset(i8* %8, i32 %9, i64 %conv1) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %isize, align 4, !tbaa !5
  %conv2 = sext i32 %11 to i64
  %12 = load i64, i64* %msize, align 8, !tbaa !42
  %sub = sub i64 %12, %conv2
  store i64 %sub, i64* %msize, align 8, !tbaa !42
  %13 = load i32, i32* %isize, align 4, !tbaa !5
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %isize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i64* %msize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i8* @gs_resize_struct_array(%struct.gs_memory_s* %mem, i8* %obj, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %2 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !44
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %5 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, i32 %4, %struct.gs_memory_struct_type_s* %5, i8* %6) #3
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 1
  %8 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !47
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %9, i8* %10, i32 %11, i8* %12) #3
  store i8* %call2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s* %rmem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %rmem, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %1 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !48
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %rmem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %3) #3
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i8* %1(%struct.gs_memory_s* %2, i32 %call, i8* %4) #3
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %0, i32 0, i32 0
  %1 = load i32, i32* %ssize, align 4, !tbaa !28
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_ignore_free_object(%struct.gs_memory_s* %mem, i8* %data, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_ignore_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_free_const_object(%struct.gs_memory_s* %mem, i8* %data, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %u = alloca %union.anon, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %union.anon* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %r = bitcast %union.anon* %u to i8**
  store i8* %1, i8** %r, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %w = bitcast %union.anon* %u to i8**
  %5 = load i8*, i8** %w, align 8, !tbaa !1
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %3(%struct.gs_memory_s* %4, i8* %5, i8* %6) #3
  %7 = bitcast %union.anon* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_free_const_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %u = alloca %union.anon.0, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %r = bitcast %union.anon.0* %u to i8**
  store i8* %1, i8** %r, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %3 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !50
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %w = bitcast %union.anon.0* %u to i8**
  %5 = load i8*, i8** %w, align 8, !tbaa !1
  %6 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %3(%struct.gs_memory_s* %4, i8* %5, i32 %6, i8* %7) #3
  %8 = bitcast %union.anon.0* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_free_bytestring(%struct.gs_memory_s* %mem, %struct.gs_bytestring_s* %pbs, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pbs.addr = alloca %struct.gs_bytestring_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_bytestring_s* %pbs, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !34
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes1 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %bytes1, align 8, !tbaa !34
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %3(%struct.gs_memory_s* %4, i8* %6, i8* %7) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 19
  %9 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !50
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !36
  %13 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !37
  %15 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %9(%struct.gs_memory_s* %10, i8* %12, i32 %14, i8* %15) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_free_const_bytestring(%struct.gs_memory_s* %mem, %struct.gs_const_bytestring_s* %pbs, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pbs.addr = alloca %struct.gs_const_bytestring_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_const_bytestring_s* %pbs, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %bytes, align 8, !tbaa !38
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %bytes1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %bytes1, align 8, !tbaa !38
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_free_const_object(%struct.gs_memory_s* %2, i8* %4, i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !40
  %9 = load %struct.gs_const_bytestring_s*, %struct.gs_const_bytestring_s** %pbs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %9, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !41
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_free_const_string(%struct.gs_memory_s* %6, i8* %8, i32 %10, i8* %11) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_ignore_consolidate_free(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %sname = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %sname, align 8, !tbaa !51
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_register_struct_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %root, i8** %pp, i8* %cname) #0 {
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
  %1 = load i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)** %register_root, align 8, !tbaa !52
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root.addr, align 8, !tbaa !1
  %4 = load i8**, i8*** %pp.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gs_memory_s* %2, %struct.gs_gc_root_s* %3, %struct.gs_ptr_procs_s* @ptr_struct_procs, i8** %4, i8* %5) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @rc_free_struct_only(%struct.gs_memory_s* %mem, i8* %data, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %2(%struct.gs_memory_s* %3, i8* %4, i8* %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 56}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !11, i64 0}
!10 = !{!"gc_struct_data_s", !11, i64 0, !11, i64 2, !2, i64 8, !2, i64 16}
!11 = !{!"short", !3, i64 0}
!12 = !{!10, !2, i64 16}
!13 = !{!14, !11, i64 2}
!14 = !{!"gc_ptr_element_s", !11, i64 0, !11, i64 2}
!15 = !{!14, !11, i64 0}
!16 = !{!17, !2, i64 0}
!17 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!20 = !{!19, !6, i64 8}
!21 = !{!17, !6, i64 8}
!22 = !{!23, !2, i64 0}
!23 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!24 = !{!23, !6, i64 8}
!25 = !{!10, !2, i64 8}
!26 = !{!8, !2, i64 32}
!27 = !{!10, !11, i64 2}
!28 = !{!8, !6, i64 0}
!29 = !{!30, !2, i64 0}
!30 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!31 = !{!30, !2, i64 8}
!32 = !{!30, !2, i64 16}
!33 = !{!8, !2, i64 40}
!34 = !{!35, !2, i64 16}
!35 = !{!"gs_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!36 = !{!35, !2, i64 0}
!37 = !{!35, !6, i64 8}
!38 = !{!39, !2, i64 16}
!39 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!40 = !{!39, !2, i64 0}
!41 = !{!39, !6, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !3, i64 0}
!44 = !{!45, !2, i64 104}
!45 = !{!"gs_memory_s", !2, i64 0, !46, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!46 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!47 = !{!45, !2, i64 16}
!48 = !{!45, !2, i64 8}
!49 = !{!45, !2, i64 24}
!50 = !{!45, !2, i64 160}
!51 = !{!8, !2, i64 8}
!52 = !{!45, !2, i64 168}
