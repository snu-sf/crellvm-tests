; ModuleID = './gsfcid2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_cmap_tt_16bit_format4_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s*, %struct.gs_font_type42_s*, i32, i64, i64, i64, i64, i64 }

@st_gs_font_cid2 = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [25 x i8] c"gs_font_cid2_from_type42\00", align 1
@gs_cmap_from_type42_cmap.null_cidsi = internal constant %struct.gs_cid_system_info_s { %struct.gs_const_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 4 }, %struct.gs_const_string_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 4 }, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@st_cmap_tt_16bit_format4 = internal constant %struct.gs_memory_struct_type_s { i32 168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cmap_tt_16bit_format4_reloc_ptrs to i8*) }, align 8
@tt_16bit_format4_procs = internal constant %struct.gs_cmap_procs_s { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)* @tt_16bit_format4_decode_next, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)* @tt_16bit_format4_enum_ranges, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)* @tt_16bit_format4_enum_lookups, i32 (%struct.gs_cmap_s*, i32)* @gs_cmap_compute_identity }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"gs_cmap_tt_16bit_format4_t\00", align 1
@cmap_tt_16bit_format4_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_cmap, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cmap_tt_16bit_format4_enum_ptrs, i32 0, i32 0) }, align 8
@st_cmap = external constant %struct.gs_memory_struct_type_s, align 8
@cmap_tt_16bit_format4_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }], align 2
@tt_16bit_format4_range_procs = internal constant %struct.gs_cmap_ranges_enum_procs_s { i32 (%struct.gs_cmap_ranges_enum_s*)* @tt_16bit_format4_next_range }, align 8
@gs_cmap_no_lookups_procs = external constant %struct.gs_cmap_lookups_enum_procs_s, align 8
@tt_16bit_format4_lookup_procs = internal constant %struct.gs_cmap_lookups_enum_procs_s { i32 (%struct.gs_cmap_lookups_enum_s*)* @tt_16bit_format4_next_lookup, i32 (%struct.gs_cmap_lookups_enum_s*)* @tt_16bit_format4_next_entry }, align 8

