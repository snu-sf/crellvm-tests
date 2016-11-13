; ModuleID = './gdevpsft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
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
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.post_s = type { [257 x %struct.post_glyph_s], i32, i32, i32 }
%struct.post_glyph_s = type { i8, i8, i16 }
%struct.anon = type { i32, i32, i32, i32, i32, [2 x i32], i32, i32 }
%struct.ttf_OS_2_s = type { [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [8 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }

@.str = private unnamed_addr constant [24 x i8] c"psf_write_truetype_data\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"The number of glyphs %d exceeds capability of True Type format.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vdmx\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OS/2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vmtx\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@psf_write_truetype_data.version = internal constant [4 x i8] c"\00\01\00\00", align 1
@put_pad.pad_to_4 = internal constant [3 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"Actual TT subtable offset %ld differs from one in the TT header %ld.\0A\00", align 1
@cmap_sub_initial = internal constant [32 x i8] c"\00\04\00 \00\00\00\04\00\04\00\01\00\00\00\00\FF\FF\00\00\00\00\FF\FF\00\00\00\01\00\04\00\00", align 16
@cmap_initial_4 = internal constant [12 x i8] c"\00\00\00\01\00\03\00\00\00\00\00\0C", align 1
@cmap_unicode_initial_6 = internal constant [30 x i8] c"\00\00\00\02\00\01\00\00\00\00\00\14\00\03\00\01\00\00\00\1E\00\06\00\0A\00\00\00\00\00\00", align 16
@cmap_initial_0 = internal constant [26 x i8] c"\00\00\00\02\00\01\00\00\00\00\00\14\00\03\00\00\00\00\01\1A\00\00\01\06\00\00", align 16
@cmap_initial_6 = internal constant [30 x i8] c"\00\00\00\02\00\01\00\00\00\00\00\14\00\03\00\00\00\00\00\1E\00\06\00\0A\00\00\00\00\00\00", align 16
@name_initial = internal constant [18 x i8] c"\00\00\00\01\00\12\00\02\00\02\00\00\00\06\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define i32 @psf_write_truetype_font(%struct.stream_s* %s, %struct.gs_font_type42_s* %pfont, i32 %options, i64* %orig_subset_glyphs, i32 %orig_subset_size, %struct.gs_const_string_s* %alt_font_name) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %options.addr = alloca i32, align 4
  %orig_subset_glyphs.addr = alloca i64*, align 8
  %orig_subset_size.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %subset_data = alloca [768 x i64], align 16
  %subset_glyphs = alloca i64*, align 8
  %subset_size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store i64* %orig_subset_glyphs, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  store i32 %orig_subset_size, i32* %orig_subset_size.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %font, align 8, !tbaa !1
  %3 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast [768 x i64]* %subset_data to i8*
  call void @llvm.lifetime.start(i64 6144, i8* %4) #1
  %5 = bitcast i64** %subset_glyphs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i64*, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  store i64* %6, i64** %subset_glyphs, align 8, !tbaa !1
  %7 = bitcast i32* %subset_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %orig_subset_size.addr, align 4, !tbaa !5
  store i32 %8, i32* %subset_size, align 4, !tbaa !5
  %9 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %tobool = icmp ne i64* %9, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %arraydecay = getelementptr inbounds [768 x i64], [768 x i64]* %subset_data, i32 0, i32 0
  %11 = bitcast i64* %arraydecay to i8*
  %12 = load i64*, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  %13 = bitcast i64* %12 to i8*
  %14 = load i32, i32* %subset_size, align 4, !tbaa !5
  %conv = zext i32 %14 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @memcpy(i8* %11, i8* %13, i64 %mul) #7
  %arraydecay1 = getelementptr inbounds [768 x i64], [768 x i64]* %subset_data, i32 0, i32 0
  store i64* %arraydecay1, i64** %subset_glyphs, align 8, !tbaa !1
  %15 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %call2 = call i32 @psf_add_subset_pieces(i64* %15, i32* %subset_size, i32 768, i32 768, %struct.gs_font_s* %16) #8
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %20 = load i32, i32* %subset_size, align 4, !tbaa !5
  %call5 = call i32 @psf_sort_glyphs(i64* %19, i32 %20) #8
  store i32 %call5, i32* %subset_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %entry
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %23 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %24 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %tobool7 = icmp ne i64* %24, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %25 = load i32, i32* %subset_size, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ 0, %cond.false ]
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %22, i64* %23, i32 %cond, i32 1) #8
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %28 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %28, -8193
  %29 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %cmp8 = icmp ne i64* %29, null
  %conv9 = zext i1 %cmp8 to i32
  %30 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %call10 = call i32 @psf_write_truetype_data(%struct.stream_s* %26, %struct.gs_font_type42_s* %27, i32 %and, %struct.psf_glyph_enum_s* %genum, i32 %conv9, %struct.gs_const_string_s* %30) #8
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %cond.end, %cleanup
  %31 = bitcast i32* %subset_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i64** %subset_glyphs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast [768 x i64]* %subset_data to i8*
  call void @llvm.lifetime.end(i64 6144, i8* %33) #1
  %34 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %34) #1
  %35 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @psf_add_subset_pieces(i64*, i32*, i32, i32, %struct.gs_font_s*) #3

declare i32 @psf_sort_glyphs(i64*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i64*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @psf_write_truetype_data(%struct.stream_s* %s, %struct.gs_font_type42_s* %pfont, i32 %options, %struct.psf_glyph_enum_s* %penum, i32 %is_subset, %struct.gs_const_string_s* %alt_font_name) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %options.addr = alloca i32, align 4
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %is_subset.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %font_name = alloca %struct.gs_const_string_s, align 8
  %OffsetTable = alloca [12 x i8], align 1
  %numTables_stored = alloca i32, align 4
  %numTables = alloca i32, align 4
  %numTables_out = alloca i32, align 4
  %tables = alloca [640 x i8], align 16
  %i = alloca i32, align 4
  %offset = alloca i64, align 8
  %glyph = alloca i64, align 8
  %glyph_prev = alloca i64, align 8
  %max_glyph = alloca i64, align 8
  %glyf_length = alloca i32, align 4
  %loca_length = alloca i32, align 4
  %glyf_checksum = alloca i64, align 8
  %loca_checksum = alloca [2 x i64], align 16
  %glyf_alignment = alloca i64, align 8
  %numGlyphs = alloca i32, align 4
  %head = alloca [56 x i8], align 16
  %mtx = alloca [2 x %struct.gs_type42_mtx_s], align 16
  %post = alloca %struct.post_s, align 4
  %head_checksum = alloca i64, align 8
  %file_checksum = alloca i64, align 8
  %indexToLocFormat = alloca i32, align 4
  %writing_cid = alloca i32, align 4
  %writing_stripped = alloca i32, align 4
  %generate_mtx = alloca i32, align 4
  %no_generate = alloca i32, align 4
  %have_cmap = alloca i32, align 4
  %have_name = alloca i32, align 4
  %have_OS_2 = alloca i32, align 4
  %have_post = alloca i32, align 4
  %have_hvhea = alloca [2 x i32], align 4
  %cmap_length = alloca i32, align 4
  %OS_2_start = alloca i64, align 8
  %OS_2_length = alloca i32, align 4
  %maxp_start = alloca i64, align 8
  %maxp_length = alloca i32, align 4
  %subtable_positions = alloca %struct.anon, align 4
  %start_position = alloca i64, align 8
  %enlarged_numGlyphs = alloca i32, align 4
  %code = alloca i32, align 4
  %TTCFontOffset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tab = alloca [16 x i8], align 16
  %data57 = alloca [54 x i8], align 16
  %start = alloca i64, align 8
  %length = alloca i32, align 4
  %glyph_index = alloca i32, align 4
  %glyph_data = alloca %struct.gs_glyph_data_s, align 8
  %l = alloca i32, align 4
  %tab331 = alloca i8*, align 8
  %length335 = alloca i64, align 8
  %tab344 = alloca i8*, align 8
  %tab444 = alloca i8*, align 8
  %entry448 = alloca [16 x i8], align 16
  %length456 = alloca i32, align 4
  %tab481 = alloca i8*, align 8
  %start490 = alloca i64, align 8
  %length493 = alloca i32, align 4
  %pos2 = alloca [96 x i8], align 16
  %os2 = alloca %struct.ttf_OS_2_s, align 1
  %buf = alloca [6 x i8], align 1
  %n = alloca i32, align 4
  %glyph_data623 = alloca %struct.gs_glyph_data_s, align 8
  %l634 = alloca i32, align 4
  %zero = alloca i32, align 4
  %glyph_data684 = alloca %struct.gs_glyph_data_s, align 8
  %glyph_index685 = alloca i32, align 4
  %l704 = alloca i32, align 4
  %post_initial = alloca [34 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %is_subset, i32* %is_subset.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %font, align 8, !tbaa !1
  %3 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast [12 x i8]* %OffsetTable to i8*
  call void @llvm.lifetime.start(i64 12, i8* %4) #1
  %5 = bitcast i32* %numTables_stored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %numTables_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [640 x i8]* %tables to i8*
  call void @llvm.lifetime.start(i64 640, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %glyph_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %max_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %glyf_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %loca_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i64* %glyf_checksum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 0, i64* %glyf_checksum, align 8, !tbaa !7
  %17 = bitcast [2 x i64]* %loca_checksum to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast [2 x i64]* %loca_checksum to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 16, i1 false)
  %19 = bitcast i64* %glyf_alignment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 0, i64* %glyf_alignment, align 8, !tbaa !7
  %20 = bitcast i32* %numGlyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %numGlyphs, align 4, !tbaa !5
  %21 = bitcast [56 x i8]* %head to i8*
  call void @llvm.lifetime.start(i64 56, i8* %21) #1
  %22 = bitcast [2 x %struct.gs_type42_mtx_s]* %mtx to i8*
  call void @llvm.lifetime.start(i64 48, i8* %22) #1
  %23 = bitcast %struct.post_s* %post to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %23) #1
  %24 = bitcast i64* %head_checksum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast i64* %file_checksum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i64 0, i64* %file_checksum, align 8, !tbaa !7
  %26 = bitcast i32* %indexToLocFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %indexToLocFormat, align 4, !tbaa !5
  %27 = bitcast i32* %writing_cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %28, 8192
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %writing_cid, align 4, !tbaa !5
  %29 = bitcast i32* %writing_stripped to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and1 = and i32 %30, 4096
  %cmp2 = icmp ne i32 %and1, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %writing_stripped, align 4, !tbaa !5
  %31 = bitcast i32* %generate_mtx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and4 = and i32 %32, 16
  %cmp5 = icmp ne i32 %and4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %generate_mtx, align 4, !tbaa !5
  %33 = bitcast i32* %no_generate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %writing_cid, align 4, !tbaa !5
  %35 = load i32, i32* %writing_stripped, align 4, !tbaa !5
  %or = or i32 %34, %35
  store i32 %or, i32* %no_generate, align 4, !tbaa !5
  %36 = bitcast i32* %have_cmap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %no_generate, align 4, !tbaa !5
  store i32 %37, i32* %have_cmap, align 4, !tbaa !5
  %38 = bitcast i32* %have_name to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and7 = and i32 %39, 2
  %tobool = icmp ne i32 %and7, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %have_name, align 4, !tbaa !5
  %40 = bitcast i32* %have_OS_2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %no_generate, align 4, !tbaa !5
  store i32 %41, i32* %have_OS_2, align 4, !tbaa !5
  %42 = bitcast i32* %have_post to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %no_generate, align 4, !tbaa !5
  store i32 %43, i32* %have_post, align 4, !tbaa !5
  %44 = bitcast [2 x i32]* %have_hvhea to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = bitcast i32* %cmap_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 0, i32* %cmap_length, align 4, !tbaa !5
  %46 = bitcast i64* %OS_2_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64 0, i64* %OS_2_start, align 8, !tbaa !7
  %47 = bitcast i32* %OS_2_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 ptrtoint (i8* getelementptr inbounds (%struct.ttf_OS_2_s, %struct.ttf_OS_2_s* null, i32 0, i32 37, i64 0) to i32), i32* %OS_2_length, align 4, !tbaa !5
  %48 = bitcast i64* %maxp_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i64 0, i64* %maxp_start, align 8, !tbaa !7
  %49 = bitcast i32* %maxp_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 0, i32* %maxp_length, align 4, !tbaa !5
  %50 = bitcast %struct.anon* %subtable_positions to i8*
  call void @llvm.lifetime.start(i64 36, i8* %50) #1
  %51 = bitcast i64* %start_position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %52) #8
  store i64 %call, i64* %start_position, align 8, !tbaa !7
  %53 = bitcast i32* %enlarged_numGlyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i32* %TTCFontOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 0, i32* %TTCFontOffset, align 4, !tbaa !5
  %56 = bitcast %struct.anon* %subtable_positions to i8*
  %call8 = call i8* @memset(i8* %56, i32 0, i64 36) #7
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 0
  store i32 0, i32* %arrayidx9, align 4, !tbaa !5
  %57 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %tobool10 = icmp ne %struct.gs_const_string_s* %57, null
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %58 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gs_const_string_s* %font_name to i8*
  %60 = bitcast %struct.gs_const_string_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !tbaa.struct !9
  br label %if.end

if.else:                                          ; preds = %entry
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !10
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %font_name12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %62, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name12, i32 0, i32 1
  %63 = load i32, i32* %size, align 4, !tbaa !12
  %size13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  store i32 %63, i32* %size13, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %64 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call15 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %64, i64 0, i32 12, i8* %arraydecay14) #8
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %65, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.19:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay20 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call21 = call i64 @get_u32_msb(i8* %arraydecay20) #8
  %cmp22 = icmp eq i64 %call21, 1953784678
  br i1 %cmp22, label %if.then.24, label %if.end.47

if.then.24:                                       ; preds = %do.end
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %67 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %arraydecay26 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call27 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %67, i64 12, i32 4, i8* %arraydecay26) #8
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %68, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.body.25
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.31:                                        ; preds = %do.body.25
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %arraydecay34 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call35 = call i64 @get_u32_msb(i8* %arraydecay34) #8
  %conv36 = trunc i64 %call35 to i32
  store i32 %conv36, i32* %TTCFontOffset, align 4, !tbaa !5
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.33
  %70 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %71 = load i32, i32* %TTCFontOffset, align 4, !tbaa !5
  %conv38 = sext i32 %71 to i64
  %arraydecay39 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %call40 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %70, i64 %conv38, i32 12, i8* %arraydecay39) #8
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %72, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.body.37
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.44:                                        ; preds = %do.body.37
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end
  %arraydecay48 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay48, i64 4
  %arrayidx49 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %74 = load i8, i8* %arrayidx49, align 1, !tbaa !20
  %conv50 = zext i8 %74 to i32
  %shl = shl i32 %conv50, 8
  %arraydecay51 = getelementptr inbounds [12 x i8], [12 x i8]* %OffsetTable, i32 0, i32 0
  %add.ptr52 = getelementptr inbounds i8, i8* %arraydecay51, i64 4
  %arrayidx53 = getelementptr inbounds i8, i8* %add.ptr52, i64 1
  %75 = load i8, i8* %arrayidx53, align 1, !tbaa !20
  %conv54 = zext i8 %75 to i32
  %add = add i32 %shl, %conv54
  store i32 %add, i32* %numTables_stored, align 4, !tbaa !5
  store i32 0, i32* %numTables, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %77 = load i32, i32* %numTables_stored, align 4, !tbaa !5
  %cmp55 = icmp ult i32 %76, %77
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = bitcast [16 x i8]* %tab to i8*
  call void @llvm.lifetime.start(i64 16, i8* %78) #1
  %79 = bitcast [54 x i8]* %data57 to i8*
  call void @llvm.lifetime.start(i64 54, i8* %79) #1
  %80 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %82, 40
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %for.body
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.61
  %83 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %84 = load i32, i32* %TTCFontOffset, align 4, !tbaa !5
  %add63 = add nsw i32 %84, 12
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul i32 %85, 16
  %add64 = add i32 %add63, %mul
  %conv65 = zext i32 %add64 to i64
  %arraydecay66 = getelementptr inbounds [16 x i8], [16 x i8]* %tab, i32 0, i32 0
  %call67 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %83, i64 %conv65, i32 16, i8* %arraydecay66) #8
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %86, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %do.body.62
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %do.body.62
  br label %do.cond.72

do.cond.72:                                       ; preds = %if.end.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  %arraydecay74 = getelementptr inbounds [16 x i8], [16 x i8]* %tab, i32 0, i32 0
  %add.ptr75 = getelementptr inbounds i8, i8* %arraydecay74, i64 8
  %call76 = call i64 @get_u32_msb(i8* %add.ptr75) #8
  store i64 %call76, i64* %start, align 8, !tbaa !7
  %arraydecay77 = getelementptr inbounds [16 x i8], [16 x i8]* %tab, i32 0, i32 0
  %add.ptr78 = getelementptr inbounds i8, i8* %arraydecay77, i64 12
  %call79 = call i64 @get_u32_msb(i8* %add.ptr78) #8
  %conv80 = trunc i64 %call79 to i32
  store i32 %conv80, i32* %length, align 4, !tbaa !5
  %88 = load i32, i32* %numTables, align 4, !tbaa !5
  %mul81 = mul i32 %88, 16
  %idxprom = zext i32 %mul81 to i64
  %arrayidx82 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i64 %idxprom
  %arraydecay83 = getelementptr inbounds [16 x i8], [16 x i8]* %tab, i32 0, i32 0
  %call84 = call i8* @memcpy(i8* %arrayidx82, i8* %arraydecay83, i64 16) #7
  %arraydecay85 = getelementptr inbounds [16 x i8], [16 x i8]* %tab, i32 0, i32 0
  %call86 = call i64 @get_u32_msb(i8* %arraydecay85) #8
  switch i64 %call86, label %sw.default [
    i64 1751474532, label %sw.bb
    i64 1735162214, label %sw.bb.109
    i64 1735162232, label %sw.bb.109
    i64 1819239265, label %sw.bb.109
    i64 1819239288, label %sw.bb.109
    i64 1734633842, label %sw.bb.109
    i64 1668112752, label %sw.bb.110
    i64 1835104368, label %sw.bb.115
    i64 1851878757, label %sw.bb.140
    i64 1330851634, label %sw.bb.144
    i64 1886352244, label %sw.bb.153
    i64 1751672161, label %sw.bb.154
    i64 1986553185, label %sw.bb.156
    i64 1752003704, label %sw.bb.158
    i64 1986884728, label %sw.bb.158
    i64 1668707360, label %sw.bb.162
    i64 1718642541, label %sw.bb.162
    i64 1734439792, label %sw.bb.162
    i64 1801810542, label %sw.bb.162
    i64 1886545264, label %sw.bb.162
    i64 1161970772, label %sw.bb.163
    i64 1161972803, label %sw.bb.163
    i64 1161974595, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %do.end.73
  %89 = load i32, i32* %length, align 4, !tbaa !5
  %cmp87 = icmp ult i32 %89, 54
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %sw.bb
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %sw.bb
  store i32 54, i32* %length, align 4, !tbaa !5
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  %90 = load i32, i32* %length, align 4, !tbaa !5
  %conv92 = zext i32 %90 to i64
  %cmp93 = icmp ugt i64 %conv92, 54
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.body.91
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %do.body.91
  %91 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %92 = load i64, i64* %start, align 8, !tbaa !7
  %93 = load i32, i32* %length, align 4, !tbaa !5
  %arraydecay97 = getelementptr inbounds [54 x i8], [54 x i8]* %data57, i32 0, i32 0
  %call98 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %91, i64 %92, i32 %93, i8* %arraydecay97) #8
  store i32 %call98, i32* %code, align 4, !tbaa !5
  %94 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %94, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.96
  %95 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.96
  br label %do.cond.103

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %arraydecay105 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [54 x i8], [54 x i8]* %data57, i32 0, i32 0
  %96 = load i32, i32* %length, align 4, !tbaa !5
  %conv107 = zext i32 %96 to i64
  %call108 = call i8* @memcpy(i8* %arraydecay105, i8* %arraydecay106, i64 %conv107) #7
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.109:                                        ; preds = %do.end.73, %do.end.73, %do.end.73, %do.end.73, %do.end.73
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.110:                                        ; preds = %do.end.73
  %97 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and111 = and i32 %97, 8193
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %sw.bb.110
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %sw.bb.110
  store i32 1, i32* %have_cmap, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.115:                                        ; preds = %do.end.73
  br label %do.body.116

do.body.116:                                      ; preds = %sw.bb.115
  %98 = load i32, i32* %length, align 4, !tbaa !5
  %conv117 = zext i32 %98 to i64
  %cmp118 = icmp ugt i64 %conv117, 54
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.body.116
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %do.body.116
  %99 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %100 = load i64, i64* %start, align 8, !tbaa !7
  %101 = load i32, i32* %length, align 4, !tbaa !5
  %arraydecay122 = getelementptr inbounds [54 x i8], [54 x i8]* %data57, i32 0, i32 0
  %call123 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %99, i64 %100, i32 %101, i8* %arraydecay122) #8
  store i32 %call123, i32* %code, align 4, !tbaa !5
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %102, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %if.end.121
  br label %do.cond.128

