; ModuleID = './gsfcmap.bc'
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
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_procs_s = type { {}*, {}* }
%struct.gs_cmap_identity_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s*, i32, i32, i32 }
%struct.gs_cmap_ToUnicode_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"gs_cmap_t\00", align 1
@cmap_data = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @cmap_ptrs, i32 0, i32 0) }, align 8
@st_cmap = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cmap_data to i8*) }, align 8
@gs_cmap_no_lookups_procs = constant { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* } { i32 (%struct.gs_cmap_lookups_enum_s*)* @no_next_lookup, i32 (%struct.gs_cmap_lookups_enum_s*)* null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Identity-V\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Identity-H\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Identity-BF-V\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Identity-BF-H\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gs_cmap_alloc(CMap)\00", align 1
@st_cid_system_info_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"gs_cmap_alloc(CIDSystemInfo)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gs_cmap_free(CIDSystemInfo)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gs_cmap_free(CMap)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Artifex\00", align 1
@gs_cmap_ToUnicode_procs = internal constant %struct.gs_cmap_procs_s { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)* @gs_cmap_ToUnicode_decode_next, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)* @gs_cmap_ToUnicode_enum_ranges, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)* @gs_cmap_ToUnicode_enum_lookups, i32 (%struct.gs_cmap_s*, i32)* @gs_cmap_ToUnicode_is_identity }, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"gs_cmap_ToUnicode_alloc\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Free ToUnicode glyph data\00", align 1
@cmap_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 96 }], align 16
@gs_cmap_identity_alloc.identity_cidsi = internal constant %struct.gs_cid_system_info_s { %struct.gs_const_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 5 }, %struct.gs_const_string_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 8 }, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@identity_procs = internal constant %struct.gs_cmap_procs_s { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)* @identity_decode_next, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)* @identity_enum_ranges, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)* @identity_enum_lookups, i32 (%struct.gs_cmap_s*, i32)* @identity_is_identity }, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"gs_cmap_identity_t\00", align 1
@st_cmap_identity = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cmap_data to i8*) }, align 8
@identity_range_procs = internal constant %struct.gs_cmap_ranges_enum_procs_s { i32 (%struct.gs_cmap_ranges_enum_s*)* @identity_next_range }, align 8
@identity_lookup_procs = internal constant { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* } { i32 (%struct.gs_cmap_lookups_enum_s*)* @identity_next_lookup, i32 (%struct.gs_cmap_lookups_enum_s*)* @identity_next_entry }, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"gs_cmap_ToUnicode_t\00", align 1
@cmap_ToUnicode_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* null }, align 8
@st_cmap_ToUnicode = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cmap_ToUnicode_reloc_ptrs to i8*) }, align 8
@gs_cmap_ToUnicode_range_procs = internal constant %struct.gs_cmap_ranges_enum_procs_s { i32 (%struct.gs_cmap_ranges_enum_s*)* @gs_cmap_ToUnicode_next_range }, align 8
@gs_cmap_ToUnicode_lookup_procs = internal constant { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* } { i32 (%struct.gs_cmap_lookups_enum_s*)* @gs_cmap_ToUnicode_next_lookup, i32 (%struct.gs_cmap_lookups_enum_s*)* @gs_cmap_ToUnicode_next_entry }, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @no_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_create_identity(%struct.gs_cmap_s** %ppcmap, i32 %num_bytes, i32 %wmode, %struct.gs_memory_s* %mem) #1 {
entry:
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %num_bytes.addr = alloca i32, align 4
  %wmode.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %2 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %3 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)
  %4 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_cmap_identity_alloc(%struct.gs_cmap_s** %0, i32 %1, i32 %2, i32 0, i8* %cond, i32 %4, %struct.gs_memory_s* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_identity_alloc(%struct.gs_cmap_s** %ppcmap, i32 %num_bytes, i32 %varying_bytes, i32 %return_code, i8* %cmap_name, i32 %wmode, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %num_bytes.addr = alloca i32, align 4
  %varying_bytes.addr = alloca i32, align 4
  %return_code.addr = alloca i32, align 4
  %cmap_name.addr = alloca i8*, align 8
  %wmode.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %pcimap = alloca %struct.gs_cmap_identity_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  store i32 %varying_bytes, i32* %varying_bytes.addr, align 4, !tbaa !5
  store i32 %return_code, i32* %return_code.addr, align 4, !tbaa !5
  store i8* %cmap_name, i8** %cmap_name.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %4 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %cmap_name.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cmap_name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %6) #6
  %conv = trunc i64 %call to i32
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_cmap_alloc(%struct.gs_cmap_s** %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_identity to %struct.gs_memory_struct_type_s*), i32 %4, i8* %5, i32 %conv, %struct.gs_cid_system_info_s* @gs_cmap_identity_alloc.identity_cidsi, i32 1, %struct.gs_cmap_procs_s* @identity_procs, %struct.gs_memory_s* %7) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %10, align 8, !tbaa !1
  %12 = bitcast %struct.gs_cmap_s* %11 to %struct.gs_cmap_identity_s*
  store %struct.gs_cmap_identity_s* %12, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %13 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %14 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes6 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %14, i32 0, i32 14
  store i32 %13, i32* %num_bytes6, align 4, !tbaa !7
  %15 = load i32, i32* %varying_bytes.addr, align 4, !tbaa !5
  %16 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %varying_bytes7 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %16, i32 0, i32 15
  store i32 %15, i32* %varying_bytes7, align 4, !tbaa !13
  %17 = load i32, i32* %return_code.addr, align 4, !tbaa !5
  %18 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %code8 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %18, i32 0, i32 16
  store i32 %17, i32* %code8, align 4, !tbaa !14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %19 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #3
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #3
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_create_char_identity(%struct.gs_cmap_s** %ppcmap, i32 %num_bytes, i32 %wmode, %struct.gs_memory_s* %mem) #1 {
entry:
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %num_bytes.addr = alloca i32, align 4
  %wmode.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %2 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %3 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)
  %4 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_cmap_identity_alloc(%struct.gs_cmap_s** %0, i32 %1, i32 1, i32 %2, i8* %cond, i32 %4, %struct.gs_memory_s* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_is_identity(%struct.gs_cmap_s* %pcmap, i32 %font_index_only) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %0, i32 0, i32 13
  %1 = load %struct.gs_cmap_procs_s*, %struct.gs_cmap_procs_s** %procs, align 8, !tbaa !15
  %is_identity = getelementptr inbounds %struct.gs_cmap_procs_s, %struct.gs_cmap_procs_s* %1, i32 0, i32 3
  %2 = load i32 (%struct.gs_cmap_s*, i32)*, i32 (%struct.gs_cmap_s*, i32)** %is_identity, align 8, !tbaa !17
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %4 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call = call i32 %2(%struct.gs_cmap_s* %3, i32 %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_decode_next(%struct.gs_cmap_s* %pcmap, %struct.gs_const_string_s* %str, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %str.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %str, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %0, i32 0, i32 13
  %1 = load %struct.gs_cmap_procs_s*, %struct.gs_cmap_procs_s** %procs, align 8, !tbaa !15
  %decode_next = getelementptr inbounds %struct.gs_cmap_procs_s, %struct.gs_cmap_procs_s* %1, i32 0, i32 0
  %2 = load i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)** %decode_next, align 8, !tbaa !19
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %4 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  %5 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  %7 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  %8 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_cmap_s* %3, %struct.gs_const_string_s* %4, i32* %5, i32* %6, i64* %7, i64* %8) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_ranges_enum_init(%struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_s* %penum) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %0, i32 0, i32 13
  %1 = load %struct.gs_cmap_procs_s*, %struct.gs_cmap_procs_s** %procs, align 8, !tbaa !15
  %enum_ranges = getelementptr inbounds %struct.gs_cmap_procs_s, %struct.gs_cmap_procs_s* %1, i32 0, i32 1
  %2 = load void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)** %enum_ranges, align 8, !tbaa !20
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %4 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  call void %2(%struct.gs_cmap_s* %3, %struct.gs_cmap_ranges_enum_s* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %0, i32 0, i32 2
  %1 = load %struct.gs_cmap_ranges_enum_procs_s*, %struct.gs_cmap_ranges_enum_procs_s** %procs, align 8, !tbaa !21
  %next_range = getelementptr inbounds %struct.gs_cmap_ranges_enum_procs_s, %struct.gs_cmap_ranges_enum_procs_s* %1, i32 0, i32 0
  %2 = load i32 (%struct.gs_cmap_ranges_enum_s*)*, i32 (%struct.gs_cmap_ranges_enum_s*)** %next_range, align 8, !tbaa !24
  %3 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_cmap_ranges_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_lookups_enum_init(%struct.gs_cmap_s* %pcmap, i32 %which, %struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %which.addr = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %which, i32* %which.addr, align 4, !tbaa !5
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %0, i32 0, i32 13
  %1 = load %struct.gs_cmap_procs_s*, %struct.gs_cmap_procs_s** %procs, align 8, !tbaa !15
  %enum_lookups = getelementptr inbounds %struct.gs_cmap_procs_s, %struct.gs_cmap_procs_s* %1, i32 0, i32 2
  %2 = load void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)** %enum_lookups, align 8, !tbaa !26
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %4 = load i32, i32* %which.addr, align 4, !tbaa !5
  %5 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  call void %2(%struct.gs_cmap_s* %3, i32 %4, %struct.gs_cmap_lookups_enum_s* %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_enum_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %0, i32 0, i32 2
  %1 = load %struct.gs_cmap_lookups_enum_procs_s*, %struct.gs_cmap_lookups_enum_procs_s** %procs, align 8, !tbaa !27
  %next_lookup = getelementptr inbounds %struct.gs_cmap_lookups_enum_procs_s, %struct.gs_cmap_lookups_enum_procs_s* %1, i32 0, i32 0
  %next_lookup1 = bitcast {}** %next_lookup to i32 (%struct.gs_cmap_lookups_enum_s*)**
  %2 = load i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)** %next_lookup1, align 8, !tbaa !30
  %3 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_cmap_lookups_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_enum_next_entry(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %0, i32 0, i32 2
  %1 = load %struct.gs_cmap_lookups_enum_procs_s*, %struct.gs_cmap_lookups_enum_procs_s** %procs, align 8, !tbaa !27
  %next_entry = getelementptr inbounds %struct.gs_cmap_lookups_enum_procs_s, %struct.gs_cmap_lookups_enum_procs_s* %1, i32 0, i32 1
  %next_entry1 = bitcast {}** %next_entry to i32 (%struct.gs_cmap_lookups_enum_s*)**
  %2 = load i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)** %next_entry1, align 8, !tbaa !32
  %3 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_cmap_lookups_enum_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_init(%struct.gs_memory_s* %mem, %struct.gs_cmap_s* %pcmap, i32 %num_fonts) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %num_fonts.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %num_fonts, i32* %num_fonts.addr, align 4, !tbaa !5
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_cmap_s* %0 to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 112) #7
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %call1 = call i64 @gs_next_ids(%struct.gs_memory_s* %2, i32 %3) #5
  %4 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %4, i32 0, i32 1
  store i64 %call1, i64* %id, align 8, !tbaa !33
  %5 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %6 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts2 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %6, i32 0, i32 4
  store i32 %5, i32* %num_fonts2, align 4, !tbaa !34
  %7 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %7, i32 0, i32 6
  %id3 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id3, align 8, !tbaa !35
  %8 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %uid4 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %8, i32 0, i32 6
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid4, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_alloc(%struct.gs_cmap_s** %ppcmap, %struct.gs_memory_struct_type_s* %pstype, i32 %wmode, i8* %map_name, i32 %name_size, %struct.gs_cid_system_info_s* %pcidsi_in, i32 %num_fonts, %struct.gs_cmap_procs_s* %procs, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %wmode.addr = alloca i32, align 4
  %map_name.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %pcidsi_in.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %num_fonts.addr = alloca i32, align 4
  %procs.addr = alloca %struct.gs_cmap_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcmap = alloca %struct.gs_cmap_s*, align 8
  %pcidsi = alloca %struct.gs_cid_system_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store i8* %map_name, i8** %map_name.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store %struct.gs_cid_system_info_s* %pcidsi_in, %struct.gs_cid_system_info_s** %pcidsi_in.addr, align 8, !tbaa !1
  store i32 %num_fonts, i32* %num_fonts.addr, align 4, !tbaa !5
  store %struct.gs_cmap_procs_s* %procs, %struct.gs_cmap_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !37
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  %5 = bitcast i8* %call to %struct.gs_cmap_s*
  store %struct.gs_cmap_s* %5, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %6 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 12
  %8 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !40
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %call3 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, %struct.gs_memory_struct_type_s* @st_cid_system_info_element, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #5
  %11 = bitcast i8* %call3 to %struct.gs_cid_system_info_s*
  store %struct.gs_cid_system_info_s* %11, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %12 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cmap_s* %12, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_cid_system_info_s* %13, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %18 = bitcast %struct.gs_cid_system_info_s* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #5
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !41
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %23 = bitcast %struct.gs_cmap_s* %22 to i8*
  call void %20(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %26 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  call void @gs_cmap_init(%struct.gs_memory_s* %24, %struct.gs_cmap_s* %25, i32 %26) #5
  %27 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %CMapType = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %27, i32 0, i32 0
  store i32 1, i32* %CMapType, align 4, !tbaa !42
  %28 = load i8*, i8** %map_name.addr, align 8, !tbaa !1
  %29 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %CMapName = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %29, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName, i32 0, i32 0
  store i8* %28, i8** %data, align 8, !tbaa !43
  %30 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %31 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %CMapName8 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %31, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName8, i32 0, i32 1
  store i32 %30, i32* %size, align 4, !tbaa !44
  %32 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi_in.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_cid_system_info_s* %32, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %33 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %34 = bitcast %struct.gs_cid_system_info_s* %33 to i8*
  %35 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi_in.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_cid_system_info_s* %35 to i8*
  %37 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %conv = sext i32 %37 to i64
  %mul = mul i64 40, %conv
  %call10 = call i8* @memcpy(i8* %34, i8* %36, i64 %mul) #7
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %38 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %39 = bitcast %struct.gs_cid_system_info_s* %38 to i8*
  %40 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %conv11 = sext i32 %40 to i64
  %mul12 = mul i64 40, %conv11
  %call13 = call i8* @memset(i8* %39, i32 0, i64 %mul12) #7
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %41 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %42 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %42, i32 0, i32 3
  store %struct.gs_cid_system_info_s* %41, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !45
  %43 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %CMapVersion = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %43, i32 0, i32 5
  store float 1.000000e+00, float* %CMapVersion, align 4, !tbaa !46
  %44 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %45 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %45, i32 0, i32 8
  store i32 %44, i32* %WMode, align 4, !tbaa !47
  %46 = load %struct.gs_cmap_procs_s*, %struct.gs_cmap_procs_s** %procs.addr, align 8, !tbaa !1
  %47 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %47, i32 0, i32 13
  store %struct.gs_cmap_procs_s* %46, %struct.gs_cmap_procs_s** %procs15, align 8, !tbaa !15
  %48 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %49 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %48, %struct.gs_cmap_s** %49, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %50 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #3
  %51 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_free(%struct.gs_cmap_s* %pcmap, %struct.gs_memory_s* %mem) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %3, i32 0, i32 3
  %4 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !45
  %5 = bitcast %struct.gs_cid_system_info_s* %4 to i8*
  call void %1(%struct.gs_memory_s* %2, i8* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !41
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_cmap_s* %9 to i8*
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_procs_s* %procs) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %procs.addr = alloca %struct.gs_cmap_ranges_enum_procs_s*, align 8
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_procs_s* %procs, %struct.gs_cmap_ranges_enum_procs_s** %procs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %1, i32 0, i32 1
  store %struct.gs_cmap_s* %0, %struct.gs_cmap_s** %cmap, align 8, !tbaa !48
  %2 = load %struct.gs_cmap_ranges_enum_procs_s*, %struct.gs_cmap_ranges_enum_procs_s** %procs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %3, i32 0, i32 2
  store %struct.gs_cmap_ranges_enum_procs_s* %2, %struct.gs_cmap_ranges_enum_procs_s** %procs1, align 8, !tbaa !21
  %4 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %4, i32 0, i32 3
  store i32 0, i32* %index, align 4, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_lookups_enum_procs_s* %procs) #1 {
entry:
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %procs.addr = alloca %struct.gs_cmap_lookups_enum_procs_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_lookups_enum_procs_s* %procs, %struct.gs_cmap_lookups_enum_procs_s** %procs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  store %struct.gs_cmap_s* %0, %struct.gs_cmap_s** %cmap, align 8, !tbaa !50
  %2 = load %struct.gs_cmap_lookups_enum_procs_s*, %struct.gs_cmap_lookups_enum_procs_s** %procs.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %3, i32 0, i32 2
  store %struct.gs_cmap_lookups_enum_procs_s* %2, %struct.gs_cmap_lookups_enum_procs_s** %procs1, align 8, !tbaa !27
  %4 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %5 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %5, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %index2, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_compute_identity(%struct.gs_cmap_s* %pcmap, i32 %font_index_only) #1 {
entry:
  %retval = alloca i32, align 4
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  %which = alloca i32, align 4
  %lenum = alloca %struct.gs_cmap_lookups_enum_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %which, align 4, !tbaa !5
  %1 = bitcast %struct.gs_cmap_lookups_enum_s* %lenum to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #3
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %3, i32 0, i32 3
  %4 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !45
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %4, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !51
  %6 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CIDSystemInfo1 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %6, i32 0, i32 3
  %7 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo1, align 8, !tbaa !45
  %Registry2 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %7, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry2, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !53
  %call = call i32 @bytes_compare(i8* %5, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_lookups_enum_init(%struct.gs_cmap_s* %9, i32 0, %struct.gs_cmap_lookups_enum_s* %lenum) #5
  br label %for.cond

for.cond:                                         ; preds = %while.end, %if.then.7, %if.end
  %call3 = call i32 @gs_cmap_enum_next_lookup(%struct.gs_cmap_lookups_enum_s* %lenum) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %10, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %entry5 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry5, i32 0, i32 5
  %11 = load i32, i32* %font_index, align 4, !tbaa !54
  %12 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %11, %12
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  br label %for.cond

if.end.8:                                         ; preds = %land.lhs.true, %for.body
  %13 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %13, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %if.end.8
  %entry11 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index12 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry11, i32 0, i32 5
  %14 = load i32, i32* %font_index12, align 4, !tbaa !54
  %cmp13 = icmp sgt i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %land.lhs.true.10, %if.end.8
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end.15
  %call16 = call i32 @gs_cmap_enum_next_entry(%struct.gs_cmap_lookups_enum_s* %lenum) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %entry18 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry18, i32 0, i32 3
  %15 = load i32, i32* %value_type, align 4, !tbaa !55
  switch i32 %15, label %sw.default [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %while.body
  %entry20 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry20, i32 0, i32 1
  %16 = load i32, i32* %key_size, align 4, !tbaa !56
  %entry21 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry21, i32 0, i32 4
  %size22 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 1
  %17 = load i32, i32* %size22, align 4, !tbaa !57
  %cmp23 = icmp ne i32 %16, %17
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %sw.epilog
  %entry26 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry26, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %entry27 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value28 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry27, i32 0, i32 4
  %data29 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value28, i32 0, i32 0
  %18 = load i8*, i8** %data29, align 8, !tbaa !58
  %entry30 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key_size31 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry30, i32 0, i32 1
  %19 = load i32, i32* %key_size31, align 4, !tbaa !56
  %conv = sext i32 %19 to i64
  %call32 = call i32 @memcmp(i8* %arraydecay, i8* %18, i64 %conv) #6
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.34, %if.then.24, %sw.default, %sw.bb.19, %sw.bb, %if.then.14, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #3
  %21 = bitcast %struct.gs_cmap_lookups_enum_s* %lenum to i8*
  call void @llvm.lifetime.end(i64 80, i8* %21) #3
  %22 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #3
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_ToUnicode_alloc(%struct.gs_memory_s* %mem, i32 %id, i32 %num_codes, i32 %key_size, %struct.gs_cmap_s** %ppcmap) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %id.addr = alloca i32, align 4
  %num_codes.addr = alloca i32, align 4
  %key_size.addr = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %code = alloca i32, align 4
  %map = alloca i8*, align 8
  %cmap_name = alloca i8*, align 8
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  %name_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %id, i32* %id.addr, align 4, !tbaa !5
  store i32 %num_codes, i32* %num_codes.addr, align 4, !tbaa !5
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !5
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i8** %cmap_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  store i8* null, i8** %cmap_name, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i32* %name_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 0, i32* %name_len, align 4, !tbaa !5
  %5 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cmap_name, align 8, !tbaa !1
  %7 = load i32, i32* %name_len, align 4, !tbaa !5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_cmap_alloc(%struct.gs_cmap_s** %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cmap_ToUnicode to %struct.gs_memory_struct_type_s*), i32 0, i8* %6, i32 %7, %struct.gs_cid_system_info_s* null, i32 0, %struct.gs_cmap_procs_s* @gs_cmap_ToUnicode_procs, %struct.gs_memory_s* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !59
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i32, i32* %num_codes.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %14, 2
  %call1 = call i8* %12(%struct.gs_memory_s* %13, i32 %mul, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #5
  store i8* %call1, i8** %map, align 8, !tbaa !1
  %15 = load i8*, i8** %map, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %15, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %17 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %16, align 8, !tbaa !1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_cmap_free(%struct.gs_cmap_s* %17, %struct.gs_memory_s* %18) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %19 = load i8*, i8** %map, align 8, !tbaa !1
  %20 = load i32, i32* %num_codes.addr, align 4, !tbaa !5
  %mul6 = mul nsw i32 %20, 2
  %conv = sext i32 %mul6 to i64
  %call7 = call i8* @memset(i8* %19, i32 0, i64 %conv) #7
  %21 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %22 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %21, align 8, !tbaa !1
  %23 = bitcast %struct.gs_cmap_s* %22 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %23, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %24 = load i8*, i8** %map, align 8, !tbaa !1
  %25 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %25, i32 0, i32 12
  store i8* %24, i8** %glyph_name_data, align 8, !tbaa !60
  %26 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %CMapType = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %26, i32 0, i32 0
  store i32 2, i32* %CMapType, align 4, !tbaa !62
  %27 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %num_fonts = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %27, i32 0, i32 4
  store i32 1, i32* %num_fonts, align 4, !tbaa !63
  %28 = load i32, i32* %key_size.addr, align 4, !tbaa !5
  %29 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size8 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %29, i32 0, i32 15
  store i32 %28, i32* %key_size8, align 4, !tbaa !64
  %30 = load i32, i32* %num_codes.addr, align 4, !tbaa !5
  %31 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %num_codes9 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %31, i32 0, i32 14
  store i32 %30, i32* %num_codes9, align 4, !tbaa !65
  %32 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %ToUnicode = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %32, i32 0, i32 10
  store i32 1, i32* %ToUnicode, align 4, !tbaa !66
  %33 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %33, i32 0, i32 16
  store i32 1, i32* %is_identity, align 4, !tbaa !67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %34 = bitcast i32* %name_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #3
  %35 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  %36 = bitcast i8** %cmap_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_ToUnicode_free(%struct.gs_memory_s* %mem, %struct.gs_cmap_s* %pcmap) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %3, i32 0, i32 12
  %4 = load i8*, i8** %glyph_name_data, align 8, !tbaa !68
  call void %1(%struct.gs_memory_s* %2, i8* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #5
  %5 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_cmap_free(%struct.gs_cmap_s* %5, %struct.gs_memory_s* %6) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gs_cmap_ToUnicode_add_pair(%struct.gs_cmap_s* %pcmap, i32 %code0, i32 %code1) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %code0.addr = alloca i32, align 4
  %code1.addr = alloca i32, align 4
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  %map = alloca i8*, align 8
  %num_codes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %code0, i32* %code0.addr, align 4, !tbaa !5
  store i32 %code1, i32* %code1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_cmap_s* %1 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %2, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %3 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %4, i32 0, i32 12
  %5 = load i8*, i8** %glyph_name_data, align 8, !tbaa !68
  store i8* %5, i8** %map, align 8, !tbaa !1
  %6 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_cmap_s* %7 to %struct.gs_cmap_ToUnicode_s*
  %num_codes1 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %8, i32 0, i32 14
  %9 = load i32, i32* %num_codes1, align 4, !tbaa !65
  store i32 %9, i32* %num_codes, align 4, !tbaa !5
  %10 = load i32, i32* %code0.addr, align 4, !tbaa !5
  %11 = load i32, i32* %num_codes, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %code1.addr, align 4, !tbaa !5
  %shr = ashr i32 %12, 8
  %conv = trunc i32 %shr to i8
  %13 = load i32, i32* %code0.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, 2
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %14 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !69
  %15 = load i32, i32* %code1.addr, align 4, !tbaa !5
  %and = and i32 %15, 255
  %conv2 = trunc i32 %and to i8
  %16 = load i32, i32* %code0.addr, align 4, !tbaa !5
  %mul3 = mul nsw i32 %16, 2
  %add4 = add nsw i32 %mul3, 1
  %idxprom5 = sext i32 %add4 to i64
  %17 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 %idxprom5
  store i8 %conv2, i8* %arrayidx6, align 1, !tbaa !69
  %18 = load i32, i32* %code0.addr, align 4, !tbaa !5
  %19 = load i32, i32* %code1.addr, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %18, %19
  %conv8 = zext i1 %cmp7 to i32
  %20 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %20, i32 0, i32 16
  %21 = load i32, i32* %is_identity, align 4, !tbaa !67
  %and9 = and i32 %21, %conv8
  store i32 %and9, i32* %is_identity, align 4, !tbaa !67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #3
  %23 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #3
  %24 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @identity_decode_next(%struct.gs_cmap_s* %pcmap, %struct.gs_const_string_s* %str, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #1 {
entry:
  %retval = alloca i32, align 4
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %str.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  %pcimap = alloca %struct.gs_cmap_identity_s*, align 8
  %num_bytes = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %str, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_cmap_s* %1 to %struct.gs_cmap_identity_s*
  store %struct.gs_cmap_identity_s* %2, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %3 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes1 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %4, i32 0, i32 14
  %5 = load i32, i32* %num_bytes1, align 4, !tbaa !7
  store i32 %5, i32* %num_bytes, align 4, !tbaa !5
  %6 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !70
  %9 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %add = add i32 %10, %11
  %cmp = icmp ult i32 %8, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %12, align 8, !tbaa !71
  %13 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %15, i32 0, i32 1
  %16 = load i32, i32* %size2, align 4, !tbaa !70
  %cmp3 = icmp eq i32 %14, %16
  %cond = select i1 %cmp3, i32 2, i32 -1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8, !tbaa !72
  %19 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %21 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call = call i32 @get_integer_bytes(i8* %add.ptr, i32 %21) #5
  store i32 %call, i32* %value, align 4, !tbaa !5
  %22 = load i32, i32* %value, align 4, !tbaa !5
  %conv = zext i32 %22 to i64
  %add4 = add i64 2147483648, %conv
  %23 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add4, i64* %23, align 8, !tbaa !71
  %24 = load i32, i32* %value, align 4, !tbaa !5
  %conv5 = zext i32 %24 to i64
  %25 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %conv5, i64* %25, align 8, !tbaa !71
  %26 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %27 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %add6 = add i32 %28, %26
  store i32 %add6, i32* %27, align 4, !tbaa !5
  %29 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 0, i32* %29, align 4, !tbaa !5
  %30 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %30, i32 0, i32 16
  %31 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @identity_enum_ranges(%struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_s* %pre) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %pre.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_s* %pre, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_ranges_enum_procs_s* @identity_range_procs) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @identity_enum_lookups(%struct.gs_cmap_s* %pcmap, i32 %which, %struct.gs_cmap_lookups_enum_s* %pre) #1 {
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
  %cond = select i1 %tobool, %struct.gs_cmap_lookups_enum_procs_s* bitcast ({ i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }* @gs_cmap_no_lookups_procs to %struct.gs_cmap_lookups_enum_procs_s*), %struct.gs_cmap_lookups_enum_procs_s* bitcast ({ i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }* @identity_lookup_procs to %struct.gs_cmap_lookups_enum_procs_s*)
  call void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_lookups_enum_procs_s* %cond) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @identity_is_identity(%struct.gs_cmap_s* %pcmap, i32 %font_index_only) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_integer_bytes(i8* %src, i32 %count) #1 {
entry:
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %v, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %v, align 4, !tbaa !5
  %shl = shl i32 %4, 8
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !69
  %conv = zext i8 %7 to i32
  %add = add i32 %shl, %conv
  store i32 %add, i32* %v, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %v, align 4, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #3
  %11 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #3
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @identity_next_range(%struct.gs_cmap_ranges_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  %pcimap = alloca %struct.gs_cmap_identity_s*, align 8
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %0, i32 0, i32 3
  %1 = load i32, i32* %index, align 4, !tbaa !49
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %3, i32 0, i32 1
  %4 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !48
  %5 = bitcast %struct.gs_cmap_s* %4 to %struct.gs_cmap_identity_s*
  store %struct.gs_cmap_identity_s* %5, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %6 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %6, i32 0, i32 0
  %first = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %first, i32 0, i32 0
  %7 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %7, i32 0, i32 14
  %8 = load i32, i32* %num_bytes, align 4, !tbaa !7
  %conv = sext i32 %8 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv) #7
  %9 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range1 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %9, i32 0, i32 0
  %last = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %last, i32 0, i32 0
  %10 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes3 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %10, i32 0, i32 14
  %11 = load i32, i32* %num_bytes3, align 4, !tbaa !7
  %conv4 = sext i32 %11 to i64
  %call5 = call i8* @memset(i8* %arraydecay2, i32 255, i64 %conv4) #7
  %12 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes6 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %12, i32 0, i32 14
  %13 = load i32, i32* %num_bytes6, align 4, !tbaa !7
  %14 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range7 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %14, i32 0, i32 0
  %size = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range7, i32 0, i32 2
  store i32 %13, i32* %size, align 4, !tbaa !73
  %15 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index8 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %15, i32 0, i32 3
  store i32 1, i32* %index8, align 4, !tbaa !49
  store i32 0, i32* %retval
  %16 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @identity_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %pcimap = alloca %struct.gs_cmap_identity_s*, align 8
  %num_bytes = alloca i32, align 4
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %3, i32 0, i32 1
  %4 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !50
  %5 = bitcast %struct.gs_cmap_s* %4 to %struct.gs_cmap_identity_s*
  store %struct.gs_cmap_identity_s* %5, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %6 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes1 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %7, i32 0, i32 14
  %8 = load i32, i32* %num_bytes1, align 4, !tbaa !7
  store i32 %8, i32* %num_bytes, align 4, !tbaa !5
  %9 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry2 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %9, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx3, i32 0, i32 0
  %10 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv) #7
  %11 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry4 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %11, i32 0, i32 0
  %key5 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key5, i32 0, i64 1
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i32 0, i32 0
  %12 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv8 = sext i32 %12 to i64
  %call9 = call i8* @memset(i8* %arraydecay7, i32 255, i64 %conv8) #7
  %13 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry10 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %13, i32 0, i32 0
  %key11 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key11, i32 0, i64 1
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx12, i32 0, i32 0
  %14 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %15 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %varying_bytes = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %15, i32 0, i32 15
  %16 = load i32, i32* %varying_bytes, align 4, !tbaa !13
  %sub = sub nsw i32 %14, %16
  %conv14 = sext i32 %sub to i64
  %call15 = call i8* @memset(i8* %arraydecay13, i32 0, i64 %conv14) #7
  %17 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %18 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry16 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %18, i32 0, i32 0
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry16, i32 0, i32 1
  store i32 %17, i32* %key_size, align 4, !tbaa !56
  %19 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry17 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %19, i32 0, i32 0
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry17, i32 0, i32 2
  store i32 1, i32* %key_is_range, align 4, !tbaa !74
  %20 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %20, i32 0, i32 16
  %21 = load i32, i32* %code, align 4, !tbaa !14
  %tobool = icmp ne i32 %21, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %22 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry18 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %22, i32 0, i32 0
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry18, i32 0, i32 3
  store i32 %cond, i32* %value_type, align 4, !tbaa !55
  %23 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %24 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry19 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %24, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry19, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 1
  store i32 %23, i32* %size, align 4, !tbaa !57
  %25 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry20 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %25, i32 0, i32 0
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry20, i32 0, i32 5
  store i32 0, i32* %font_index, align 4, !tbaa !54
  %26 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index21 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %26, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %index21, i32 0, i64 0
  store i32 1, i32* %arrayidx22, align 4, !tbaa !5
  store i32 0, i32* %retval
  %27 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #3
  %28 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #3
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @identity_next_entry(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %pcimap = alloca %struct.gs_cmap_identity_s*, align 8
  %num_bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !50
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_identity_s*
  store %struct.gs_cmap_identity_s* %3, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %4 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %num_bytes1 = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %5, i32 0, i32 14
  %6 = load i32, i32* %num_bytes1, align 4, !tbaa !7
  store i32 %6, i32* %num_bytes, align 4, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %9 = load %struct.gs_cmap_identity_s*, %struct.gs_cmap_identity_s** %pcimap, align 8, !tbaa !1
  %varying_bytes = getelementptr inbounds %struct.gs_cmap_identity_s, %struct.gs_cmap_identity_s* %9, i32 0, i32 15
  %10 = load i32, i32* %varying_bytes, align 4, !tbaa !13
  %sub = sub nsw i32 %8, %10
  store i32 %sub, i32* %i, align 4, !tbaa !5
  %11 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value, i32 0, i32 0
  %12 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry2 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %12, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv = sext i32 %13 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay3, i64 %conv) #7
  %14 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry4 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %14, i32 0, i32 0
  %key5 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key5, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i32 0, i32 0
  %15 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry8 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %15, i32 0, i32 0
  %key9 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key9, i32 0, i64 1
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx10, i32 0, i32 0
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %conv12 = sext i32 %16 to i64
  %call13 = call i8* @memcpy(i8* %arraydecay7, i8* %arraydecay11, i64 %conv12) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry15 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %19, i32 0, i32 0
  %key16 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key16, i32 0, i64 1
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx17, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx18, align 1, !tbaa !69
  %inc = add i8 %20, 1
  store i8 %inc, i8* %arrayidx18, align 1, !tbaa !69
  %conv19 = zext i8 %inc to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %21 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value22 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %21, i32 0, i32 4
  %arraydecay23 = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value22, i32 0, i32 0
  %22 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry24 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %22, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry24, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 0
  store i8* %arraydecay23, i8** %data, align 8, !tbaa !58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  %24 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #3
  %25 = bitcast %struct.gs_cmap_identity_s** %pcimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_ToUnicode_decode_next(%struct.gs_cmap_s* %pcmap, %struct.gs_const_string_s* %str, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %str.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %str, %struct.gs_const_string_s** %str.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  ret i32 -28
}

; Function Attrs: nounwind uwtable
define internal void @gs_cmap_ToUnicode_enum_ranges(%struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_s* %pre) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %pre.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_s* %pre, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_ranges_enum_procs_s* @gs_cmap_ToUnicode_range_procs) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_cmap_ToUnicode_enum_lookups(%struct.gs_cmap_s* %pcmap, i32 %which, %struct.gs_cmap_lookups_enum_s* %pre) #1 {
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
  %cond = select i1 %tobool, %struct.gs_cmap_lookups_enum_procs_s* bitcast ({ i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }* @gs_cmap_no_lookups_procs to %struct.gs_cmap_lookups_enum_procs_s*), %struct.gs_cmap_lookups_enum_procs_s* bitcast ({ i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }* @gs_cmap_ToUnicode_lookup_procs to %struct.gs_cmap_lookups_enum_procs_s*)
  call void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_lookups_enum_procs_s* %cond) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_ToUnicode_is_identity(%struct.gs_cmap_s* %pcmap, i32 %font_index_only) #1 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_cmap_s* %1 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %2, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %3 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %3, i32 0, i32 16
  %4 = load i32, i32* %is_identity, align 4, !tbaa !67
  %5 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #3
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_ToUnicode_next_range(%struct.gs_cmap_ranges_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap1 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap1, align 8, !tbaa !48
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %3, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %4 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %4, i32 0, i32 3
  %5 = load i32, i32* %index, align 4, !tbaa !49
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %6, i32 0, i32 0
  %first = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %first, i32 0, i32 0
  %7 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %7, i32 0, i32 15
  %8 = load i32, i32* %key_size, align 4, !tbaa !64
  %conv = sext i32 %8 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv) #7
  %9 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range2 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %9, i32 0, i32 0
  %last = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %last, i32 0, i32 0
  %10 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size4 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %10, i32 0, i32 15
  %11 = load i32, i32* %key_size4, align 4, !tbaa !64
  %conv5 = sext i32 %11 to i64
  %call6 = call i8* @memset(i8* %arraydecay3, i32 255, i64 %conv5) #7
  %12 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size7 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %12, i32 0, i32 15
  %13 = load i32, i32* %key_size7, align 4, !tbaa !64
  %14 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range8 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %14, i32 0, i32 0
  %size = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range8, i32 0, i32 2
  store i32 %13, i32* %size, align 4, !tbaa !73
  %15 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index9 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %15, i32 0, i32 3
  store i32 1, i32* %index9, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_ToUnicode_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap1 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap1, align 8, !tbaa !50
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %3, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %4 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %inc = add i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !5
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value, i32 0, i32 0
  %7 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry2 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %7, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry2, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !58
  %8 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %8, i32 0, i32 0
  %value4 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry3, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value4, i32 0, i32 1
  store i32 2, i32* %size, align 4, !tbaa !57
  %9 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %9, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %index5, i32 0, i64 1
  store i32 0, i32* %arrayidx6, align 4, !tbaa !5
  %10 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry7 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %10, i32 0, i32 0
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry7, i32 0, i32 2
  store i32 1, i32* %key_is_range, align 4, !tbaa !74
  %11 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry8 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %11, i32 0, i32 0
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry8, i32 0, i32 3
  store i32 2, i32* %value_type, align 4, !tbaa !55
  %12 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %12, i32 0, i32 15
  %13 = load i32, i32* %key_size, align 4, !tbaa !64
  %14 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry9 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %14, i32 0, i32 0
  %key_size10 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry9, i32 0, i32 1
  store i32 %13, i32* %key_size10, align 4, !tbaa !56
  %15 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry11 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %15, i32 0, i32 0
  %value12 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry11, i32 0, i32 4
  %size13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value12, i32 0, i32 1
  store i32 2, i32* %size13, align 4, !tbaa !57
  %16 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry14 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %16, i32 0, i32 0
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry14, i32 0, i32 5
  store i32 0, i32* %font_index, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_cmap_ToUnicode_next_entry(%struct.gs_cmap_lookups_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %cmap = alloca %struct.gs_cmap_ToUnicode_s*, align 8
  %map = alloca i8*, align 8
  %num_codes = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c0 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap1 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap1, align 8, !tbaa !50
  %3 = bitcast %struct.gs_cmap_s* %2 to %struct.gs_cmap_ToUnicode_s*
  store %struct.gs_cmap_ToUnicode_s* %3, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %4 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %5, i32 0, i32 12
  %6 = load i8*, i8** %glyph_name_data, align 8, !tbaa !60
  store i8* %6, i8** %map, align 8, !tbaa !1
  %7 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %num_codes2 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %8, i32 0, i32 14
  %9 = load i32, i32* %num_codes2, align 4, !tbaa !65
  store i32 %9, i32* %num_codes, align 4, !tbaa !5
  %10 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %11, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index3, i32 0, i64 1
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %12, i32* %index, align 4, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  call void @llvm.lifetime.start(i64 1, i8* %c0) #3
  call void @llvm.lifetime.start(i64 1, i8* %c1) #3
  call void @llvm.lifetime.start(i64 1, i8* %c2) #3
  %15 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %15, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %num_codes, align 4, !tbaa !5
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %add = add i32 %18, %19
  %add4 = add i32 %add, 0
  %idxprom = zext i32 %add4 to i64
  %20 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i8, i8* %arrayidx5, align 1, !tbaa !69
  %conv = zext i8 %21 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %add8 = add i32 %22, %23
  %add9 = add i32 %add8, 1
  %idxprom10 = zext i32 %add9 to i64
  %24 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %24, i64 %idxprom10
  %25 = load i8, i8* %arrayidx11, align 1, !tbaa !69
  %conv12 = zext i8 %25 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %num_codes, align 4, !tbaa !5
  %cmp15 = icmp uge i32 %27, %28
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %add19 = add i32 %29, %30
  %add20 = add i32 %add19, 0
  %idxprom21 = zext i32 %add20 to i64
  %31 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %31, i64 %idxprom21
  %32 = load i8, i8* %arrayidx22, align 1, !tbaa !69
  store i8 %32, i8* %c0, align 1, !tbaa !69
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %add23 = add i32 %33, %34
  %add24 = add i32 %add23, 1
  %idxprom25 = zext i32 %add24 to i64
  %35 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %35, i64 %idxprom25
  %36 = load i8, i8* %arrayidx26, align 1, !tbaa !69
  store i8 %36, i8* %c1, align 1, !tbaa !69
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %add27 = add i32 %37, 1
  store i32 %add27, i32* %j, align 4, !tbaa !5
  %38 = load i8, i8* %c1, align 1, !tbaa !69
  %conv28 = zext i8 %38 to i32
  %add29 = add nsw i32 %conv28, 1
  %conv30 = trunc i32 %add29 to i8
  store i8 %conv30, i8* %c2, align 1, !tbaa !69
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.63, %if.end.18
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %40 = load i32, i32* %num_codes, align 4, !tbaa !5
  %cmp32 = icmp ult i32 %39, %40
  br i1 %cmp32, label %for.body.34, label %for.end.66

for.body.34:                                      ; preds = %for.cond.31
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %rem = urem i32 %41, 256
  %cmp35 = icmp eq i32 %rem, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.34
  br label %for.end.66

if.end.38:                                        ; preds = %for.body.34
  %42 = load i8, i8* %c2, align 1, !tbaa !69
  %conv39 = zext i8 %42 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  br label %for.end.66

if.end.43:                                        ; preds = %if.end.38
  %43 = load i32, i32* %j, align 4, !tbaa !5
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %add44 = add i32 %43, %44
  %add45 = add i32 %add44, 0
  %idxprom46 = zext i32 %add45 to i64
  %45 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom46
  %46 = load i8, i8* %arrayidx47, align 1, !tbaa !69
  %conv48 = zext i8 %46 to i32
  %47 = load i8, i8* %c0, align 1, !tbaa !69
  %conv49 = zext i8 %47 to i32
  %cmp50 = icmp ne i32 %conv48, %conv49
  br i1 %cmp50, label %if.then.61, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.43
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %49 = load i32, i32* %j, align 4, !tbaa !5
  %add53 = add i32 %48, %49
  %add54 = add i32 %add53, 1
  %idxprom55 = zext i32 %add54 to i64
  %50 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %50, i64 %idxprom55
  %51 = load i8, i8* %arrayidx56, align 1, !tbaa !69
  %conv57 = zext i8 %51 to i32
  %52 = load i8, i8* %c2, align 1, !tbaa !69
  %conv58 = zext i8 %52 to i32
  %cmp59 = icmp ne i32 %conv57, %conv58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false.52, %if.end.43
  br label %for.end.66

if.end.62:                                        ; preds = %lor.lhs.false.52
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %inc64 = add i32 %53, 1
  store i32 %inc64, i32* %j, align 4, !tbaa !5
  %54 = load i8, i8* %c2, align 1, !tbaa !69
  %inc65 = add i8 %54, 1
  store i8 %inc65, i8* %c2, align 1, !tbaa !69
  br label %for.cond.31

for.end.66:                                       ; preds = %if.then.61, %if.then.42, %if.then.37, %for.cond.31
  %55 = load i32, i32* %j, align 4, !tbaa !5
  %56 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index67 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %56, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* %index67, i32 0, i64 1
  store i32 %55, i32* %arrayidx68, align 4, !tbaa !5
  %57 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %57, i32 0, i32 15
  %58 = load i32, i32* %key_size, align 4, !tbaa !64
  %cmp69 = icmp sgt i32 %58, 1
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %for.end.66
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %shr = lshr i32 %59, 8
  %conv72 = trunc i32 %shr to i8
  %60 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry73 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %60, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry73, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 0
  %arrayidx75 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx74, i32 0, i64 0
  store i8 %conv72, i8* %arrayidx75, align 1, !tbaa !69
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %61, 255
  %conv76 = trunc i32 %and to i8
  %62 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size77 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %62, i32 0, i32 15
  %63 = load i32, i32* %key_size77, align 4, !tbaa !64
  %sub = sub nsw i32 %63, 1
  %idxprom78 = sext i32 %sub to i64
  %64 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry79 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %64, i32 0, i32 0
  %key80 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry79, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key80, i32 0, i64 0
  %arrayidx82 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx81, i32 0, i64 %idxprom78
  store i8 %conv76, i8* %arrayidx82, align 1, !tbaa !69
  %65 = load i32, i32* %j, align 4, !tbaa !5
  %shr83 = lshr i32 %65, 8
  %conv84 = trunc i32 %shr83 to i8
  %66 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry85 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %66, i32 0, i32 0
  %key86 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry85, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key86, i32 0, i64 1
  %arrayidx88 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx87, i32 0, i64 0
  store i8 %conv84, i8* %arrayidx88, align 1, !tbaa !69
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %sub89 = sub i32 %67, 1
  %and90 = and i32 %sub89, 255
  %conv91 = trunc i32 %and90 to i8
  %68 = load %struct.gs_cmap_ToUnicode_s*, %struct.gs_cmap_ToUnicode_s** %cmap, align 8, !tbaa !1
  %key_size92 = getelementptr inbounds %struct.gs_cmap_ToUnicode_s, %struct.gs_cmap_ToUnicode_s* %68, i32 0, i32 15
  %69 = load i32, i32* %key_size92, align 4, !tbaa !64
  %sub93 = sub nsw i32 %69, 1
  %idxprom94 = sext i32 %sub93 to i64
  %70 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry95 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %70, i32 0, i32 0
  %key96 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key96, i32 0, i64 1
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx97, i32 0, i64 %idxprom94
  store i8 %conv91, i8* %arrayidx98, align 1, !tbaa !69
  br label %if.end.110

if.else:                                          ; preds = %for.end.66
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %conv99 = trunc i32 %71 to i8
  %72 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry100 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %72, i32 0, i32 0
  %key101 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key101, i32 0, i64 0
  %arrayidx103 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx102, i32 0, i64 0
  store i8 %conv99, i8* %arrayidx103, align 1, !tbaa !69
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %sub104 = sub i32 %73, 1
  %conv105 = trunc i32 %sub104 to i8
  %74 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry106 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %74, i32 0, i32 0
  %key107 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key107, i32 0, i64 1
  %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx108, i32 0, i64 0
  store i8 %conv105, i8* %arrayidx109, align 1, !tbaa !69
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.then.71
  %75 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %75, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value, i32 0, i32 0
  %76 = load i8*, i8** %map, align 8, !tbaa !1
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul i32 %77, 2
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  %call = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 2) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.110, %if.then.17
  call void @llvm.lifetime.end(i64 1, i8* %c2) #3
  call void @llvm.lifetime.end(i64 1, i8* %c1) #3
  call void @llvm.lifetime.end(i64 1, i8* %c0) #3
  %78 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #3
  %83 = bitcast %struct.gs_cmap_ToUnicode_s** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #3
  %84 = load i32, i32* %retval
  ret i32 %84
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 112}
!8 = !{!"gs_cmap_identity_s", !6, i64 0, !9, i64 8, !10, i64 16, !2, i64 32, !6, i64 40, !11, i64 44, !12, i64 48, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !6, i64 112, !6, i64 116, !6, i64 120}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_uid_s", !9, i64 0, !2, i64 8}
!13 = !{!8, !6, i64 116}
!14 = !{!8, !6, i64 120}
!15 = !{!16, !2, i64 104}
!16 = !{!"gs_cmap_s", !6, i64 0, !9, i64 8, !10, i64 16, !2, i64 32, !6, i64 40, !11, i64 44, !12, i64 48, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104}
!17 = !{!18, !2, i64 24}
!18 = !{!"gs_cmap_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!19 = !{!18, !2, i64 0}
!20 = !{!18, !2, i64 8}
!21 = !{!22, !2, i64 24}
!22 = !{!"gs_cmap_ranges_enum_s", !23, i64 0, !2, i64 16, !2, i64 24, !6, i64 32}
!23 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !6, i64 8}
!24 = !{!25, !2, i64 0}
!25 = !{!"gs_cmap_ranges_enum_procs_s", !2, i64 0}
!26 = !{!18, !2, i64 16}
!27 = !{!28, !2, i64 56}
!28 = !{!"gs_cmap_lookups_enum_s", !29, i64 0, !2, i64 48, !2, i64 56, !3, i64 64, !3, i64 72}
!29 = !{!"gx_cmap_lookup_entry_s", !3, i64 0, !6, i64 8, !6, i64 12, !3, i64 16, !10, i64 24, !6, i64 40}
!30 = !{!31, !2, i64 0}
!31 = !{!"gs_cmap_lookups_enum_procs_s", !2, i64 0, !2, i64 8}
!32 = !{!31, !2, i64 8}
!33 = !{!16, !9, i64 8}
!34 = !{!16, !6, i64 40}
!35 = !{!12, !9, i64 0}
!36 = !{!12, !2, i64 8}
!37 = !{!38, !2, i64 72}
!38 = !{!"gs_memory_s", !2, i64 0, !39, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!40 = !{!38, !2, i64 104}
!41 = !{!38, !2, i64 24}
!42 = !{!16, !6, i64 0}
!43 = !{!16, !2, i64 16}
!44 = !{!16, !6, i64 24}
!45 = !{!16, !2, i64 32}
!46 = !{!16, !11, i64 44}
!47 = !{!16, !6, i64 72}
!48 = !{!22, !2, i64 16}
!49 = !{!22, !6, i64 32}
!50 = !{!28, !2, i64 48}
!51 = !{!52, !2, i64 0}
!52 = !{!"gs_cid_system_info_s", !10, i64 0, !10, i64 16, !6, i64 32}
!53 = !{!52, !6, i64 8}
!54 = !{!28, !6, i64 40}
!55 = !{!28, !3, i64 16}
!56 = !{!28, !6, i64 8}
!57 = !{!28, !6, i64 32}
!58 = !{!28, !2, i64 24}
!59 = !{!38, !2, i64 64}
!60 = !{!61, !2, i64 96}
!61 = !{!"gs_cmap_ToUnicode_s", !6, i64 0, !9, i64 8, !10, i64 16, !2, i64 32, !6, i64 40, !11, i64 44, !12, i64 48, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !6, i64 112, !6, i64 116, !6, i64 120}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !6, i64 40}
!64 = !{!61, !6, i64 116}
!65 = !{!61, !6, i64 112}
!66 = !{!61, !6, i64 80}
!67 = !{!61, !6, i64 120}
!68 = !{!16, !2, i64 96}
!69 = !{!3, !3, i64 0}
!70 = !{!10, !6, i64 8}
!71 = !{!9, !9, i64 0}
!72 = !{!10, !2, i64 0}
!73 = !{!22, !6, i64 8}
!74 = !{!28, !6, i64 12}
