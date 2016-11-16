; ModuleID = './gsfcmap1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.gx_cmap_lookup_range_s = type { %struct.gs_cmap_adobe1_s*, i32, [4 x i8], i32, i32, i32, %struct.gs_string_s, i32, i32, %struct.gs_string_s, i32 }
%struct.gs_cmap_adobe1_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s*, %struct.gx_code_space_s, %struct.gx_code_map_s, %struct.gx_code_map_s, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_code_space_s = type { %struct.gx_code_space_range_s*, i32 }
%struct.gx_code_map_s = type { %struct.gx_cmap_lookup_range_s*, i32 }
%struct.gs_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gs_cmap_adobe1_t\00", align 1
@cmap_adobe1_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_cmap, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @cmap_adobe1_enum_ptrs, i32 0, i32 0) }, align 8
@st_cmap_adobe1 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cmap_adobe1_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gx_cmap_lookup_range_t\00", align 1
@st_cmap_lookup_range = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmap_lookup_range_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmap_lookup_range_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"gx_cmap_lookup_range_t[]\00", align 1
@st_cmap_lookup_range_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmap_lookup_range_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmap_lookup_range_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"gs_cmap_alloc(code space ranges)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gs_cmap_alloc(lookup ranges)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gs_cmap_alloc(keys)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gs_cmap_alloc(values)\00", align 1
@cmap_adobe1_procs = internal constant %struct.gs_cmap_procs_s { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)* @gs_cmap_adobe1_decode_next, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)* @gs_cmap_adobe1_enum_ranges, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)* @gs_cmap_adobe1_enum_lookups, i32 (%struct.gs_cmap_s*, i32)* @gs_cmap_compute_identity }, align 8
@st_cmap = external constant %struct.gs_memory_struct_type_s, align 8
@cmap_adobe1_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }, %struct.gc_ptr_element_s { i16 0, i16 128 }, %struct.gc_ptr_element_s { i16 0, i16 144 }, %struct.gc_ptr_element_s { i16 0, i16 168 }], align 16
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@adobe1_range_procs = internal constant %struct.gs_cmap_ranges_enum_procs_s { i32 (%struct.gs_cmap_ranges_enum_s*)* @adobe1_next_range }, align 8
@adobe1_lookup_notdef_procs = internal constant %struct.gs_cmap_lookups_enum_procs_s { i32 (%struct.gs_cmap_lookups_enum_s*)* @adobe1_next_lookup_notdef, i32 (%struct.gs_cmap_lookups_enum_s*)* @adobe1_next_entry_notdef }, align 8
@adobe1_lookup_def_procs = internal constant %struct.gs_cmap_lookups_enum_procs_s { i32 (%struct.gs_cmap_lookups_enum_s*)* @adobe1_next_lookup_def, i32 (%struct.gs_cmap_lookups_enum_s*)* @adobe1_next_entry_def }, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cmap_lookup_range_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pv = alloca i8*, align 8
  %size1 = alloca i32, align 4
  %k = alloca i32, align 4
  %glyph = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_cmap_lookup_range_s*
  store %struct.gx_cmap_lookup_range_s* %2, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.12
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %4, i32 0, i32 7
  %5 = load i32, i32* %value_type, align 4, !tbaa !7
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = bitcast i8** %pv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %7, i32 0, i32 9
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !10
  store i8* %8, i8** %pv, align 8, !tbaa !1
  %9 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %10, i32 0, i32 8
  %11 = load i32, i32* %value_size, align 4, !tbaa !11
  store i32 %11, i32* %size1, align 4, !tbaa !5
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %14 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %14, i32 0, i32 1
  %15 = load i32, i32* %num_entries, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %13, %15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load i8*, i8** %pv, align 8, !tbaa !1
  %18 = load i32, i32* %size1, align 4, !tbaa !5
  %call = call i64 @bytes2int(i8* %17, i32 %18) #5
  store i64 %call, i64* %glyph, align 8, !tbaa !13
  %19 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %19, i32 0, i32 0
  %20 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap, align 8, !tbaa !15
  %mark_glyph = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %20, i32 0, i32 17
  %21 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !16
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i64, i64* %glyph, align 8, !tbaa !13
  %24 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap3 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %24, i32 0, i32 0
  %25 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap3, align 8, !tbaa !15
  %mark_glyph_data = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %25, i32 0, i32 18
  %26 = load i8*, i8** %mark_glyph_data, align 8, !tbaa !23
  %call4 = call i32 %21(%struct.gs_memory_s* %22, i64 %23, i8* %26) #5
  %27 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  %29 = load i32, i32* %size1, align 4, !tbaa !5
  %30 = load i8*, i8** %pv, align 8, !tbaa !1
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %pv, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i8** %pv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %sw.bb
  %34 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap5 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %34, i32 0, i32 0
  %35 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap5, align 8, !tbaa !15
  %36 = bitcast %struct.gs_cmap_adobe1_s* %35 to i8*
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr, align 8, !tbaa !24
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %entry
  %38 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %38, i32 0, i32 6
  %data7 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys, i32 0, i32 0
  %39 = load i8*, i8** %data7, align 8, !tbaa !26
  %40 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %40, i32 0, i32 0
  store i8* %39, i8** %ptr8, align 8, !tbaa !24
  %41 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys9 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %41, i32 0, i32 6
  %size10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys9, i32 0, i32 1
  %42 = load i32, i32* %size10, align 4, !tbaa !27
  %43 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %43, i32 0, i32 1
  store i32 %42, i32* %size11, align 4, !tbaa !28
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.12:                                         ; preds = %entry
  %44 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values13 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %44, i32 0, i32 9
  %data14 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values13, i32 0, i32 0
  %45 = load i8*, i8** %data14, align 8, !tbaa !26
  %46 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %46, i32 0, i32 0
  store i8* %45, i8** %ptr15, align 8, !tbaa !24
  %47 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values16 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %47, i32 0, i32 9
  %size17 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values16, i32 0, i32 1
  %48 = load i32, i32* %size17, align 4, !tbaa !27
  %49 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %49, i32 0, i32 1
  store i32 %48, i32* %size18, align 4, !tbaa !28
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.12, %sw.bb.6, %if.end, %sw.default
  %50 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %51
}