do.cond.128:                                      ; preds = %if.end.127
  br label %do.end.129

do.end.129:                                       ; preds = %do.cond.128
  %arraydecay130 = getelementptr inbounds [54 x i8], [54 x i8]* %data57, i32 0, i32 0
  %add.ptr131 = getelementptr inbounds i8, i8* %arraydecay130, i64 4
  %arrayidx132 = getelementptr inbounds i8, i8* %add.ptr131, i64 0
  %104 = load i8, i8* %arrayidx132, align 1, !tbaa !20
  %conv133 = zext i8 %104 to i32
  %shl134 = shl i32 %conv133, 8
  %arraydecay135 = getelementptr inbounds [54 x i8], [54 x i8]* %data57, i32 0, i32 0
  %add.ptr136 = getelementptr inbounds i8, i8* %arraydecay135, i64 4
  %arrayidx137 = getelementptr inbounds i8, i8* %add.ptr136, i64 1
  %105 = load i8, i8* %arrayidx137, align 1, !tbaa !20
  %conv138 = zext i8 %105 to i32
  %add139 = add i32 %shl134, %conv138
  store i32 %add139, i32* %numGlyphs, align 4, !tbaa !5
  %106 = load i64, i64* %start, align 8, !tbaa !7
  store i64 %106, i64* %maxp_start, align 8, !tbaa !7
  %107 = load i32, i32* %length, align 4, !tbaa !5
  store i32 %107, i32* %maxp_length, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.140:                                        ; preds = %do.end.73
  %108 = load i32, i32* %writing_cid, align 4, !tbaa !5
  %tobool141 = icmp ne i32 %108, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %sw.bb.140
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.143:                                       ; preds = %sw.bb.140
  store i32 1, i32* %have_name, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.144:                                        ; preds = %do.end.73
  %109 = load i32, i32* %writing_cid, align 4, !tbaa !5
  %tobool145 = icmp ne i32 %109, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %sw.bb.144
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %sw.bb.144
  store i32 1, i32* %have_OS_2, align 4, !tbaa !5
  %110 = load i32, i32* %length, align 4, !tbaa !5
  %conv148 = zext i32 %110 to i64
  %cmp149 = icmp ugt i64 %conv148, 96
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.147
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.152:                                       ; preds = %if.end.147
  %111 = load i64, i64* %start, align 8, !tbaa !7
  store i64 %111, i64* %OS_2_start, align 8, !tbaa !7
  %112 = load i32, i32* %length, align 4, !tbaa !5
  store i32 %112, i32* %OS_2_length, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.153:                                        ; preds = %do.end.73
  store i32 1, i32* %have_post, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.154:                                        ; preds = %do.end.73
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 0
  store i32 1, i32* %arrayidx155, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.156:                                        ; preds = %do.end.73
  %arrayidx157 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 1
  store i32 1, i32* %arrayidx157, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.158:                                        ; preds = %do.end.73, %do.end.73
  %113 = load i32, i32* %generate_mtx, align 4, !tbaa !5
  %tobool159 = icmp ne i32 %113, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.158
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %sw.bb.158
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %do.end.73, %do.end.73, %do.end.73, %do.end.73, %do.end.73, %if.end.161
  br label %sw.epilog

sw.bb.163:                                        ; preds = %do.end.73, %do.end.73, %do.end.73
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %do.end.73
  %114 = load i32, i32* %writing_cid, align 4, !tbaa !5
  %tobool164 = icmp ne i32 %114, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %sw.default
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.166:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.166, %sw.bb.162, %sw.bb.156, %sw.bb.154, %sw.bb.153, %if.end.143, %do.end.129, %if.end.114
  %115 = load i32, i32* %numTables, align 4, !tbaa !5
  %inc = add i32 %115, 1
  store i32 %inc, i32* %numTables, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.165, %sw.bb.163, %if.then.160, %if.end.152, %if.then.151, %if.then.146, %if.then.142, %if.then.126, %if.then.120, %if.then.113, %sw.bb.109, %do.end.104, %if.then.101, %if.then.95, %if.then.89, %if.then.70, %if.then.60
  %116 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i64* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast [54 x i8]* %data57 to i8*
  call void @llvm.lifetime.end(i64 54, i8* %118) #1
  %119 = bitcast [16 x i8]* %tab to i8*
  call void @llvm.lifetime.end(i64 16, i8* %119) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.837 [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %inc170 = add i32 %120, 1
  store i32 %inc170, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %max_glyph, align 8, !tbaa !7
  store i32 0, i32* %glyf_length, align 4, !tbaa !5
  br label %for.cond.171

for.cond.171:                                     ; preds = %cleanup.cont.213, %for.end
  %121 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call172 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %121, i64* %glyph) #8
  store i32 %call172, i32* %code, align 4, !tbaa !5
  %cmp173 = icmp ne i32 %call172, 1
  br i1 %cmp173, label %for.body.175, label %for.end.214

for.body.175:                                     ; preds = %for.cond.171
  %122 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %123) #1
  %124 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp176 = icmp ult i64 %124, 2147483648
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %for.body.175
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end.179:                                       ; preds = %for.body.175
  %125 = load i64, i64* %glyph, align 8, !tbaa !7
  %and180 = and i64 %125, -3221225473
  %conv181 = trunc i64 %and180 to i32
  store i32 %conv181, i32* %glyph_index, align 4, !tbaa !5
  br label %do.body.182

do.body.182:                                      ; preds = %if.end.179
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.182
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  %126 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %126, i32 0, i32 2
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %memory185 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 3
  store %struct.gs_memory_s* %127, %struct.gs_memory_s** %memory185, align 8, !tbaa !28
  %128 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data186 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %128, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data186, i32 0, i32 3
  %129 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !31
  %130 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %131 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %call187 = call i32 %129(%struct.gs_font_type42_s* %130, i32 %131, %struct.gs_glyph_data_s* %glyph_data) #8
  store i32 %call187, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp sge i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.209

if.then.190:                                      ; preds = %do.end.184
  %132 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size191 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %133 = load i32, i32* %size191, align 4, !tbaa !32
  %add192 = add i32 %133, 1
  %and193 = and i32 %add192, -2
  store i32 %and193, i32* %l, align 4, !tbaa !5
  %134 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %135 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %conv194 = zext i32 %135 to i64
  %cmp195 = icmp ugt i64 %134, %conv194
  br i1 %cmp195, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.190
  %136 = load i64, i64* %max_glyph, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.then.190
  %137 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %conv197 = zext i32 %137 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %136, %cond.true ], [ %conv197, %cond.false ]
  store i64 %cond, i64* %max_glyph, align 8, !tbaa !7
  %138 = load i32, i32* %l, align 4, !tbaa !5
  %139 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %add198 = add i32 %139, %138
  store i32 %add198, i32* %glyf_length, align 4, !tbaa !5
  %140 = load i32, i32* %l, align 4, !tbaa !5
  %bits199 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size200 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits199, i32 0, i32 1
  %141 = load i32, i32* %size200, align 4, !tbaa !32
  %cmp201 = icmp ne i32 %140, %141
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %cond.end
  %142 = load i64, i64* %glyf_alignment, align 8, !tbaa !7
  %inc204 = add i64 %142, 1
  store i64 %inc204, i64* %glyf_alignment, align 8, !tbaa !7
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %cond.end
  br label %do.body.206

do.body.206:                                      ; preds = %if.end.205
  br label %do.cond.207

do.cond.207:                                      ; preds = %do.body.206
  br label %do.end.208

do.end.208:                                       ; preds = %do.cond.207
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  %143 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.208, %do.end.184
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %if.end.209, %if.then.178
  %144 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  call void @llvm.lifetime.end(i64 48, i8* %144) #1
  %145 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %cleanup.dest.212 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.212, label %cleanup.837 [
    i32 0, label %cleanup.cont.213
  ]

cleanup.cont.213:                                 ; preds = %cleanup.210
  br label %for.cond.171

for.end.214:                                      ; preds = %for.cond.171
  %146 = load i32, i32* %writing_stripped, align 4, !tbaa !5
  %tobool215 = icmp ne i32 %146, 0
  br i1 %tobool215, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %for.end.214
  store i32 0, i32* %glyf_length, align 4, !tbaa !5
  store i32 0, i32* %loca_length, align 4, !tbaa !5
  br label %if.end.254

if.else.217:                                      ; preds = %for.end.214
  %147 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %add218 = add i64 %147, 1
  %148 = load i32, i32* %numGlyphs, align 4, !tbaa !5
  %conv219 = zext i32 %148 to i64
  %cmp220 = icmp ugt i64 %add218, %conv219
  br i1 %cmp220, label %if.then.222, label %if.else.238

if.then.222:                                      ; preds = %if.else.217
  %149 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %add223 = add i64 %149, 1
  %conv224 = trunc i64 %add223 to i32
  store i32 %conv224, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %150 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %cmp225 = icmp sgt i32 %150, 65535
  br i1 %cmp225, label %if.then.227, label %if.end.233

if.then.227:                                      ; preds = %if.then.222
  %151 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %151, i32 0, i32 2
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory228, align 8, !tbaa !21
  %call229 = call i8* @gs_program_name() #8
  %call230 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %152, i8* %call229, i64 %call230) #8
  %153 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %153, i32 0, i32 2
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !21
  %155 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %call232 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %154, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i32 %155) #8
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.233:                                       ; preds = %if.then.222
  %156 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %add234 = add nsw i32 %156, 1
  %shl235 = shl i32 %add234, 2
  store i32 %shl235, i32* %loca_length, align 4, !tbaa !5
  %arraydecay236 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i32 0
  call void @remove_table(i8* %arraydecay236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32* %numTables) #8
  %arraydecay237 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i32 0
  call void @remove_table(i8* %arraydecay237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %numTables) #8
  br label %if.end.241

if.else.238:                                      ; preds = %if.else.217
  %157 = load i32, i32* %numGlyphs, align 4, !tbaa !5
  %add239 = add i32 %157, 1
  %shl240 = shl i32 %add239, 2
  store i32 %shl240, i32* %loca_length, align 4, !tbaa !5
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.238, %if.end.233
  %158 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %cmp242 = icmp ugt i32 %158, 131068
  %conv243 = zext i1 %cmp242 to i32
  store i32 %conv243, i32* %indexToLocFormat, align 4, !tbaa !5
  %159 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  %tobool244 = icmp ne i32 %159, 0
  br i1 %tobool244, label %if.else.246, label %if.then.245

if.then.245:                                      ; preds = %if.end.241
  %160 = load i32, i32* %loca_length, align 4, !tbaa !5
  %shr = lshr i32 %160, 1
  store i32 %shr, i32* %loca_length, align 4, !tbaa !5
  br label %if.end.249

if.else.246:                                      ; preds = %if.end.241
  %161 = load i64, i64* %glyf_alignment, align 8, !tbaa !7
  %162 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %conv247 = zext i32 %162 to i64
  %sub = sub i64 %conv247, %161
  %conv248 = trunc i64 %sub to i32
  store i32 %conv248, i32* %glyf_length, align 4, !tbaa !5
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.246, %if.then.245
  %163 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %cmp250 = icmp eq i32 %163, 0
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %if.end.249
  store i32 1, i32* %glyf_length, align 4, !tbaa !5
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %if.end.249
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.then.216
  br label %do.body.255

do.body.255:                                      ; preds = %if.end.254
  br label %do.cond.256

do.cond.256:                                      ; preds = %do.body.255
  br label %do.end.257

do.end.257:                                       ; preds = %do.cond.256
  %164 = load i32, i32* %have_post, align 4, !tbaa !5
  %tobool258 = icmp ne i32 %164, 0
  br i1 %tobool258, label %if.end.272, label %if.then.259

if.then.259:                                      ; preds = %do.end.257
  %165 = bitcast %struct.post_s* %post to i8*
  %call260 = call i8* @memset(i8* %165, i32 0, i64 1040) #7
  %166 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and261 = and i32 %166, 4
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.then.263, label %if.else.269

if.then.263:                                      ; preds = %if.then.259
  %167 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %call264 = call i32 @compute_post(%struct.gs_font_s* %167, %struct.post_s* %post) #8
  store i32 %call264, i32* %code, align 4, !tbaa !5
  %168 = load i32, i32* %code, align 4, !tbaa !5
  %cmp265 = icmp slt i32 %168, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.263
  %169 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.268:                                       ; preds = %if.then.263
  br label %if.end.271

if.else.269:                                      ; preds = %if.then.259
  %length270 = getelementptr inbounds %struct.post_s, %struct.post_s* %post, i32 0, i32 3
  store i32 32, i32* %length270, align 4, !tbaa !33
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.end.268
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %do.end.257
  %arraydecay273 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i32 0
  %add.ptr274 = getelementptr inbounds i8, i8* %arraydecay273, i64 8
  %call275 = call i8* @memset(i8* %add.ptr274, i32 0, i64 4) #7
  %arrayidx276 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i64 50
  store i8 0, i8* %arrayidx276, align 1, !tbaa !20
  %170 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  %conv277 = trunc i32 %170 to i8
  %arrayidx278 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i64 51
  store i8 %conv277, i8* %arrayidx278, align 1, !tbaa !20
  %arraydecay279 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i32 0
  %add.ptr280 = getelementptr inbounds i8, i8* %arraydecay279, i64 54
  %call281 = call i8* @memset(i8* %add.ptr280, i32 0, i64 2) #7
  store i64 0, i64* %head_checksum, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.290, %if.end.272
  %171 = load i32, i32* %i, align 4, !tbaa !5
  %cmp283 = icmp ult i32 %171, 56
  br i1 %cmp283, label %for.body.285, label %for.end.292

for.body.285:                                     ; preds = %for.cond.282
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom286 = zext i32 %172 to i64
  %arrayidx287 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i64 %idxprom286
  %call288 = call i64 @get_u32_msb(i8* %arrayidx287) #8
  %173 = load i64, i64* %head_checksum, align 8, !tbaa !7
  %add289 = add i64 %173, %call288
  store i64 %add289, i64* %head_checksum, align 8, !tbaa !7
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.body.285
  %174 = load i32, i32* %i, align 4, !tbaa !5
  %add291 = add i32 %174, 4
  store i32 %add291, i32* %i, align 4, !tbaa !5
  br label %for.cond.282

for.end.292:                                      ; preds = %for.cond.282
  %175 = load i32, i32* %numTables, align 4, !tbaa !5
  %add293 = add i32 %175, 1
  %176 = load i32, i32* %writing_stripped, align 4, !tbaa !5
  %tobool294 = icmp ne i32 %176, 0
  %lnot295 = xor i1 %tobool294, true
  %lnot.ext296 = zext i1 %lnot295 to i32
  %mul297 = mul nsw i32 %lnot.ext296, 2
  %add298 = add i32 %add293, %mul297
  %177 = load i32, i32* %generate_mtx, align 4, !tbaa !5
  %arrayidx299 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 0
  %178 = load i32, i32* %arrayidx299, align 4, !tbaa !5
  %arrayidx300 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 1
  %179 = load i32, i32* %arrayidx300, align 4, !tbaa !5
  %add301 = add nsw i32 %178, %179
  %mul302 = mul nsw i32 %177, %add301
  %add303 = add i32 %add298, %mul302
  %180 = load i32, i32* %have_OS_2, align 4, !tbaa !5
  %tobool304 = icmp ne i32 %180, 0
  %lnot305 = xor i1 %tobool304, true
  %lnot.ext306 = zext i1 %lnot305 to i32
  %add307 = add i32 %add303, %lnot.ext306
  %181 = load i32, i32* %have_cmap, align 4, !tbaa !5
  %tobool308 = icmp ne i32 %181, 0
  %lnot309 = xor i1 %tobool308, true
  %lnot.ext310 = zext i1 %lnot309 to i32
  %add311 = add i32 %add307, %lnot.ext310
  %182 = load i32, i32* %have_name, align 4, !tbaa !5
  %tobool312 = icmp ne i32 %182, 0
  %lnot313 = xor i1 %tobool312, true
  %lnot.ext314 = zext i1 %lnot313 to i32
  %add315 = add i32 %add311, %lnot.ext314
  %183 = load i32, i32* %have_post, align 4, !tbaa !5
  %tobool316 = icmp ne i32 %183, 0
  %lnot317 = xor i1 %tobool316, true
  %lnot.ext318 = zext i1 %lnot317 to i32
  %add319 = add i32 %add315, %lnot.ext318
  store i32 %add319, i32* %numTables_out, align 4, !tbaa !5
  %184 = load i32, i32* %numTables_out, align 4, !tbaa !5
  %cmp320 = icmp uge i32 %184, 40
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %for.end.292
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.323:                                       ; preds = %for.end.292
  %185 = load i32, i32* %numTables_out, align 4, !tbaa !5
  %mul324 = mul i32 %185, 16
  %add325 = add i32 12, %mul324
  %conv326 = zext i32 %add325 to i64
  store i64 %conv326, i64* %offset, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.341, %if.end.323
  %186 = load i32, i32* %i, align 4, !tbaa !5
  %187 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp328 = icmp ult i32 %186, %187
  br i1 %cmp328, label %for.body.330, label %for.end.343

for.body.330:                                     ; preds = %for.cond.327
  %188 = bitcast i8** %tab331 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load i32, i32* %i, align 4, !tbaa !5
  %mul332 = mul i32 %189, 16
  %idxprom333 = zext i32 %mul332 to i64
  %arrayidx334 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i64 %idxprom333
  store i8* %arrayidx334, i8** %tab331, align 8, !tbaa !1
  %190 = bitcast i64* %length335 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #1
  %191 = load i8*, i8** %tab331, align 8, !tbaa !1
  %add.ptr336 = getelementptr inbounds i8, i8* %191, i64 12
  %call337 = call i64 @get_u32_msb(i8* %add.ptr336) #8
  store i64 %call337, i64* %length335, align 8, !tbaa !7
  %192 = load i64, i64* %length335, align 8, !tbaa !7
  %add338 = add i64 %192, 3
  %and339 = and i64 %add338, -4
  %193 = load i64, i64* %offset, align 8, !tbaa !7
  %add340 = add i64 %193, %and339
  store i64 %add340, i64* %offset, align 8, !tbaa !7
  %194 = bitcast i64* %length335 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i8** %tab331 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.body.330
  %196 = load i32, i32* %i, align 4, !tbaa !5
  %inc342 = add i32 %196, 1
  store i32 %inc342, i32* %i, align 4, !tbaa !5
  br label %for.cond.327

for.end.343:                                      ; preds = %for.cond.327
  %197 = bitcast i8** %tab344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  %198 = load i32, i32* %numTables, align 4, !tbaa !5
  %mul345 = mul i32 %198, 16
  %idxprom346 = zext i32 %mul345 to i64
  %arrayidx347 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i64 %idxprom346
  store i8* %arrayidx347, i8** %tab344, align 8, !tbaa !1
  %199 = load i32, i32* %writing_stripped, align 4, !tbaa !5
  %tobool348 = icmp ne i32 %199, 0
  br i1 %tobool348, label %if.end.358, label %if.then.349

if.then.349:                                      ; preds = %for.end.343
  %200 = load i64, i64* %offset, align 8, !tbaa !7
  %conv350 = trunc i64 %200 to i32
  %glyf = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 0
  store i32 %conv350, i32* %glyf, align 4, !tbaa !35
  %201 = load i8*, i8** %tab344, align 8, !tbaa !1
  %202 = load i64, i64* %glyf_checksum, align 8, !tbaa !7
  %203 = load i64, i64* %offset, align 8, !tbaa !7
  %204 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %call351 = call i64 @put_table(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 %202, i64 %203, i32 %204) #8
  store i64 %call351, i64* %offset, align 8, !tbaa !7
  %205 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr352 = getelementptr inbounds i8, i8* %205, i64 16
  store i8* %add.ptr352, i8** %tab344, align 8, !tbaa !1
  %206 = load i64, i64* %offset, align 8, !tbaa !7
  %conv353 = trunc i64 %206 to i32
  %loca = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 1
  store i32 %conv353, i32* %loca, align 4, !tbaa !37
  %207 = load i8*, i8** %tab344, align 8, !tbaa !1
  %208 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  %idxprom354 = sext i32 %208 to i64
  %arrayidx355 = getelementptr inbounds [2 x i64], [2 x i64]* %loca_checksum, i32 0, i64 %idxprom354
  %209 = load i64, i64* %arrayidx355, align 8, !tbaa !7
  %210 = load i64, i64* %offset, align 8, !tbaa !7
  %211 = load i32, i32* %loca_length, align 4, !tbaa !5
  %call356 = call i64 @put_table(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 %209, i64 %210, i32 %211) #8
  store i64 %call356, i64* %offset, align 8, !tbaa !7
  %212 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr357 = getelementptr inbounds i8, i8* %212, i64 16
  store i8* %add.ptr357, i8** %tab344, align 8, !tbaa !1
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.349, %for.end.343
  %213 = load i32, i32* %have_cmap, align 4, !tbaa !5
  %tobool359 = icmp ne i32 %213, 0
  br i1 %tobool359, label %if.end.366, label %if.then.360

