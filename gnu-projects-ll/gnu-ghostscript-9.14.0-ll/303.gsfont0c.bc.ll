; ModuleID = './gsfont0c.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }

@.str = private unnamed_addr constant [33 x i8] c"gs_font_type0_from_cidfont(CMap)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"gs_type0_from_type42(CIDFont)\00", align 1
@st_gs_font_type0 = external constant %struct.gs_memory_struct_type_s, align 8
@gs_font_procs_default = external constant %struct.gs_font_procs_s, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"gs_type0_from_cidfont(font)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gs_type0_from_cidfont(Encoding)\00", align 1
@st_gs_font_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"gs_type0_from_cidfont(FDepVector)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_font_type0_from_cidfont(%struct.gs_font_type0_s** %ppfont0, %struct.gs_font_s* %font, i32 %wmode, %struct.gs_matrix_s* %psmat, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfont0.addr = alloca %struct.gs_font_type0_s**, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %wmode.addr = alloca i32, align 4
  %psmat.addr = alloca %struct.gs_matrix_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcmap = alloca %struct.gs_cmap_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type0_s** %ppfont0, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_matrix_s* %psmat, %struct.gs_matrix_s** %psmat.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_cmap_create_identity(%struct.gs_cmap_s** %pcmap, i32 2, i32 %2, %struct.gs_memory_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %9 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @type0_from_cidfont_cmap(%struct.gs_font_type0_s** %6, %struct.gs_font_s* %7, %struct.gs_cmap_s* %8, i32 %9, %struct.gs_matrix_s* %10, %struct.gs_memory_s* %11) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !7
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %17 = bitcast %struct.gs_cmap_s* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_cmap_create_identity(%struct.gs_cmap_s**, i32, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type0_from_cidfont_cmap(%struct.gs_font_type0_s** %ppfont0, %struct.gs_font_s* %font, %struct.gs_cmap_s* %pcmap, i32 %wmode, %struct.gs_matrix_s* %psmat, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfont0.addr = alloca %struct.gs_font_type0_s**, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %wmode.addr = alloca i32, align 4
  %psmat.addr = alloca %struct.gs_matrix_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %font0 = alloca %struct.gs_font_type0_s*, align 8
  %encoding = alloca i32*, align 8
  %fdep = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type0_s** %ppfont0, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store %struct.gs_matrix_s* %psmat, %struct.gs_matrix_s** %psmat.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type0_s** %font0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s* %1, %struct.gs_memory_struct_type_s* @st_gs_font_type0, %struct.gs_font_procs_s* @gs_font_procs_default, %struct.gs_font_dir_s* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #3
  %2 = bitcast %struct.gs_font_s* %call to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %2, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %3 = bitcast i32** %encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !10
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i8* %5(%struct.gs_memory_s* %6, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  %7 = bitcast i8* %call1 to i32*
  store i32* %7, i32** %encoding, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_s*** %fdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 12
  %10 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !11
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call3 = call i8* %10(%struct.gs_memory_s* %11, i32 1, %struct.gs_memory_struct_type_s* @st_gs_font_ptr_element, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #3
  %12 = bitcast i8* %call3 to %struct.gs_font_s**
  store %struct.gs_font_s** %12, %struct.gs_font_s*** %fdep, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_type0_s* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i32*, i32** %encoding, align 8, !tbaa !1
  %cmp4 = icmp eq i32* %15, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %16 = load %struct.gs_font_s**, %struct.gs_font_s*** %fdep, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_font_s** %16, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !7
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gs_font_s**, %struct.gs_font_s*** %fdep, align 8, !tbaa !1
  %21 = bitcast %struct.gs_font_s** %20 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !7
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i32*, i32** %encoding, align 8, !tbaa !1
  %26 = bitcast i32* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !7
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %31 = bitcast %struct.gs_font_type0_s* %30 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %32, null
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %33 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %33, i32 0, i32 9
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_matrix_s* %FontMatrix to i8*
  %36 = bitcast %struct.gs_matrix_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 24, i32 4, i1 false), !tbaa.struct !12
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %37 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %FontMatrix13 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %37, i32 0, i32 9
  call void @gs_make_identity(%struct.gs_matrix_s* %FontMatrix13) #3
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  %38 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %38, i32 0, i32 11
  store i32 0, i32* %FontType, align 4, !tbaa !15
  %39 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %39, i32 0, i32 20
  %init_fstack = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs15, i32 0, i32 10
  store i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)* @gs_type0_init_fstack, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)** %init_fstack, align 8, !tbaa !24
  %40 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %40, i32 0, i32 20
  %define_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs16, i32 0, i32 0
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)* @gs_no_define_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)** %define_font, align 8, !tbaa !25
  %41 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %41, i32 0, i32 20
  %make_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs17, i32 0, i32 1
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)* null, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)** %make_font, align 8, !tbaa !26
  %42 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %42, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs18, i32 0, i32 11
  store i32 (%struct.gs_text_enum_s*, i64*, i64*)* @gs_type0_next_char_glyph, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !27
  %43 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %43, i32 0, i32 21
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %key_name19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i32 0, i32 21
  %45 = bitcast %struct.gs_font_name_s* %key_name to i8*
  %46 = bitcast %struct.gs_font_name_s* %key_name19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 52, i32 4, i1 false), !tbaa.struct !28
  %47 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %47, i32 0, i32 22
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font_name20 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %48, i32 0, i32 22
  %49 = bitcast %struct.gs_font_name_s* %font_name to i8*
  %50 = bitcast %struct.gs_font_name_s* %font_name20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 52, i32 4, i1 false), !tbaa.struct !28
  %51 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %51, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  store i32 9, i32* %FMapType, align 4, !tbaa !30
  %52 = load i32*, i32** %encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %53 = load i32*, i32** %encoding, align 8, !tbaa !1
  %54 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %54, i32 0, i32 23
  %Encoding = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data21, i32 0, i32 7
  store i32* %53, i32** %Encoding, align 8, !tbaa !31
  %55 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %55, i32 0, i32 23
  %encoding_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data22, i32 0, i32 8
  store i32 1, i32* %encoding_size, align 4, !tbaa !32
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %57 = load %struct.gs_font_s**, %struct.gs_font_s*** %fdep, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %57, i64 0
  store %struct.gs_font_s* %56, %struct.gs_font_s** %arrayidx23, align 8, !tbaa !1
  %58 = load %struct.gs_font_s**, %struct.gs_font_s*** %fdep, align 8, !tbaa !1
  %59 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data24 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %59, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data24, i32 0, i32 9
  store %struct.gs_font_s** %58, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !33
  %60 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data25 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %60, i32 0, i32 23
  %fdep_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data25, i32 0, i32 10
  store i32 1, i32* %fdep_size, align 4, !tbaa !34
  %61 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %62 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data26 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %62, i32 0, i32 23
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data26, i32 0, i32 11
  store %struct.gs_cmap_s* %61, %struct.gs_cmap_s** %CMap, align 8, !tbaa !35
  %63 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data27 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %63, i32 0, i32 23
  %SubsVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data27, i32 0, i32 4
  %data28 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector, i32 0, i32 0
  store i8* null, i8** %data28, align 8, !tbaa !36
  %64 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %data29 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %64, i32 0, i32 23
  %SubsVector30 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data29, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector30, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !37
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %65, i32 0, i32 3
  %66 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !38
  %67 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %68 = bitcast %struct.gs_font_type0_s* %67 to %struct.gs_font_s*
  %call31 = call i32 @gs_definefont(%struct.gs_font_dir_s* %66, %struct.gs_font_s* %68) #3
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %69, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.14
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.14
  %71 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %72 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_type0_s* %71, %struct.gs_font_type0_s** %72, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gs_font_s*** %fdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32** %encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_font_type0_s** %font0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_font_type0_from_type42(%struct.gs_font_type0_s** %ppfont0, %struct.gs_font_type42_s* %pfont42, i32 %wmode, i32 %use_cmap, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfont0.addr = alloca %struct.gs_font_type0_s**, align 8
  %pfont42.addr = alloca %struct.gs_font_type42_s*, align 8
  %wmode.addr = alloca i32, align 4
  %use_cmap.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %pfont0 = alloca %struct.gs_font_type0_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcmap = alloca %struct.gs_cmap_s*, align 8
  store %struct.gs_font_type0_s** %ppfont0, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont42, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store i32 %use_cmap, i32* %use_cmap.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_font_type0_s** %pfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %4 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_font_cid2_from_type42(%struct.gs_font_cid2_s** %pfcid, %struct.gs_font_type42_s* %3, i32 %4, %struct.gs_memory_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %use_cmap.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %9 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %11 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_cmap_from_type42_cmap(%struct.gs_cmap_s** %pcmap, %struct.gs_font_type42_s* %10, i32 %11, %struct.gs_memory_s* %12) #3
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  %15 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_cid2_s* %15 to %struct.gs_font_s*
  %17 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap, align 8, !tbaa !1
  %18 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i32 @type0_from_cidfont_cmap(%struct.gs_font_type0_s** %pfont0, %struct.gs_font_s* %16, %struct.gs_cmap_s* %17, i32 %18, %struct.gs_matrix_s* null, %struct.gs_memory_s* %19) #3
  store i32 %call6, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %20 = bitcast %struct.gs_cmap_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %21 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %22 = bitcast %struct.gs_font_cid2_s* %21 to %struct.gs_font_s*
  %23 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_font_type0_from_cidfont(%struct.gs_font_type0_s** %pfont0, %struct.gs_font_s* %22, i32 %23, %struct.gs_matrix_s* null, %struct.gs_memory_s* %24) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %cleanup.cont
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !7
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %30 = bitcast %struct.gs_font_cid2_s* %29 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #3
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end.11:                                        ; preds = %if.end.8
  %32 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont0, align 8, !tbaa !1
  %33 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0.addr, align 8, !tbaa !1
  store %struct.gs_font_type0_s* %32, %struct.gs_font_type0_s** %33, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.11, %if.then.10, %cleanup, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_font_type0_s** %pfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @gs_font_cid2_from_type42(%struct.gs_font_cid2_s**, %struct.gs_font_type42_s*, i32, %struct.gs_memory_s*) #2

declare i32 @gs_cmap_from_type42_cmap(%struct.gs_cmap_s**, %struct.gs_font_type42_s*, i32, %struct.gs_memory_s*) #2

declare %struct.gs_font_s* @gs_font_alloc(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, %struct.gs_font_procs_s*, %struct.gs_font_dir_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_type0_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #2

declare i32 @gs_no_define_font(%struct.gs_font_dir_s*, %struct.gs_font_s*) #2

declare i32 @gs_type0_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #2

declare i32 @gs_definefont(%struct.gs_font_dir_s*, %struct.gs_font_s*) #2

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
!7 = !{!8, !2, i64 24}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!8, !2, i64 64}
!11 = !{!8, !2, i64 104}
!12 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !3, i64 0}
!15 = !{!16, !3, i64 128}
!16 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !17, i64 40, !18, i64 56, !2, i64 64, !2, i64 72, !19, i64 80, !19, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !20, i64 168, !21, i64 272, !21, i64 324, !22, i64 376}
!17 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!20 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!21 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!22 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !23, i64 8, !6, i64 24, !6, i64 28, !2, i64 32, !6, i64 40, !2, i64 48, !6, i64 56, !2, i64 64}
!23 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!24 = !{!16, !2, i64 248}
!25 = !{!16, !2, i64 168}
!26 = !{!16, !2, i64 176}
!27 = !{!16, !2, i64 256}
!28 = !{i64 0, i64 48, !29, i64 48, i64 4, !5}
!29 = !{!3, !3, i64 0}
!30 = !{!16, !3, i64 376}
!31 = !{!16, !2, i64 408}
!32 = !{!16, !6, i64 416}
!33 = !{!16, !2, i64 424}
!34 = !{!16, !6, i64 432}
!35 = !{!16, !2, i64 440}
!36 = !{!16, !2, i64 384}
!37 = !{!16, !6, i64 392}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !17, i64 40, !18, i64 56, !2, i64 64, !2, i64 72, !19, i64 80, !19, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !20, i64 168, !21, i64 272, !21, i64 324}