; Function Attrs: nounwind uwtable
define internal void @cmap_lookup_range_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_cmap_lookup_range_s*
  store %struct.gx_cmap_lookup_range_s* %2, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %7 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %7, i32 0, i32 0
  %8 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %cmap, align 8, !tbaa !15
  %9 = bitcast %struct.gs_cmap_adobe1_s* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #5
  %11 = bitcast i8* %call to %struct.gs_cmap_adobe1_s*
  %12 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %cmap1 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %12, i32 0, i32 0
  store %struct.gs_cmap_adobe1_s* %11, %struct.gs_cmap_adobe1_s** %cmap1, align 8, !tbaa !15
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 1
  %16 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !31
  %17 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %17, i32 0, i32 6
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %16(%struct.gs_string_s* %keys, %struct.gc_state_s* %18) #5
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gc_state_s* %19 to %struct.gc_procs_common_s**
  %21 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %20, align 8, !tbaa !1
  %reloc_string2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %21, i32 0, i32 1
  %22 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string2, align 8, !tbaa !31
  %23 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %23, i32 0, i32 9
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %22(%struct.gs_string_s* %values, %struct.gc_state_s* %24) #5
  %25 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cmap_lookup_range_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 80
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_lookup_range to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !32
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 80
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 80, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_lookup_range to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @cmap_lookup_range_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 80
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_lookup_range to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !34
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 80, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_lookup_range to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 80
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_adobe1_alloc(%struct.gs_cmap_adobe1_s** %ppcmap, i32 %wmode, i8* %map_name, i32 %name_size, i32 %num_fonts, i32 %num_ranges, i32 %num_lookups, i32 %keys_size, i32 %values_size, %struct.gs_cid_system_info_s* %pcidsi_in, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_adobe1_s**, align 8
  %wmode.addr = alloca i32, align 4
  %map_name.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %num_fonts.addr = alloca i32, align 4
  %num_ranges.addr = alloca i32, align 4
  %num_lookups.addr = alloca i32, align 4
  %keys_size.addr = alloca i32, align 4
  %values_size.addr = alloca i32, align 4
  %pcidsi_in.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcmap = alloca %struct.gs_cmap_s*, align 8
  %pcmap1 = alloca %struct.gs_cmap_adobe1_s*, align 8
  %ranges = alloca %struct.gx_code_space_range_s*, align 8
  %lookups = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %keys = alloca i8*, align 8
  %values = alloca i8*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_adobe1_s** %ppcmap, %struct.gs_cmap_adobe1_s*** %ppcmap.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store i8* %map_name, i8** %map_name.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %num_fonts, i32* %num_fonts.addr, align 4, !tbaa !5
  store i32 %num_ranges, i32* %num_ranges.addr, align 4, !tbaa !5
  store i32 %num_lookups, i32* %num_lookups.addr, align 4, !tbaa !5
  store i32 %keys_size, i32* %keys_size.addr, align 4, !tbaa !5
  store i32 %values_size, i32* %values_size.addr, align 4, !tbaa !5
  store %struct.gs_cid_system_info_s* %pcidsi_in, %struct.gs_cid_system_info_s** %pcidsi_in.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_cmap_adobe1_s** %pcmap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gx_code_space_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %4 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !35
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i32, i32* %num_ranges.addr, align 4, !tbaa !5
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %6, i32 12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  %7 = bitcast i8* %call to %struct.gx_code_space_range_s*
  store %struct.gx_code_space_range_s* %7, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %8 = bitcast %struct.gx_cmap_lookup_range_s** %lookups to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 12
  %11 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !38
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %call2 = call i8* %11(%struct.gs_memory_s* %12, i32 %13, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_lookup_range to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)) #5
  %14 = bitcast i8* %call2 to %struct.gx_cmap_lookup_range_s*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_cmap_lookup_range_s* [ null, %cond.true ], [ %14, %cond.false ]
  store %struct.gx_cmap_lookup_range_s* %cond, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %15 = bitcast i8** %keys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %keys_size.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %16, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.5:                                     ; preds = %cond.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 16
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !39
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i32, i32* %keys_size.addr, align 4, !tbaa !5
  %call7 = call i8* %18(%struct.gs_memory_s* %19, i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.5, %cond.true.4
  %cond9 = phi i8* [ null, %cond.true.4 ], [ %call7, %cond.false.5 ]
  store i8* %cond9, i8** %keys, align 8, !tbaa !1
  %21 = bitcast i8** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load i32, i32* %values_size.addr, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %22, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.8
  br label %cond.end.16

cond.false.12:                                    ; preds = %cond.end.8
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_string14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 16
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string14, align 8, !tbaa !39
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load i32, i32* %values_size.addr, align 4, !tbaa !5
  %call15 = call i8* %24(%struct.gs_memory_s* %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.12, %cond.true.11
  %cond17 = phi i8* [ null, %cond.true.11 ], [ %call15, %cond.false.12 ]
  store i8* %cond17, i8** %values, align 8, !tbaa !1
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %29 = load i8*, i8** %map_name.addr, align 8, !tbaa !1
  %30 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %31 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi_in.addr, align 8, !tbaa !1
  %32 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call18 = call i32 @gs_cmap_alloc(%struct.gs_cmap_s** %pcmap, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_adobe1 to %struct.gs_memory_struct_type_s*), i32 %28, i8* %29, i32 %30, %struct.gs_cid_system_info_s* %31, i32 %32, %struct.gs_cmap_procs_s* @cmap_adobe1_procs, %struct.gs_memory_s* %33) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %35, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.16
  %36 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.gx_code_space_range_s* %36, null
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %37 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %cmp22 = icmp ne i32 %37, 0
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.24

land.lhs.true:                                    ; preds = %lor.lhs.false.21
  %38 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gx_cmap_lookup_range_s* %38, null
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true, %lor.lhs.false.21
  %39 = load i32, i32* %keys_size.addr, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %39, 0
  br i1 %cmp25, label %land.lhs.true.26, label %lor.lhs.false.28

land.lhs.true.26:                                 ; preds = %lor.lhs.false.24
  %40 = load i8*, i8** %keys, align 8, !tbaa !1
  %cmp27 = icmp eq i8* %40, null
  br i1 %cmp27, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %land.lhs.true.26, %lor.lhs.false.24
  %41 = load i32, i32* %values_size.addr, align 4, !tbaa !5
  %cmp29 = icmp ne i32 %41, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %lor.lhs.false.28
  %42 = load i8*, i8** %values, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %42, null
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.30, %land.lhs.true.26, %land.lhs.true, %lor.lhs.false, %cond.end.16
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 19
  %44 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !40
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %values, align 8, !tbaa !1
  %47 = load i32, i32* %values_size.addr, align 4, !tbaa !5
  call void %44(%struct.gs_memory_s* %45, i8* %46, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %free_string34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 19
  %49 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string34, align 8, !tbaa !40
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %keys, align 8, !tbaa !1
  %52 = load i32, i32* %keys_size.addr, align 4, !tbaa !5
  call void %49(%struct.gs_memory_s* %50, i8* %51, i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %56 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %57 = bitcast %struct.gx_cmap_lookup_range_s* %56 to i8*
  call void %54(%struct.gs_memory_s* %55, i8* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)) #5
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object37 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object37, align 8, !tbaa !41
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %61 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %62 = bitcast %struct.gx_code_space_range_s* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.30, %lor.lhs.false.28
  %63 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %64 = bitcast %struct.gs_cmap_s* %63 to %struct.gs_cmap_adobe1_s*
  store %struct.gs_cmap_adobe1_s* %64, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %65 = load %struct.gs_cmap_adobe1_s**, %struct.gs_cmap_adobe1_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_adobe1_s* %64, %struct.gs_cmap_adobe1_s** %65, align 8, !tbaa !1
  %66 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !1
  %67 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %code_space = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %67, i32 0, i32 14
  %ranges38 = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space, i32 0, i32 0
  store %struct.gx_code_space_range_s* %66, %struct.gx_code_space_range_s** %ranges38, align 8, !tbaa !42
  %68 = load i32, i32* %num_ranges.addr, align 4, !tbaa !5
  %69 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %code_space39 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %69, i32 0, i32 14
  %num_ranges40 = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space39, i32 0, i32 1
  store i32 %68, i32* %num_ranges40, align 4, !tbaa !43
  %70 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %cmp41 = icmp ugt i32 %70, 0
  br i1 %cmp41, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %72 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %cmp43 = icmp ult i32 %71, %72
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %73 to i64
  %74 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %74, i64 %idxprom
  %75 = bitcast %struct.gx_cmap_lookup_range_s* %arrayidx to i8*
  %call44 = call i8* @memset(i8* %75, i32 0, i64 80) #6
  %76 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = zext i32 %77 to i64
  %78 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %78, i64 %idxprom45
  %cmap = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %arrayidx46, i32 0, i32 0
  store %struct.gs_cmap_adobe1_s* %76, %struct.gs_cmap_adobe1_s** %cmap, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i8*, i8** %keys, align 8, !tbaa !1
  %81 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %81, i64 0
  %keys48 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %arrayidx47, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys48, i32 0, i32 0
  store i8* %80, i8** %data, align 8, !tbaa !44
  %82 = load i32, i32* %keys_size.addr, align 4, !tbaa !5
  %83 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %83, i64 0
  %keys50 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %arrayidx49, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys50, i32 0, i32 1
  store i32 %82, i32* %size, align 4, !tbaa !45
  %84 = load i8*, i8** %values, align 8, !tbaa !1
  %85 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %85, i64 0
  %values52 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %arrayidx51, i32 0, i32 9
  %data53 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values52, i32 0, i32 0
  store i8* %84, i8** %data53, align 8, !tbaa !10
  %86 = load i32, i32* %values_size.addr, align 4, !tbaa !5
  %87 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %87, i64 0
  %values55 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %arrayidx54, i32 0, i32 9
  %size56 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values55, i32 0, i32 1
  store i32 %86, i32* %size56, align 4, !tbaa !46
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %if.end
  %88 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookups, align 8, !tbaa !1
  %89 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %def = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %89, i32 0, i32 15
  %lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %def, i32 0, i32 0
  store %struct.gx_cmap_lookup_range_s* %88, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !47
  %90 = load i32, i32* %num_lookups.addr, align 4, !tbaa !5
  %91 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %def58 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %91, i32 0, i32 15
  %num_lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %def58, i32 0, i32 1
  store i32 %90, i32* %num_lookup, align 4, !tbaa !48
  %92 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %92, i32 0, i32 16
  %lookup59 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %notdef, i32 0, i32 0
  store %struct.gx_cmap_lookup_range_s* null, %struct.gx_cmap_lookup_range_s** %lookup59, align 8, !tbaa !49
  %93 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap1, align 8, !tbaa !1
  %notdef60 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %93, i32 0, i32 16
  %num_lookup61 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %notdef60, i32 0, i32 1
  store i32 0, i32* %num_lookup61, align 4, !tbaa !50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i8** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast i8** %keys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast %struct.gx_cmap_lookup_range_s** %lookups to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast %struct.gx_code_space_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = bitcast %struct.gs_cmap_adobe1_s** %pcmap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  %101 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gs_cmap_alloc(%struct.gs_cmap_s**, %struct.gs_memory_struct_type_s*, i32, i8*, i32, %struct.gs_cid_system_info_s*, i32, %struct.gs_cmap_procs_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bytes2int(i8* %p, i32 %n) #4 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %v, align 8, !tbaa !13
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %v, align 8, !tbaa !13
  %shl = shl i64 %4, 8
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !51
  %conv = zext i8 %7 to i64
  %add = add i64 %shl, %conv
  store i64 %add, i64* %v, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %v, align 8, !tbaa !13
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_adobe1_decode_next(%struct.gs_cmap_s* %pcmap_in, %struct.gs_const_string_s* %pstr, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #1 {
entry:
  %retval = alloca i32, align 4
  %pcmap_in.addr = alloca %struct.gs_cmap_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  %pcmap = alloca %struct.gs_cmap_adobe1_s*, align 8
  %save_index = alloca i32, align 4
  %code = alloca i32, align 4
  %pm_index = alloca i32, align 4
  %pm_fidx = alloca i32, align 4
  %pm_chr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %str = alloca i8*, align 8
  %ssize = alloca i32, align 4
  %chr_size_shortest = alloca i32, align 4
  store %struct.gs_cmap_s* %pcmap_in, %struct.gs_cmap_s** %pcmap_in.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap_in.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_cmap_s* %1 to %struct.gs_cmap_adobe1_s*
  store %struct.gs_cmap_adobe1_s* %2, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %3 = bitcast i32* %save_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  store i32 %5, i32* %save_index, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %pm_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %pm_fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i64* %pm_chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %def = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %10, i32 0, i32 15
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %12 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %13 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %14 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  %15 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 @code_map_decode_next_multidim_regime(%struct.gx_code_map_s* %def, %struct.gs_const_string_s* %11, i32* %12, i32* %13, i64* %14, i64* %15) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %17 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %18 = load i64, i64* %17, align 8, !tbaa !13
  %cmp1 = icmp ne i64 %18, 2147483647
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end:                                           ; preds = %lor.lhs.false
  %20 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !5
  store i32 %21, i32* %pm_index, align 4, !tbaa !5
  %22 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  store i32 %23, i32* %pm_fidx, align 4, !tbaa !5
  %24 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  %25 = load i64, i64* %24, align 8, !tbaa !13
  store i64 %25, i64* %pm_chr, align 8, !tbaa !13
  br label %do.body.2

do.body.2:                                        ; preds = %if.end
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %26 = load i32, i32* %save_index, align 4, !tbaa !5
  %27 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %26, i32* %27, align 4, !tbaa !5
  %28 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %notdef = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %28, i32 0, i32 16
  %29 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %32 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  %33 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call5 = call i32 @code_map_decode_next_multidim_regime(%struct.gx_code_map_s* %notdef, %struct.gs_const_string_s* %29, i32* %30, i32* %31, i64* %32, i64* %33) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %34, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %do.end.4
  %35 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %36 = load i64, i64* %35, align 8, !tbaa !13
  %cmp8 = icmp ne i64 %36, 2147483647
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.7, %do.end.4
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.10:                                        ; preds = %lor.lhs.false.7
  %38 = load i32, i32* %save_index, align 4, !tbaa !5
  %39 = load i32, i32* %pm_index, align 4, !tbaa !5
  %cmp11 = icmp ult i32 %38, %39
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %40 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483648, i64* %40, align 8, !tbaa !13
  %41 = load i32, i32* %pm_index, align 4, !tbaa !5
  %42 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = load i32, i32* %pm_fidx, align 4, !tbaa !5
  %44 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %43, i32* %44, align 4, !tbaa !5
  %45 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 0, i64* %45, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.else:                                          ; preds = %if.end.10
  %46 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %47, i32 0, i32 0
  %48 = load i8*, i8** %data, align 8, !tbaa !52
  %49 = load i32, i32* %save_index, align 4, !tbaa !5
  %idx.ext = zext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  %50 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %51, i32 0, i32 1
  %52 = load i32, i32* %size, align 4, !tbaa !53
  %53 = load i32, i32* %save_index, align 4, !tbaa !5
  %sub = sub i32 %52, %53
  store i32 %sub, i32* %ssize, align 4, !tbaa !5
  %54 = bitcast i32* %chr_size_shortest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %def13 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %55, i32 0, i32 15
  %56 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %call14 = call i32 @gs_cmap_get_shortest_chr(%struct.gx_code_map_s* %def13, i32* %56) #5
  store i32 %call14, i32* %chr_size_shortest, align 4, !tbaa !5
  %57 = load i32, i32* %chr_size_shortest, align 4, !tbaa !5
  %58 = load i32, i32* %ssize, align 4, !tbaa !5
  %cmp15 = icmp ule i32 %57, %58
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  %59 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483648, i64* %59, align 8, !tbaa !13
  %60 = load i32, i32* %save_index, align 4, !tbaa !5
  %61 = load i32, i32* %chr_size_shortest, align 4, !tbaa !5
  %add = add i32 %60, %61
  %62 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %add, i32* %62, align 4, !tbaa !5
  %63 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 0, i64* %63, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.17:                                       ; preds = %if.else
  %64 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %64, align 8, !tbaa !13
  %65 = load i32, i32* %ssize, align 4, !tbaa !5
  %66 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %add18 = add i32 %67, %65
  store i32 %add18, i32* %66, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.17, %if.then.16
  %68 = bitcast i32* %chr_size_shortest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %cleanup.21

cleanup.21:                                       ; preds = %cleanup, %if.then.12, %if.then.9, %if.then
  %71 = bitcast i64* %pm_chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast i32* %pm_fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %pm_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %save_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal void @gs_cmap_adobe1_enum_ranges(%struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_s* %pre) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %pre.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_s* %pre, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_ranges_enum_procs_s* @adobe1_range_procs) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_cmap_adobe1_enum_lookups(%struct.gs_cmap_s* %pcmap, i32 %which, %struct.gs_cmap_lookups_enum_s* %pre) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %which.addr = alloca i32, align 4
  %pre.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %which, i32* %which.addr, align 4, !tbaa !5
  store %struct.gs_cmap_lookups_enum_s* %pre, %struct.gs_cmap_lookups_enum_s** %pre.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %pre.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %2 = load i32, i32* %which.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, %struct.gs_cmap_lookups_enum_procs_s* @adobe1_lookup_notdef_procs, %struct.gs_cmap_lookups_enum_procs_s* @adobe1_lookup_def_procs
  call void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_lookups_enum_procs_s* %cond) #5
  ret void
}

declare i32 @gs_cmap_compute_identity(%struct.gs_cmap_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @code_map_decode_next_multidim_regime(%struct.gx_code_map_s* %pcmap, %struct.gs_const_string_s* %pstr, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #1 {
entry:
  %retval = alloca i32, align 4
  %pcmap.addr = alloca %struct.gx_code_map_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  %str = alloca i8*, align 8
  %ssize = alloca i32, align 4
  %i = alloca i32, align 4
  %pm_maxlen = alloca i32, align 4
  %pm_index = alloca i32, align 4
  %pm_fidx = alloca i32, align 4
  %pm_chr = alloca i64, align 8
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %pre_size = alloca i32, align 4
  %key_size = alloca i32, align 4
  %chr_size = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %prefix = alloca i8*, align 8
  %key = alloca i8*, align 8
  %step = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %pvalue = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct.gx_code_map_s* %pcmap, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !52
  %3 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  %5 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !53
  %8 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %sub = sub i32 %7, %9
  store i32 %sub, i32* %ssize, align 4, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %pm_maxlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %pm_maxlen, align 4, !tbaa !5
  %12 = bitcast i32* %pm_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !5
  store i32 %14, i32* %pm_index, align 4, !tbaa !5
  %15 = bitcast i32* %pm_fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  store i32 %17, i32* %pm_fidx, align 4, !tbaa !5
  %18 = bitcast i64* %pm_chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  %20 = load i64, i64* %19, align 8, !tbaa !13
  store i64 %20, i64* %pm_chr, align 8, !tbaa !13
  %21 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 0, i64* %21, align 8, !tbaa !13
  %22 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %num_lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %22, i32 0, i32 1
  %23 = load i32, i32* %num_lookup, align 4, !tbaa !54
  %sub1 = sub nsw i32 %23, 1
  store i32 %sub1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %entry
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %24, 0
  br i1 %cmp, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %25 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %27, i32 0, i32 0
  %28 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %28, i64 %idxprom
  store %struct.gx_cmap_lookup_range_s* %arrayidx, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %29 = bitcast i32* %pre_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %30, i32 0, i32 3
  %31 = load i32, i32* %key_prefix_size, align 4, !tbaa !56
  store i32 %31, i32* %pre_size, align 4, !tbaa !5
  %32 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size2 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %33, i32 0, i32 4
  %34 = load i32, i32* %key_size2, align 4, !tbaa !57
  store i32 %34, i32* %key_size, align 4, !tbaa !5
  %35 = bitcast i32* %chr_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i32, i32* %pre_size, align 4, !tbaa !5
  %37 = load i32, i32* %key_size, align 4, !tbaa !5
  %add = add nsw i32 %36, %37
  store i32 %add, i32* %chr_size, align 4, !tbaa !5
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  store i32 0, i32* %j, align 4, !tbaa !5
  %39 = load i32, i32* %ssize, align 4, !tbaa !5
  %40 = load i32, i32* %chr_size, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %39, %40
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end:                                           ; preds = %for.body
  %41 = load i32, i32* %pre_size, align 4, !tbaa !5
  %cmp4 = icmp slt i32 0, %41
  br i1 %cmp4, label %if.then.5, label %if.end.31

if.then.5:                                        ; preds = %if.end
  %42 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %43, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %key_prefix, i32 0, i32 0
  store i8* %arraydecay, i8** %prefix, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then.5
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %45 = load i32, i32* %pre_size, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %44, %45
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %46 to i64
  %47 = load i8*, i8** %prefix, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %47, i64 %idxprom9
  %48 = load i8, i8* %arrayidx10, align 1, !tbaa !51
  %conv = zext i8 %48 to i32
  %49 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %49 to i64
  %50 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %50, i64 %idxprom11
  %51 = load i8, i8* %arrayidx12, align 1, !tbaa !51
  %conv13 = zext i8 %51 to i32
  %cmp14 = icmp ne i32 %conv, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body.8
  br label %for.end

if.end.17:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.6

for.end:                                          ; preds = %if.then.16, %for.cond.6
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %cmp18 = icmp eq i32 0, %53
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.end
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %55 = load i32, i32* %pre_size, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %54, %55
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.else
  %56 = load i32, i32* %pm_maxlen, align 4, !tbaa !5
  %57 = load i32, i32* %j, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %56, %57
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %58 = load i32, i32* %chr_size, align 4, !tbaa !5
  store i32 %58, i32* %pm_maxlen, align 4, !tbaa !5
  %59 = load i8*, i8** %str, align 8, !tbaa !1
  %60 = load i32, i32* %chr_size, align 4, !tbaa !5
  %call = call i64 @bytes2int(i8* %59, i32 %60) #5
  store i64 %call, i64* %pm_chr, align 8, !tbaa !13
  %61 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = load i32, i32* %chr_size, align 4, !tbaa !5
  %add27 = add i32 %62, %63
  store i32 %add27, i32* %pm_index, align 4, !tbaa !5
  %64 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %64, i32 0, i32 10
  %65 = load i32, i32* %font_index, align 4, !tbaa !58
  store i32 %65, i32* %pm_fidx, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.end.28, %if.then.20
  %66 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.130 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end
  %67 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %68, i32 0, i32 6
  %data32 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys, i32 0, i32 0
  %69 = load i8*, i8** %data32, align 8, !tbaa !44
  store i8* %69, i8** %key, align 8, !tbaa !1
  %70 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = load i32, i32* %key_size, align 4, !tbaa !5
  store i32 %71, i32* %step, align 4, !tbaa !5
  %72 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #2
  store i8* null, i8** %pvalue, align 8, !tbaa !1
  %75 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %75, i32 0, i32 5
  %76 = load i32, i32* %key_is_range, align 4, !tbaa !59
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %77 = load i32, i32* %step, align 4, !tbaa !5
  %shl = shl i32 %77, 1
  store i32 %shl, i32* %step, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.80, %if.end.34
  %78 = load i32, i32* %k, align 4, !tbaa !5
  %79 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %79, i32 0, i32 1
  %80 = load i32, i32* %num_entries, align 4, !tbaa !12
  %cmp36 = icmp slt i32 %78, %80
  br i1 %cmp36, label %for.body.38, label %for.end.84

for.body.38:                                      ; preds = %for.cond.35
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.65, %for.body.38
  %81 = load i32, i32* %l, align 4, !tbaa !5
  %82 = load i32, i32* %key_size, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %81, %82
  br i1 %cmp40, label %for.body.42, label %for.end.67

for.body.42:                                      ; preds = %for.cond.39
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %83 = load i32, i32* %l, align 4, !tbaa !5
  %84 = load i32, i32* %pre_size, align 4, !tbaa !5
  %add43 = add nsw i32 %83, %84
  %idxprom44 = sext i32 %add43 to i64
  %85 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %85, i64 %idxprom44
  %86 = load i8, i8* %arrayidx45, align 1, !tbaa !51
  store i8 %86, i8* %c, align 1, !tbaa !51
  %87 = load i8, i8* %c, align 1, !tbaa !51
  %conv46 = zext i8 %87 to i32
  %88 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom47 = sext i32 %88 to i64
  %89 = load i8*, i8** %key, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %89, i64 %idxprom47
  %90 = load i8, i8* %arrayidx48, align 1, !tbaa !51
  %conv49 = zext i8 %90 to i32
  %cmp50 = icmp slt i32 %conv46, %conv49
  br i1 %cmp50, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.42
  %91 = load i8, i8* %c, align 1, !tbaa !51
  %conv52 = zext i8 %91 to i32
  %92 = load i32, i32* %step, align 4, !tbaa !5
  %93 = load i32, i32* %key_size, align 4, !tbaa !5
  %sub53 = sub nsw i32 %92, %93
  %94 = load i32, i32* %l, align 4, !tbaa !5
  %add54 = add nsw i32 %sub53, %94
  %idxprom55 = sext i32 %add54 to i64
  %95 = load i8*, i8** %key, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %95, i64 %idxprom55
  %96 = load i8, i8* %arrayidx56, align 1, !tbaa !51
  %conv57 = zext i8 %96 to i32
  %cmp58 = icmp sgt i32 %conv52, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false, %for.body.42
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.61:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %if.then.60
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %unreachable [
    i32 0, label %cleanup.cont.64
    i32 11, label %for.end.67
  ]

cleanup.cont.64:                                  ; preds = %cleanup.62
  br label %for.inc.65

for.inc.65:                                       ; preds = %cleanup.cont.64
  %97 = load i32, i32* %l, align 4, !tbaa !5
  %inc66 = add nsw i32 %97, 1
  store i32 %inc66, i32* %l, align 4, !tbaa !5
  br label %for.cond.39

for.end.67:                                       ; preds = %cleanup.62, %for.cond.39
  %98 = load i32, i32* %pm_maxlen, align 4, !tbaa !5
  %99 = load i32, i32* %pre_size, align 4, !tbaa !5
  %100 = load i32, i32* %l, align 4, !tbaa !5
  %add68 = add nsw i32 %99, %100
  %cmp69 = icmp slt i32 %98, %add68
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %for.end.67
  %101 = load i32, i32* %chr_size, align 4, !tbaa !5
  store i32 %101, i32* %pm_maxlen, align 4, !tbaa !5
  %102 = load i8*, i8** %str, align 8, !tbaa !1
  %103 = load i32, i32* %chr_size, align 4, !tbaa !5
  %call72 = call i64 @bytes2int(i8* %102, i32 %103) #5
  store i64 %call72, i64* %pm_chr, align 8, !tbaa !13
  %104 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = load i32, i32* %chr_size, align 4, !tbaa !5
  %add73 = add i32 %105, %106
  store i32 %add73, i32* %pm_index, align 4, !tbaa !5
  %107 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %font_index74 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %107, i32 0, i32 10
  %108 = load i32, i32* %font_index74, align 4, !tbaa !58
  store i32 %108, i32* %pm_fidx, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %for.end.67
  %109 = load i32, i32* %l, align 4, !tbaa !5
  %110 = load i32, i32* %key_size, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %109, %110
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  br label %for.end.84

if.end.79:                                        ; preds = %if.end.75
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %inc81 = add nsw i32 %111, 1
  store i32 %inc81, i32* %k, align 4, !tbaa !5
  %112 = load i32, i32* %step, align 4, !tbaa !5
  %113 = load i8*, i8** %key, align 8, !tbaa !1
  %idx.ext82 = sext i32 %112 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %113, i64 %idx.ext82
  store i8* %add.ptr83, i8** %key, align 8, !tbaa !1
  br label %for.cond.35

for.end.84:                                       ; preds = %if.then.78, %for.cond.35
  %114 = load i32, i32* %k, align 4, !tbaa !5
  %115 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %num_entries85 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %115, i32 0, i32 1
  %116 = load i32, i32* %num_entries85, align 4, !tbaa !12
  %cmp86 = icmp eq i32 %114, %116
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.end.84
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.89:                                        ; preds = %for.end.84
  %117 = load i8*, i8** %str, align 8, !tbaa !1
  %118 = load i32, i32* %chr_size, align 4, !tbaa !5
  %call90 = call i64 @bytes2int(i8* %117, i32 %118) #5
  %119 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %call90, i64* %119, align 8, !tbaa !13
  %120 = load i32, i32* %chr_size, align 4, !tbaa !5
  %121 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %122 = load i32, i32* %121, align 4, !tbaa !5
  %add91 = add i32 %122, %120
  store i32 %add91, i32* %121, align 4, !tbaa !5
  %123 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %font_index92 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %123, i32 0, i32 10
  %124 = load i32, i32* %font_index92, align 4, !tbaa !58
  %125 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %124, i32* %125, align 4, !tbaa !5
  %126 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %126, i32 0, i32 9
  %data93 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values, i32 0, i32 0
  %127 = load i8*, i8** %data93, align 8, !tbaa !10
  %128 = load i32, i32* %k, align 4, !tbaa !5
  %129 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %129, i32 0, i32 8
  %130 = load i32, i32* %value_size, align 4, !tbaa !11
  %mul = mul nsw i32 %128, %130
  %idx.ext94 = sext i32 %mul to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %127, i64 %idx.ext94
  store i8* %add.ptr95, i8** %pvalue, align 8, !tbaa !1
  %131 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %131, i32 0, i32 7
  %132 = load i32, i32* %value_type, align 4, !tbaa !7
  switch i32 %132, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.108
    i32 1, label %sw.bb.112
    i32 2, label %sw.bb.115
  ]

sw.bb:                                            ; preds = %if.end.89
  %133 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %134 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size96 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %134, i32 0, i32 8
  %135 = load i32, i32* %value_size96, align 4, !tbaa !11
  %call97 = call i64 @bytes2int(i8* %133, i32 %135) #5
  %add98 = add i64 2147483648, %call97
  %136 = load i8*, i8** %str, align 8, !tbaa !1
  %137 = load i32, i32* %pre_size, align 4, !tbaa !5
  %idx.ext99 = sext i32 %137 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %136, i64 %idx.ext99
  %138 = load i8*, i8** %key, align 8, !tbaa !1
  %139 = load i8*, i8** %key, align 8, !tbaa !1
  %140 = load i32, i32* %step, align 4, !tbaa !5
  %idx.ext101 = sext i32 %140 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %139, i64 %idx.ext101
  %141 = load i32, i32* %key_size, align 4, !tbaa !5
  %idx.ext103 = sext i32 %141 to i64
  %idx.neg = sub i64 0, %idx.ext103
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr102, i64 %idx.neg
  %142 = load i32, i32* %key_size, align 4, !tbaa !5
  %call105 = call i32 @gs_multidim_CID_offset(i8* %add.ptr100, i8* %138, i8* %add.ptr104, i32 %142) #5
  %conv106 = sext i32 %call105 to i64
  %add107 = add i64 %add98, %conv106
  %143 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add107, i64* %143, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

sw.bb.108:                                        ; preds = %if.end.89
  %144 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %145 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size109 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %145, i32 0, i32 8
  %146 = load i32, i32* %value_size109, align 4, !tbaa !11
  %call110 = call i64 @bytes2int(i8* %144, i32 %146) #5
  %add111 = add i64 2147483648, %call110
  %147 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add111, i64* %147, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

sw.bb.112:                                        ; preds = %if.end.89
  %148 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %149 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size113 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %149, i32 0, i32 8
  %150 = load i32, i32* %value_size113, align 4, !tbaa !11
  %call114 = call i64 @bytes2int(i8* %148, i32 %150) #5
  %151 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %call114, i64* %151, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

sw.bb.115:                                        ; preds = %if.end.89
  %152 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %153 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size116 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %153, i32 0, i32 8
  %154 = load i32, i32* %value_size116, align 4, !tbaa !11
  %call117 = call i64 @bytes2int(i8* %152, i32 %154) #5
  %155 = load i8*, i8** %str, align 8, !tbaa !1
  %156 = load i32, i32* %pre_size, align 4, !tbaa !5
  %idx.ext118 = sext i32 %156 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %155, i64 %idx.ext118
  %157 = load i32, i32* %key_size, align 4, !tbaa !5
  %call120 = call i64 @bytes2int(i8* %add.ptr119, i32 %157) #5
  %add121 = add i64 %call117, %call120
  %158 = load i8*, i8** %key, align 8, !tbaa !1
  %159 = load i32, i32* %key_size, align 4, !tbaa !5
  %call122 = call i64 @bytes2int(i8* %158, i32 %159) #5
  %sub123 = sub i64 %add121, %call122
  %160 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %sub123, i64* %160, align 8, !tbaa !13
  %161 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %value_size124 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %161, i32 0, i32 8
  %162 = load i32, i32* %value_size124, align 4, !tbaa !11
  store i32 %162, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

sw.default:                                       ; preds = %if.end.89
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %sw.default, %sw.bb.115, %sw.bb.112, %sw.bb.108, %sw.bb, %if.then.88
  %163 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  br label %cleanup.130

cleanup.130:                                      ; preds = %cleanup.125, %cleanup, %if.then
  %168 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast i32* %chr_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %pre_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %cleanup.dest.135 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.135, label %cleanup.138 [
    i32 4, label %for.inc.136
  ]

for.inc.136:                                      ; preds = %cleanup.130
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %173, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %174 = load i64, i64* %pm_chr, align 8, !tbaa !13
  %175 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %174, i64* %175, align 8, !tbaa !13
  %176 = load i32, i32* %pm_index, align 4, !tbaa !5
  %177 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %176, i32* %177, align 4, !tbaa !5
  %178 = load i32, i32* %pm_fidx, align 4, !tbaa !5
  %179 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %178, i32* %179, align 4, !tbaa !5
  %180 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %180, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138

cleanup.138:                                      ; preds = %for.end.137, %cleanup.130
  %181 = bitcast i64* %pm_chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i32* %pm_fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %pm_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %pm_maxlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = load i32, i32* %retval
  ret i32 %188

unreachable:                                      ; preds = %cleanup.62
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_get_shortest_chr(%struct.gx_code_map_s* %pcmap, i32* %pfidx) #1 {
entry:
  %pcmap.addr = alloca %struct.gx_code_map_s*, align 8
  %pfidx.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %len_shortest = alloca i32, align 4
  %fidx_shortest = alloca i32, align 4
  %pclr = alloca %struct.gx_cmap_lookup_range_s*, align 8
  store %struct.gx_code_map_s* %pcmap, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %len_shortest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 4, i32* %len_shortest, align 4, !tbaa !5
  %2 = bitcast i32* %fidx_shortest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %fidx_shortest, align 4, !tbaa !5
  %3 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %num_lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %3, i32 0, i32 1
  %4 = load i32, i32* %num_lookup, align 4, !tbaa !54
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcmap.addr, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %8, i32 0, i32 0
  %9 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %9, i64 %idxprom
  store %struct.gx_cmap_lookup_range_s* %arrayidx, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %10 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %10, i32 0, i32 3
  %11 = load i32, i32* %key_prefix_size, align 4, !tbaa !56
  %12 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %12, i32 0, i32 4
  %13 = load i32, i32* %key_size, align 4, !tbaa !57
  %add = add nsw i32 %11, %13
  %14 = load i32, i32* %len_shortest, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %add, %14
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_prefix_size2 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %15, i32 0, i32 3
  %16 = load i32, i32* %key_prefix_size2, align 4, !tbaa !56
  %17 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %key_size3 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %17, i32 0, i32 4
  %18 = load i32, i32* %key_size3, align 4, !tbaa !57
  %add4 = add nsw i32 %16, %18
  store i32 %add4, i32* %len_shortest, align 4, !tbaa !5
  %19 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %pclr, align 8, !tbaa !1
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %19, i32 0, i32 10
  %20 = load i32, i32* %font_index, align 4, !tbaa !58
  store i32 %20, i32* %fidx_shortest, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %21 = bitcast %struct.gx_cmap_lookup_range_s** %pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %fidx_shortest, align 4, !tbaa !5
  %24 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !5
  %25 = load i32, i32* %len_shortest, align 4, !tbaa !5
  %26 = bitcast i32* %fidx_shortest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %len_shortest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_multidim_CID_offset(i8* %key_str, i8* %key_lo, i8* %key_hi, i32 %key_size) #1 {
entry:
  %key_str.addr = alloca i8*, align 8
  %key_lo.addr = alloca i8*, align 8
  %key_hi.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %CID_offset = alloca i32, align 4
  store i8* %key_str, i8** %key_str.addr, align 8, !tbaa !1
  store i8* %key_lo, i8** %key_lo.addr, align 8, !tbaa !1
  store i8* %key_hi, i8** %key_hi.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %CID_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %CID_offset, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %key_size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %CID_offset, align 4, !tbaa !5
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %key_hi.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !51
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8*, i8** %key_lo.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  %10 = load i8, i8* %arrayidx2, align 1, !tbaa !51
  %conv3 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, %conv3
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %4, %add
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %12 = load i8*, i8** %key_str.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !51
  %conv6 = zext i8 %13 to i32
  %add7 = add nsw i32 %mul, %conv6
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %15 = load i8*, i8** %key_lo.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  %16 = load i8, i8* %arrayidx9, align 1, !tbaa !51
  %conv10 = zext i8 %16 to i32
  %sub11 = sub nsw i32 %add7, %conv10
  store i32 %sub11, i32* %CID_offset, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %CID_offset, align 4, !tbaa !5
  %19 = bitcast i32* %CID_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret i32 %18
}

declare void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_range(%struct.gs_cmap_ranges_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  %pcmap = alloca %struct.gs_cmap_adobe1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !60
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_adobe1_s*
  store %struct.gs_cmap_adobe1_s* %3, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %4 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %4, i32 0, i32 3
  %5 = load i32, i32* %index, align 4, !tbaa !63
  %6 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %code_space = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %6, i32 0, i32 14
  %num_ranges = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space, i32 0, i32 1
  %7 = load i32, i32* %num_ranges, align 4, !tbaa !43
  %cmp = icmp uge i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %8, i32 0, i32 0
  %9 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %9, i32 0, i32 3
  %10 = load i32, i32* %index1, align 4, !tbaa !63
  %inc = add i32 %10, 1
  store i32 %inc, i32* %index1, align 4, !tbaa !63
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.gs_cmap_adobe1_s*, %struct.gs_cmap_adobe1_s** %pcmap, align 8, !tbaa !1
  %code_space2 = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %11, i32 0, i32 14
  %ranges = getelementptr inbounds %struct.gx_code_space_s, %struct.gx_code_space_s* %code_space2, i32 0, i32 0
  %12 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %ranges, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %12, i64 %idxprom
  %13 = bitcast %struct.gx_code_space_range_s* %range to i8*
  %14 = bitcast %struct.gx_code_space_range_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 12, i32 4, i1 false), !tbaa.struct !64
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gs_cmap_adobe1_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_lookup_notdef(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !65
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_adobe1_s*
  %notdef = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %3, i32 0, i32 16
  %call = call i32 @adobe1_next_lookup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gx_code_map_s* %notdef) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_entry_notdef(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !65
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_adobe1_s*
  %notdef = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %3, i32 0, i32 16
  %call = call i32 @adobe1_next_entry(%struct.gs_cmap_lookups_enum_s* %0, %struct.gx_code_map_s* %notdef) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum, %struct.gx_code_map_s* %pcm) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %pcm.addr = alloca %struct.gx_code_map_s*, align 8
  %lookup = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_code_map_s* %pcm, %struct.gx_code_map_s** %pcm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cmap_lookup_range_s** %lookup to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcm.addr, align 8, !tbaa !1
  %lookup1 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %3, i32 0, i32 0
  %4 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup1, align 8, !tbaa !55
  %arrayidx2 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %4, i64 %idxprom
  store %struct.gx_cmap_lookup_range_s* %arrayidx2, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %5 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %5, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %index3, i32 0, i64 0
  %6 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %7 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcm.addr, align 8, !tbaa !1
  %num_lookup = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %7, i32 0, i32 1
  %8 = load i32, i32* %num_lookup, align 4, !tbaa !54
  %cmp = icmp uge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_prefix_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %9, i32 0, i32 3
  %10 = load i32, i32* %key_prefix_size, align 4, !tbaa !56
  %11 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %11, i32 0, i32 4
  %12 = load i32, i32* %key_size, align 4, !tbaa !57
  %add = add nsw i32 %10, %12
  %13 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry5 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %13, i32 0, i32 0
  %key_size6 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry5, i32 0, i32 1
  store i32 %add, i32* %key_size6, align 4, !tbaa !68
  %14 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %14, i32 0, i32 5
  %15 = load i32, i32* %key_is_range, align 4, !tbaa !59
  %16 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry7 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %16, i32 0, i32 0
  %key_is_range8 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry7, i32 0, i32 2
  store i32 %15, i32* %key_is_range8, align 4, !tbaa !69
  %17 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %17, i32 0, i32 7
  %18 = load i32, i32* %value_type, align 4, !tbaa !7
  %19 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry9 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %19, i32 0, i32 0
  %value_type10 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry9, i32 0, i32 3
  store i32 %18, i32* %value_type10, align 4, !tbaa !70
  %20 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %value_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %20, i32 0, i32 8
  %21 = load i32, i32* %value_size, align 4, !tbaa !11
  %22 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry11 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %22, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry11, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 1
  store i32 %21, i32* %size, align 4, !tbaa !71
  %23 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %23, i32 0, i32 10
  %24 = load i32, i32* %font_index, align 4, !tbaa !58
  %25 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry12 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %25, i32 0, i32 0
  %font_index13 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry12, i32 0, i32 5
  store i32 %24, i32* %font_index13, align 4, !tbaa !72
  %26 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index14 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %26, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %index14, i32 0, i64 0
  %27 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %inc = add i32 %27, 1
  store i32 %inc, i32* %arrayidx15, align 4, !tbaa !5
  %28 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index16 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %28, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %index16, i32 0, i64 1
  store i32 0, i32* %arrayidx17, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast %struct.gx_cmap_lookup_range_s** %lookup to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_entry(%struct.gs_cmap_lookups_enum_s* %penum, %struct.gx_code_map_s* %pcm) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %pcm.addr = alloca %struct.gx_code_map_s*, align 8
  %lookup = alloca %struct.gx_cmap_lookup_range_s*, align 8
  %psize = alloca i32, align 4
  %ksize = alloca i32, align 4
  %key = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_code_map_s* %pcm, %struct.gx_code_map_s** %pcm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cmap_lookup_range_s** %lookup to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %3 = load %struct.gx_code_map_s*, %struct.gx_code_map_s** %pcm.addr, align 8, !tbaa !1
  %lookup1 = getelementptr inbounds %struct.gx_code_map_s, %struct.gx_code_map_s* %3, i32 0, i32 0
  %4 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup1, align 8, !tbaa !55
  %arrayidx2 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %4, i64 %idxprom
  store %struct.gx_cmap_lookup_range_s* %arrayidx2, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %5 = bitcast i32* %psize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_prefix_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %6, i32 0, i32 3
  %7 = load i32, i32* %key_prefix_size, align 4, !tbaa !56
  store i32 %7, i32* %psize, align 4, !tbaa !5
  %8 = bitcast i32* %ksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %9, i32 0, i32 4
  %10 = load i32, i32* %key_size, align 4, !tbaa !57
  store i32 %10, i32* %ksize, align 4, !tbaa !5
  %11 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %12, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %keys, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !44
  %14 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %14, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %index3, i32 0, i64 1
  %15 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %16 = load i32, i32* %ksize, align 4, !tbaa !5
  %mul = mul i32 %15, %16
  %17 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %17, i32 0, i32 5
  %18 = load i32, i32* %key_is_range, align 4, !tbaa !59
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %mul5 = mul i32 %mul, %cond
  %idx.ext = zext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %key, align 8, !tbaa !1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index6 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %20, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %index6, i32 0, i64 1
  %21 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %22 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %22, i32 0, i32 1
  %23 = load i32, i32* %num_entries, align 4, !tbaa !12
  %cmp = icmp uge i32 %21, %23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %psize, align 4, !tbaa !5
  %25 = load i32, i32* %ksize, align 4, !tbaa !5
  %add = add nsw i32 %24, %25
  %cmp8 = icmp sgt i32 %add, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %26, 2
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry13 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %28, i32 0, i32 0
  %key14 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key14, i32 0, i64 %idxprom12
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx15, i32 0, i32 0
  %29 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %key_prefix = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %29, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %key_prefix, i32 0, i32 0
  %30 = load i32, i32* %psize, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay16, i64 %conv) #6
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %31 to i64
  %32 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry18 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %32, i32 0, i32 0
  %key19 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key19, i32 0, i64 %idxprom17
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx20, i32 0, i32 0
  %33 = load i32, i32* %psize, align 4, !tbaa !5
  %idx.ext22 = sext i32 %33 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay21, i64 %idx.ext22
  %34 = load i8*, i8** %key, align 8, !tbaa !1
  %35 = load i32, i32* %ksize, align 4, !tbaa !5
  %conv24 = sext i32 %35 to i64
  %call25 = call i8* @memcpy(i8* %add.ptr23, i8* %34, i64 %conv24) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %37 = load i32, i32* %ksize, align 4, !tbaa !5
  %38 = load i8*, i8** %key, align 8, !tbaa !1
  %idx.ext26 = sext i32 %37 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %38, i64 %idx.ext26
  store i8* %add.ptr27, i8** %key, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %39, i32 0, i32 9
  %data28 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %values, i32 0, i32 0
  %40 = load i8*, i8** %data28, align 8, !tbaa !10
  %41 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index29 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %41, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %index29, i32 0, i64 1
  %42 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  %43 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %value_size = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %43, i32 0, i32 8
  %44 = load i32, i32* %value_size, align 4, !tbaa !11
  %mul31 = mul i32 %42, %44
  %idx.ext32 = zext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %40, i64 %idx.ext32
  %45 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry34 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %45, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry34, i32 0, i32 4
  %data35 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 0
  store i8* %add.ptr33, i8** %data35, align 8, !tbaa !73
  %46 = load %struct.gx_cmap_lookup_range_s*, %struct.gx_cmap_lookup_range_s** %lookup, align 8, !tbaa !1
  %value_size36 = getelementptr inbounds %struct.gx_cmap_lookup_range_s, %struct.gx_cmap_lookup_range_s* %46, i32 0, i32 8
  %47 = load i32, i32* %value_size36, align 4, !tbaa !11
  %48 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry37 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %48, i32 0, i32 0
  %value38 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry37, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value38, i32 0, i32 1
  store i32 %47, i32* %size, align 4, !tbaa !71
  %49 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index39 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %49, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %index39, i32 0, i64 1
  %50 = load i32, i32* %arrayidx40, align 4, !tbaa !5
  %inc41 = add i32 %50, 1
  store i32 %inc41, i32* %arrayidx40, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9, %if.then
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i32* %ksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %psize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast %struct.gx_cmap_lookup_range_s** %lookup to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_lookup_def(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !65
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_adobe1_s*
  %def = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %3, i32 0, i32 15
  %call = call i32 @adobe1_next_lookup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gx_code_map_s* %def) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @adobe1_next_entry_def(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !65
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_adobe1_s*
  %def = getelementptr inbounds %struct.gs_cmap_adobe1_s, %struct.gs_cmap_adobe1_s* %3, i32 0, i32 15
  %call = call i32 @adobe1_next_entry(%struct.gs_cmap_lookups_enum_s* %0, %struct.gx_code_map_s* %def) #5
  ret i32 %call
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 48}
!8 = !{!"gx_cmap_lookup_range_s", !2, i64 0, !6, i64 8, !3, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !3, i64 48, !6, i64 52, !9, i64 56, !6, i64 72}
!9 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!10 = !{!8, !2, i64 56}
!11 = !{!8, !6, i64 52}
!12 = !{!8, !6, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!8, !2, i64 0}
!16 = !{!17, !2, i64 160}
!17 = !{!"gs_cmap_adobe1_s", !6, i64 0, !14, i64 8, !18, i64 16, !2, i64 32, !6, i64 40, !19, i64 44, !20, i64 48, !14, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !21, i64 112, !22, i64 128, !22, i64 144, !2, i64 160, !2, i64 168}
!18 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!19 = !{!"float", !3, i64 0}
!20 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!21 = !{!"gx_code_space_s", !2, i64 0, !6, i64 8}
!22 = !{!"gx_code_map_s", !2, i64 0, !6, i64 8}
!23 = !{!17, !2, i64 168}
!24 = !{!25, !2, i64 0}
!25 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!26 = !{!9, !2, i64 0}
!27 = !{!9, !6, i64 8}
!28 = !{!25, !6, i64 8}
!29 = !{!30, !2, i64 0}
!30 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!31 = !{!30, !2, i64 8}
!32 = !{!33, !2, i64 32}
!33 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!34 = !{!33, !2, i64 40}
!35 = !{!36, !2, i64 88}
!36 = !{!"gs_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!37 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!38 = !{!36, !2, i64 104}
!39 = !{!36, !2, i64 136}
!40 = !{!36, !2, i64 160}
!41 = !{!36, !2, i64 24}
!42 = !{!17, !2, i64 112}
!43 = !{!17, !6, i64 120}
!44 = !{!8, !2, i64 32}
!45 = !{!8, !6, i64 40}
!46 = !{!8, !6, i64 64}
!47 = !{!17, !2, i64 128}
!48 = !{!17, !6, i64 136}
!49 = !{!17, !2, i64 144}
!50 = !{!17, !6, i64 152}
!51 = !{!3, !3, i64 0}
!52 = !{!18, !2, i64 0}
!53 = !{!18, !6, i64 8}
!54 = !{!22, !6, i64 8}
!55 = !{!22, !2, i64 0}
!56 = !{!8, !6, i64 16}
!57 = !{!8, !6, i64 20}
!58 = !{!8, !6, i64 72}
!59 = !{!8, !6, i64 24}
!60 = !{!61, !2, i64 16}
!61 = !{!"gs_cmap_ranges_enum_s", !62, i64 0, !2, i64 16, !2, i64 24, !6, i64 32}
!62 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !6, i64 8}
!63 = !{!61, !6, i64 32}
!64 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !5}
!65 = !{!66, !2, i64 48}
!66 = !{!"gs_cmap_lookups_enum_s", !67, i64 0, !2, i64 48, !2, i64 56, !3, i64 64, !3, i64 72}
!67 = !{!"gx_cmap_lookup_entry_s", !3, i64 0, !6, i64 8, !6, i64 12, !3, i64 16, !18, i64 24, !6, i64 40}
!68 = !{!66, !6, i64 8}
!69 = !{!66, !6, i64 12}
!70 = !{!66, !3, i64 16}
!71 = !{!66, !6, i64 32}
!72 = !{!66, !6, i64 40}
!73 = !{!66, !2, i64 24}