if.then.360:                                      ; preds = %if.end.358
  %214 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %215 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %add361 = add i64 3221225472, %215
  %216 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call362 = call i32 @size_cmap(%struct.gs_font_s* %214, i32 61440, i32 256, i64 %add361, i32 %216) #8
  store i32 %call362, i32* %cmap_length, align 4, !tbaa !5
  %217 = load i64, i64* %offset, align 8, !tbaa !7
  %conv363 = trunc i64 %217 to i32
  %cmap = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 2
  store i32 %conv363, i32* %cmap, align 4, !tbaa !38
  %218 = load i8*, i8** %tab344, align 8, !tbaa !1
  %219 = load i64, i64* %offset, align 8, !tbaa !7
  %220 = load i32, i32* %cmap_length, align 4, !tbaa !5
  %call364 = call i64 @put_table(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 0, i64 %219, i32 %220) #8
  store i64 %call364, i64* %offset, align 8, !tbaa !7
  %221 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr365 = getelementptr inbounds i8, i8* %221, i64 16
  store i8* %add.ptr365, i8** %tab344, align 8, !tbaa !1
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.360, %if.end.358
  %222 = load i32, i32* %have_name, align 4, !tbaa !5
  %tobool367 = icmp ne i32 %222, 0
  br i1 %tobool367, label %if.end.373, label %if.then.368

if.then.368:                                      ; preds = %if.end.366
  %223 = load i64, i64* %offset, align 8, !tbaa !7
  %conv369 = trunc i64 %223 to i32
  %name = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 3
  store i32 %conv369, i32* %name, align 4, !tbaa !39
  %224 = load i8*, i8** %tab344, align 8, !tbaa !1
  %225 = load i64, i64* %offset, align 8, !tbaa !7
  %call370 = call i32 @size_name(%struct.gs_const_string_s* %font_name) #8
  %call371 = call i64 @put_table(i8* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 0, i64 %225, i32 %call370) #8
  store i64 %call371, i64* %offset, align 8, !tbaa !7
  %226 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr372 = getelementptr inbounds i8, i8* %226, i64 16
  store i8* %add.ptr372, i8** %tab344, align 8, !tbaa !1
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.368, %if.end.366
  %227 = load i32, i32* %no_generate, align 4, !tbaa !5
  %tobool374 = icmp ne i32 %227, 0
  br i1 %tobool374, label %if.end.379, label %if.then.375

if.then.375:                                      ; preds = %if.end.373
  %228 = load i64, i64* %offset, align 8, !tbaa !7
  %conv376 = trunc i64 %228 to i32
  %os_2 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 4
  store i32 %conv376, i32* %os_2, align 4, !tbaa !40
  %229 = load i8*, i8** %tab344, align 8, !tbaa !1
  %230 = load i64, i64* %offset, align 8, !tbaa !7
  %231 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %call377 = call i64 @put_table(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 0, i64 %230, i32 %231) #8
  store i64 %call377, i64* %offset, align 8, !tbaa !7
  %232 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr378 = getelementptr inbounds i8, i8* %232, i64 16
  store i8* %add.ptr378, i8** %tab344, align 8, !tbaa !1
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.375, %if.end.373
  %233 = load i32, i32* %generate_mtx, align 4, !tbaa !5
  %tobool380 = icmp ne i32 %233, 0
  br i1 %tobool380, label %if.then.381, label %if.end.406

if.then.381:                                      ; preds = %if.end.379
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.403, %if.then.381
  %234 = load i32, i32* %i, align 4, !tbaa !5
  %cmp383 = icmp ult i32 %234, 2
  br i1 %cmp383, label %for.body.385, label %for.end.405

for.body.385:                                     ; preds = %for.cond.382
  %235 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom386 = zext i32 %235 to i64
  %arrayidx387 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 %idxprom386
  %236 = load i32, i32* %arrayidx387, align 4, !tbaa !5
  %tobool388 = icmp ne i32 %236, 0
  br i1 %tobool388, label %if.then.389, label %if.end.402

if.then.389:                                      ; preds = %for.body.385
  %237 = load i64, i64* %offset, align 8, !tbaa !7
  %conv390 = trunc i64 %237 to i32
  %238 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom391 = zext i32 %238 to i64
  %mtx392 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 5
  %arrayidx393 = getelementptr inbounds [2 x i32], [2 x i32]* %mtx392, i32 0, i64 %idxprom391
  store i32 %conv390, i32* %arrayidx393, align 4, !tbaa !5
  %239 = load i8*, i8** %tab344, align 8, !tbaa !1
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %tobool394 = icmp ne i32 %240, 0
  %cond395 = select i1 %tobool394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)
  %241 = load i64, i64* %offset, align 8, !tbaa !7
  %242 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %243 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom396 = zext i32 %243 to i64
  %arrayidx397 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %mtx, i32 0, i64 %idxprom396
  %244 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %conv398 = trunc i64 %244 to i32
  %245 = load i32, i32* %i, align 4, !tbaa !5
  %call399 = call i32 @size_mtx(%struct.gs_font_type42_s* %242, %struct.gs_type42_mtx_s* %arrayidx397, i32 %conv398, i32 %245) #8
  %call400 = call i64 @put_table(i8* %239, i8* %cond395, i64 0, i64 %241, i32 %call399) #8
  store i64 %call400, i64* %offset, align 8, !tbaa !7
  %246 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr401 = getelementptr inbounds i8, i8* %246, i64 16
  store i8* %add.ptr401, i8** %tab344, align 8, !tbaa !1
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.389, %for.body.385
  br label %for.inc.403

for.inc.403:                                      ; preds = %if.end.402
  %247 = load i32, i32* %i, align 4, !tbaa !5
  %inc404 = add i32 %247, 1
  store i32 %inc404, i32* %i, align 4, !tbaa !5
  br label %for.cond.382

for.end.405:                                      ; preds = %for.cond.382
  br label %if.end.406

if.end.406:                                       ; preds = %for.end.405, %if.end.379
  %248 = load i32, i32* %have_post, align 4, !tbaa !5
  %tobool407 = icmp ne i32 %248, 0
  br i1 %tobool407, label %if.end.414, label %if.then.408

if.then.408:                                      ; preds = %if.end.406
  %249 = load i64, i64* %offset, align 8, !tbaa !7
  %conv409 = trunc i64 %249 to i32
  %post410 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 6
  store i32 %conv409, i32* %post410, align 4, !tbaa !41
  %250 = load i8*, i8** %tab344, align 8, !tbaa !1
  %251 = load i64, i64* %offset, align 8, !tbaa !7
  %length411 = getelementptr inbounds %struct.post_s, %struct.post_s* %post, i32 0, i32 3
  %252 = load i32, i32* %length411, align 4, !tbaa !33
  %call412 = call i64 @put_table(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 0, i64 %251, i32 %252) #8
  store i64 %call412, i64* %offset, align 8, !tbaa !7
  %253 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr413 = getelementptr inbounds i8, i8* %253, i64 16
  store i8* %add.ptr413, i8** %tab344, align 8, !tbaa !1
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.408, %if.end.406
  %254 = load i64, i64* %offset, align 8, !tbaa !7
  %conv415 = trunc i64 %254 to i32
  %head416 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 7
  store i32 %conv415, i32* %head416, align 4, !tbaa !42
  %255 = load i8*, i8** %tab344, align 8, !tbaa !1
  %256 = load i64, i64* %head_checksum, align 8, !tbaa !7
  %257 = load i64, i64* %offset, align 8, !tbaa !7
  %call417 = call i64 @put_table(i8* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 %256, i64 %257, i32 54) #8
  store i64 %call417, i64* %offset, align 8, !tbaa !7
  %258 = load i8*, i8** %tab344, align 8, !tbaa !1
  %add.ptr418 = getelementptr inbounds i8, i8* %258, i64 16
  store i8* %add.ptr418, i8** %tab344, align 8, !tbaa !1
  %259 = bitcast i8** %tab344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = load i32, i32* %numTables_out, align 4, !tbaa !5
  store i32 %260, i32* %numTables, align 4, !tbaa !5
  %261 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call419 = call i32 @stream_write(%struct.stream_s* %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @psf_write_truetype_data.version, i32 0, i32 0), i32 4) #8
  %262 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %263 = load i32, i32* %numTables, align 4, !tbaa !5
  call void @put_ushort(%struct.stream_s* %262, i32 %263) #8
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.420

for.cond.420:                                     ; preds = %for.inc.428, %if.end.414
  %264 = load i32, i32* %i, align 4, !tbaa !5
  %shl421 = shl i32 1, %264
  %265 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp422 = icmp ule i32 %shl421, %265
  br i1 %cmp422, label %for.body.424, label %for.end.430

for.body.424:                                     ; preds = %for.cond.420
  br label %do.body.425

do.body.425:                                      ; preds = %for.body.424
  br label %do.cond.426

do.cond.426:                                      ; preds = %do.body.425
  br label %do.end.427

do.end.427:                                       ; preds = %do.cond.426
  br label %for.inc.428

for.inc.428:                                      ; preds = %do.end.427
  %266 = load i32, i32* %i, align 4, !tbaa !5
  %inc429 = add i32 %266, 1
  store i32 %inc429, i32* %i, align 4, !tbaa !5
  br label %for.cond.420

for.end.430:                                      ; preds = %for.cond.420
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add i32 %267, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %268 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %269 = load i32, i32* %i, align 4, !tbaa !5
  %shl431 = shl i32 16, %269
  call void @put_ushort(%struct.stream_s* %268, i32 %shl431) #8
  %270 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %271 = load i32, i32* %i, align 4, !tbaa !5
  call void @put_ushort(%struct.stream_s* %270, i32 %271) #8
  %272 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %273 = load i32, i32* %numTables, align 4, !tbaa !5
  %mul432 = mul i32 %273, 16
  %274 = load i32, i32* %i, align 4, !tbaa !5
  %shl433 = shl i32 16, %274
  %sub434 = sub i32 %mul432, %shl433
  call void @put_ushort(%struct.stream_s* %272, i32 %sub434) #8
  %arraydecay435 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i32 0
  %275 = load i32, i32* %numTables, align 4, !tbaa !5
  %conv436 = zext i32 %275 to i64
  call void @qsort(i8* %arraydecay435, i64 %conv436, i64 16, i32 (i8*, i8*)* @compare_table_tags) #8
  %276 = load i32, i32* %numTables, align 4, !tbaa !5
  %mul437 = mul i32 %276, 16
  %add438 = add i32 12, %mul437
  %conv439 = zext i32 %add438 to i64
  store i64 %conv439, i64* %offset, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.474, %for.end.430
  %277 = load i32, i32* %i, align 4, !tbaa !5
  %278 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp441 = icmp ult i32 %277, %278
  br i1 %cmp441, label %for.body.443, label %for.end.476

for.body.443:                                     ; preds = %for.cond.440
  %279 = bitcast i8** %tab444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  %280 = load i32, i32* %i, align 4, !tbaa !5
  %mul445 = mul i32 %280, 16
  %idxprom446 = zext i32 %mul445 to i64
  %arrayidx447 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i64 %idxprom446
  store i8* %arrayidx447, i8** %tab444, align 8, !tbaa !1
  %281 = bitcast [16 x i8]* %entry448 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %281) #1
  %arraydecay449 = getelementptr inbounds [16 x i8], [16 x i8]* %entry448, i32 0, i32 0
  %282 = load i8*, i8** %tab444, align 8, !tbaa !1
  %call450 = call i8* @memcpy(i8* %arraydecay449, i8* %282, i64 16) #7
  %arrayidx451 = getelementptr inbounds [16 x i8], [16 x i8]* %entry448, i32 0, i64 8
  %283 = load i8, i8* %arrayidx451, align 1, !tbaa !20
  %conv452 = zext i8 %283 to i32
  %cmp453 = icmp slt i32 %conv452, 64
  br i1 %cmp453, label %if.then.455, label %if.else.466

if.then.455:                                      ; preds = %for.body.443
  %284 = bitcast i32* %length456 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  %285 = load i8*, i8** %tab444, align 8, !tbaa !1
  %add.ptr457 = getelementptr inbounds i8, i8* %285, i64 12
  %call458 = call i64 @get_u32_msb(i8* %add.ptr457) #8
  %conv459 = trunc i64 %call458 to i32
  store i32 %conv459, i32* %length456, align 4, !tbaa !5
  %arraydecay460 = getelementptr inbounds [16 x i8], [16 x i8]* %entry448, i32 0, i32 0
  %add.ptr461 = getelementptr inbounds i8, i8* %arraydecay460, i64 8
  %286 = load i64, i64* %offset, align 8, !tbaa !7
  call void @put_u32(i8* %add.ptr461, i64 %286) #8
  %287 = load i32, i32* %length456, align 4, !tbaa !5
  %add462 = add i32 %287, 3
  %and463 = and i32 %add462, -4
  %conv464 = zext i32 %and463 to i64
  %288 = load i64, i64* %offset, align 8, !tbaa !7
  %add465 = add i64 %288, %conv464
  store i64 %add465, i64* %offset, align 8, !tbaa !7
  %289 = bitcast i32* %length456 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  br label %if.end.471

if.else.466:                                      ; preds = %for.body.443
  %arrayidx467 = getelementptr inbounds [16 x i8], [16 x i8]* %entry448, i32 0, i64 8
  %290 = load i8, i8* %arrayidx467, align 1, !tbaa !20
  %conv468 = zext i8 %290 to i32
  %sub469 = sub nsw i32 %conv468, 64
  %conv470 = trunc i32 %sub469 to i8
  store i8 %conv470, i8* %arrayidx467, align 1, !tbaa !20
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.466, %if.then.455
  %291 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay472 = getelementptr inbounds [16 x i8], [16 x i8]* %entry448, i32 0, i32 0
  %call473 = call i32 @stream_write(%struct.stream_s* %291, i8* %arraydecay472, i32 16) #8
  %292 = bitcast [16 x i8]* %entry448 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %292) #1
  %293 = bitcast i8** %tab444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  br label %for.inc.474

for.inc.474:                                      ; preds = %if.end.471
  %294 = load i32, i32* %i, align 4, !tbaa !5
  %inc475 = add i32 %294, 1
  store i32 %inc475, i32* %i, align 4, !tbaa !5
  br label %for.cond.440

for.end.476:                                      ; preds = %for.cond.440
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.477

for.cond.477:                                     ; preds = %for.inc.597, %for.end.476
  %295 = load i32, i32* %i, align 4, !tbaa !5
  %296 = load i32, i32* %numTables, align 4, !tbaa !5
  %cmp478 = icmp ult i32 %295, %296
  br i1 %cmp478, label %for.body.480, label %for.end.599

for.body.480:                                     ; preds = %for.cond.477
  %297 = bitcast i8** %tab481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %297) #1
  %298 = load i32, i32* %i, align 4, !tbaa !5
  %mul482 = mul i32 %298, 16
  %idxprom483 = zext i32 %mul482 to i64
  %arrayidx484 = getelementptr inbounds [640 x i8], [640 x i8]* %tables, i32 0, i64 %idxprom483
  store i8* %arrayidx484, i8** %tab481, align 8, !tbaa !1
  %299 = load i8*, i8** %tab481, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds i8, i8* %299, i64 8
  %300 = load i8, i8* %arrayidx485, align 1, !tbaa !20
  %conv486 = zext i8 %300 to i32
  %cmp487 = icmp slt i32 %conv486, 64
  br i1 %cmp487, label %if.then.489, label %if.end.593

if.then.489:                                      ; preds = %for.body.480
  %301 = bitcast i64* %start490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %301) #1
  %302 = load i8*, i8** %tab481, align 8, !tbaa !1
  %add.ptr491 = getelementptr inbounds i8, i8* %302, i64 8
  %call492 = call i64 @get_u32_msb(i8* %add.ptr491) #8
  store i64 %call492, i64* %start490, align 8, !tbaa !7
  %303 = bitcast i32* %length493 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %303) #1
  %304 = load i8*, i8** %tab481, align 8, !tbaa !1
  %add.ptr494 = getelementptr inbounds i8, i8* %304, i64 12
  %call495 = call i64 @get_u32_msb(i8* %add.ptr494) #8
  %conv496 = trunc i64 %call495 to i32
  store i32 %conv496, i32* %length493, align 4, !tbaa !5
  %305 = load i8*, i8** %tab481, align 8, !tbaa !1
  %call497 = call i64 @get_u32_msb(i8* %305) #8
  switch i64 %call497, label %sw.default.586 [
    i64 1330851634, label %sw.bb.498
    i64 1835104368, label %sw.bb.533
    i64 1751672161, label %sw.bb.574
    i64 1986553185, label %sw.bb.574
  ]

sw.bb.498:                                        ; preds = %if.then.489
  %306 = load i32, i32* %have_cmap, align 4, !tbaa !5
  %tobool499 = icmp ne i32 %306, 0
  br i1 %tobool499, label %if.else.530, label %if.then.500

if.then.500:                                      ; preds = %sw.bb.498
  %307 = bitcast [96 x i8]* %pos2 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %307) #1
  %308 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %308) #1
  br label %do.body.501

do.body.501:                                      ; preds = %if.then.500
  %309 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %conv502 = zext i32 %309 to i64
  %cmp503 = icmp ugt i64 %conv502, 96
  br i1 %cmp503, label %if.then.505, label %if.end.506

if.then.505:                                      ; preds = %do.body.501
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.526

if.end.506:                                       ; preds = %do.body.501
  %310 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %311 = load i64, i64* %OS_2_start, align 8, !tbaa !7
  %312 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %arraydecay507 = getelementptr inbounds [96 x i8], [96 x i8]* %pos2, i32 0, i32 0
  %call508 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %310, i64 %311, i32 %312, i8* %arraydecay507) #8
  store i32 %call508, i32* %code, align 4, !tbaa !5
  %313 = load i32, i32* %code, align 4, !tbaa !5
  %cmp509 = icmp slt i32 %313, 0
  br i1 %cmp509, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %if.end.506
  %314 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %314, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.526

if.end.512:                                       ; preds = %if.end.506
  br label %do.cond.513

do.cond.513:                                      ; preds = %if.end.512
  br label %do.end.514

do.end.514:                                       ; preds = %do.cond.513
  %315 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  %arraydecay515 = getelementptr inbounds [96 x i8], [96 x i8]* %pos2, i32 0, i32 0
  %316 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %conv516 = zext i32 %316 to i64
  %cmp517 = icmp ult i64 %conv516, 96
  br i1 %cmp517, label %cond.true.519, label %cond.false.521

cond.true.519:                                    ; preds = %do.end.514
  %317 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %conv520 = zext i32 %317 to i64
  br label %cond.end.522

cond.false.521:                                   ; preds = %do.end.514
  br label %cond.end.522

cond.end.522:                                     ; preds = %cond.false.521, %cond.true.519
  %cond523 = phi i64 [ %conv520, %cond.true.519 ], [ 96, %cond.false.521 ]
  %call524 = call i8* @memcpy(i8* %315, i8* %arraydecay515, i64 %cond523) #7
  call void @update_OS_2(%struct.ttf_OS_2_s* %os2, i32 61440, i32 256) #8
  %318 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %319 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  %320 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %call525 = call i32 @stream_write(%struct.stream_s* %318, i8* %319, i32 %320) #8
  %321 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %322 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %321, i32 %322) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.526

cleanup.526:                                      ; preds = %cond.end.522, %if.then.511, %if.then.505
  %323 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %323) #1
  %324 = bitcast [96 x i8]* %pos2 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %324) #1
  %cleanup.dest.528 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.528, label %cleanup.589 [
    i32 0, label %cleanup.cont.529
  ]

cleanup.cont.529:                                 ; preds = %cleanup.526
  br label %if.end.532

if.else.530:                                      ; preds = %sw.bb.498
  %325 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %326 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %327 = load i64, i64* %OS_2_start, align 8, !tbaa !7
  %328 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  %call531 = call i32 @write_range(%struct.stream_s* %325, %struct.gs_font_type42_s* %326, i64 %327, i32 %328) #8
  %329 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %330 = load i32, i32* %OS_2_length, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %329, i32 %330) #8
  br label %if.end.532

if.end.532:                                       ; preds = %if.else.530, %cleanup.cont.529
  br label %sw.epilog.588

sw.bb.533:                                        ; preds = %if.then.489
  %331 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %tobool534 = icmp ne i32 %331, 0
  br i1 %tobool534, label %if.then.535, label %if.else.571

if.then.535:                                      ; preds = %sw.bb.533
  %332 = bitcast [6 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 6, i8* %332) #1
  br label %do.body.536

do.body.536:                                      ; preds = %if.then.535
  %333 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %334 = load i64, i64* %maxp_start, align 8, !tbaa !7
  %arraydecay537 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %call538 = call i32 @gs_type42_read_data(%struct.gs_font_type42_s* %333, i64 %334, i32 6, i8* %arraydecay537) #8
  store i32 %call538, i32* %code, align 4, !tbaa !5
  %335 = load i32, i32* %code, align 4, !tbaa !5
  %cmp539 = icmp slt i32 %335, 0
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %do.body.536
  %336 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %336, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.568