; Function Attrs: nounwind uwtable
define i32 @gs_font_cid2_from_type42(%struct.gs_font_cid2_s** %ppfcid, %struct.gs_font_type42_s* %pfont42, i32 %wmode, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfcid.addr = alloca %struct.gs_font_cid2_s**, align 8
  %pfont42.addr = alloca %struct.gs_font_type42_s*, align 8
  %wmode.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_cid2_s** %ppfcid, %struct.gs_font_cid2_s*** %ppfcid.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont42, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !7
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_gs_font_cid2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %4, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %5 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_cid2_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_cid2_s* %6 to i8*
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_type42_s* %8 to i8*
  %call1 = call i8* @memcpy(i8* %7, i8* %9, i64 656) #5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %11, i32 0, i32 2
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %12 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %12, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev, align 8, !tbaa !28
  %13 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %13, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next, align 8, !tbaa !29
  %14 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %14, i32 0, i32 4
  store i32 0, i32* %is_resource, align 4, !tbaa !30
  %15 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_cid2_s* %15 to %struct.gs_font_s*
  call void @gs_font_notify_init(%struct.gs_font_s* %16) #4
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i64 @gs_next_ids(%struct.gs_memory_s* %17, i32 1) #4
  %18 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %18, i32 0, i32 6
  store i64 %call2, i64* %id, align 8, !tbaa !31
  %19 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %20 = bitcast %struct.gs_font_cid2_s* %19 to %struct.gs_font_s*
  %21 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %21, i32 0, i32 7
  store %struct.gs_font_s* %20, %struct.gs_font_s** %base, align 8, !tbaa !32
  %22 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %22, i32 0, i32 11
  store i32 11, i32* %FontType, align 4, !tbaa !33
  %23 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %23, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 0
  call void @cid_system_info_set_null(%struct.gs_cid_system_info_s* %CIDSystemInfo) #4
  %24 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %24, i32 0, i32 29
  %numGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 14
  %25 = load i32, i32* %numGlyphs, align 4, !tbaa !34
  %26 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata3 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %26, i32 0, i32 30
  %common4 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata3, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common4, i32 0, i32 1
  store i32 %25, i32* %CIDCount, align 4, !tbaa !36
  %27 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata5 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %27, i32 0, i32 30
  %common6 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata5, i32 0, i32 0
  %GDBytes = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common6, i32 0, i32 3
  store i32 2, i32* %GDBytes, align 4, !tbaa !37
  %28 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata7 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %28, i32 0, i32 30
  %MetricsCount = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata7, i32 0, i32 1
  store i32 0, i32* %MetricsCount, align 4, !tbaa !38
  %29 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata8 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %29, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata8, i32 0, i32 2
  store i32 (%struct.gs_font_cid2_s*, i64)* @identity_CIDMap_proc, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !39
  %30 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %31 = load %struct.gs_font_cid2_s**, %struct.gs_font_cid2_s*** %ppfcid.addr, align 8, !tbaa !1
  store %struct.gs_font_cid2_s* %30, %struct.gs_font_cid2_s** %31, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare void @gs_font_notify_init(%struct.gs_font_s*) #3

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #3

declare void @cid_system_info_set_null(%struct.gs_cid_system_info_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @identity_CIDMap_proc(%struct.gs_font_cid2_s* %pfont, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_cid2_s*, align 8
  %glyph.addr = alloca i64, align 8
  %cid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_cid2_s* %pfont, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !40
  %0 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !40
  %sub = sub i64 %1, 2147483648
  store i64 %sub, i64* %cid, align 8, !tbaa !40
  %2 = load i64, i64* %cid, align 8, !tbaa !40
  %3 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %3, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %4 = load i32, i32* %CIDCount, align 4, !tbaa !36
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %2, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %cid, align 8, !tbaa !40
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_cmap_from_type42_cmap(%struct.gs_cmap_s** %ppcmap, %struct.gs_font_type42_s* %pfont, i32 %wmode, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcmap.addr = alloca %struct.gs_cmap_s**, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %wmode.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %origin = alloca i64, align 8
  %pcmap = alloca %struct.gs_cmap_tt_16bit_format4_s*, align 8
  %code = alloca i32, align 4
  %ttdata = alloca [8 x i8], align 1
  %offset = alloca i64, align 8
  %segCount2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cmap_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_cmap_s** %ppcmap, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i64* %origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %cmap = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 6
  %2 = load i64, i64* %cmap, align 8, !tbaa !41
  store i64 %2, i64* %origin, align 8, !tbaa !40
  %3 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [8 x i8]* %ttdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i64, i64* %origin, align 8, !tbaa !40
  store i64 %7, i64* %offset, align 8, !tbaa !40
  %8 = bitcast i32* %segCount2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i64, i64* %origin, align 8, !tbaa !40
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end:                                           ; preds = %entry
  %10 = bitcast i32* %cmap_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %13 = load i64, i64* %origin, align 8, !tbaa !40
  %add = add i64 %13, 2
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %12, i64 %add, i32 2, i8* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %14, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 1
  %17 = load i8, i8* %arrayidx4, align 1, !tbaa !42
  %conv5 = zext i8 %17 to i32
  %add6 = add i32 %shl, %conv5
  store i32 %add6, i32* %cmap_count, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %cmap_count, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.9

do.body.9:                                        ; preds = %for.body
  %20 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %21 = load i64, i64* %origin, align 8, !tbaa !40
  %add10 = add i64 %21, 4
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul i32 %22, 8
  %conv11 = zext i32 %mul to i64
  %add12 = add i64 %add10, %conv11
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %call14 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %20, i64 %add12, i32 8, i8* %arraydecay13) #4
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body.9
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.body.9
  br label %do.cond.19

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %arrayidx21 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 0
  %25 = load i8, i8* %arrayidx21, align 1, !tbaa !42
  %conv22 = zext i8 %25 to i32
  %shl23 = shl i32 %conv22, 8
  %arrayidx24 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 1
  %26 = load i8, i8* %arrayidx24, align 1, !tbaa !42
  %conv25 = zext i8 %26 to i32
  %add26 = add i32 %shl23, %conv25
  %cmp27 = icmp ne i32 %add26, 3
  br i1 %cmp27, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.20
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay29, i64 2
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %27 = load i8, i8* %arrayidx30, align 1, !tbaa !42
  %conv31 = zext i8 %27 to i32
  %shl32 = shl i32 %conv31, 8
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay33, i64 2
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr34, i64 1
  %28 = load i8, i8* %arrayidx35, align 1, !tbaa !42
  %conv36 = zext i8 %28 to i32
  %add37 = add i32 %shl32, %conv36
  %cmp38 = icmp ne i32 %add37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %do.end.20
  br label %for.inc

if.end.41:                                        ; preds = %lor.lhs.false
  %29 = load i64, i64* %origin, align 8, !tbaa !40
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %add.ptr43 = getelementptr inbounds i8, i8* %arraydecay42, i64 4
  %call44 = call i64 @get_u32_msb(i8* %add.ptr43) #4
  %add45 = add i64 %29, %call44
  store i64 %add45, i64* %offset, align 8, !tbaa !40
  br label %do.body.46

do.body.46:                                       ; preds = %if.end.41
  %30 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %31 = load i64, i64* %offset, align 8, !tbaa !40
  %arraydecay47 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %call48 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %30, i64 %31, i32 2, i8* %arraydecay47) #4
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %32, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.body.46
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %do.body.46
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %arrayidx55 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 0
  %34 = load i8, i8* %arrayidx55, align 1, !tbaa !42
  %conv56 = zext i8 %34 to i32
  %shl57 = shl i32 %conv56, 8
  %arrayidx58 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 1
  %35 = load i8, i8* %arrayidx58, align 1, !tbaa !42
  %conv59 = zext i8 %35 to i32
  %add60 = add i32 %shl57, %conv59
  %cmp61 = icmp ne i32 %add60, 4
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.54
  br label %for.inc

if.end.64:                                        ; preds = %do.end.54
  br label %for.end

for.inc:                                          ; preds = %if.then.63, %if.then.40
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.end.64, %for.cond
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load i32, i32* %cmap_count, align 4, !tbaa !5
  %cmp65 = icmp uge i32 %37, %38
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %for.end
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.68
  %39 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %40 = load i64, i64* %offset, align 8, !tbaa !40
  %add70 = add i64 %40, 6
  %arraydecay71 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i32 0
  %call72 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %39, i64 %add70, i32 2, i8* %arraydecay71) #4
  store i32 %call72, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %41, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.body.69
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %do.body.69
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  %arrayidx79 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 0
  %43 = load i8, i8* %arrayidx79, align 1, !tbaa !42
  %conv80 = zext i8 %43 to i32
  %shl81 = shl i32 %conv80, 8
  %arrayidx82 = getelementptr inbounds [8 x i8], [8 x i8]* %ttdata, i32 0, i64 1
  %44 = load i8, i8* %arrayidx82, align 1, !tbaa !42
  %conv83 = zext i8 %44 to i32
  %add84 = add i32 %shl81, %conv83
  store i32 %add84, i32* %segCount2, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.78, %if.then.75, %if.then.67, %if.then.51, %if.then.17, %if.then.2
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %cmap_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.106 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %47 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %48 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call86 = call i32 @gs_cmap_alloc(%struct.gs_cmap_s** %47, %struct.gs_memory_struct_type_s* @st_cmap_tt_16bit_format4, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 4, %struct.gs_cid_system_info_s* @gs_cmap_from_type42_cmap.null_cidsi, i32 1, %struct.gs_cmap_procs_s* @tt_16bit_format4_procs, %struct.gs_memory_s* %49) #4
  store i32 %call86, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %50, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cleanup.cont
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.90:                                        ; preds = %cleanup.cont
  %52 = load %struct.gs_cmap_s**, %struct.gs_cmap_s*** %ppcmap.addr, align 8, !tbaa !1
  %53 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %52, align 8, !tbaa !1
  %54 = bitcast %struct.gs_cmap_s* %53 to %struct.gs_cmap_tt_16bit_format4_s*
  store %struct.gs_cmap_tt_16bit_format4_s* %54, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %55 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %from_Unicode = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %55, i32 0, i32 9
  store i32 1, i32* %from_Unicode, align 4, !tbaa !43
  %56 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %57 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %57, i32 0, i32 14
  store %struct.gs_font_type42_s* %56, %struct.gs_font_type42_s** %font, align 8, !tbaa !45
  %58 = load i32, i32* %segCount2, align 4, !tbaa !5
  %59 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %segCount291 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %59, i32 0, i32 15
  store i32 %58, i32* %segCount291, align 4, !tbaa !46
  %60 = load i64, i64* %offset, align 8, !tbaa !40
  %add92 = add i64 %60, 14
  %61 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %endCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %61, i32 0, i32 16
  store i64 %add92, i64* %endCount, align 8, !tbaa !47
  %62 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %endCount93 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %62, i32 0, i32 16
  %63 = load i64, i64* %endCount93, align 8, !tbaa !47
  %64 = load i32, i32* %segCount2, align 4, !tbaa !5
  %conv94 = zext i32 %64 to i64
  %add95 = add i64 %63, %conv94
  %add96 = add i64 %add95, 2
  %65 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %startCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %65, i32 0, i32 17
  store i64 %add96, i64* %startCount, align 8, !tbaa !48
  %66 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %startCount97 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %66, i32 0, i32 17
  %67 = load i64, i64* %startCount97, align 8, !tbaa !48
  %68 = load i32, i32* %segCount2, align 4, !tbaa !5
  %conv98 = zext i32 %68 to i64
  %add99 = add i64 %67, %conv98
  %69 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idDelta = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %69, i32 0, i32 18
  store i64 %add99, i64* %idDelta, align 8, !tbaa !49
  %70 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idDelta100 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %70, i32 0, i32 18
  %71 = load i64, i64* %idDelta100, align 8, !tbaa !49
  %72 = load i32, i32* %segCount2, align 4, !tbaa !5
  %conv101 = zext i32 %72 to i64
  %add102 = add i64 %71, %conv101
  %73 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %73, i32 0, i32 19
  store i64 %add102, i64* %idRangeOffset, align 8, !tbaa !50
  %74 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset103 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %74, i32 0, i32 19
  %75 = load i64, i64* %idRangeOffset103, align 8, !tbaa !50
  %76 = load i32, i32* %segCount2, align 4, !tbaa !5
  %conv104 = zext i32 %76 to i64
  %add105 = add i64 %75, %conv104
  %77 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %glyphIdArray = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %77, i32 0, i32 20
  store i64 %add105, i64* %glyphIdArray, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %if.end.90, %if.then.89, %cleanup, %if.then
  %78 = bitcast i32* %segCount2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast [8 x i8]* %ttdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i64* %origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @gs_type42_read_data(%struct.gs_font_type42_s*, i64, i32, i8*) #3

declare i64 @get_u32_msb(i8*) #3

declare i32 @gs_cmap_alloc(%struct.gs_cmap_s**, %struct.gs_memory_struct_type_s*, i32, i8*, i32, %struct.gs_cid_system_info_s*, i32, %struct.gs_cmap_procs_s*, %struct.gs_memory_s*) #3

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tt_16bit_format4_decode_next(%struct.gs_cmap_s* %pcmap_in, %struct.gs_const_string_s* %pstr, i32* %pindex, i32* %pfidx, i64* %pchr, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pcmap_in.addr = alloca %struct.gs_cmap_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  %pcmap = alloca %struct.gs_cmap_tt_16bit_format4_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %ttdata = alloca [2 x i8], align 1
  %code = alloca i32, align 4
  %chr = alloca i32, align 4
  %value = alloca i32, align 4
  %segment2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %start = alloca i32, align 4
  %delta = alloca i32, align 4
  %roff = alloca i32, align 4
  %gidoff = alloca i64, align 8
  store %struct.gs_cmap_s* %pcmap_in, %struct.gs_cmap_s** %pcmap_in.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap_in.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_cmap_s* %1 to %struct.gs_cmap_tt_16bit_format4_s*
  store %struct.gs_cmap_tt_16bit_format4_s* %2, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %4, i32 0, i32 14
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font, align 8, !tbaa !45
  store %struct.gs_font_type42_s* %5, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %6 = bitcast [2 x i8]* %ttdata to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %chr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %value, align 4, !tbaa !5
  %10 = bitcast i32* %segment2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !52
  %13 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %add = add i32 %14, 2
  %cmp = icmp ult i32 %12, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 2147483647, i64* %15, align 8, !tbaa !40
  %16 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %18, i32 0, i32 1
  %19 = load i32, i32* %size1, align 4, !tbaa !52
  %cmp2 = icmp eq i32 %17, %19
  %cond = select i1 %cmp2, i32 2, i32 -1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end:                                           ; preds = %entry
  %20 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8, !tbaa !53
  %22 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv = zext i8 %24 to i32
  %shl = shl i32 %conv, 8
  %25 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %25, i32 0, i32 0
  %26 = load i8*, i8** %data3, align 8, !tbaa !53
  %27 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %idx.ext4 = zext i32 %28 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %26, i64 %idx.ext4
  %arrayidx6 = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  %29 = load i8, i8* %arrayidx6, align 1, !tbaa !42
  %conv7 = zext i8 %29 to i32
  %add8 = add i32 %shl, %conv7
  store i32 %add8, i32* %chr, align 4, !tbaa !5
  store i32 0, i32* %segment2, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %segment2, align 4, !tbaa !5
  %31 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %segCount2 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %31, i32 0, i32 15
  %32 = load i32, i32* %segCount2, align 4, !tbaa !46
  %cmp9 = icmp ult i32 %30, %32
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %roff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  br label %do.body

do.body:                                          ; preds = %for.body
  %36 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %37 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %endCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %37, i32 0, i32 16
  %38 = load i64, i64* %endCount, align 8, !tbaa !47
  %39 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv11 = zext i32 %39 to i64
  %add12 = add i64 %38, %conv11
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %36, i64 %add12, i32 2, i8* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %40, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.body
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.16:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %42 = load i32, i32* %chr, align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %43 = load i8, i8* %arrayidx17, align 1, !tbaa !42
  %conv18 = zext i8 %43 to i32
  %shl19 = shl i32 %conv18, 8
  %arrayidx20 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %44 = load i8, i8* %arrayidx20, align 1, !tbaa !42
  %conv21 = zext i8 %44 to i32
  %add22 = add i32 %shl19, %conv21
  %cmp23 = icmp ugt i32 %42, %add22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.26:                                        ; preds = %do.end
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.26
  %45 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %46 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %startCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %46, i32 0, i32 17
  %47 = load i64, i64* %startCount, align 8, !tbaa !48
  %48 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv28 = zext i32 %48 to i64
  %add29 = add i64 %47, %conv28
  %arraydecay30 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call31 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %45, i64 %add29, i32 2, i8* %arraydecay30) #4
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %49, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.body.27
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.35:                                        ; preds = %do.body.27
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %arrayidx38 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %51 = load i8, i8* %arrayidx38, align 1, !tbaa !42
  %conv39 = zext i8 %51 to i32
  %shl40 = shl i32 %conv39, 8
  %arrayidx41 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %52 = load i8, i8* %arrayidx41, align 1, !tbaa !42
  %conv42 = zext i8 %52 to i32
  %add43 = add i32 %shl40, %conv42
  store i32 %add43, i32* %start, align 4, !tbaa !5
  %53 = load i32, i32* %chr, align 4, !tbaa !5
  %54 = load i32, i32* %start, align 4, !tbaa !5
  %cmp44 = icmp ult i32 %53, %54
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.37
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.47:                                        ; preds = %do.end.37
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %55 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %56 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idDelta = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %56, i32 0, i32 18
  %57 = load i64, i64* %idDelta, align 8, !tbaa !49
  %58 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv49 = zext i32 %58 to i64
  %add50 = add i64 %57, %conv49
  %arraydecay51 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call52 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %55, i64 %add50, i32 2, i8* %arraydecay51) #4
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %59, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.body.48
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.56:                                        ; preds = %do.body.48
  br label %do.cond.57

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  %arrayidx59 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %61 = load i8, i8* %arrayidx59, align 1, !tbaa !42
  %conv60 = zext i8 %61 to i32
  %shl61 = shl i32 %conv60, 8
  %arrayidx62 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %62 = load i8, i8* %arrayidx62, align 1, !tbaa !42
  %conv63 = zext i8 %62 to i32
  %add64 = add i32 %shl61, %conv63
  store i32 %add64, i32* %delta, align 4, !tbaa !5
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.58
  %63 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %64 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %64, i32 0, i32 19
  %65 = load i64, i64* %idRangeOffset, align 8, !tbaa !50
  %66 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv66 = zext i32 %66 to i64
  %add67 = add i64 %65, %conv66
  %arraydecay68 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call69 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %63, i64 %add67, i32 2, i8* %arraydecay68) #4
  store i32 %call69, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %67, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.65
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.73:                                        ; preds = %do.body.65
  br label %do.cond.74

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  %arrayidx76 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %69 = load i8, i8* %arrayidx76, align 1, !tbaa !42
  %conv77 = zext i8 %69 to i32
  %shl78 = shl i32 %conv77, 8
  %arrayidx79 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %70 = load i8, i8* %arrayidx79, align 1, !tbaa !42
  %conv80 = zext i8 %70 to i32
  %add81 = add i32 %shl78, %conv80
  store i32 %add81, i32* %roff, align 4, !tbaa !5
  %71 = load i32, i32* %roff, align 4, !tbaa !5
  %tobool = icmp ne i32 %71, 0
  br i1 %tobool, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %do.end.75
  %72 = bitcast i64* %gidoff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset83 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %73, i32 0, i32 19
  %74 = load i64, i64* %idRangeOffset83, align 8, !tbaa !50
  %75 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv84 = zext i32 %75 to i64
  %add85 = add i64 %74, %conv84
  %76 = load i32, i32* %roff, align 4, !tbaa !5
  %conv86 = zext i32 %76 to i64
  %add87 = add i64 %add85, %conv86
  %77 = load i32, i32* %chr, align 4, !tbaa !5
  %78 = load i32, i32* %start, align 4, !tbaa !5
  %sub = sub i32 %77, %78
  %mul = mul i32 %sub, 2
  %conv88 = zext i32 %mul to i64
  %add89 = add i64 %add87, %conv88
  store i64 %add89, i64* %gidoff, align 8, !tbaa !40
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.82
  %79 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %80 = load i64, i64* %gidoff, align 8, !tbaa !40
  %arraydecay91 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call92 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %79, i64 %80, i32 2, i8* %arraydecay91) #4
  store i32 %call92, i32* %code, align 4, !tbaa !5
  %81 = load i32, i32* %code, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %81, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.body.90
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %do.body.90
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %arrayidx99 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %83 = load i8, i8* %arrayidx99, align 1, !tbaa !42
  %conv100 = zext i8 %83 to i32
  %shl101 = shl i32 %conv100, 8
  %arrayidx102 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %84 = load i8, i8* %arrayidx102, align 1, !tbaa !42
  %conv103 = zext i8 %84 to i32
  %add104 = add i32 %shl101, %conv103
  store i32 %add104, i32* %value, align 4, !tbaa !5
  %85 = load i32, i32* %value, align 4, !tbaa !5
  %cmp105 = icmp ne i32 %85, 0
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %do.end.98
  %86 = load i32, i32* %delta, align 4, !tbaa !5
  %87 = load i32, i32* %value, align 4, !tbaa !5
  %add108 = add i32 %87, %86
  store i32 %add108, i32* %value, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %do.end.98
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.then.95
  %88 = bitcast i64* %gidoff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.112 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.111