if.end.542:                                       ; preds = %do.body.536
  br label %do.cond.543

do.cond.543:                                      ; preds = %if.end.542
  br label %do.end.544

do.end.544:                                       ; preds = %do.cond.543
  %arraydecay545 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %add.ptr546 = getelementptr inbounds i8, i8* %arraydecay545, i64 4
  %337 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr546, i32 %337) #8
  %338 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay547 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %339 = load i32, i32* %length493, align 4, !tbaa !5
  %conv548 = zext i32 %339 to i64
  %cmp549 = icmp ult i64 %conv548, 6
  br i1 %cmp549, label %cond.true.551, label %cond.false.553

cond.true.551:                                    ; preds = %do.end.544
  %340 = load i32, i32* %length493, align 4, !tbaa !5
  %conv552 = zext i32 %340 to i64
  br label %cond.end.554

cond.false.553:                                   ; preds = %do.end.544
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.false.553, %cond.true.551
  %cond555 = phi i64 [ %conv552, %cond.true.551 ], [ 6, %cond.false.553 ]
  %conv556 = trunc i64 %cond555 to i32
  %call557 = call i32 @stream_write(%struct.stream_s* %338, i8* %arraydecay547, i32 %conv556) #8
  %341 = load i32, i32* %length493, align 4, !tbaa !5
  %conv558 = zext i32 %341 to i64
  %cmp559 = icmp ugt i64 %conv558, 6
  br i1 %cmp559, label %if.then.561, label %if.end.567

if.then.561:                                      ; preds = %cond.end.554
  %342 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %343 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %344 = load i64, i64* %start490, align 8, !tbaa !7
  %add562 = add i64 %344, 6
  %345 = load i32, i32* %length493, align 4, !tbaa !5
  %conv563 = zext i32 %345 to i64
  %sub564 = sub i64 %conv563, 6
  %conv565 = trunc i64 %sub564 to i32
  %call566 = call i32 @write_range(%struct.stream_s* %342, %struct.gs_font_type42_s* %343, i64 %add562, i32 %conv565) #8
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.561, %cond.end.554
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.568

cleanup.568:                                      ; preds = %if.end.567, %if.then.541
  %346 = bitcast [6 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 6, i8* %346) #1
  %cleanup.dest.569 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.569, label %cleanup.589 [
    i32 0, label %cleanup.cont.570
  ]

cleanup.cont.570:                                 ; preds = %cleanup.568
  br label %if.end.573

if.else.571:                                      ; preds = %sw.bb.533
  %347 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %348 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %349 = load i64, i64* %start490, align 8, !tbaa !7
  %350 = load i32, i32* %length493, align 4, !tbaa !5
  %call572 = call i32 @write_range(%struct.stream_s* %347, %struct.gs_font_type42_s* %348, i64 %349, i32 %350) #8
  br label %if.end.573

if.end.573:                                       ; preds = %if.else.571, %cleanup.cont.570
  br label %sw.epilog.588

sw.bb.574:                                        ; preds = %if.then.489, %if.then.489
  %351 = load i32, i32* %generate_mtx, align 4, !tbaa !5
  %tobool575 = icmp ne i32 %351, 0
  br i1 %tobool575, label %if.then.576, label %if.end.585

if.then.576:                                      ; preds = %sw.bb.574
  %352 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %353 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %354 = load i64, i64* %start490, align 8, !tbaa !7
  %355 = load i32, i32* %length493, align 4, !tbaa !5
  %sub577 = sub i32 %355, 2
  %call578 = call i32 @write_range(%struct.stream_s* %352, %struct.gs_font_type42_s* %353, i64 %354, i32 %sub577) #8
  %356 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %357 = load i8*, i8** %tab481, align 8, !tbaa !1
  %arrayidx579 = getelementptr inbounds i8, i8* %357, i64 0
  %358 = load i8, i8* %arrayidx579, align 1, !tbaa !20
  %conv580 = zext i8 %358 to i32
  %cmp581 = icmp eq i32 %conv580, 118
  %conv582 = zext i1 %cmp581 to i32
  %idxprom583 = sext i32 %conv582 to i64
  %arrayidx584 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %mtx, i32 0, i64 %idxprom583
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx584, i32 0, i32 0
  %359 = load i32, i32* %numMetrics, align 4, !tbaa !43
  call void @put_ushort(%struct.stream_s* %356, i32 %359) #8
  br label %sw.epilog.588

if.end.585:                                       ; preds = %sw.bb.574
  br label %sw.default.586

sw.default.586:                                   ; preds = %if.then.489, %if.end.585
  %360 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %361 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %362 = load i64, i64* %start490, align 8, !tbaa !7
  %363 = load i32, i32* %length493, align 4, !tbaa !5
  %call587 = call i32 @write_range(%struct.stream_s* %360, %struct.gs_font_type42_s* %361, i64 %362, i32 %363) #8
  br label %sw.epilog.588

sw.epilog.588:                                    ; preds = %sw.default.586, %if.then.576, %if.end.573, %if.end.532
  %364 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %365 = load i32, i32* %length493, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %364, i32 %365) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.589

cleanup.589:                                      ; preds = %sw.epilog.588, %cleanup.568, %cleanup.526
  %366 = bitcast i32* %length493 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i64* %start490 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %cleanup.dest.591 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.591, label %cleanup.594 [
    i32 0, label %cleanup.cont.592
  ]

cleanup.cont.592:                                 ; preds = %cleanup.589
  br label %if.end.593

if.end.593:                                       ; preds = %cleanup.cont.592, %for.body.480
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.594

cleanup.594:                                      ; preds = %if.end.593, %cleanup.589
  %368 = bitcast i8** %tab481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %cleanup.dest.595 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.595, label %cleanup.837 [
    i32 0, label %cleanup.cont.596
  ]

cleanup.cont.596:                                 ; preds = %cleanup.594
  br label %for.inc.597

for.inc.597:                                      ; preds = %cleanup.cont.596
  %369 = load i32, i32* %i, align 4, !tbaa !5
  %inc598 = add i32 %369, 1
  store i32 %inc598, i32* %i, align 4, !tbaa !5
  br label %for.cond.477

for.end.599:                                      ; preds = %for.cond.477
  %370 = load i32, i32* %writing_stripped, align 4, !tbaa !5
  %tobool600 = icmp ne i32 %370, 0
  br i1 %tobool600, label %if.end.822, label %if.then.601

if.then.601:                                      ; preds = %for.end.599
  %371 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %371) #1
  %372 = load i32, i32* %numGlyphs, align 4, !tbaa !5
  %373 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  %cmp602 = icmp ugt i32 %372, %373
  br i1 %cmp602, label %cond.true.604, label %cond.false.605

cond.true.604:                                    ; preds = %if.then.601
  %374 = load i32, i32* %numGlyphs, align 4, !tbaa !5
  br label %cond.end.606

cond.false.605:                                   ; preds = %if.then.601
  %375 = load i32, i32* %enlarged_numGlyphs, align 4, !tbaa !5
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.605, %cond.true.604
  %cond607 = phi i32 [ %374, %cond.true.604 ], [ %375, %cond.false.605 ]
  %add608 = add i32 %cond607, 1
  store i32 %add608, i32* %n, align 4, !tbaa !5
  %376 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory609 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %376, i32 0, i32 2
  %377 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory609, align 8, !tbaa !21
  %glyf610 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 0
  %378 = load i32, i32* %glyf610, align 4, !tbaa !35
  %conv611 = sext i32 %378 to i64
  %379 = load i64, i64* %start_position, align 8, !tbaa !7
  %add612 = add nsw i64 %conv611, %379
  %380 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call613 = call i64 @stell(%struct.stream_s* %380) #8
  %call614 = call i32 @check_position(%struct.gs_memory_s* %377, i64 %add612, i64 %call613) #8
  %tobool615 = icmp ne i32 %call614, 0
  br i1 %tobool615, label %if.then.616, label %if.end.617

if.then.616:                                      ; preds = %cond.end.606
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.617:                                       ; preds = %cond.end.606
  %381 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %381) #8
  store i64 0, i64* %offset, align 8, !tbaa !7
  br label %for.cond.618

for.cond.618:                                     ; preds = %if.end.659, %if.end.617
  %382 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call619 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %382, i64* %glyph) #8
  %cmp620 = icmp ne i32 %call619, 1
  br i1 %cmp620, label %for.body.622, label %for.end.660

for.body.622:                                     ; preds = %for.cond.618
  %383 = bitcast %struct.gs_glyph_data_s* %glyph_data623 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %383) #1
  %384 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory624 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %384, i32 0, i32 2
  %385 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory624, align 8, !tbaa !21
  %memory625 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data623, i32 0, i32 3
  store %struct.gs_memory_s* %385, %struct.gs_memory_s** %memory625, align 8, !tbaa !28
  %386 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data626 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %386, i32 0, i32 29
  %get_outline627 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data626, i32 0, i32 3
  %387 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline627, align 8, !tbaa !31
  %388 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %389 = load i64, i64* %glyph, align 8, !tbaa !7
  %and628 = and i64 %389, -3221225473
  %conv629 = trunc i64 %and628 to i32
  %call630 = call i32 %387(%struct.gs_font_type42_s* %388, i32 %conv629, %struct.gs_glyph_data_s* %glyph_data623) #8
  store i32 %call630, i32* %code, align 4, !tbaa !5
  %cmp631 = icmp sge i32 %call630, 0
  br i1 %cmp631, label %if.then.633, label %if.end.659

if.then.633:                                      ; preds = %for.body.622
  %390 = bitcast i32* %l634 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %390) #1
  %bits635 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data623, i32 0, i32 0
  %size636 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits635, i32 0, i32 1
  %391 = load i32, i32* %size636, align 4, !tbaa !32
  store i32 %391, i32* %l634, align 4, !tbaa !5
  %392 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %392) #1
  store i32 0, i32* %zero, align 4, !tbaa !5
  %393 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  %tobool637 = icmp ne i32 %393, 0
  br i1 %tobool637, label %if.end.641, label %if.then.638

if.then.638:                                      ; preds = %if.then.633
  %394 = load i32, i32* %l634, align 4, !tbaa !5
  %add639 = add i32 %394, 1
  %and640 = and i32 %add639, -2
  store i32 %and640, i32* %l634, align 4, !tbaa !5
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.638, %if.then.633
  %395 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bits642 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data623, i32 0, i32 0
  %data643 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits642, i32 0, i32 0
  %396 = load i8*, i8** %data643, align 8, !tbaa !45
  %bits644 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data623, i32 0, i32 0
  %size645 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits644, i32 0, i32 1
  %397 = load i32, i32* %size645, align 4, !tbaa !32
  %call646 = call i32 @stream_write(%struct.stream_s* %395, i8* %396, i32 %397) #8
  %bits647 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data623, i32 0, i32 0
  %size648 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits647, i32 0, i32 1
  %398 = load i32, i32* %size648, align 4, !tbaa !32
  %399 = load i32, i32* %l634, align 4, !tbaa !5
  %cmp649 = icmp ult i32 %398, %399
  br i1 %cmp649, label %if.then.651, label %if.end.653

if.then.651:                                      ; preds = %if.end.641
  %400 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %401 = bitcast i32* %zero to i8*
  %call652 = call i32 @stream_write(%struct.stream_s* %400, i8* %401, i32 1) #8
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.651, %if.end.641
  %402 = load i32, i32* %l634, align 4, !tbaa !5
  %conv654 = zext i32 %402 to i64
  %403 = load i64, i64* %offset, align 8, !tbaa !7
  %add655 = add i64 %403, %conv654
  store i64 %add655, i64* %offset, align 8, !tbaa !7
  br label %do.body.656

do.body.656:                                      ; preds = %if.end.653
  br label %do.cond.657

do.cond.657:                                      ; preds = %do.body.656
  br label %do.end.658

do.end.658:                                       ; preds = %do.cond.657
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data623, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  %404 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = bitcast i32* %l634 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  br label %if.end.659

if.end.659:                                       ; preds = %do.end.658, %for.body.622
  %406 = bitcast %struct.gs_glyph_data_s* %glyph_data623 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %406) #1
  br label %for.cond.618

for.end.660:                                      ; preds = %for.cond.618
  br label %do.body.661

do.body.661:                                      ; preds = %for.end.660
  br label %do.cond.662

do.cond.662:                                      ; preds = %do.body.661
  br label %do.end.663

do.end.663:                                       ; preds = %do.cond.662
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.663
  %407 = load i64, i64* %offset, align 8, !tbaa !7
  %408 = load i32, i32* %glyf_length, align 4, !tbaa !5
  %conv664 = zext i32 %408 to i64
  %cmp665 = icmp ult i64 %407, %conv664
  br i1 %cmp665, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %409 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call667 = call i32 @spputc(%struct.stream_s* %409, i8 zeroext 0) #8
  %410 = load i64, i64* %offset, align 8, !tbaa !7
  %inc668 = add i64 %410, 1
  store i64 %inc668, i64* %offset, align 8, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %411 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %412 = load i64, i64* %offset, align 8, !tbaa !7
  %conv669 = trunc i64 %412 to i32
  call void @put_pad(%struct.stream_s* %411, i32 %conv669) #8
  %413 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory670 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %413, i32 0, i32 2
  %414 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory670, align 8, !tbaa !21
  %loca671 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 1
  %415 = load i32, i32* %loca671, align 4, !tbaa !37
  %conv672 = sext i32 %415 to i64
  %416 = load i64, i64* %start_position, align 8, !tbaa !7
  %add673 = add nsw i64 %conv672, %416
  %417 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call674 = call i64 @stell(%struct.stream_s* %417) #8
  %call675 = call i32 @check_position(%struct.gs_memory_s* %414, i64 %add673, i64 %call674) #8
  %tobool676 = icmp ne i32 %call675, 0
  br i1 %tobool676, label %if.then.677, label %if.end.678

if.then.677:                                      ; preds = %while.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.678:                                       ; preds = %while.end
  %418 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %418) #8
  store i64 0, i64* %glyph_prev, align 8, !tbaa !7
  store i64 0, i64* %offset, align 8, !tbaa !7
  br label %for.cond.679

for.cond.679:                                     ; preds = %if.end.714, %if.end.678
  %419 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call680 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %419, i64* %glyph) #8
  %cmp681 = icmp ne i32 %call680, 1
  br i1 %cmp681, label %for.body.683, label %for.end.715

for.body.683:                                     ; preds = %for.cond.679
  %420 = bitcast %struct.gs_glyph_data_s* %glyph_data684 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %420) #1
  %421 = bitcast i32* %glyph_index685 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #1
  %422 = load i64, i64* %glyph, align 8, !tbaa !7
  %and686 = and i64 %422, -3221225473
  %conv687 = trunc i64 %and686 to i32
  store i32 %conv687, i32* %glyph_index685, align 4, !tbaa !5
  br label %for.cond.688

for.cond.688:                                     ; preds = %for.inc.693, %for.body.683
  %423 = load i64, i64* %glyph_prev, align 8, !tbaa !7
  %424 = load i32, i32* %glyph_index685, align 4, !tbaa !5
  %conv689 = zext i32 %424 to i64
  %cmp690 = icmp ule i64 %423, %conv689
  br i1 %cmp690, label %for.body.692, label %for.end.695

for.body.692:                                     ; preds = %for.cond.688
  %425 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %426 = load i64, i64* %offset, align 8, !tbaa !7
  %427 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  call void @put_loca(%struct.stream_s* %425, i64 %426, i32 %427) #8
  br label %for.inc.693

for.inc.693:                                      ; preds = %for.body.692
  %428 = load i64, i64* %glyph_prev, align 8, !tbaa !7
  %inc694 = add i64 %428, 1
  store i64 %inc694, i64* %glyph_prev, align 8, !tbaa !7
  br label %for.cond.688

for.end.695:                                      ; preds = %for.cond.688
  %429 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory696 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %429, i32 0, i32 2
  %430 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory696, align 8, !tbaa !21
  %memory697 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data684, i32 0, i32 3
  store %struct.gs_memory_s* %430, %struct.gs_memory_s** %memory697, align 8, !tbaa !28
  %431 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data698 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %431, i32 0, i32 29
  %get_outline699 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data698, i32 0, i32 3
  %432 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline699, align 8, !tbaa !31
  %433 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %434 = load i32, i32* %glyph_index685, align 4, !tbaa !5
  %call700 = call i32 %432(%struct.gs_font_type42_s* %433, i32 %434, %struct.gs_glyph_data_s* %glyph_data684) #8
  store i32 %call700, i32* %code, align 4, !tbaa !5
  %cmp701 = icmp sge i32 %call700, 0
  br i1 %cmp701, label %if.then.703, label %if.end.714

if.then.703:                                      ; preds = %for.end.695
  %435 = bitcast i32* %l704 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #1
  %bits705 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data684, i32 0, i32 0
  %size706 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits705, i32 0, i32 1
  %436 = load i32, i32* %size706, align 4, !tbaa !32
  store i32 %436, i32* %l704, align 4, !tbaa !5
  %437 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  %tobool707 = icmp ne i32 %437, 0
  br i1 %tobool707, label %if.end.711, label %if.then.708

if.then.708:                                      ; preds = %if.then.703
  %438 = load i32, i32* %l704, align 4, !tbaa !5
  %add709 = add i32 %438, 1
  %and710 = and i32 %add709, -2
  store i32 %and710, i32* %l704, align 4, !tbaa !5
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.708, %if.then.703
  %439 = load i32, i32* %l704, align 4, !tbaa !5
  %conv712 = zext i32 %439 to i64
  %440 = load i64, i64* %offset, align 8, !tbaa !7
  %add713 = add i64 %440, %conv712
  store i64 %add713, i64* %offset, align 8, !tbaa !7
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data684, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  %441 = bitcast i32* %l704 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.711, %for.end.695
  %442 = bitcast i32* %glyph_index685 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
  %443 = bitcast %struct.gs_glyph_data_s* %glyph_data684 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %443) #1
  br label %for.cond.679

for.end.715:                                      ; preds = %for.cond.679
  br label %for.cond.716

for.cond.716:                                     ; preds = %for.inc.721, %for.end.715
  %444 = load i64, i64* %glyph_prev, align 8, !tbaa !7
  %445 = load i32, i32* %n, align 4, !tbaa !5
  %conv717 = sext i32 %445 to i64
  %cmp718 = icmp ult i64 %444, %conv717
  br i1 %cmp718, label %for.body.720, label %for.end.723

for.body.720:                                     ; preds = %for.cond.716
  %446 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %447 = load i64, i64* %offset, align 8, !tbaa !7
  %448 = load i32, i32* %indexToLocFormat, align 4, !tbaa !5
  call void @put_loca(%struct.stream_s* %446, i64 %447, i32 %448) #8
  br label %for.inc.721

for.inc.721:                                      ; preds = %for.body.720
  %449 = load i64, i64* %glyph_prev, align 8, !tbaa !7
  %inc722 = add i64 %449, 1
  store i64 %inc722, i64* %glyph_prev, align 8, !tbaa !7
  br label %for.cond.716

for.end.723:                                      ; preds = %for.cond.716
  %450 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %451 = load i32, i32* %loca_length, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %450, i32 %451) #8
  %452 = load i32, i32* %have_cmap, align 4, !tbaa !5
  %tobool724 = icmp ne i32 %452, 0
  br i1 %tobool724, label %if.end.736, label %if.then.725

if.then.725:                                      ; preds = %for.end.723
  %453 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory726 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %453, i32 0, i32 2
  %454 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory726, align 8, !tbaa !21
  %cmap727 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 2
  %455 = load i32, i32* %cmap727, align 4, !tbaa !38
  %conv728 = sext i32 %455 to i64
  %456 = load i64, i64* %start_position, align 8, !tbaa !7
  %add729 = add nsw i64 %conv728, %456
  %457 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call730 = call i64 @stell(%struct.stream_s* %457) #8
  %call731 = call i32 @check_position(%struct.gs_memory_s* %454, i64 %add729, i64 %call730) #8
  %tobool732 = icmp ne i32 %call731, 0
  br i1 %tobool732, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %if.then.725
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.734:                                       ; preds = %if.then.725
  %458 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %459 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %460 = load i64, i64* %max_glyph, align 8, !tbaa !7
  %add735 = add i64 3221225472, %460
  %461 = load i32, i32* %options.addr, align 4, !tbaa !5
  %462 = load i32, i32* %cmap_length, align 4, !tbaa !5
  call void @write_cmap(%struct.stream_s* %458, %struct.gs_font_s* %459, i32 61440, i32 256, i64 %add735, i32 %461, i32 %462) #8
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.734, %for.end.723
  %463 = load i32, i32* %have_name, align 4, !tbaa !5
  %tobool737 = icmp ne i32 %463, 0
  br i1 %tobool737, label %if.end.748, label %if.then.738

if.then.738:                                      ; preds = %if.end.736
  %464 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory739 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %464, i32 0, i32 2
  %465 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory739, align 8, !tbaa !21
  %name740 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 3
  %466 = load i32, i32* %name740, align 4, !tbaa !39
  %conv741 = sext i32 %466 to i64
  %467 = load i64, i64* %start_position, align 8, !tbaa !7
  %add742 = add nsw i64 %conv741, %467
  %468 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call743 = call i64 @stell(%struct.stream_s* %468) #8
  %call744 = call i32 @check_position(%struct.gs_memory_s* %465, i64 %add742, i64 %call743) #8
  %tobool745 = icmp ne i32 %call744, 0
  br i1 %tobool745, label %if.then.746, label %if.end.747

if.then.746:                                      ; preds = %if.then.738
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.747:                                       ; preds = %if.then.738
  %469 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @write_name(%struct.stream_s* %469, %struct.gs_const_string_s* %font_name) #8
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %if.end.736
  %470 = load i32, i32* %have_OS_2, align 4, !tbaa !5
  %tobool749 = icmp ne i32 %470, 0
  br i1 %tobool749, label %if.end.760, label %if.then.750

if.then.750:                                      ; preds = %if.end.748
  %471 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory751 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %471, i32 0, i32 2
  %472 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory751, align 8, !tbaa !21
  %os_2752 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 4
  %473 = load i32, i32* %os_2752, align 4, !tbaa !40
  %conv753 = sext i32 %473 to i64
  %474 = load i64, i64* %start_position, align 8, !tbaa !7
  %add754 = add nsw i64 %conv753, %474
  %475 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call755 = call i64 @stell(%struct.stream_s* %475) #8
  %call756 = call i32 @check_position(%struct.gs_memory_s* %472, i64 %add754, i64 %call755) #8
  %tobool757 = icmp ne i32 %call756, 0
  br i1 %tobool757, label %if.then.758, label %if.end.759

if.then.758:                                      ; preds = %if.then.750
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.759:                                       ; preds = %if.then.750
  %476 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %477 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  call void @write_OS_2(%struct.stream_s* %476, %struct.gs_font_s* %477, i32 61440, i32 256) #8
  br label %if.end.760

if.end.760:                                       ; preds = %if.end.759, %if.end.748
  %478 = load i32, i32* %generate_mtx, align 4, !tbaa !5
  %tobool761 = icmp ne i32 %478, 0
  br i1 %tobool761, label %if.then.762, label %if.end.791

if.then.762:                                      ; preds = %if.end.760
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.763

for.cond.763:                                     ; preds = %for.inc.788, %if.then.762
  %479 = load i32, i32* %i, align 4, !tbaa !5
  %cmp764 = icmp ult i32 %479, 2
  br i1 %cmp764, label %for.body.766, label %for.end.790

for.body.766:                                     ; preds = %for.cond.763
  %480 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom767 = zext i32 %480 to i64
  %arrayidx768 = getelementptr inbounds [2 x i32], [2 x i32]* %have_hvhea, i32 0, i64 %idxprom767
  %481 = load i32, i32* %arrayidx768, align 4, !tbaa !5
  %tobool769 = icmp ne i32 %481, 0
  br i1 %tobool769, label %if.then.770, label %if.end.787

if.then.770:                                      ; preds = %for.body.766
  %482 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory771 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %482, i32 0, i32 2
  %483 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory771, align 8, !tbaa !21
  %484 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom772 = zext i32 %484 to i64
  %mtx773 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 5
  %arrayidx774 = getelementptr inbounds [2 x i32], [2 x i32]* %mtx773, i32 0, i64 %idxprom772
  %485 = load i32, i32* %arrayidx774, align 4, !tbaa !5
  %conv775 = sext i32 %485 to i64
  %486 = load i64, i64* %start_position, align 8, !tbaa !7
  %add776 = add nsw i64 %conv775, %486
  %487 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call777 = call i64 @stell(%struct.stream_s* %487) #8
  %call778 = call i32 @check_position(%struct.gs_memory_s* %483, i64 %add776, i64 %call777) #8
  %tobool779 = icmp ne i32 %call778, 0
  br i1 %tobool779, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %if.then.770
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.781:                                       ; preds = %if.then.770
  %488 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %489 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %490 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom782 = zext i32 %490 to i64
  %arrayidx783 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %mtx, i32 0, i64 %idxprom782
  %491 = load i32, i32* %i, align 4, !tbaa !5
  call void @write_mtx(%struct.stream_s* %488, %struct.gs_font_type42_s* %489, %struct.gs_type42_mtx_s* %arrayidx783, i32 %491) #8
  %492 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %493 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom784 = zext i32 %493 to i64
  %arrayidx785 = getelementptr inbounds [2 x %struct.gs_type42_mtx_s], [2 x %struct.gs_type42_mtx_s]* %mtx, i32 0, i64 %idxprom784
  %length786 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %arrayidx785, i32 0, i32 2
  %494 = load i32, i32* %length786, align 4, !tbaa !46
  call void @put_pad(%struct.stream_s* %492, i32 %494) #8
  br label %if.end.787

if.end.787:                                       ; preds = %if.end.781, %for.body.766
  br label %for.inc.788

for.inc.788:                                      ; preds = %if.end.787
  %495 = load i32, i32* %i, align 4, !tbaa !5
  %inc789 = add i32 %495, 1
  store i32 %inc789, i32* %i, align 4, !tbaa !5
  br label %for.cond.763

for.end.790:                                      ; preds = %for.cond.763
  br label %if.end.791

if.end.791:                                       ; preds = %for.end.790, %if.end.760
  %496 = load i32, i32* %have_post, align 4, !tbaa !5
  %tobool792 = icmp ne i32 %496, 0
  br i1 %tobool792, label %if.end.818, label %if.then.793

if.then.793:                                      ; preds = %if.end.791
  %497 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory794 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %497, i32 0, i32 2
  %498 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory794, align 8, !tbaa !21
  %post795 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 6
  %499 = load i32, i32* %post795, align 4, !tbaa !41
  %conv796 = sext i32 %499 to i64
  %500 = load i64, i64* %start_position, align 8, !tbaa !7
  %add797 = add nsw i64 %conv796, %500
  %501 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call798 = call i64 @stell(%struct.stream_s* %501) #8
  %call799 = call i32 @check_position(%struct.gs_memory_s* %498, i64 %add797, i64 %call798) #8
  %tobool800 = icmp ne i32 %call799, 0
  br i1 %tobool800, label %if.then.801, label %if.end.802

if.then.801:                                      ; preds = %if.then.793
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.802:                                       ; preds = %if.then.793
  %502 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and803 = and i32 %502, 4
  %tobool804 = icmp ne i32 %and803, 0
  br i1 %tobool804, label %if.then.805, label %if.else.811

if.then.805:                                      ; preds = %if.end.802
  %503 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %504 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %call806 = call i32 @write_post(%struct.stream_s* %503, %struct.gs_font_s* %504, %struct.post_s* %post) #8
  store i32 %call806, i32* %code, align 4, !tbaa !5
  %505 = load i32, i32* %code, align 4, !tbaa !5
  %cmp807 = icmp slt i32 %505, 0
  br i1 %cmp807, label %if.then.809, label %if.end.810

if.then.809:                                      ; preds = %if.then.805
  %506 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %506, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.819

if.end.810:                                       ; preds = %if.then.805
  br label %if.end.817

if.else.811:                                      ; preds = %if.end.802
  %507 = bitcast [34 x i8]* %post_initial to i8*
  call void @llvm.lifetime.start(i64 34, i8* %507) #1
  %arraydecay812 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  %call813 = call i8* @memset(i8* %arraydecay812, i32 0, i64 32) #7
  %arraydecay814 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  call void @put_u32(i8* %arraydecay814, i64 196608) #8
  %508 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay815 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  %call816 = call i32 @stream_write(%struct.stream_s* %508, i8* %arraydecay815, i32 32) #8
  %509 = bitcast [34 x i8]* %post_initial to i8*
  call void @llvm.lifetime.end(i64 34, i8* %509) #1
  br label %if.end.817

if.end.817:                                       ; preds = %if.else.811, %if.end.810
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.end.791
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.819

cleanup.819:                                      ; preds = %if.end.818, %if.then.809, %if.then.801, %if.then.780, %if.then.758, %if.then.746, %if.then.733, %if.then.677, %if.then.616
  %510 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %cleanup.dest.820 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.820, label %cleanup.837 [
    i32 0, label %cleanup.cont.821
  ]

cleanup.cont.821:                                 ; preds = %cleanup.819
  br label %if.end.822

if.end.822:                                       ; preds = %cleanup.cont.821, %for.end.599
  %arraydecay823 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i32 0
  %add.ptr824 = getelementptr inbounds i8, i8* %arraydecay823, i64 8
  %511 = load i64, i64* %file_checksum, align 8, !tbaa !7
  %sub825 = sub i64 2981146554, %511
  call void @put_u32(i8* %add.ptr824, i64 %sub825) #8
  %512 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory826 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %512, i32 0, i32 2
  %513 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory826, align 8, !tbaa !21
  %head827 = getelementptr inbounds %struct.anon, %struct.anon* %subtable_positions, i32 0, i32 7
  %514 = load i32, i32* %head827, align 4, !tbaa !42
  %conv828 = sext i32 %514 to i64
  %515 = load i64, i64* %start_position, align 8, !tbaa !7
  %add829 = add nsw i64 %conv828, %515
  %516 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call830 = call i64 @stell(%struct.stream_s* %516) #8
  %call831 = call i32 @check_position(%struct.gs_memory_s* %513, i64 %add829, i64 %call830) #8
  %tobool832 = icmp ne i32 %call831, 0
  br i1 %tobool832, label %if.then.833, label %if.end.834

if.then.833:                                      ; preds = %if.end.822
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

if.end.834:                                       ; preds = %if.end.822
  %517 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay835 = getelementptr inbounds [56 x i8], [56 x i8]* %head, i32 0, i32 0
  %call836 = call i32 @stream_write(%struct.stream_s* %517, i8* %arraydecay835, i32 56) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.837

cleanup.837:                                      ; preds = %if.end.834, %if.then.833, %cleanup.819, %cleanup.594, %if.then.322, %if.then.267, %if.then.227, %cleanup.210, %cleanup, %if.then.43, %if.then.30, %if.then.18
  %518 = bitcast i32* %TTCFontOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #1
  %519 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = bitcast i32* %enlarged_numGlyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #1
  %521 = bitcast i64* %start_position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %521) #1
  %522 = bitcast %struct.anon* %subtable_positions to i8*
  call void @llvm.lifetime.end(i64 36, i8* %522) #1
  %523 = bitcast i32* %maxp_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i64* %maxp_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %524) #1
  %525 = bitcast i32* %OS_2_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %526 = bitcast i64* %OS_2_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  %527 = bitcast i32* %cmap_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast [2 x i32]* %have_hvhea to i8*
  call void @llvm.lifetime.end(i64 8, i8* %528) #1
  %529 = bitcast i32* %have_post to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast i32* %have_OS_2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
  %531 = bitcast i32* %have_name to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  %532 = bitcast i32* %have_cmap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %532) #1
  %533 = bitcast i32* %no_generate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %533) #1
  %534 = bitcast i32* %generate_mtx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %534) #1
  %535 = bitcast i32* %writing_stripped to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  %536 = bitcast i32* %writing_cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %536) #1
  %537 = bitcast i32* %indexToLocFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  %538 = bitcast i64* %file_checksum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %538) #1
  %539 = bitcast i64* %head_checksum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %539) #1
  %540 = bitcast %struct.post_s* %post to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %540) #1
  %541 = bitcast [2 x %struct.gs_type42_mtx_s]* %mtx to i8*
  call void @llvm.lifetime.end(i64 48, i8* %541) #1
  %542 = bitcast [56 x i8]* %head to i8*
  call void @llvm.lifetime.end(i64 56, i8* %542) #1
  %543 = bitcast i32* %numGlyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %543) #1
  %544 = bitcast i64* %glyf_alignment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %544) #1
  %545 = bitcast [2 x i64]* %loca_checksum to i8*
  call void @llvm.lifetime.end(i64 16, i8* %545) #1
  %546 = bitcast i64* %glyf_checksum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %546) #1
  %547 = bitcast i32* %loca_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %glyf_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast i64* %max_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %549) #1
  %550 = bitcast i64* %glyph_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %550) #1
  %551 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %551) #1
  %552 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %552) #1
  %553 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %553) #1
  %554 = bitcast [640 x i8]* %tables to i8*
  call void @llvm.lifetime.end(i64 640, i8* %554) #1
  %555 = bitcast i32* %numTables_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  %556 = bitcast i32* %numTables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast i32* %numTables_stored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast [12 x i8]* %OffsetTable to i8*
  call void @llvm.lifetime.end(i64 12, i8* %558) #1
  %559 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %559) #1
  %560 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %560) #1
  %561 = load i32, i32* %retval
  ret i32 %561
}

; Function Attrs: nounwind uwtable
define i32 @psf_write_truetype_stripped(%struct.stream_s* %s, %struct.gs_font_type42_s* %pfont) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %no_subset = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %no_subset) #1
  store i8 0, i8* %no_subset, align 1, !tbaa !20
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_s*
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %2, i8* %no_subset, i32 0, i32 1) #8
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %call = call i32 @psf_write_truetype_data(%struct.stream_s* %3, %struct.gs_font_type42_s* %4, i32 4096, %struct.psf_glyph_enum_s* %genum, i32 1, %struct.gs_const_string_s* null) #8
  call void @llvm.lifetime.end(i64 1, i8* %no_subset) #1
  %5 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %5) #1
  ret i32 %call
}

declare void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @psf_write_cid2_font(%struct.stream_s* %s, %struct.gs_font_cid2_s* %pfont, i32 %options, i8* %subset_bits, i32 %subset_size, %struct.gs_const_string_s* %alt_font_name) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_cid2_s*, align 8
  %options.addr = alloca i32, align 4
  %subset_bits.addr = alloca i8*, align 8
  %subset_size.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_cid2_s* %pfont, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store i8* %subset_bits, i8** %subset_bits.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_cid2_s* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %font, align 8, !tbaa !1
  %3 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %5 = load i8*, i8** %subset_bits.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %subset_bits.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %4, i8* %5, i32 %cond, i32 1) #8
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_type42_s*
  %11 = load i32, i32* %options.addr, align 4, !tbaa !5
  %or = or i32 %11, 8192
  %12 = load i8*, i8** %subset_bits.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %12, null
  %conv = zext i1 %cmp to i32
  %13 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %call = call i32 @psf_write_truetype_data(%struct.stream_s* %8, %struct.gs_font_type42_s* %10, i32 %or, %struct.psf_glyph_enum_s* %genum, i32 %conv, %struct.gs_const_string_s* %13) #8
  %14 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %14) #1
  %15 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psf_write_cid2_stripped(%struct.stream_s* %s, %struct.gs_font_cid2_s* %pfont) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_cid2_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %no_subset = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_cid2_s* %pfont, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_cid2_s* %1 to %struct.gs_font_s*
  store %struct.gs_font_s* %2, %struct.gs_font_s** %font, align 8, !tbaa !1
  %3 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %no_subset) #1
  store i8 0, i8* %no_subset, align 1, !tbaa !20
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %4, i8* %no_subset, i32 0, i32 1) #8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_type42_s*
  %call = call i32 @psf_write_truetype_data(%struct.stream_s* %5, %struct.gs_font_type42_s* %7, i32 12288, %struct.psf_glyph_enum_s* %genum, i32 1, %struct.gs_const_string_s* null) #8
  call void @llvm.lifetime.end(i64 1, i8* %no_subset) #1
  %8 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %8) #1
  %9 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i64 @stell(%struct.stream_s*) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_type42_read_data(%struct.gs_font_type42_s*, i64, i32, i8*) #3

declare i64 @get_u32_msb(i8*) #3

declare i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s*, i64*) #3

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @remove_table(i8* %tables, i8* %tag, i32* %numTables) #0 {
entry:
  %tables.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %numTables.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %tab = alloca i8*, align 8
  store i8* %tables, i8** %tables.addr, align 8, !tbaa !1
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  store i32* %numTables, i32** %numTables.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32*, i32** %numTables.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %tables.addr, align 8, !tbaa !1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %6, 16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %tab, align 8, !tbaa !1
  %7 = load i8*, i8** %tab, align 8, !tbaa !1
  %8 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call = call i32 @memcmp(i8* %7, i8* %8, i64 4) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %tab, align 8, !tbaa !1
  %10 = load i8*, i8** %tab, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 16
  %11 = load i32*, i32** %numTables.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub i32 %12, %13
  %sub2 = sub i32 %sub, 1
  %mul3 = mul i32 16, %sub2
  %conv = zext i32 %mul3 to i64
  %call4 = call i8* @memmove(i8* %9, i8* %add.ptr1, i64 %conv) #7
  %14 = load i32*, i32** %numTables.addr, align 8, !tbaa !1
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %dec = add i32 %15, -1
  store i32 %dec, i32* %14, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = bitcast i8** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_post(%struct.gs_font_s* %font, %struct.post_s* %post) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %post.addr = alloca %struct.post_s*, align 8
  %i = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %glyph = alloca i64, align 8
  %mac_index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.post_s* %post, %struct.post_s** %post.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.post_s, %struct.post_s* %1, i32 0, i32 3
  store i32 34, i32* %length, align 4, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %2, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %6 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !47
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %call = call i64 %6(%struct.gs_font_s* %7, i64 %conv, i32 1) #8
  store i64 %call, i64* %glyph, align 8, !tbaa !7
  %9 = bitcast i32* %mac_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %call1 = call i32 @mac_glyph_index(%struct.gs_font_s* %11, i32 %12, %struct.gs_const_string_s* %str, i32* %mac_index) #8
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %mac_index, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %conv7 = trunc i32 %16 to i8
  %17 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.post_s, %struct.post_s* %17, i32 0, i32 1
  %18 = load i32, i32* %count, align 4, !tbaa !48
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.post_s, %struct.post_s* %19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs, i32 0, i64 %idxprom
  %char_index = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx, i32 0, i32 0
  store i8 %conv7, i8* %char_index, align 1, !tbaa !49
  %20 = load i32, i32* %mac_index, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %20, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %21 = load i32, i32* %size, align 4, !tbaa !19
  %add = add i32 %21, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  %22 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count11 = getelementptr inbounds %struct.post_s, %struct.post_s* %22, i32 0, i32 1
  %23 = load i32, i32* %count11, align 4, !tbaa !48
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs13 = getelementptr inbounds %struct.post_s, %struct.post_s* %24, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs13, i32 0, i64 %idxprom12
  %size15 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx14, i32 0, i32 1
  store i8 %conv10, i8* %size15, align 1, !tbaa !52
  %25 = load i64, i64* %glyph, align 8, !tbaa !7
  %sub = sub i64 %25, 3221225472
  %conv16 = trunc i64 %sub to i16
  %26 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count17 = getelementptr inbounds %struct.post_s, %struct.post_s* %26, i32 0, i32 1
  %27 = load i32, i32* %count17, align 4, !tbaa !48
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs19 = getelementptr inbounds %struct.post_s, %struct.post_s* %28, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs19, i32 0, i64 %idxprom18
  %glyph_index = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx20, i32 0, i32 2
  store i16 %conv16, i16* %glyph_index, align 2, !tbaa !53
  %29 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count21 = getelementptr inbounds %struct.post_s, %struct.post_s* %29, i32 0, i32 1
  %30 = load i32, i32* %count21, align 4, !tbaa !48
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count21, align 4, !tbaa !48
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %mac_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count27 = getelementptr inbounds %struct.post_s, %struct.post_s* %36, i32 0, i32 1
  %37 = load i32, i32* %count27, align 4, !tbaa !48
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.28, label %if.end.80

if.then.28:                                       ; preds = %for.end
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs29 = getelementptr inbounds %struct.post_s, %struct.post_s* %39, i32 0, i32 0
  %arraydecay = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs29, i32 0, i32 0
  %40 = bitcast %struct.post_glyph_s* %arraydecay to i8*
  %41 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count30 = getelementptr inbounds %struct.post_s, %struct.post_s* %41, i32 0, i32 1
  %42 = load i32, i32* %count30, align 4, !tbaa !48
  %conv31 = sext i32 %42 to i64
  call void @qsort(i8* %40, i64 %conv31, i64 4, i32 (i8*, i8*)* @compare_post_glyphs) #8
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.68, %if.then.28
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count33 = getelementptr inbounds %struct.post_s, %struct.post_s* %44, i32 0, i32 1
  %45 = load i32, i32* %count33, align 4, !tbaa !48
  %cmp34 = icmp slt i32 %43, %45
  br i1 %cmp34, label %for.body.36, label %for.end.70