if.else:                                          ; preds = %do.end.75
  %89 = load i32, i32* %chr, align 4, !tbaa !5
  %90 = load i32, i32* %delta, align 4, !tbaa !5
  %add110 = add i32 %89, %90
  store i32 %add110, i32* %value, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %if.else, %cleanup.cont
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %if.end.111, %cleanup, %if.then.72, %if.then.55, %if.then.46, %if.then.34, %if.then.25, %if.then.15
  %91 = bitcast i32* %roff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %cleanup.dest.115 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.115, label %cleanup.121 [
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup.112
  %94 = load i32, i32* %segment2, align 4, !tbaa !5
  %add116 = add i32 %94, 2
  store i32 %add116, i32* %segment2, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup.112, %for.cond
  %95 = load i32, i32* %value, align 4, !tbaa !5
  %and = and i32 %95, 65535
  %conv117 = zext i32 %and to i64
  %add118 = add i64 2147483648, %conv117
  %96 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add118, i64* %96, align 8, !tbaa !40
  %97 = load i32, i32* %chr, align 4, !tbaa !5
  %conv119 = zext i32 %97 to i64
  %98 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %conv119, i64* %98, align 8, !tbaa !40
  %99 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %add120 = add i32 %100, 2
  store i32 %add120, i32* %99, align 4, !tbaa !5
  %101 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 0, i32* %101, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %for.end, %cleanup.112, %if.then
  %102 = bitcast i32* %segment2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %chr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast [2 x i8]* %ttdata to i8*
  call void @llvm.lifetime.end(i64 2, i8* %106) #1
  %107 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal void @tt_16bit_format4_enum_ranges(%struct.gs_cmap_s* %pcmap, %struct.gs_cmap_ranges_enum_s* %pre) #0 {
entry:
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %pre.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.gs_cmap_ranges_enum_s* %pre, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %pre.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_ranges_enum_procs_s* @tt_16bit_format4_range_procs) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tt_16bit_format4_enum_lookups(%struct.gs_cmap_s* %pcmap, i32 %which, %struct.gs_cmap_lookups_enum_s* %pre) #0 {
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
  %cond = select i1 %tobool, %struct.gs_cmap_lookups_enum_procs_s* @gs_cmap_no_lookups_procs, %struct.gs_cmap_lookups_enum_procs_s* @tt_16bit_format4_lookup_procs
  call void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s* %0, %struct.gs_cmap_s* %1, %struct.gs_cmap_lookups_enum_procs_s* %cond) #4
  ret void
}