for.body.36:                                      ; preds = %for.cond.32
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %46, 0
  br i1 %cmp37, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.36
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %47 to i64
  %48 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs40 = getelementptr inbounds %struct.post_s, %struct.post_s* %48, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs40, i32 0, i64 %idxprom39
  %glyph_index42 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx41, i32 0, i32 2
  %49 = load i16, i16* %glyph_index42, align 2, !tbaa !53
  %conv43 = zext i16 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %sub44 = sub nsw i32 %50, 1
  %idxprom45 = sext i32 %sub44 to i64
  %51 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs46 = getelementptr inbounds %struct.post_s, %struct.post_s* %51, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs46, i32 0, i64 %idxprom45
  %glyph_index48 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx47, i32 0, i32 2
  %52 = load i16, i16* %glyph_index48, align 2, !tbaa !53
  %conv49 = zext i16 %52 to i32
  %cmp50 = icmp ne i32 %conv43, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.67

if.then.52:                                       ; preds = %lor.lhs.false, %for.body.36
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %53 to i64
  %54 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs54 = getelementptr inbounds %struct.post_s, %struct.post_s* %54, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs54, i32 0, i64 %idxprom53
  %size56 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx55, i32 0, i32 1
  %55 = load i8, i8* %size56, align 1, !tbaa !52
  %conv57 = zext i8 %55 to i32
  %56 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %length58 = getelementptr inbounds %struct.post_s, %struct.post_s* %56, i32 0, i32 3
  %57 = load i32, i32* %length58, align 4, !tbaa !33
  %add59 = add i32 %57, %conv57
  store i32 %add59, i32* %length58, align 4, !tbaa !33
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %inc60 = add nsw i32 %58, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %58 to i64
  %59 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs62 = getelementptr inbounds %struct.post_s, %struct.post_s* %59, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs62, i32 0, i64 %idxprom61
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %60 to i64
  %61 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs65 = getelementptr inbounds %struct.post_s, %struct.post_s* %61, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs65, i32 0, i64 %idxprom64
  %62 = bitcast %struct.post_glyph_s* %arrayidx63 to i8*
  %63 = bitcast %struct.post_glyph_s* %arrayidx66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 4, i32 2, i1 false), !tbaa.struct !54
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.52, %lor.lhs.false
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %64, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !5
  br label %for.cond.32

for.end.70:                                       ; preds = %for.cond.32
  %65 = load i32, i32* %j, align 4, !tbaa !5
  %66 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count71 = getelementptr inbounds %struct.post_s, %struct.post_s* %66, i32 0, i32 1
  store i32 %65, i32* %count71, align 4, !tbaa !48
  %67 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count72 = getelementptr inbounds %struct.post_s, %struct.post_s* %67, i32 0, i32 1
  %68 = load i32, i32* %count72, align 4, !tbaa !48
  %sub73 = sub nsw i32 %68, 1
  %idxprom74 = sext i32 %sub73 to i64
  %69 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs75 = getelementptr inbounds %struct.post_s, %struct.post_s* %69, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs75, i32 0, i64 %idxprom74
  %glyph_index77 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx76, i32 0, i32 2
  %70 = load i16, i16* %glyph_index77, align 2, !tbaa !53
  %conv78 = zext i16 %70 to i32
  %add79 = add nsw i32 %conv78, 1
  %71 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyph_count = getelementptr inbounds %struct.post_s, %struct.post_s* %71, i32 0, i32 2
  store i32 %add79, i32* %glyph_count, align 4, !tbaa !56
  %72 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.70, %for.end
  %73 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyph_count81 = getelementptr inbounds %struct.post_s, %struct.post_s* %73, i32 0, i32 2
  %74 = load i32, i32* %glyph_count81, align 4, !tbaa !56
  %mul = mul nsw i32 %74, 2
  %75 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %length82 = getelementptr inbounds %struct.post_s, %struct.post_s* %75, i32 0, i32 3
  %76 = load i32, i32* %length82, align 4, !tbaa !33
  %add83 = add i32 %76, %mul
  store i32 %add83, i32* %length82, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.80, %cleanup
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i64 @put_table(i8* %tab, i8* %tname, i64 %checksum, i64 %offset, i32 %length) #0 {
entry:
  %tab.addr = alloca i8*, align 8
  %tname.addr = alloca i8*, align 8
  %checksum.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  store i8* %tab, i8** %tab.addr, align 8, !tbaa !1
  store i8* %tname, i8** %tname.addr, align 8, !tbaa !1
  store i64 %checksum, i64* %checksum.addr, align 8, !tbaa !7
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !7
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %tab.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %tname.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %0, i8* %1, i64 4) #7
  %2 = load i8*, i8** %tab.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  %3 = load i64, i64* %checksum.addr, align 8, !tbaa !7
  call void @put_u32(i8* %add.ptr, i64 %3) #8
  %4 = load i8*, i8** %tab.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 8
  %5 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %add = add i64 %5, 1073741824
  call void @put_u32(i8* %add.ptr1, i64 %add) #8
  %6 = load i8*, i8** %tab.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 12
  %7 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  call void @put_u32(i8* %add.ptr2, i64 %conv) #8
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %9 = load i32, i32* %length.addr, align 4, !tbaa !5
  %add3 = add i32 %9, 3
  %and = and i32 %add3, -4
  %conv4 = zext i32 %and to i64
  %add5 = add i64 %8, %conv4
  ret i64 %add5
}

; Function Attrs: nounwind uwtable
define internal i32 @size_cmap(%struct.gs_font_s* %font, i32 %first_code, i32 %num_glyphs, i64 %max_glyph, i32 %options) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %first_code.addr = alloca i32, align 4
  %num_glyphs.addr = alloca i32, align 4
  %max_glyph.addr = alloca i64, align 8
  %options.addr = alloca i32, align 4
  %poss = alloca %struct.stream_s, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %first_code, i32* %first_code.addr, align 4, !tbaa !5
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  store i64 %max_glyph, i64* %max_glyph.addr, align 8, !tbaa !7
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  call void @s_init(%struct.stream_s* %poss, %struct.gs_memory_s* null) #8
  call void @swrite_position_only(%struct.stream_s* %poss) #8
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load i32, i32* %first_code.addr, align 4, !tbaa !5
  %3 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %4 = load i64, i64* %max_glyph.addr, align 8, !tbaa !7
  %5 = load i32, i32* %options.addr, align 4, !tbaa !5
  call void @write_cmap(%struct.stream_s* %poss, %struct.gs_font_s* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 0) #8
  %call = call i64 @stell(%struct.stream_s* %poss) #8
  %conv = trunc i64 %call to i32
  %6 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %6) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @size_name(%struct.gs_const_string_s* %font_name) #0 {
entry:
  %font_name.addr = alloca %struct.gs_const_string_s*, align 8
  store %struct.gs_const_string_s* %font_name, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4, !tbaa !19
  %conv = zext i32 %1 to i64
  %add = add i64 18, %conv
  %conv1 = trunc i64 %add to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @size_mtx(%struct.gs_font_type42_s* %pfont, %struct.gs_type42_mtx_s* %pmtx, i32 %max_glyph, i32 %wmode) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %pmtx.addr = alloca %struct.gs_type42_mtx_s*, align 8
  %max_glyph.addr = alloca i32, align 4
  %wmode.addr = alloca i32, align 4
  %prev_width = alloca i32, align 4
  %last_width = alloca i32, align 4
  %factor = alloca double, align 8
  %i = alloca i32, align 4
  %sbw = alloca [4 x float], align 16
  %code = alloca i32, align 4
  %width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_type42_mtx_s* %pmtx, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  store i32 %max_glyph, i32* %max_glyph.addr, align 4, !tbaa !5
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %prev_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 -2147483648, i32* %prev_width, align 4, !tbaa !5
  %1 = bitcast i32* %last_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %last_width, align 4, !tbaa !5
  %2 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %3, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 8
  %4 = load i32, i32* %unitsPerEm, align 4, !tbaa !57
  %5 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  %mul = mul i32 %4, %cond
  %conv = uitofp i32 %mul to double
  store double %conv, double* %factor, align 8, !tbaa !58
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %max_glyph.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 4
  %12 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !59
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call = call i32 %12(%struct.gs_font_type42_s* %13, i32 %14, i32 %15, float* %arraydecay) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %17, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %18 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, 2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom
  %19 = load float, float* %arrayidx, align 4, !tbaa !60
  %conv5 = fpext float %19 to double
  %20 = load double, double* %factor, align 8, !tbaa !58
  %mul6 = fmul double %conv5, %20
  %add7 = fadd double %mul6, 5.000000e-01
  %conv8 = fptosi double %add7 to i32
  store i32 %conv8, i32* %width, align 4, !tbaa !5
  %21 = load i32, i32* %width, align 4, !tbaa !5
  %22 = load i32, i32* %prev_width, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %21, %22
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %23 = load i32, i32* %width, align 4, !tbaa !5
  store i32 %23, i32* %prev_width, align 4, !tbaa !5
  %24 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %24, i32* %last_width, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %25 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %last_width, align 4, !tbaa !5
  %add15 = add i32 %29, 1
  %30 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %30, i32 0, i32 0
  store i32 %add15, i32* %numMetrics, align 4, !tbaa !43
  %31 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %numMetrics16 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %31, i32 0, i32 0
  %32 = load i32, i32* %numMetrics16, align 4, !tbaa !43
  %mul17 = mul i32 %32, 4
  %33 = load i32, i32* %max_glyph.addr, align 4, !tbaa !5
  %34 = load i32, i32* %last_width, align 4, !tbaa !5
  %sub = sub i32 %33, %34
  %mul18 = mul i32 %sub, 2
  %add19 = add i32 %mul17, %mul18
  %35 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %35, i32 0, i32 2
  store i32 %add19, i32* %length, align 4, !tbaa !46
  %36 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %length20 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %36, i32 0, i32 2
  %37 = load i32, i32* %length20, align 4, !tbaa !46
  store i32 1, i32* %cleanup.dest.slot
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %last_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %prev_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret i32 %37

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @put_ushort(%struct.stream_s* %s, i32 %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %v.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %v.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext %conv) #8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %v.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %3 to i8
  %call2 = call i32 @spputc(%struct.stream_s* %2, i8 zeroext %conv1) #8
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_table_tags(i8* %pt1, i8* %pt2) #0 {
entry:
  %pt1.addr = alloca i8*, align 8
  %pt2.addr = alloca i8*, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store i8* %pt1, i8** %pt1.addr, align 8, !tbaa !1
  store i8* %pt2, i8** %pt2.addr, align 8, !tbaa !1
  %0 = bitcast i64* %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pt1.addr, align 8, !tbaa !1
  %call = call i64 @get_u32_msb(i8* %1) #8
  store i64 %call, i64* %t1, align 8, !tbaa !7
  %2 = bitcast i64* %t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %pt2.addr, align 8, !tbaa !1
  %call1 = call i64 @get_u32_msb(i8* %3) #8
  store i64 %call1, i64* %t2, align 8, !tbaa !7
  %4 = load i64, i64* %t1, align 8, !tbaa !7
  %5 = load i64, i64* %t2, align 8, !tbaa !7
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %t1, align 8, !tbaa !7
  %7 = load i64, i64* %t2, align 8, !tbaa !7
  %cmp2 = icmp ugt i64 %6, %7
  %cond = select i1 %cmp2, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %8 = bitcast i64* %t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i64* %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %cond3
}

; Function Attrs: nounwind uwtable
define internal void @put_u32(i8* %p, i64 %v) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %v.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i64 %v, i64* %v.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %1 = load i64, i64* %v.addr, align 8, !tbaa !7
  %shr = lshr i64 %1, 16
  %conv = trunc i64 %shr to i16
  %conv1 = zext i16 %conv to i32
  call void @put_u16(i8* %0, i32 %conv1) #8
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i64, i64* %v.addr, align 8, !tbaa !7
  %conv2 = trunc i64 %3 to i16
  %conv3 = zext i16 %conv2 to i32
  call void @put_u16(i8* %add.ptr, i32 %conv3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_OS_2(%struct.ttf_OS_2_s* %pos2, i32 %first_glyph, i32 %num_glyphs) #0 {
entry:
  %pos2.addr = alloca %struct.ttf_OS_2_s*, align 8
  %first_glyph.addr = alloca i32, align 4
  %num_glyphs.addr = alloca i32, align 4
  store %struct.ttf_OS_2_s* %pos2, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  store i32 %first_glyph, i32* %first_glyph.addr, align 4, !tbaa !5
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %usFirstCharIndex = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %0, i32 0, i32 29
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %usFirstCharIndex, i32 0, i32 0
  %1 = load i32, i32* %first_glyph.addr, align 4, !tbaa !5
  call void @put_u16(i8* %arraydecay, i32 %1) #8
  %2 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %usLastCharIndex = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %2, i32 0, i32 30
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %usLastCharIndex, i32 0, i32 0
  %3 = load i32, i32* %first_glyph.addr, align 4, !tbaa !5
  %4 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %add = add i32 %3, %4
  %sub = sub i32 %add, 1
  call void @put_u16(i8* %arraydecay1, i32 %sub) #8
  %5 = load i32, i32* %first_glyph.addr, align 4, !tbaa !5
  %cmp = icmp uge i32 %5, 61440
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %ulUnicodeRanges = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %6, i32 0, i32 26
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %ulUnicodeRanges, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay2, i32 0, i64 16) #7
  %7 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %ulUnicodeRanges3 = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %7, i32 0, i32 26
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %ulUnicodeRanges3, i32 0, i64 7
  store i8 8, i8* %arrayidx, align 1, !tbaa !20
  %8 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %ulCodePageRanges = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %8, i32 0, i32 36
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %ulCodePageRanges, i32 0, i32 0
  %call5 = call i8* @memset(i8* %arraydecay4, i32 0, i64 8) #7
  %9 = load %struct.ttf_OS_2_s*, %struct.ttf_OS_2_s** %pos2.addr, align 8, !tbaa !1
  %ulCodePageRanges6 = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %9, i32 0, i32 36
  %arrayidx7 = getelementptr inbounds [8 x i8], [8 x i8]* %ulCodePageRanges6, i32 0, i64 3
  store i8 1, i8* %arrayidx7, align 1, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pad(%struct.stream_s* %s, i32 %length) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %length.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %length.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %1
  %and = and i32 %sub, 3
  %call = call i32 @stream_write(%struct.stream_s* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @put_pad.pad_to_4, i32 0, i32 0), i32 %and) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_range(%struct.stream_s* %s, %struct.gs_font_type42_s* %pfont, i64 %start, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !7
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %start.addr, align 8, !tbaa !7
  store i64 %1, i64* %base, align 8, !tbaa !7
  %2 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %3 to i64
  store i64 %conv, i64* %size, align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end
  %4 = load i64, i64* %size, align 8, !tbaa !7
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 29
  %string_proc = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  %8 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !61
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %10 = load i64, i64* %base, align 8, !tbaa !7
  %11 = load i64, i64* %size, align 8, !tbaa !7
  %conv2 = trunc i64 %11 to i32
  %call = call i32 %8(%struct.gs_font_type42_s* %9, i64 %10, i32 %conv2, i8** %ptr) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %15 = load i64, i64* %size, align 8, !tbaa !7
  %conv6 = trunc i64 %15 to i32
  store i32 %conv6, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %ptr, align 8, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call8 = call i32 @stream_write(%struct.stream_s* %16, i8* %17, i32 %18) #8
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %conv9 = sext i32 %19 to i64
  %20 = load i64, i64* %base, align 8, !tbaa !7
  %add = add i64 %20, %conv9
  store i64 %add, i64* %base, align 8, !tbaa !7
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %conv10 = sext i32 %21 to i64
  %22 = load i64, i64* %size, align 8, !tbaa !7
  %sub = sub i64 %22, %conv10
  store i64 %sub, i64* %size, align 8, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %while.end, %cleanup
  %25 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @put_u16(i8* %p, i32 %v) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = load i32, i32* %v.addr, align 4, !tbaa !5
  %shr = lshr i32 %0, 8
  %conv = trunc i32 %shr to i8
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !20
  %2 = load i32, i32* %v.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %2 to i8
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv1, i8* %arrayidx2, align 1, !tbaa !20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @check_position(%struct.gs_memory_s* %mem, i64 %pos1, i64 %pos2) #4 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pos1.addr = alloca i64, align 8
  %pos2.addr = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %pos1, i64* %pos1.addr, align 8, !tbaa !7
  store i64 %pos2, i64* %pos2.addr, align 8, !tbaa !7
  %0 = load i64, i64* %pos1.addr, align 8, !tbaa !7
  %1 = load i64, i64* %pos2.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* @gs_program_name() #8
  %call1 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %2, i8* %call, i64 %call1) #8
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i64, i64* %pos1.addr, align 8, !tbaa !7
  %5 = load i64, i64* %pos2.addr, align 8, !tbaa !7
  %call2 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i32 0, i32 0), i64 %4, i64 %5) #8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s*) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define internal void @put_loca(%struct.stream_s* %s, i64 %offset, i32 %indexToLocFormat) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %offset.addr = alloca i64, align 8
  %indexToLocFormat.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !7
  store i32 %indexToLocFormat, i32* %indexToLocFormat.addr, align 4, !tbaa !5
  %0 = load i32, i32* %indexToLocFormat.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i64, i64* %offset.addr, align 8, !tbaa !7
  call void @put_ulong(%struct.stream_s* %1, i64 %2) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i64, i64* %offset.addr, align 8, !tbaa !7
  %shr = lshr i64 %4, 1
  %conv = trunc i64 %shr to i32
  call void @put_ushort(%struct.stream_s* %3, i32 %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_cmap(%struct.stream_s* %s, %struct.gs_font_s* %font, i32 %first_code, i32 %num_glyphs, i64 %max_glyph, i32 %options, i32 %cmap_length) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %first_code.addr = alloca i32, align 4
  %num_glyphs.addr = alloca i32, align 4
  %max_glyph.addr = alloca i64, align 8
  %options.addr = alloca i32, align 4
  %cmap_length.addr = alloca i32, align 4
  %cmap_sub = alloca [32 x i8], align 16
  %entries = alloca [512 x i8], align 16
  %first_entry = alloca i32, align 4
  %end_entry = alloca i32, align 4
  %can_use_trimmed = alloca i32, align 4
  %merge = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %i = alloca i32, align 4
  %glyph = alloca i64, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %first_code, i32* %first_code.addr, align 4, !tbaa !5
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  store i64 %max_glyph, i64* %max_glyph.addr, align 8, !tbaa !7
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store i32 %cmap_length, i32* %cmap_length.addr, align 4, !tbaa !5
  %0 = bitcast [32 x i8]* %cmap_sub to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast [512 x i8]* %entries to i8*
  call void @llvm.lifetime.start(i64 512, i8* %1) #1
  %2 = bitcast i32* %first_entry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %first_entry, align 4, !tbaa !5
  %3 = bitcast i32* %end_entry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  store i32 %4, i32* %end_entry, align 4, !tbaa !5
  %5 = bitcast i32* %can_use_trimmed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %can_use_trimmed, align 4, !tbaa !5
  %7 = bitcast i32* %merge to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %merge, align 4, !tbaa !5
  %8 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %14 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !47
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %16 to i64
  %call = call i64 %14(%struct.gs_font_s* %15, i64 %conv, i32 1) #8
  store i64 %call, i64* %glyph, align 8, !tbaa !7
  %17 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %18, 2147483647
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp3 = icmp ult i64 %19, 3221225472
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %20 = load i64, i64* %glyph, align 8, !tbaa !7
  %21 = load i64, i64* %max_glyph.addr, align 8, !tbaa !7
  %cmp6 = icmp ugt i64 %20, %21
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %for.body
  store i64 3221225472, i64* %glyph, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  %22 = load i64, i64* %glyph, align 8, !tbaa !7
  %sub = sub i64 %22, 3221225472
  %conv8 = trunc i64 %sub to i32
  store i32 %conv8, i32* %glyph_index, align 4, !tbaa !5
  %23 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %24 = load i32, i32* %merge, align 4, !tbaa !5
  %or = or i32 %24, %23
  store i32 %or, i32* %merge, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 2, %25
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %26 = load i32, i32* %glyph_index, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr, i32 %26) #8
  %27 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %30 = load i32, i32* %end_entry, align 4, !tbaa !5
  %31 = load i32, i32* %first_entry, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %30, %31
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %32 = load i32, i32* %end_entry, align 4, !tbaa !5
  %mul12 = mul nsw i32 2, %32
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay11, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 -2
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr15, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv16 = zext i8 %33 to i32
  %shl = shl i32 %conv16, 8
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %34 = load i32, i32* %end_entry, align 4, !tbaa !5
  %mul18 = mul nsw i32 2, %34
  %idx.ext19 = sext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %arraydecay17, i64 %idx.ext19
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 -2
  %arrayidx22 = getelementptr inbounds i8, i8* %add.ptr21, i64 1
  %35 = load i8, i8* %arrayidx22, align 1, !tbaa !20
  %conv23 = zext i8 %35 to i32
  %add = add i32 %shl, %conv23
  %tobool24 = icmp ne i32 %add, 0
  %lnot25 = xor i1 %tobool24, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %lnot25, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %37 = load i32, i32* %end_entry, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %end_entry, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.49, %while.end
  %38 = load i32, i32* %first_entry, align 4, !tbaa !5
  %39 = load i32, i32* %end_entry, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %38, %39
  br i1 %cmp28, label %land.rhs.30, label %land.end.48

land.rhs.30:                                      ; preds = %while.cond.27
  %arraydecay31 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %40 = load i32, i32* %first_entry, align 4, !tbaa !5
  %mul32 = mul nsw i32 2, %40
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay31, i64 %idx.ext33
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr34, i64 0
  %41 = load i8, i8* %arrayidx35, align 1, !tbaa !20
  %conv36 = zext i8 %41 to i32
  %shl37 = shl i32 %conv36, 8
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %42 = load i32, i32* %first_entry, align 4, !tbaa !5
  %mul39 = mul nsw i32 2, %42
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %arraydecay38, i64 %idx.ext40
  %arrayidx42 = getelementptr inbounds i8, i8* %add.ptr41, i64 1
  %43 = load i8, i8* %arrayidx42, align 1, !tbaa !20
  %conv43 = zext i8 %43 to i32
  %add44 = add i32 %shl37, %conv43
  %tobool45 = icmp ne i32 %add44, 0
  %lnot46 = xor i1 %tobool45, true
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.30, %while.cond.27
  %44 = phi i1 [ false, %while.cond.27 ], [ %lnot46, %land.rhs.30 ]
  br i1 %44, label %while.body.49, label %while.end.51

while.body.49:                                    ; preds = %land.end.48
  %45 = load i32, i32* %first_entry, align 4, !tbaa !5
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %first_entry, align 4, !tbaa !5
  br label %while.cond.27

while.end.51:                                     ; preds = %land.end.48
  %46 = load i32, i32* %end_entry, align 4, !tbaa !5
  %47 = load i32, i32* %first_entry, align 4, !tbaa !5
  %sub52 = sub nsw i32 %46, %47
  store i32 %sub52, i32* %num_entries, align 4, !tbaa !5
  %48 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and53 = and i32 %48, 32
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.86

if.then.55:                                       ; preds = %while.end.51
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay56 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %50 = load i32, i32* %first_code.addr, align 4, !tbaa !5
  %51 = load i32, i32* %first_entry, align 4, !tbaa !5
  %52 = load i32, i32* %num_entries, align 4, !tbaa !5
  call void @write_unicode_cmap_6(%struct.stream_s* %49, i8* %arraydecay56, i32 %50, i32 %51, i32 %52) #8
  %arraydecay57 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %call58 = call i8* @memcpy(i8* %arraydecay57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cmap_sub_initial, i32 0, i32 0), i64 32) #7
  %arraydecay59 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay59, i64 2
  %arraydecay61 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay61, i64 2
  %arrayidx63 = getelementptr inbounds i8, i8* %add.ptr62, i64 0
  %53 = load i8, i8* %arrayidx63, align 1, !tbaa !20
  %conv64 = zext i8 %53 to i32
  %shl65 = shl i32 %conv64, 8
  %arraydecay66 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr67 = getelementptr inbounds i8, i8* %arraydecay66, i64 2
  %arrayidx68 = getelementptr inbounds i8, i8* %add.ptr67, i64 1
  %54 = load i8, i8* %arrayidx68, align 1, !tbaa !20
  %conv69 = zext i8 %54 to i32
  %add70 = add i32 %shl65, %conv69
  %55 = load i32, i32* %num_entries, align 4, !tbaa !5
  %mul71 = mul i32 %55, 2
  %add72 = add i32 %add70, %mul71
  call void @put_u16(i8* %add.ptr60, i32 %add72) #8
  %arraydecay73 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr74 = getelementptr inbounds i8, i8* %arraydecay73, i64 14
  %56 = load i32, i32* %end_entry, align 4, !tbaa !5
  %sub75 = sub nsw i32 %56, 1
  call void @put_u16(i8* %add.ptr74, i32 %sub75) #8
  %arraydecay76 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr77 = getelementptr inbounds i8, i8* %arraydecay76, i64 20
  %57 = load i32, i32* %first_entry, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr77, i32 %57) #8
  %58 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay78 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %call79 = call i32 @stream_write(%struct.stream_s* %58, i8* %arraydecay78, i32 32) #8
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay80 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %60 = load i32, i32* %first_entry, align 4, !tbaa !5
  %mul81 = mul nsw i32 %60, 2
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %arraydecay80, i64 %idx.ext82
  %61 = load i32, i32* %num_entries, align 4, !tbaa !5
  %mul84 = mul i32 %61, 2
  %call85 = call i32 @stream_write(%struct.stream_s* %59, i8* %add.ptr83, i32 %mul84) #8
  %62 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %63 = load i32, i32* %cmap_length.addr, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %62, i32 %63) #8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %while.end.51
  %64 = load i32, i32* %merge, align 4, !tbaa !5
  %65 = load i32, i32* %merge, align 4, !tbaa !5
  %conv87 = trunc i32 %65 to i8
  %conv88 = zext i8 %conv87 to i32
  %cmp89 = icmp eq i32 %64, %conv88
  br i1 %cmp89, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.86
  %66 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp91 = icmp ule i32 %66, 127
  br i1 %cmp91, label %if.then.95, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true
  %67 = load i32, i32* %can_use_trimmed, align 4, !tbaa !5
  %tobool94 = icmp ne i32 %67, 0
  br i1 %tobool94, label %if.else, label %if.then.95

if.then.95:                                       ; preds = %lor.lhs.false.93, %land.lhs.true
  %68 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay96 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %69 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  call void @write_cmap_0(%struct.stream_s* %68, i8* %arraydecay96, i32 %69) #8
  br label %if.end.103

if.else:                                          ; preds = %lor.lhs.false.93, %if.end.86
  %70 = load i32, i32* %can_use_trimmed, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %70, 0
  br i1 %tobool97, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.else
  %71 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay99 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %72 = load i32, i32* %first_code.addr, align 4, !tbaa !5
  %73 = load i32, i32* %first_entry, align 4, !tbaa !5
  %74 = load i32, i32* %num_entries, align 4, !tbaa !5
  call void @write_cmap_6(%struct.stream_s* %71, i8* %arraydecay99, i32 %72, i32 %73, i32 %74) #8
  br label %if.end.102

if.else.100:                                      ; preds = %if.else
  %75 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call101 = call i32 @stream_write(%struct.stream_s* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cmap_initial_4, i32 0, i32 0), i32 12) #8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.then.98
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.95
  %arraydecay104 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %call105 = call i8* @memcpy(i8* %arraydecay104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cmap_sub_initial, i32 0, i32 0), i64 32) #7
  %arraydecay106 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr107 = getelementptr inbounds i8, i8* %arraydecay106, i64 2
  %arraydecay108 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr109 = getelementptr inbounds i8, i8* %arraydecay108, i64 2
  %arrayidx110 = getelementptr inbounds i8, i8* %add.ptr109, i64 0
  %76 = load i8, i8* %arrayidx110, align 1, !tbaa !20
  %conv111 = zext i8 %76 to i32
  %shl112 = shl i32 %conv111, 8
  %arraydecay113 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr114 = getelementptr inbounds i8, i8* %arraydecay113, i64 2
  %arrayidx115 = getelementptr inbounds i8, i8* %add.ptr114, i64 1
  %77 = load i8, i8* %arrayidx115, align 1, !tbaa !20
  %conv116 = zext i8 %77 to i32
  %add117 = add i32 %shl112, %conv116
  %78 = load i32, i32* %num_entries, align 4, !tbaa !5
  %mul118 = mul i32 %78, 2
  %add119 = add i32 %add117, %mul118
  call void @put_u16(i8* %add.ptr107, i32 %add119) #8
  %arraydecay120 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr121 = getelementptr inbounds i8, i8* %arraydecay120, i64 14
  %79 = load i32, i32* %first_code.addr, align 4, !tbaa !5
  %80 = load i32, i32* %end_entry, align 4, !tbaa !5
  %add122 = add i32 %79, %80
  %sub123 = sub i32 %add122, 1
  call void @put_u16(i8* %add.ptr121, i32 %sub123) #8
  %arraydecay124 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %add.ptr125 = getelementptr inbounds i8, i8* %arraydecay124, i64 20
  %81 = load i32, i32* %first_code.addr, align 4, !tbaa !5
  %82 = load i32, i32* %first_entry, align 4, !tbaa !5
  %add126 = add i32 %81, %82
  call void @put_u16(i8* %add.ptr125, i32 %add126) #8
  %83 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay127 = getelementptr inbounds [32 x i8], [32 x i8]* %cmap_sub, i32 0, i32 0
  %call128 = call i32 @stream_write(%struct.stream_s* %83, i8* %arraydecay127, i32 32) #8
  %84 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay129 = getelementptr inbounds [512 x i8], [512 x i8]* %entries, i32 0, i32 0
  %85 = load i32, i32* %first_entry, align 4, !tbaa !5
  %mul130 = mul nsw i32 %85, 2
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %arraydecay129, i64 %idx.ext131
  %86 = load i32, i32* %num_entries, align 4, !tbaa !5
  %mul133 = mul i32 %86, 2
  %call134 = call i32 @stream_write(%struct.stream_s* %84, i8* %add.ptr132, i32 %mul133) #8
  %87 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %88 = load i32, i32* %cmap_length.addr, align 4, !tbaa !5
  call void @put_pad(%struct.stream_s* %87, i32 %88) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.103, %if.then.55
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %merge to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %can_use_trimmed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %end_entry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %first_entry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast [512 x i8]* %entries to i8*
  call void @llvm.lifetime.end(i64 512, i8* %95) #1
  %96 = bitcast [32 x i8]* %cmap_sub to i8*
  call void @llvm.lifetime.end(i64 32, i8* %96) #1
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

; Function Attrs: nounwind uwtable
define internal void @write_name(%struct.stream_s* %s, %struct.gs_const_string_s* %font_name) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %name_bytes = alloca [18 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %font_name, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %0 = bitcast [18 x i8]* %name_bytes to i8*
  call void @llvm.lifetime.start(i64 18, i8* %0) #1
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %name_bytes, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @name_initial, i32 0, i32 0), i64 18) #7
  %arraydecay1 = getelementptr inbounds [18 x i8], [18 x i8]* %name_bytes, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 14
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !19
  call void @put_u16(i8* %add.ptr, i32 %2) #8
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [18 x i8], [18 x i8]* %name_bytes, i32 0, i32 0
  %call3 = call i32 @stream_write(%struct.stream_s* %3, i8* %arraydecay2, i32 18) #8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !10
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size4, align 4, !tbaa !19
  %call5 = call i32 @stream_write(%struct.stream_s* %4, i8* %6, i32 %8) #8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %font_name.addr, align 8, !tbaa !1
  %call6 = call i32 @size_name(%struct.gs_const_string_s* %10) #8
  call void @put_pad(%struct.stream_s* %9, i32 %call6) #8
  %11 = bitcast [18 x i8]* %name_bytes to i8*
  call void @llvm.lifetime.end(i64 18, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_OS_2(%struct.stream_s* %s, %struct.gs_font_s* %font, i32 %first_glyph, i32 %num_glyphs) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %first_glyph.addr = alloca i32, align 4
  %num_glyphs.addr = alloca i32, align 4
  %os2 = alloca %struct.ttf_OS_2_s, align 1
  %info = alloca %struct.gs_font_info_s, align 8
  %code = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %first_glyph, i32* %first_glyph.addr, align 4, !tbaa !5
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %0) #1
  %1 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  %call = call i8* @memset(i8* %3, i32 0, i64 96) #7
  %version = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %os2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %version, i32 0, i32 0
  call void @put_u16(i8* %arraydecay, i32 1) #8
  %usWeightClass = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %os2, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %usWeightClass, i32 0, i32 0
  call void @put_u16(i8* %arraydecay1, i32 400) #8
  %usWidthClass = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %os2, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [2 x i8], [2 x i8]* %usWidthClass, i32 0, i32 0
  call void @put_u16(i8* %arraydecay2, i32 5) #8
  %4 = load i32, i32* %first_glyph.addr, align 4, !tbaa !5
  %5 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  call void @update_OS_2(%struct.ttf_OS_2_s* %os2, i32 %4, i32 %5) #8
  %6 = bitcast %struct.gs_font_info_s* %info to i8*
  %call3 = call i8* @memset(i8* %6, i32 0, i64 160) #7
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %8 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !62
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call4 = call i32 %8(%struct.gs_font_s* %9, %struct.gs_point_s* null, i32 16384, %struct.gs_font_info_s* %info) #8
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %11 = load i32, i32* %members, align 4, !tbaa !63
  %and = and i32 %11, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %fsType = getelementptr inbounds %struct.ttf_OS_2_s, %struct.ttf_OS_2_s* %os2, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %fsType, i32 0, i32 0
  %EmbeddingRights = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 22
  %12 = load i32, i32* %EmbeddingRights, align 4, !tbaa !67
  call void @put_u16(i8* %arraydecay5, i32 %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  %call6 = call i32 @stream_write(%struct.stream_s* %13, i8* %14, i32 ptrtoint (i8* getelementptr inbounds (%struct.ttf_OS_2_s, %struct.ttf_OS_2_s* null, i32 0, i32 37, i64 0) to i32)) #8
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @put_pad(%struct.stream_s* %15, i32 ptrtoint (i8* getelementptr inbounds (%struct.ttf_OS_2_s, %struct.ttf_OS_2_s* null, i32 0, i32 37, i64 0) to i32)) #8
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %17) #1
  %18 = bitcast %struct.ttf_OS_2_s* %os2 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_mtx(%struct.stream_s* %s, %struct.gs_font_type42_s* %pfont, %struct.gs_type42_mtx_s* %pmtx, i32 %wmode) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %pmtx.addr = alloca %struct.gs_type42_mtx_s*, align 8
  %wmode.addr = alloca i32, align 4
  %num_metrics = alloca i32, align 4
  %len = alloca i32, align 4
  %factor = alloca double, align 8
  %sbw = alloca [4 x float], align 16
  %i = alloca i32, align 4
  %f = alloca float, align 4
  %f30 = alloca float, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_type42_mtx_s* %pmtx, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_metrics to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %numMetrics = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %1, i32 0, i32 0
  %2 = load i32, i32* %numMetrics, align 4, !tbaa !43
  store i32 %2, i32* %num_metrics, align 4, !tbaa !5
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %num_metrics, align 4, !tbaa !5
  %mul = mul i32 %4, 4
  store i32 %mul, i32* %len, align 4, !tbaa !5
  %5 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 8
  %7 = load i32, i32* %unitsPerEm, align 4, !tbaa !57
  %conv = uitofp i32 %7 to double
  %8 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  %conv1 = sitofp i32 %cond to double
  %mul2 = fmul double %conv, %conv1
  store double %mul2, double* %factor, align 8, !tbaa !58
  %9 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 3
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !60
  %arrayidx3 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx3, align 4, !tbaa !60
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx4, align 4, !tbaa !60
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx5, align 4, !tbaa !60
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %numMetrics6 = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %12, i32 0, i32 0
  %13 = load i32, i32* %numMetrics6, align 4, !tbaa !43
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %15, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data8, i32 0, i32 4
  %16 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !59
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call = call i32 %16(%struct.gs_font_type42_s* %17, i32 %18, i32 %19, float* %arraydecay) #8
  %20 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %add = add nsw i32 %20, 2
  %idxprom = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom
  %21 = load float, float* %arrayidx9, align 4, !tbaa !60
  %conv10 = fpext float %21 to double
  %22 = load double, double* %factor, align 8, !tbaa !58
  %mul11 = fmul double %conv10, %22
  %conv12 = fptrunc double %mul11 to float
  store float %conv12, float* %f, align 4, !tbaa !60
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %24 = load float, float* %f, align 4, !tbaa !60
  %conv13 = fpext float %24 to double
  %add14 = fadd double %conv13, 5.000000e-01
  %call15 = call double @floor(double %add14) #10
  %conv16 = fptosi double %call15 to i16
  call void @put_short(%struct.stream_s* %23, i16 signext %conv16) #8
  %25 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom17
  %26 = load float, float* %arrayidx18, align 4, !tbaa !60
  %conv19 = fpext float %26 to double
  %27 = load double, double* %factor, align 8, !tbaa !58
  %mul20 = fmul double %conv19, %27
  %conv21 = fptrunc double %mul20 to float
  store float %conv21, float* %f, align 4, !tbaa !60
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %29 = load float, float* %f, align 4, !tbaa !60
  %conv22 = fpext float %29 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %call24 = call double @floor(double %add23) #10
  %conv25 = fptosi double %call24 to i16
  call void @put_short(%struct.stream_s* %28, i16 signext %conv25) #8
  %30 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.44, %for.end
  %32 = load i32, i32* %len, align 4, !tbaa !5
  %33 = load %struct.gs_type42_mtx_s*, %struct.gs_type42_mtx_s** %pmtx.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gs_type42_mtx_s, %struct.gs_type42_mtx_s* %33, i32 0, i32 2
  %34 = load i32, i32* %length, align 4, !tbaa !46
  %cmp27 = icmp ult i32 %32, %34
  br i1 %cmp27, label %for.body.29, label %for.end.47

for.body.29:                                      ; preds = %for.cond.26
  %35 = bitcast float* %f30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %36, i32 0, i32 29
  %get_metrics32 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data31, i32 0, i32 4
  %37 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics32, align 8, !tbaa !59
  %38 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %40 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %arraydecay33 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call34 = call i32 %37(%struct.gs_font_type42_s* %38, i32 %39, i32 %40, float* %arraydecay33) #8
  %41 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom35
  %42 = load float, float* %arrayidx36, align 4, !tbaa !60
  %conv37 = fpext float %42 to double
  %43 = load double, double* %factor, align 8, !tbaa !58
  %mul38 = fmul double %conv37, %43
  %conv39 = fptrunc double %mul38 to float
  store float %conv39, float* %f30, align 4, !tbaa !60
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %45 = load float, float* %f30, align 4, !tbaa !60
  %conv40 = fpext float %45 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %call42 = call double @floor(double %add41) #10
  %conv43 = fptosi double %call42 to i16
  call void @put_short(%struct.stream_s* %44, i16 signext %conv43) #8
  %46 = bitcast float* %f30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.29
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc45 = add i32 %47, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !5
  %48 = load i32, i32* %len, align 4, !tbaa !5
  %add46 = add i32 %48, 2
  store i32 %add46, i32* %len, align 4, !tbaa !5
  br label %for.cond.26

for.end.47:                                       ; preds = %for.cond.26
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #1
  %51 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %num_metrics to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_post(%struct.stream_s* %s, %struct.gs_font_s* %font, %struct.post_s* %post) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %post.addr = alloca %struct.post_s*, align 8
  %post_initial = alloca [34 x i8], align 16
  %name_index = alloca i32, align 4
  %glyph_index = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %ch = alloca i32, align 4
  %mac_index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str34 = alloca %struct.gs_const_string_s, align 8
  %ch35 = alloca i32, align 4
  %mac_index41 = alloca i32, align 4
  %code42 = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.post_s* %post, %struct.post_s** %post.addr, align 8, !tbaa !1
  %0 = bitcast [34 x i8]* %post_initial to i8*
  call void @llvm.lifetime.start(i64 34, i8* %0) #1
  %1 = bitcast i32* %name_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %arraydecay = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 32) #7
  %arraydecay1 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  call void @put_u32(i8* %arraydecay1, i64 131072) #8
  %arraydecay2 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 32
  %4 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyph_count = getelementptr inbounds %struct.post_s, %struct.post_s* %4, i32 0, i32 2
  %5 = load i32, i32* %glyph_count, align 4, !tbaa !56
  call void @put_u16(i8* %add.ptr, i32 %5) #8
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [34 x i8], [34 x i8]* %post_initial, i32 0, i32 0
  %call4 = call i32 @stream_write(%struct.stream_s* %6, i8* %arraydecay3, i32 34) #8
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 258, i32* %name_index, align 4, !tbaa !5
  store i32 0, i32* %glyph_index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.post_s, %struct.post_s* %8, i32 0, i32 1
  %9 = load i32, i32* %count, align 4, !tbaa !48
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.post_s, %struct.post_s* %13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs, i32 0, i64 %idxprom
  %char_index = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx, i32 0, i32 0
  %14 = load i8, i8* %char_index, align 1, !tbaa !49
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %ch, align 4, !tbaa !5
  %15 = bitcast i32* %mac_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %18 = load i32, i32* %ch, align 4, !tbaa !5
  %call5 = call i32 @mac_glyph_index(%struct.gs_font_s* %17, i32 %18, %struct.gs_const_string_s* %str, i32* %mac_index) #8
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %21 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs10 = getelementptr inbounds %struct.post_s, %struct.post_s* %23, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs10, i32 0, i64 %idxprom9
  %glyph_index12 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx11, i32 0, i32 2
  %24 = load i16, i16* %glyph_index12, align 2, !tbaa !53
  %conv13 = zext i16 %24 to i32
  %cmp14 = icmp ult i32 %21, %conv13
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.8
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @put_ushort(%struct.stream_s* %25, i32 0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %26 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %inc = add i32 %26, 1
  store i32 %inc, i32* %glyph_index, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %27 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %inc17 = add i32 %27, 1
  store i32 %inc17, i32* %glyph_index, align 4, !tbaa !5
  %28 = load i32, i32* %mac_index, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %28, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = load i32, i32* %mac_index, align 4, !tbaa !5
  call void @put_ushort(%struct.stream_s* %29, i32 %30) #8
  br label %if.end.22

if.else:                                          ; preds = %for.end
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %32 = load i32, i32* %name_index, align 4, !tbaa !5
  call void @put_ushort(%struct.stream_s* %31, i32 %32) #8
  %33 = load i32, i32* %name_index, align 4, !tbaa !5
  %inc21 = add i32 %33, 1
  store i32 %inc21, i32* %name_index, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %mac_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.26

for.inc.26:                                       ; preds = %cleanup.cont
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.62, %for.end.28
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %40 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %count30 = getelementptr inbounds %struct.post_s, %struct.post_s* %40, i32 0, i32 1
  %41 = load i32, i32* %count30, align 4, !tbaa !48
  %cmp31 = icmp slt i32 %39, %41
  br i1 %cmp31, label %for.body.33, label %for.end.64

for.body.33:                                      ; preds = %for.cond.29
  %42 = bitcast %struct.gs_const_string_s* %str34 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %42) #1
  %43 = bitcast i32* %ch35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %44 to i64
  %45 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %glyphs37 = getelementptr inbounds %struct.post_s, %struct.post_s* %45, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [257 x %struct.post_glyph_s], [257 x %struct.post_glyph_s]* %glyphs37, i32 0, i64 %idxprom36
  %char_index39 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %arrayidx38, i32 0, i32 0
  %46 = load i8, i8* %char_index39, align 1, !tbaa !49
  %conv40 = zext i8 %46 to i32
  store i32 %conv40, i32* %ch35, align 4, !tbaa !5
  %47 = bitcast i32* %mac_index41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %code42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %50 = load i32, i32* %ch35, align 4, !tbaa !5
  %call43 = call i32 @mac_glyph_index(%struct.gs_font_s* %49, i32 %50, %struct.gs_const_string_s* %str34, i32* %mac_index41) #8
  store i32 %call43, i32* %code42, align 4, !tbaa !5
  %51 = load i32, i32* %code42, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %51, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body.33
  %52 = load i32, i32* %code42, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.47:                                        ; preds = %for.body.33
  %53 = load i32, i32* %mac_index41, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %53, 0
  br i1 %cmp48, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %if.end.47
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str34, i32 0, i32 1
  %55 = load i32, i32* %size, align 4, !tbaa !19
  %conv51 = trunc i32 %55 to i8
  %call52 = call i32 @spputc(%struct.stream_s* %54, i8 zeroext %conv51) #8
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str34, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8, !tbaa !10
  %size53 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str34, i32 0, i32 1
  %58 = load i32, i32* %size53, align 4, !tbaa !19
  %call54 = call i32 @stream_write(%struct.stream_s* %56, i8* %57, i32 %58) #8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %if.end.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.56