declare i32 @gs_cmap_compute_identity(%struct.gs_cmap_s*, i32) #3

declare void @gs_cmap_ranges_enum_setup(%struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tt_16bit_format4_next_range(%struct.gs_cmap_ranges_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_ranges_enum_s*, align 8
  store %struct.gs_cmap_ranges_enum_s* %penum, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %0, i32 0, i32 3
  %1 = load i32, i32* %index, align 4, !tbaa !54
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %2, i32 0, i32 0
  %first = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %first, i32 0, i64 1
  store i8 0, i8* %arrayidx, align 1, !tbaa !42
  %3 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range1 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %3, i32 0, i32 0
  %first2 = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %first2, i32 0, i64 0
  store i8 0, i8* %arrayidx3, align 1, !tbaa !42
  %4 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range4 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %4, i32 0, i32 0
  %last = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %last, i32 0, i64 1
  store i8 -1, i8* %arrayidx5, align 1, !tbaa !42
  %5 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range6 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %5, i32 0, i32 0
  %last7 = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %last7, i32 0, i64 0
  store i8 -1, i8* %arrayidx8, align 1, !tbaa !42
  %6 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %range9 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %6, i32 0, i32 0
  %size = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range9, i32 0, i32 2
  store i32 2, i32* %size, align 4, !tbaa !57
  %7 = load %struct.gs_cmap_ranges_enum_s*, %struct.gs_cmap_ranges_enum_s** %penum.addr, align 8, !tbaa !1
  %index10 = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %7, i32 0, i32 3
  store i32 1, i32* %index10, align 4, !tbaa !54
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @gs_cmap_lookups_enum_setup(%struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tt_16bit_format4_next_lookup(%struct.gs_cmap_lookups_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry1 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %2, i32 0, i32 0
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry1, i32 0, i32 1
  store i32 2, i32* %key_size, align 4, !tbaa !58
  %3 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry2 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %3, i32 0, i32 0
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry2, i32 0, i32 2
  store i32 1, i32* %key_is_range, align 4, !tbaa !61
  %4 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %4, i32 0, i32 0
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry3, i32 0, i32 3
  store i32 0, i32* %value_type, align 4, !tbaa !62
  %5 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry4 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %5, i32 0, i32 0
  %value = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry4, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value, i32 0, i32 1
  store i32 2, i32* %size, align 4, !tbaa !63
  %6 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry5 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %6, i32 0, i32 0
  %font_index = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry5, i32 0, i32 5
  store i32 0, i32* %font_index, align 4, !tbaa !64
  %7 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index6 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %7, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %index6, i32 0, i64 0
  store i32 1, i32* %arrayidx7, align 4, !tbaa !5
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_16bit_format4_next_entry(%struct.gs_cmap_lookups_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cmap_lookups_enum_s*, align 8
  %segment2 = alloca i32, align 4
  %next = alloca i32, align 4
  %pcmap = alloca %struct.gs_cmap_tt_16bit_format4_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %ttdata = alloca [2 x i8], align 1
  %code = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %delta = alloca i32, align 4
  %roff = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %gidoff = alloca i64, align 8
  store %struct.gs_cmap_lookups_enum_s* %penum, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %segment2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %index, i32 0, i64 1
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = lshr i32 %2, 16
  store i32 %shr, i32* %segment2, align 4, !tbaa !5
  %3 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %4, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %index1, i32 0, i64 1
  %5 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %and = and i32 %5, 65535
  store i32 %and, i32* %next, align 4, !tbaa !5
  %6 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %7, i32 0, i32 1
  %8 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap, align 8, !tbaa !65
  %9 = bitcast %struct.gs_cmap_s* %8 to %struct.gs_cmap_tt_16bit_format4_s*
  store %struct.gs_cmap_tt_16bit_format4_s* %9, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %11, i32 0, i32 14
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %font, align 8, !tbaa !45
  store %struct.gs_font_type42_s* %12, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %13 = bitcast [2 x i8]* %ttdata to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %roff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  br label %top

top:                                              ; preds = %if.then.14, %entry
  %20 = load i32, i32* %segment2, align 4, !tbaa !5
  %21 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %segCount2 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %21, i32 0, i32 15
  %22 = load i32, i32* %segCount2, align 4, !tbaa !46
  %cmp = icmp uge i32 %20, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %top
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end:                                           ; preds = %top
  br label %do.body

do.body:                                          ; preds = %if.end
  %23 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %24 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %endCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %24, i32 0, i32 16
  %25 = load i64, i64* %endCount, align 8, !tbaa !47
  %26 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv = zext i32 %26 to i64
  %add = add i64 %25, %conv
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %23, i64 %add, i32 2, i8* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %27, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx7 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %29 = load i8, i8* %arrayidx7, align 1, !tbaa !42
  %conv8 = zext i8 %29 to i32
  %shl = shl i32 %conv8, 8
  %arrayidx9 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %30 = load i8, i8* %arrayidx9, align 1, !tbaa !42
  %conv10 = zext i8 %30 to i32
  %add11 = add i32 %shl, %conv10
  store i32 %add11, i32* %end, align 4, !tbaa !5
  %31 = load i32, i32* %next, align 4, !tbaa !5
  %32 = load i32, i32* %end, align 4, !tbaa !5
  %cmp12 = icmp ugt i32 %31, %32
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %33 = load i32, i32* %segment2, align 4, !tbaa !5
  %add15 = add i32 %33, 2
  store i32 %add15, i32* %segment2, align 4, !tbaa !5
  br label %top

if.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.16
  %34 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %35 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %startCount = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %35, i32 0, i32 17
  %36 = load i64, i64* %startCount, align 8, !tbaa !48
  %37 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv18 = zext i32 %37 to i64
  %add19 = add i64 %36, %conv18
  %arraydecay20 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call21 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %34, i64 %add19, i32 2, i8* %arraydecay20) #4
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %38, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.body.17
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.25:                                        ; preds = %do.body.17
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %arrayidx28 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %40 = load i8, i8* %arrayidx28, align 1, !tbaa !42
  %conv29 = zext i8 %40 to i32
  %shl30 = shl i32 %conv29, 8
  %arrayidx31 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %41 = load i8, i8* %arrayidx31, align 1, !tbaa !42
  %conv32 = zext i8 %41 to i32
  %add33 = add i32 %shl30, %conv32
  store i32 %add33, i32* %start, align 4, !tbaa !5
  %42 = load i32, i32* %next, align 4, !tbaa !5
  %43 = load i32, i32* %start, align 4, !tbaa !5
  %cmp34 = icmp ult i32 %42, %43
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.27
  %44 = load i32, i32* %start, align 4, !tbaa !5
  store i32 %44, i32* %next, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %do.end.27
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %45 = load i32, i32* %next, align 4, !tbaa !5
  %shr39 = lshr i32 %45, 8
  %conv40 = trunc i32 %shr39 to i8
  %46 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry41 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %46, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry41, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx42, i32 0, i64 0
  store i8 %conv40, i8* %arrayidx43, align 1, !tbaa !42
  %47 = load i32, i32* %next, align 4, !tbaa !5
  %conv44 = trunc i32 %47 to i8
  %48 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry45 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %48, i32 0, i32 0
  %key46 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key46, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx47, i32 0, i64 1
  store i8 %conv44, i8* %arrayidx48, align 1, !tbaa !42
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.38
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %49 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %50 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idDelta = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %50, i32 0, i32 18
  %51 = load i64, i64* %idDelta, align 8, !tbaa !49
  %52 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv52 = zext i32 %52 to i64
  %add53 = add i64 %51, %conv52
  %arraydecay54 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call55 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %49, i64 %add53, i32 2, i8* %arraydecay54) #4
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %53, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.body.51
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.59:                                        ; preds = %do.body.51
  br label %do.cond.60

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  %arrayidx62 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %55 = load i8, i8* %arrayidx62, align 1, !tbaa !42
  %conv63 = zext i8 %55 to i32
  %shl64 = shl i32 %conv63, 8
  %arrayidx65 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %56 = load i8, i8* %arrayidx65, align 1, !tbaa !42
  %conv66 = zext i8 %56 to i32
  %add67 = add i32 %shl64, %conv66
  store i32 %add67, i32* %delta, align 4, !tbaa !5
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.61
  %57 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %58 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %58, i32 0, i32 19
  %59 = load i64, i64* %idRangeOffset, align 8, !tbaa !50
  %60 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv69 = zext i32 %60 to i64
  %add70 = add i64 %59, %conv69
  %arraydecay71 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call72 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %57, i64 %add70, i32 2, i8* %arraydecay71) #4
  store i32 %call72, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %61, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.body.68
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.76:                                        ; preds = %do.body.68
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  %arrayidx79 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %63 = load i8, i8* %arrayidx79, align 1, !tbaa !42
  %conv80 = zext i8 %63 to i32
  %shl81 = shl i32 %conv80, 8
  %arrayidx82 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %64 = load i8, i8* %arrayidx82, align 1, !tbaa !42
  %conv83 = zext i8 %64 to i32
  %add84 = add i32 %shl81, %conv83
  store i32 %add84, i32* %roff, align 4, !tbaa !5
  %65 = load i32, i32* %roff, align 4, !tbaa !5
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %do.end.78
  %66 = bitcast i64* %gidoff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.gs_cmap_tt_16bit_format4_s*, %struct.gs_cmap_tt_16bit_format4_s** %pcmap, align 8, !tbaa !1
  %idRangeOffset86 = getelementptr inbounds %struct.gs_cmap_tt_16bit_format4_s, %struct.gs_cmap_tt_16bit_format4_s* %67, i32 0, i32 19
  %68 = load i64, i64* %idRangeOffset86, align 8, !tbaa !50
  %69 = load i32, i32* %segment2, align 4, !tbaa !5
  %conv87 = zext i32 %69 to i64
  %add88 = add i64 %68, %conv87
  %70 = load i32, i32* %roff, align 4, !tbaa !5
  %conv89 = zext i32 %70 to i64
  %add90 = add i64 %add88, %conv89
  store i64 %add90, i64* %gidoff, align 8, !tbaa !40
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.85
  %71 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %72 = load i64, i64* %gidoff, align 8, !tbaa !40
  %arraydecay92 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i32 0
  %call93 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %71, i64 %72, i32 2, i8* %arraydecay92) #4
  store i32 %call93, i32* %code, align 4, !tbaa !5
  %73 = load i32, i32* %code, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %73, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.body.91
  %74 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %do.body.91
  br label %do.cond.98

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %arrayidx100 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 0
  %75 = load i8, i8* %arrayidx100, align 1, !tbaa !42
  %conv101 = zext i8 %75 to i32
  %shl102 = shl i32 %conv101, 8
  %arrayidx103 = getelementptr inbounds [2 x i8], [2 x i8]* %ttdata, i32 0, i64 1
  %76 = load i8, i8* %arrayidx103, align 1, !tbaa !42
  %conv104 = zext i8 %76 to i32
  %add105 = add i32 %shl102, %conv104
  store i32 %add105, i32* %value, align 4, !tbaa !5
  %77 = load i32, i32* %value, align 4, !tbaa !5
  %cmp106 = icmp ne i32 %77, 0
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %do.end.99
  %78 = load i32, i32* %delta, align 4, !tbaa !5
  %79 = load i32, i32* %value, align 4, !tbaa !5
  %add109 = add i32 %79, %78
  store i32 %add109, i32* %value, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %do.end.99
  %80 = load i32, i32* %next, align 4, !tbaa !5
  %inc = add i32 %80, 1
  store i32 %inc, i32* %next, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.110, %if.then.96
  %81 = bitcast i64* %gidoff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.116

if.else:                                          ; preds = %do.end.78
  %82 = load i32, i32* %next, align 4, !tbaa !5
  %83 = load i32, i32* %delta, align 4, !tbaa !5
  %add111 = add i32 %82, %83
  store i32 %add111, i32* %value, align 4, !tbaa !5
  %84 = load i32, i32* %end, align 4, !tbaa !5
  %85 = load i32, i32* %next, align 4, !tbaa !5
  %or = or i32 %85, 255
  %cmp112 = icmp ult i32 %84, %or
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %86 = load i32, i32* %end, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %87 = load i32, i32* %next, align 4, !tbaa !5
  %or114 = or i32 %87, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %86, %cond.true ], [ %or114, %cond.false ]
  %add115 = add i32 %cond, 1
  store i32 %add115, i32* %next, align 4, !tbaa !5
  br label %if.end.116

if.end.116:                                       ; preds = %cond.end, %cleanup.cont
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %88 = load i32, i32* %next, align 4, !tbaa !5
  %sub = sub i32 %88, 1
  %shr118 = lshr i32 %sub, 8
  %conv119 = trunc i32 %shr118 to i8
  %89 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry120 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %89, i32 0, i32 0
  %key121 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key121, i32 0, i64 1
  %arrayidx123 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx122, i32 0, i64 0
  store i8 %conv119, i8* %arrayidx123, align 1, !tbaa !42
  %90 = load i32, i32* %next, align 4, !tbaa !5
  %sub124 = sub i32 %90, 1
  %conv125 = trunc i32 %sub124 to i8
  %91 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry126 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %91, i32 0, i32 0
  %key127 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key127, i32 0, i64 1
  %arrayidx129 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx128, i32 0, i64 1
  store i8 %conv125, i8* %arrayidx129, align 1, !tbaa !42
  br label %do.cond.130

do.cond.130:                                      ; preds = %do.body.117
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %92 = load i32, i32* %value, align 4, !tbaa !5
  %shr133 = lshr i32 %92, 8
  %conv134 = trunc i32 %shr133 to i8
  %93 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %93, i32 0, i32 4
  %arrayidx135 = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value, i32 0, i64 0
  store i8 %conv134, i8* %arrayidx135, align 1, !tbaa !42
  %94 = load i32, i32* %value, align 4, !tbaa !5
  %conv136 = trunc i32 %94 to i8
  %95 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value137 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %95, i32 0, i32 4
  %arrayidx138 = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value137, i32 0, i64 1
  store i8 %conv136, i8* %arrayidx138, align 1, !tbaa !42
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.132
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %96 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %temp_value141 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %96, i32 0, i32 4
  %arraydecay142 = getelementptr inbounds [8 x i8], [8 x i8]* %temp_value141, i32 0, i32 0
  %97 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry143 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %97, i32 0, i32 0
  %value144 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry143, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value144, i32 0, i32 0
  store i8* %arraydecay142, i8** %data, align 8, !tbaa !66
  %98 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %entry145 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %98, i32 0, i32 0
  %value146 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry145, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value146, i32 0, i32 1
  store i32 2, i32* %size, align 4, !tbaa !63
  %99 = load i32, i32* %segment2, align 4, !tbaa !5
  %shl147 = shl i32 %99, 16
  %100 = load i32, i32* %next, align 4, !tbaa !5
  %add148 = add i32 %shl147, %100
  %101 = load %struct.gs_cmap_lookups_enum_s*, %struct.gs_cmap_lookups_enum_s** %penum.addr, align 8, !tbaa !1
  %index149 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %101, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [2 x i32], [2 x i32]* %index149, i32 0, i64 1
  store i32 %add148, i32* %arrayidx150, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %do.end.140, %cleanup, %if.then.75, %if.then.58, %if.then.24, %if.then.5, %if.then
  %102 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %roff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast [2 x i8]* %ttdata to i8*
  call void @llvm.lifetime.end(i64 2, i8* %108) #1
  %109 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.gs_cmap_tt_16bit_format4_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %segment2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = load i32, i32* %retval
  ret i32 %113
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 72}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !2, i64 16}
!11 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !14, i64 80, !14, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !22, i64 448, !23, i64 656, !2, i64 744}
!12 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!15 = !{!"float", !3, i64 0}
!16 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!17 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !3, i64 0}
!21 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!22 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !13, i64 120, !13, i64 128, !13, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !13, i64 200}
!23 = !{!"gs_font_cid2_data_s", !24, i64 0, !6, i64 56, !2, i64 64, !27, i64 72}
!24 = !{!"gs_font_cid_data_s", !25, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!25 = !{!"gs_cid_system_info_s", !26, i64 0, !26, i64 16, !6, i64 32}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!"o_", !2, i64 0, !2, i64 8}
!28 = !{!11, !2, i64 8}
!29 = !{!11, !2, i64 0}
!30 = !{!11, !6, i64 32}
!31 = !{!11, !13, i64 56}
!32 = !{!11, !2, i64 64}
!33 = !{!11, !3, i64 128}
!34 = !{!35, !6, i64 592}
!35 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !14, i64 80, !14, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !22, i64 448}
!36 = !{!11, !6, i64 696}
!37 = !{!11, !6, i64 704}
!38 = !{!11, !6, i64 712}
!39 = !{!11, !2, i64 720}
!40 = !{!13, !13, i64 0}
!41 = !{!35, !13, i64 496}
!42 = !{!3, !3, i64 0}
!43 = !{!44, !6, i64 76}
!44 = !{!"gs_cmap_tt_16bit_format4_s", !6, i64 0, !13, i64 8, !26, i64 16, !2, i64 32, !6, i64 40, !15, i64 44, !21, i64 48, !13, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !6, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160}
!45 = !{!44, !2, i64 112}
!46 = !{!44, !6, i64 120}
!47 = !{!44, !13, i64 128}
!48 = !{!44, !13, i64 136}
!49 = !{!44, !13, i64 144}
!50 = !{!44, !13, i64 152}
!51 = !{!44, !13, i64 160}
!52 = !{!26, !6, i64 8}
!53 = !{!26, !2, i64 0}
!54 = !{!55, !6, i64 32}
!55 = !{!"gs_cmap_ranges_enum_s", !56, i64 0, !2, i64 16, !2, i64 24, !6, i64 32}
!56 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !6, i64 8}
!57 = !{!55, !6, i64 8}
!58 = !{!59, !6, i64 8}
!59 = !{!"gs_cmap_lookups_enum_s", !60, i64 0, !2, i64 48, !2, i64 56, !3, i64 64, !3, i64 72}
!60 = !{!"gx_cmap_lookup_entry_s", !3, i64 0, !6, i64 8, !6, i64 12, !3, i64 16, !26, i64 24, !6, i64 40}
!61 = !{!59, !6, i64 12}
!62 = !{!59, !3, i64 16}
!63 = !{!59, !6, i64 32}
!64 = !{!59, !6, i64 40}
!65 = !{!59, !2, i64 48}
!66 = !{!59, !2, i64 24}