cleanup.56:                                       ; preds = %if.end.55, %if.then.46
  %59 = bitcast i32* %code42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %mac_index41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %ch35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_const_string_s* %str34 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  %cleanup.dest.60 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.60, label %cleanup.65 [
    i32 0, label %cleanup.cont.61
  ]

cleanup.cont.61:                                  ; preds = %cleanup.56
  br label %for.inc.62

for.inc.62:                                       ; preds = %cleanup.cont.61
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %63, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !5
  br label %for.cond.29

for.end.64:                                       ; preds = %for.cond.29
  %64 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %65 = load %struct.post_s*, %struct.post_s** %post.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.post_s, %struct.post_s* %65, i32 0, i32 3
  %66 = load i32, i32* %length, align 4, !tbaa !33
  call void @put_pad(%struct.stream_s* %64, i32 %66) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %for.end.64, %cleanup.56, %cleanup
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %name_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [34 x i8]* %post_initial to i8*
  call void @llvm.lifetime.end(i64 34, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @mac_glyph_index(%struct.gs_font_s* %font, i32 %ch, %struct.gs_const_string_s* %pstr, i32* %index) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %ch.addr = alloca i32, align 4
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %index.addr = alloca i32*, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mac_char = alloca i64, align 8
  %mac_glyph = alloca i64, align 8
  %mstr = alloca %struct.gs_const_string_s, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i32* %index, i32** %index.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %2 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !47
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %4 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %call = call i64 %2(%struct.gs_font_s* %3, i64 %conv, i32 0) #8
  store i64 %call, i64* %glyph, align 8, !tbaa !7
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp = icmp eq i64 %6, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 0, i32* %7, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs2, i32 0, i32 9
  %9 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !68
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %11 = load i64, i64* %glyph, align 8, !tbaa !7
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %call3 = call i32 %9(%struct.gs_font_s* %10, i64 %11, %struct.gs_const_string_s* %12) #8
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.7:                                         ; preds = %if.end
  %15 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp8 = icmp ult i64 %15, 2147483648
  br i1 %cmp8, label %if.then.10, label %if.end.46

if.then.10:                                       ; preds = %if.end.7
  %16 = bitcast i64* %mac_char to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %mac_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_const_string_s* %mstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %19, 32
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.10
  %20 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %20, 126
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %21, 29
  %conv16 = sext i32 %sub to i64
  store i64 %conv16, i64* %mac_char, align 8, !tbaa !7
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.then.10
  %22 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %22, 128
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.25

land.lhs.true.19:                                 ; preds = %if.else
  %23 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp20 = icmp sle i32 %23, 255
  br i1 %cmp20, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %land.lhs.true.19
  %24 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %24, 30
  %conv24 = sext i32 %sub23 to i64
  store i64 %conv24, i64* %mac_char, align 8, !tbaa !7
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.19, %if.else
  %25 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 -1, i32* %25, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  %26 = load i64, i64* %mac_char, align 8, !tbaa !7
  %call28 = call i64 @gs_c_known_encode(i64 %26, i32 7) #8
  store i64 %call28, i64* %mac_glyph, align 8, !tbaa !7
  %27 = load i64, i64* %mac_glyph, align 8, !tbaa !7
  %cmp29 = icmp eq i64 %27, 2147483647
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %28 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 -1, i32* %28, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %29 = load i64, i64* %mac_glyph, align 8, !tbaa !7
  %call33 = call i32 @gs_c_glyph_name(i64 %29, %struct.gs_const_string_s* %mstr) #8
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %30, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.32
  %32 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8, !tbaa !10
  %34 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %34, i32 0, i32 1
  %35 = load i32, i32* %size, align 4, !tbaa !19
  %data38 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %mstr, i32 0, i32 0
  %36 = load i8*, i8** %data38, align 8, !tbaa !10
  %size39 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %mstr, i32 0, i32 1
  %37 = load i32, i32* %size39, align 4, !tbaa !19
  %call40 = call i32 @bytes_compare(i8* %33, i32 %35, i8* %36, i32 %37) #8
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.37
  %38 = load i64, i64* %mac_char, align 8, !tbaa !7
  %conv42 = trunc i64 %38 to i32
  %39 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 %conv42, i32* %39, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.41, %if.then.36, %if.then.31, %if.else.25
  %40 = bitcast %struct.gs_const_string_s* %mstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  %41 = bitcast i64* %mac_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %mac_char to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %if.end.7
  %43 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 -1, i32* %43, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %cleanup, %if.then.6, %if.then
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_post_glyphs(i8* %pg1, i8* %pg2) #0 {
entry:
  %pg1.addr = alloca i8*, align 8
  %pg2.addr = alloca i8*, align 8
  %g1 = alloca i64, align 8
  %g2 = alloca i64, align 8
  store i8* %pg1, i8** %pg1.addr, align 8, !tbaa !1
  store i8* %pg2, i8** %pg2.addr, align 8, !tbaa !1
  %0 = bitcast i64* %g1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pg1.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.post_glyph_s*
  %glyph_index = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %2, i32 0, i32 2
  %3 = load i16, i16* %glyph_index, align 2, !tbaa !53
  %conv = zext i16 %3 to i64
  store i64 %conv, i64* %g1, align 8, !tbaa !7
  %4 = bitcast i64* %g2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %pg2.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.post_glyph_s*
  %glyph_index1 = getelementptr inbounds %struct.post_glyph_s, %struct.post_glyph_s* %6, i32 0, i32 2
  %7 = load i16, i16* %glyph_index1, align 2, !tbaa !53
  %conv2 = zext i16 %7 to i64
  store i64 %conv2, i64* %g2, align 8, !tbaa !7
  %8 = load i64, i64* %g1, align 8, !tbaa !7
  %9 = load i64, i64* %g2, align 8, !tbaa !7
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %g1, align 8, !tbaa !7
  %11 = load i64, i64* %g2, align 8, !tbaa !7
  %cmp4 = icmp ugt i64 %10, %11
  %cond = select i1 %cmp4, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %12 = bitcast i64* %g2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %g1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i32 %cond6
}

declare i64 @gs_c_known_encode(i64, i32) #3

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #3

declare i32 @bytes_compare(i8*, i32, i8*, i32) #3

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #3

declare void @swrite_position_only(%struct.stream_s*) #3

; Function Attrs: nounwind uwtable
define internal void @put_ulong(%struct.stream_s* %s, i64 %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %v.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %v, i64* %v.addr, align 8, !tbaa !7
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i64, i64* %v.addr, align 8, !tbaa !7
  %shr = lshr i64 %1, 16
  %conv = trunc i64 %shr to i32
  call void @put_ushort(%struct.stream_s* %0, i32 %conv) #8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i64, i64* %v.addr, align 8, !tbaa !7
  %conv1 = trunc i64 %3 to i32
  call void @put_ushort(%struct.stream_s* %2, i32 %conv1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_unicode_cmap_6(%struct.stream_s* %s, i8* %entries, i32 %first_code, i32 %first_entry, i32 %num_entries) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %entries.addr = alloca i8*, align 8
  %first_code.addr = alloca i32, align 4
  %first_entry.addr = alloca i32, align 4
  %num_entries.addr = alloca i32, align 4
  %cmap_data = alloca [30 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %entries, i8** %entries.addr, align 8, !tbaa !1
  store i32 %first_code, i32* %first_code.addr, align 4, !tbaa !5
  store i32 %first_entry, i32* %first_entry.addr, align 4, !tbaa !5
  store i32 %num_entries, i32* %num_entries.addr, align 4, !tbaa !5
  %0 = bitcast [30 x i8]* %cmap_data to i8*
  call void @llvm.lifetime.start(i64 30, i8* %0) #1
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cmap_unicode_initial_6, i32 0, i32 0), i64 30) #7
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 18
  %arraydecay2 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay2, i64 18
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr3, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds i8, i8* %arraydecay4, i64 18
  %arrayidx6 = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  %2 = load i8, i8* %arrayidx6, align 1, !tbaa !20
  %conv7 = zext i8 %2 to i32
  %add = add i32 %shl, %conv7
  %3 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul = mul i32 %3, 2
  %add8 = add i32 %add, %mul
  call void @put_u16(i8* %add.ptr, i32 %add8) #8
  %arraydecay9 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 22
  %arraydecay11 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 22
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 0
  %4 = load i8, i8* %arrayidx13, align 1, !tbaa !20
  %conv14 = zext i8 %4 to i32
  %shl15 = shl i32 %conv14, 8
  %arraydecay16 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 22
  %arrayidx18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  %5 = load i8, i8* %arrayidx18, align 1, !tbaa !20
  %conv19 = zext i8 %5 to i32
  %add20 = add i32 %shl15, %conv19
  %6 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul21 = mul i32 %6, 2
  %add22 = add i32 %add20, %mul21
  call void @put_u16(i8* %add.ptr10, i32 %add22) #8
  %arraydecay23 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr24 = getelementptr inbounds i8, i8* %arraydecay23, i64 26
  %7 = load i32, i32* %first_entry.addr, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr24, i32 %7) #8
  %arraydecay25 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr26 = getelementptr inbounds i8, i8* %arraydecay25, i64 28
  %8 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr26, i32 %8) #8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %call28 = call i32 @stream_write(%struct.stream_s* %9, i8* %arraydecay27, i32 30) #8
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %entries.addr, align 8, !tbaa !1
  %12 = load i32, i32* %first_entry.addr, align 4, !tbaa !5
  %mul29 = mul i32 %12, 2
  %idx.ext = zext i32 %mul29 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul31 = mul i32 %13, 2
  %call32 = call i32 @stream_write(%struct.stream_s* %10, i8* %add.ptr30, i32 %mul31) #8
  %14 = bitcast [30 x i8]* %cmap_data to i8*
  call void @llvm.lifetime.end(i64 30, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_cmap_0(%struct.stream_s* %s, i8* %entries, i32 %num_glyphs) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %entries.addr = alloca i8*, align 8
  %num_glyphs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %entries, i8** %entries.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %mul = mul i32 2, %1
  %sub = sub i32 512, %mul
  %cmp = icmp ugt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %entries.addr, align 8, !tbaa !1
  %3 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %mul1 = mul i32 2, %3
  %idx.ext = zext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %mul2 = mul i32 2, %4
  %sub3 = sub i32 512, %mul2
  %conv = zext i32 %sub3 to i64
  %call = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call4 = call i32 @stream_write(%struct.stream_s* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @cmap_initial_0, i32 0, i32 0), i32 26) #8
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %6, 255
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %8 = load i8*, i8** %ptr, align 8, !tbaa !69
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !71
  %cmp9 = icmp uge i8* %8, %10
  br i1 %cmp9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_write_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w12, i32 0, i32 1
  %12 = load i8*, i8** %ptr13, align 8, !tbaa !69
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr13, align 8, !tbaa !69
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %mul14 = mul nsw i32 2, %13
  %add = add nsw i32 %mul14, 1
  %idxprom = sext i32 %add to i64
  %14 = load i8*, i8** %entries.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 1
  %17 = load i8*, i8** %ptr17, align 8, !tbaa !69
  store i8 %15, i8* %17, align 1, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %mul18 = mul nsw i32 2, %19
  %add19 = add nsw i32 %mul18, 1
  %idxprom20 = sext i32 %add19 to i64
  %20 = load i8*, i8** %entries.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 %idxprom20
  %21 = load i8, i8* %arrayidx21, align 1, !tbaa !20
  %call22 = call i32 @spputc(%struct.stream_s* %18, i8 zeroext %21) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call22, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_cmap_6(%struct.stream_s* %s, i8* %entries, i32 %first_code, i32 %first_entry, i32 %num_entries) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %entries.addr = alloca i8*, align 8
  %first_code.addr = alloca i32, align 4
  %first_entry.addr = alloca i32, align 4
  %num_entries.addr = alloca i32, align 4
  %cmap_data = alloca [30 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %entries, i8** %entries.addr, align 8, !tbaa !1
  store i32 %first_code, i32* %first_code.addr, align 4, !tbaa !5
  store i32 %first_entry, i32* %first_entry.addr, align 4, !tbaa !5
  store i32 %num_entries, i32* %num_entries.addr, align 4, !tbaa !5
  %0 = bitcast [30 x i8]* %cmap_data to i8*
  call void @llvm.lifetime.start(i64 30, i8* %0) #1
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cmap_initial_6, i32 0, i32 0), i64 30) #7
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 18
  %arraydecay2 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay2, i64 18
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr3, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds i8, i8* %arraydecay4, i64 18
  %arrayidx6 = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  %2 = load i8, i8* %arrayidx6, align 1, !tbaa !20
  %conv7 = zext i8 %2 to i32
  %add = add i32 %shl, %conv7
  %3 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul = mul i32 %3, 2
  %add8 = add i32 %add, %mul
  call void @put_u16(i8* %add.ptr, i32 %add8) #8
  %arraydecay9 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 22
  %arraydecay11 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 22
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 0
  %4 = load i8, i8* %arrayidx13, align 1, !tbaa !20
  %conv14 = zext i8 %4 to i32
  %shl15 = shl i32 %conv14, 8
  %arraydecay16 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 22
  %arrayidx18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  %5 = load i8, i8* %arrayidx18, align 1, !tbaa !20
  %conv19 = zext i8 %5 to i32
  %add20 = add i32 %shl15, %conv19
  %6 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul21 = mul i32 %6, 2
  %add22 = add i32 %add20, %mul21
  call void @put_u16(i8* %add.ptr10, i32 %add22) #8
  %arraydecay23 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr24 = getelementptr inbounds i8, i8* %arraydecay23, i64 26
  %7 = load i32, i32* %first_entry.addr, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr24, i32 %7) #8
  %arraydecay25 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %add.ptr26 = getelementptr inbounds i8, i8* %arraydecay25, i64 28
  %8 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  call void @put_u16(i8* %add.ptr26, i32 %8) #8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [30 x i8], [30 x i8]* %cmap_data, i32 0, i32 0
  %call28 = call i32 @stream_write(%struct.stream_s* %9, i8* %arraydecay27, i32 30) #8
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %entries.addr, align 8, !tbaa !1
  %12 = load i32, i32* %first_entry.addr, align 4, !tbaa !5
  %mul29 = mul i32 %12, 2
  %idx.ext = zext i32 %mul29 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %mul31 = mul i32 %13, 2
  %call32 = call i32 @stream_write(%struct.stream_s* %10, i8* %add.ptr30, i32 %mul31) #8
  %14 = bitcast [30 x i8]* %cmap_data to i8*
  call void @llvm.lifetime.end(i64 30, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_short(%struct.stream_s* %s, i16 signext %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %v.addr = alloca i16, align 2
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i16 %v, i16* %v.addr, align 2, !tbaa !55
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i16, i16* %v.addr, align 2, !tbaa !55
  %conv = sext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i8
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext %conv1) #8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i16, i16* %v.addr, align 2, !tbaa !55
  %conv2 = trunc i16 %3 to i8
  %call3 = call i32 @spputc(%struct.stream_s* %2, i8 zeroext %conv2) #8
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!10 = !{!11, !2, i64 0}
!11 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!12 = !{!13, !6, i64 372}
!13 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !14, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !16, i64 156, !6, i64 160, !17, i64 168, !18, i64 272, !18, i64 324}
!14 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!15 = !{!"gs_matrix_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!16 = !{!"float", !3, i64 0}
!17 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!18 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!19 = !{!11, !6, i64 8}
!20 = !{!3, !3, i64 0}
!21 = !{!22, !2, i64 16}
!22 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !14, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !15, i64 80, !15, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !16, i64 156, !6, i64 160, !17, i64 168, !18, i64 272, !18, i64 324, !23, i64 376, !26, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !27, i64 448}
!23 = !{!"gs_rect_s", !24, i64 0, !24, i64 16}
!24 = !{!"gs_point_s", !25, i64 0, !25, i64 8}
!25 = !{!"double", !3, i64 0}
!26 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!27 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !8, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !8, i64 120, !8, i64 128, !8, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !8, i64 200}
!28 = !{!29, !2, i64 40}
!29 = !{!"gs_glyph_data_s", !30, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!30 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!31 = !{!22, !2, i64 472}
!32 = !{!29, !6, i64 8}
!33 = !{!34, !6, i64 1036}
!34 = !{!"post_s", !3, i64 0, !6, i64 1028, !6, i64 1032, !6, i64 1036}
!35 = !{!36, !6, i64 0}
!36 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !6, i64 28, !6, i64 32}
!37 = !{!36, !6, i64 4}
!38 = !{!36, !6, i64 8}
!39 = !{!36, !6, i64 12}
!40 = !{!36, !6, i64 16}
!41 = !{!36, !6, i64 28}
!42 = !{!36, !6, i64 32}
!43 = !{!44, !6, i64 0}
!44 = !{!"gs_type42_mtx_s", !6, i64 0, !8, i64 8, !6, i64 16}
!45 = !{!29, !2, i64 0}
!46 = !{!44, !6, i64 16}
!47 = !{!13, !2, i64 200}
!48 = !{!34, !6, i64 1028}
!49 = !{!50, !3, i64 0}
!50 = !{!"post_glyph_s", !3, i64 0, !3, i64 1, !51, i64 2}
!51 = !{!"short", !3, i64 0}
!52 = !{!50, !3, i64 1}
!53 = !{!50, !51, i64 2}
!54 = !{i64 0, i64 1, !20, i64 1, i64 1, !20, i64 2, i64 2, !55}
!55 = !{!51, !51, i64 0}
!56 = !{!34, !6, i64 1032}
!57 = !{!22, !6, i64 512}
!58 = !{!25, !25, i64 0}
!59 = !{!22, !2, i64 480}
!60 = !{!16, !16, i64 0}
!61 = !{!22, !2, i64 448}
!62 = !{!13, !2, i64 184}
!63 = !{!64, !6, i64 0}
!64 = !{!"gs_font_info_s", !6, i64 0, !6, i64 4, !6, i64 8, !65, i64 12, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !11, i64 88, !11, i64 104, !11, i64 120, !11, i64 136, !6, i64 152}
!65 = !{!"gs_int_rect_s", !66, i64 0, !66, i64 8}
!66 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!67 = !{!64, !6, i64 152}
!68 = !{!13, !2, i64 240}
!69 = !{!70, !2, i64 8}
!70 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!71 = !{!70, !2, i64 16}
