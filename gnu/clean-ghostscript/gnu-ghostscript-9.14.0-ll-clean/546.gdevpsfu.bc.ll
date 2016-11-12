; ModuleID = './gdevpsfu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
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
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_font_type1_s = type opaque
%struct.psf_outline_glyphs_s = type { i64, i64*, i64*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"psf_check_outline_glyphs\00", align 1

; Function Attrs: nounwind uwtable
define void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %ppge, %struct.gs_font_s* %font, i64* %subset_list, i32 %subset_size, i32 %glyph_space) #0 {
entry:
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %subset_list.addr = alloca i64*, align 8
  %subset_size.addr = alloca i32, align 4
  %glyph_space.addr = alloca i32, align 4
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64* %subset_list, i64** %subset_list.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !5
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !7
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %font1 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %1, i32 0, i32 0
  store %struct.gs_font_s* %0, %struct.gs_font_s** %font1, align 8, !tbaa !8
  %2 = load i64*, i64** %subset_list.addr, align 8, !tbaa !1
  %3 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %3, i32 0, i32 1
  %selected = getelementptr inbounds %struct.su_, %struct.su_* %subset, i32 0, i32 0
  %list = bitcast %union.sus_* %selected to i64**
  store i64* %2, i64** %list, align 8, !tbaa !1
  %4 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %5 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %5, i32 0, i32 1
  %size = getelementptr inbounds %struct.su_, %struct.su_* %subset2, i32 0, i32 1
  store i32 %4, i32* %size, align 4, !tbaa !12
  %6 = load i32, i32* %glyph_space.addr, align 4, !tbaa !7
  %7 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %glyph_space3 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %7, i32 0, i32 2
  store i32 %6, i32* %glyph_space3, align 4, !tbaa !13
  %8 = load i64*, i64** %subset_list.addr, align 8, !tbaa !1
  %tobool = icmp ne i64* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %9, 0
  %cond = select i1 %tobool4, i32 (%struct.psf_glyph_enum_s*, i64*)* @enumerate_range_next, i32 (%struct.psf_glyph_enum_s*, i64*)* @enumerate_font_next
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 (%struct.psf_glyph_enum_s*, i64*)* [ @enumerate_glyphs_next, %cond.true ], [ %cond, %cond.false ]
  %10 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %enumerate_next = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %10, i32 0, i32 4
  store i32 (%struct.psf_glyph_enum_s*, i64*)* %cond5, i32 (%struct.psf_glyph_enum_s*, i64*)** %enumerate_next, align 8, !tbaa !14
  %11 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @enumerate_glyphs_next(%struct.psf_glyph_enum_s* %ppge, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %0, i32 0, i32 3
  %1 = load i64, i64* %index, align 8, !tbaa !15
  %2 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %2, i32 0, i32 1
  %size = getelementptr inbounds %struct.su_, %struct.su_* %subset, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !12
  %conv = zext i32 %3 to i64
  %cmp = icmp uge i64 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %4, i32 0, i32 3
  %5 = load i64, i64* %index2, align 8, !tbaa !15
  %inc = add i64 %5, 1
  store i64 %inc, i64* %index2, align 8, !tbaa !15
  %6 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset3 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %6, i32 0, i32 1
  %selected = getelementptr inbounds %struct.su_, %struct.su_* %subset3, i32 0, i32 0
  %list = bitcast %union.sus_* %selected to i64**
  %7 = load i64*, i64** %list, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %5
  %8 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %9 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %8, i64* %9, align 8, !tbaa !16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @enumerate_range_next(%struct.psf_glyph_enum_s* %ppge, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %0, i32 0, i32 3
  %1 = load i64, i64* %index, align 8, !tbaa !15
  %2 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %2, i32 0, i32 1
  %size = getelementptr inbounds %struct.su_, %struct.su_* %subset, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !12
  %conv = zext i32 %3 to i64
  %cmp = icmp uge i64 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %4, i32 0, i32 3
  %5 = load i64, i64* %index2, align 8, !tbaa !15
  %inc = add i64 %5, 1
  store i64 %inc, i64* %index2, align 8, !tbaa !15
  %add = add i64 %5, 2147483648
  %6 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add, i64* %6, align 8, !tbaa !16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @enumerate_font_next(%struct.psf_glyph_enum_s* %ppge, i64* %pglyph) #0 {
entry:
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %font1 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %1, i32 0, i32 0
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font1, align 8, !tbaa !8
  store %struct.gs_font_s* %2, %struct.gs_font_s** %font, align 8, !tbaa !1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %4, i32 0, i32 3
  %5 = load i64, i64* %index2, align 8, !tbaa !15
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %8 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !17
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %10 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %glyph_space = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %10, i32 0, i32 2
  %11 = load i32, i32* %glyph_space, align 4, !tbaa !13
  %12 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_font_s* %9, i32* %index, i32 %11, i64* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %index, align 4, !tbaa !5
  %conv3 = sext i32 %13 to i64
  %14 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %14, i32 0, i32 3
  store i64 %conv3, i64* %index4, align 8, !tbaa !15
  %15 = load i32, i32* %index, align 4, !tbaa !5
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.10

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  %17 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi i32 [ %17, %cond.true.8 ], [ 0, %cond.false.9 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %cond11
}

; Function Attrs: nounwind uwtable
define void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %ppge) #0 {
entry:
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %0 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %0, i32 0, i32 3
  store i64 0, i64* %index, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %ppge, %struct.gs_font_s* %font, i8* %subset_bits, i32 %subset_size, i32 %glyph_space) #0 {
entry:
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %subset_bits.addr = alloca i8*, align 8
  %subset_size.addr = alloca i32, align 4
  %glyph_space.addr = alloca i32, align 4
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i8* %subset_bits, i8** %subset_bits.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !5
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !7
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %font1 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %1, i32 0, i32 0
  store %struct.gs_font_s* %0, %struct.gs_font_s** %font1, align 8, !tbaa !8
  %2 = load i8*, i8** %subset_bits.addr, align 8, !tbaa !1
  %3 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %3, i32 0, i32 1
  %selected = getelementptr inbounds %struct.su_, %struct.su_* %subset, i32 0, i32 0
  %bits = bitcast %union.sus_* %selected to i8**
  store i8* %2, i8** %bits, align 8, !tbaa !1
  %4 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %5 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %5, i32 0, i32 1
  %size = getelementptr inbounds %struct.su_, %struct.su_* %subset2, i32 0, i32 1
  store i32 %4, i32* %size, align 4, !tbaa !12
  %6 = load i32, i32* %glyph_space.addr, align 4, !tbaa !7
  %7 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %glyph_space3 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %7, i32 0, i32 2
  store i32 %6, i32* %glyph_space3, align 4, !tbaa !13
  %8 = load i8*, i8** %subset_bits.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %9, 0
  %cond = select i1 %tobool4, i32 (%struct.psf_glyph_enum_s*, i64*)* @enumerate_range_next, i32 (%struct.psf_glyph_enum_s*, i64*)* @enumerate_font_next
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 (%struct.psf_glyph_enum_s*, i64*)* [ @enumerate_bits_next, %cond.true ], [ %cond, %cond.false ]
  %10 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %enumerate_next = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %10, i32 0, i32 4
  store i32 (%struct.psf_glyph_enum_s*, i64*)* %cond5, i32 (%struct.psf_glyph_enum_s*, i64*)** %enumerate_next, align 8, !tbaa !14
  %11 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @enumerate_bits_next(%struct.psf_glyph_enum_s* %ppge, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %0, i32 0, i32 3
  %1 = load i64, i64* %index, align 8, !tbaa !15
  %2 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %2, i32 0, i32 1
  %size = getelementptr inbounds %struct.su_, %struct.su_* %subset, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !12
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %4, i32 0, i32 3
  %5 = load i64, i64* %index2, align 8, !tbaa !15
  %shr = lshr i64 %5, 3
  %6 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %subset3 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %6, i32 0, i32 1
  %selected = getelementptr inbounds %struct.su_, %struct.su_* %subset3, i32 0, i32 0
  %bits = bitcast %union.sus_* %selected to i8**
  %7 = load i8*, i8** %bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %shr
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv4 = zext i8 %8 to i32
  %9 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %9, i32 0, i32 3
  %10 = load i64, i64* %index5, align 8, !tbaa !15
  %and = and i64 %10, 7
  %sh_prom = trunc i64 %and to i32
  %shr6 = ashr i32 128, %sh_prom
  %and7 = and i32 %conv4, %shr6
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index8 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %11, i32 0, i32 3
  %12 = load i64, i64* %index8, align 8, !tbaa !15
  %inc = add i64 %12, 1
  store i64 %inc, i64* %index8, align 8, !tbaa !15
  %add = add i64 %12, 2147483648
  %13 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add, i64* %13, align 8, !tbaa !16
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %index9 = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %14, i32 0, i32 3
  %15 = load i64, i64* %index9, align 8, !tbaa !15
  %inc10 = add i64 %15, 1
  store i64 %inc10, i64* %index9, align 8, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %ppge, i64* %pglyph) #0 {
entry:
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %enumerate_next = getelementptr inbounds %struct.psf_glyph_enum_s, %struct.psf_glyph_enum_s* %0, i32 0, i32 4
  %1 = load i32 (%struct.psf_glyph_enum_s*, i64*)*, i32 (%struct.psf_glyph_enum_s*, i64*)** %enumerate_next, align 8, !tbaa !14
  %2 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.psf_glyph_enum_s* %2, i64* %3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psf_add_subset_pieces(i64* %glyphs, i32* %pcount, i32 %max_count, i32 %max_pieces, %struct.gs_font_s* %font) #0 {
entry:
  %retval = alloca i32, align 4
  %glyphs.addr = alloca i64*, align 8
  %pcount.addr = alloca i32*, align 8
  %max_count.addr = alloca i32, align 4
  %max_pieces.addr = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %info = alloca %struct.gs_glyph_info_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %max_count, i32* %max_count.addr, align 4, !tbaa !5
  store i32 %max_pieces, i32* %max_pieces.addr, align 4, !tbaa !5
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  store i32 %3, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %9 = load i32, i32* %max_pieces.addr, align 4, !tbaa !5
  %add = add i32 %8, %9
  %10 = load i32, i32* %max_count.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %add, %10
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %12 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !24
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %14 to i64
  %15 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 %idxprom
  %16 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %call = call i32 %12(%struct.gs_font_s* %13, i64 %16, %struct.gs_matrix_s* null, i32 8, %struct.gs_glyph_info_s* %info) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %18 = load i32, i32* %count, align 4, !tbaa !5
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 4
  %19 = load i32, i32* %num_pieces, align 4, !tbaa !25
  %add4 = add i32 %18, %19
  %20 = load i32, i32* %max_count.addr, align 4, !tbaa !5
  %cmp5 = icmp ugt i32 %add4, %20
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %for.body
  %21 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom9 = zext i32 %21 to i64
  %22 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %idxprom9
  %pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 5
  store i64* %arrayidx10, i64** %pieces, align 8, !tbaa !30
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 20
  %glyph_info12 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs11, i32 0, i32 7
  %24 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info12, align 8, !tbaa !24
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = zext i32 %26 to i64
  %27 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %27, i64 %idxprom13
  %28 = load i64, i64* %arrayidx14, align 8, !tbaa !16
  %call15 = call i32 %24(%struct.gs_font_s* %25, i64 %28, %struct.gs_matrix_s* null, i32 24, %struct.gs_glyph_info_s* %info) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %29, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.8
  %num_pieces18 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 4
  %30 = load i32, i32* %num_pieces18, align 4, !tbaa !25
  %31 = load i32, i32* %count, align 4, !tbaa !5
  %add19 = add i32 %31, %30
  store i32 %add19, i32* %count, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.6, %if.then.3
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.22 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %34, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %count, align 4, !tbaa !5
  %36 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %35, i32* %36, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %for.end, %cleanup
  %37 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @psf_sort_glyphs(i64* %glyphs, i32 %count) #0 {
entry:
  %glyphs.addr = alloca i64*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %3 = bitcast i64* %2 to i8*
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  call void @qsort(i8* %3, i64 %conv, i64 8, i32 (i8*, i8*)* @compare_glyphs) #4
  store i32 0, i32* %n, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %idxprom4 = sext i32 %sub to i64
  %12 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %12, i64 %idxprom4
  %13 = load i64, i64* %arrayidx5, align 8, !tbaa !16
  %cmp6 = icmp ne i64 %10, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %15 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %15, i64 %idxprom8
  %16 = load i64, i64* %arrayidx9, align 8, !tbaa !16
  %17 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  %idxprom10 = sext i32 %17 to i64
  %18 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %18, i64 %idxprom10
  store i64 %16, i64* %arrayidx11, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %20
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_glyphs(i8* %pg1, i8* %pg2) #0 {
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
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !16
  store i64 %3, i64* %g1, align 8, !tbaa !16
  %4 = bitcast i64* %g2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %pg2.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !16
  store i64 %7, i64* %g2, align 8, !tbaa !16
  %8 = load i64, i64* %g1, align 8, !tbaa !16
  %9 = load i64, i64* %g2, align 8, !tbaa !16
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %g1, align 8, !tbaa !16
  %11 = load i64, i64* %g2, align 8, !tbaa !16
  %cmp1 = icmp ugt i64 %10, %11
  %cond = select i1 %cmp1, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %12 = bitcast i64* %g2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %g1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i32 %cond2
}

; Function Attrs: nounwind uwtable
define i32 @psf_sorted_glyphs_index_of(i64* %glyphs, i32 %count, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %glyphs.addr = alloca i64*, align 8
  %count.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mid = alloca i32, align 4
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !16
  %0 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %lo, align 4, !tbaa !5
  %1 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %hi, align 4, !tbaa !5
  %3 = load i32, i32* %hi, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %5 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %cmp1 = icmp ult i64 %4, %6
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %8 = load i32, i32* %hi, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx2, align 8, !tbaa !16
  %cmp3 = icmp ugt i64 %7, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end.5
  %11 = load i32, i32* %hi, align 4, !tbaa !5
  %12 = load i32, i32* %lo, align 4, !tbaa !5
  %sub6 = sub nsw i32 %11, %12
  %cmp7 = icmp sgt i32 %sub6, 1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %lo, align 4, !tbaa !5
  %15 = load i32, i32* %hi, align 4, !tbaa !5
  %add = add nsw i32 %14, %15
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4, !tbaa !5
  %16 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %17 = load i32, i32* %mid, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %18 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %18, i64 %idxprom8
  %19 = load i64, i64* %arrayidx9, align 8, !tbaa !16
  %cmp10 = icmp uge i64 %16, %19
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %20 = load i32, i32* %mid, align 4, !tbaa !5
  store i32 %20, i32* %lo, align 4, !tbaa !5
  br label %if.end.12

if.else:                                          ; preds = %while.body
  %21 = load i32, i32* %mid, align 4, !tbaa !5
  store i32 %21, i32* %hi, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %22 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %24 = load i32, i32* %lo, align 4, !tbaa !5
  %idxprom13 = sext i32 %24 to i64
  %25 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %25, i64 %idxprom13
  %26 = load i64, i64* %arrayidx14, align 8, !tbaa !16
  %cmp15 = icmp eq i64 %23, %26
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %27 = load i32, i32* %lo, align 4, !tbaa !5
  br label %cond.end.21

cond.false:                                       ; preds = %while.end
  %28 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %29 = load i32, i32* %hi, align 4, !tbaa !5
  %idxprom16 = sext i32 %29 to i64
  %30 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %30, i64 %idxprom16
  %31 = load i64, i64* %arrayidx17, align 8, !tbaa !16
  %cmp18 = icmp eq i64 %28, %31
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  %32 = load i32, i32* %hi, align 4, !tbaa !5
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi i32 [ %32, %cond.true.19 ], [ -1, %cond.false.20 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true
  %cond22 = phi i32 [ %27, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.21, %if.then.4, %if.then
  %33 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @psf_sorted_glyphs_include(i64* %glyphs, i32 %count, i64 %glyph) #0 {
entry:
  %glyphs.addr = alloca i64*, align 8
  %count.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  store i64* %glyphs, i64** %glyphs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !16
  %0 = load i64*, i64** %glyphs.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !16
  %call = call i32 @psf_sorted_glyphs_index_of(i64* %0, i32 %1, i64 %2) #4
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @psf_check_outline_glyphs(%struct.gs_font_base_s* %pfont, %struct.psf_glyph_enum_s* %ppge, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* %glyph_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  %ppge.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %glyph_data.addr = alloca i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, align 8
  %members = alloca i32, align 4
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %good_glyphs = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %ignore_font = alloca %struct.gs_font_type1_s*, align 8
  %info = alloca %struct.gs_glyph_info_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %ppge, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* %glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 16
  %2 = load i32, i32* %WMode, align 4, !tbaa !31
  %shl = shl i32 1, %2
  store i32 %shl, i32* %members, align 4, !tbaa !5
  %3 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %good_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %good_glyphs, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %6 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %ppge.addr, align 8, !tbaa !1
  %call = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %6, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #1
  %8 = bitcast %struct.gs_font_type1_s** %ignore_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !34
  %memory2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory2, align 8, !tbaa !35
  %14 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %16 = load i64, i64* %glyph, align 8, !tbaa !16
  %call3 = call i32 %14(%struct.gs_font_base_s* %15, i64 %16, %struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s** %ignore_font) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %18, -21
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #4
  %20 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %20, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %21 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !38
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_base_s* %22 to %struct.gs_font_s*
  %24 = load i64, i64* %glyph, align 8, !tbaa !16
  %25 = load i32, i32* %members, align 4, !tbaa !5
  %call10 = call i32 %21(%struct.gs_font_s* %23, i64 %24, %struct.gs_matrix_s* null, i32 %25, %struct.gs_glyph_info_s* %info) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %26, -10
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %27, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.13
  %29 = load i32, i32* %good_glyphs, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %good_glyphs, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.12, %if.end.8, %if.then.7, %if.then
  %30 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %30) #1
  %31 = bitcast %struct.gs_font_type1_s** %ignore_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.20 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %good_glyphs, align 4, !tbaa !5
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

if.else:                                          ; preds = %while.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

cleanup.20:                                       ; preds = %if.else, %if.then.19, %cleanup
  %34 = bitcast i32* %good_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @psf_get_outline_glyphs(%struct.psf_outline_glyphs_s* %pglyphs, %struct.gs_font_base_s* %pfont, i64* %orig_subset_glyphs, i32 %orig_subset_size, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* %glyph_data) #0 {
entry:
  %retval = alloca i32, align 4
  %pglyphs.addr = alloca %struct.psf_outline_glyphs_s*, align 8
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  %orig_subset_glyphs.addr = alloca i64*, align 8
  %orig_subset_size.addr = alloca i32, align 4
  %glyph_data.addr = alloca i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, align 8
  %notdef = alloca i64, align 8
  %subset_glyphs = alloca i64*, align 8
  %subset_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %code = alloca i32, align 4
  %genum13 = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %code14 = alloca i32, align 4
  %code24 = alloca i32, align 4
  %keep_size = alloca i32, align 4
  %i = alloca i32, align 4
  %info = alloca %struct.gs_glyph_info_s, align 8
  %glyph36 = alloca i64, align 8
  store %struct.psf_outline_glyphs_s* %pglyphs, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  store i64* %orig_subset_glyphs, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  store i32 %orig_subset_size, i32* %orig_subset_size.addr, align 4, !tbaa !5
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* %glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data.addr, align 8, !tbaa !1
  %0 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 2147483647, i64* %notdef, align 8, !tbaa !16
  %1 = bitcast i64** %subset_glyphs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64*, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  store i64* %2, i64** %subset_glyphs, align 8, !tbaa !1
  %3 = bitcast i32* %subset_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %orig_subset_size.addr, align 4, !tbaa !5
  store i32 %4, i32* %subset_size, align 4, !tbaa !5
  %5 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %tobool = icmp ne i64* %5, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %subset_size, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %cmp = icmp ugt i64 %conv, 1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end:                                           ; preds = %if.then
  %7 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %subset_data = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %7, i32 0, i32 1
  %8 = load i64*, i64** %subset_data, align 8, !tbaa !39
  %9 = bitcast i64* %8 to i8*
  %10 = load i64*, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  %11 = bitcast i64* %10 to i8*
  %12 = load i32, i32* %subset_size, align 4, !tbaa !5
  %conv3 = zext i32 %12 to i64
  %mul = mul i64 8, %conv3
  %call = call i8* @memcpy(i8* %9, i8* %11, i64 %mul) #5
  %13 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %subset_data4 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %13, i32 0, i32 1
  %14 = load i64*, i64** %subset_data4, align 8, !tbaa !39
  store i64* %14, i64** %subset_glyphs, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %15 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_base_s* %17 to %struct.gs_font_s*
  %19 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %20 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %tobool6 = icmp ne i64* %20, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %21 = load i32, i32* %subset_size, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %cond.false ]
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %18, i64* %19, i32 %cond, i32 0) #4
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %23 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data.addr, align 8, !tbaa !1
  %call7 = call i32 @psf_check_outline_glyphs(%struct.gs_font_base_s* %22, %struct.psf_glyph_enum_s* %genum, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* %23) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %24, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %cond.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %28 = bitcast %struct.psf_glyph_enum_s* %genum13 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %28) #1
  %29 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast i32* %code14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_font_base_s* %31 to %struct.gs_font_s*
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum13, %struct.gs_font_s* %32, i64* null, i32 0, i32 0) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %cleanup.cont
  %call15 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum13, i64* %glyph) #4
  store i32 %call15, i32* %code14, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %call15, 1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %34 = load i64, i64* %glyph, align 8, !tbaa !16
  %call18 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %33, i64 %34) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  %35 = load i64, i64* %glyph, align 8, !tbaa !16
  store i64 %35, i64* %notdef, align 8, !tbaa !16
  br label %while.end

if.end.21:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %36 = bitcast i32* %code14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.psf_glyph_enum_s* %genum13 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %38) #1
  %39 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %tobool22 = icmp ne i64* %39, null
  br i1 %tobool22, label %if.then.23, label %if.end.54

if.then.23:                                       ; preds = %while.end
  %40 = bitcast i32* %code24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gs_font_base_s* %42 to %struct.gs_font_s*
  %call25 = call i32 @psf_add_subset_pieces(i64* %41, i32* %subset_size, i32 0, i32 2, %struct.gs_font_s* %43) #4
  store i32 %call25, i32* %code24, align 4, !tbaa !5
  %44 = bitcast i32* %keep_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %code24, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %46, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.23
  %47 = load i32, i32* %code24, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.29:                                        ; preds = %if.then.23
  %48 = load i64, i64* %notdef, align 8, !tbaa !16
  %cmp30 = icmp eq i64 %48, 2147483647
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.33:                                        ; preds = %if.end.29
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %keep_size, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %50 = load i32, i32* %subset_size, align 4, !tbaa !5
  %cmp34 = icmp ult i32 %49, %50
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %51) #1
  %52 = bitcast i64* %glyph36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %53 to i64
  %54 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %54, i64 %idxprom
  %55 = load i64, i64* %arrayidx, align 8, !tbaa !16
  store i64 %55, i64* %glyph36, align 8, !tbaa !16
  %56 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %56, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 7
  %57 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !38
  %58 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gs_font_base_s* %58 to %struct.gs_font_s*
  %60 = load i64, i64* %glyph36, align 8, !tbaa !16
  %call37 = call i32 %57(%struct.gs_font_s* %59, i64 %60, %struct.gs_matrix_s* null, i32 8, %struct.gs_glyph_info_s* %info) #4
  %cmp38 = icmp sge i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.body
  %61 = load i64, i64* %glyph36, align 8, !tbaa !16
  %62 = load i32, i32* %keep_size, align 4, !tbaa !5
  %inc = add i32 %62, 1
  store i32 %inc, i32* %keep_size, align 4, !tbaa !5
  %idxprom41 = zext i32 %62 to i64
  %63 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i64, i64* %63, i64 %idxprom41
  store i64 %61, i64* %arrayidx42, align 8, !tbaa !16
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %for.body
  %64 = bitcast i64* %glyph36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %65) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %inc44 = add i32 %66, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i32, i32* %keep_size, align 4, !tbaa !5
  store i32 %67, i32* %subset_size, align 4, !tbaa !5
  %68 = load i64, i64* %notdef, align 8, !tbaa !16
  %69 = load i32, i32* %subset_size, align 4, !tbaa !5
  %inc45 = add i32 %69, 1
  store i32 %inc45, i32* %subset_size, align 4, !tbaa !5
  %idxprom46 = zext i32 %69 to i64
  %70 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i64, i64* %70, i64 %idxprom46
  store i64 %68, i64* %arrayidx47, align 8, !tbaa !16
  %71 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %72 = load i32, i32* %subset_size, align 4, !tbaa !5
  %call48 = call i32 @psf_sort_glyphs(i64* %71, i32 %72) #4
  store i32 %call48, i32* %subset_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %for.end, %if.then.32, %if.then.28
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %keep_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %code24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %cleanup.58 [
    i32 0, label %cleanup.cont.53
  ]

cleanup.cont.53:                                  ; preds = %cleanup.49
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont.53, %while.end
  %76 = load i64, i64* %notdef, align 8, !tbaa !16
  %77 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %notdef55 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %77, i32 0, i32 0
  store i64 %76, i64* %notdef55, align 8, !tbaa !41
  %78 = load i64*, i64** %subset_glyphs, align 8, !tbaa !1
  %79 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %subset_glyphs56 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %79, i32 0, i32 2
  store i64* %78, i64** %subset_glyphs56, align 8, !tbaa !42
  %80 = load i32, i32* %subset_size, align 4, !tbaa !5
  %81 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %subset_size57 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %81, i32 0, i32 3
  store i32 %80, i32* %subset_size57, align 4, !tbaa !43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.54, %cleanup.49, %cleanup, %if.then.2
  %82 = bitcast i32* %subset_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i64** %subset_glyphs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"psf_glyph_enum_s", !2, i64 0, !10, i64 8, !3, i64 24, !11, i64 32, !2, i64 40}
!10 = !{!"su_", !3, i64 0, !6, i64 8}
!11 = !{!"long", !3, i64 0}
!12 = !{!9, !6, i64 16}
!13 = !{!9, !3, i64 24}
!14 = !{!9, !2, i64 40}
!15 = !{!9, !11, i64 32}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !2, i64 216}
!18 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !19, i64 40, !11, i64 56, !2, i64 64, !2, i64 72, !20, i64 80, !20, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !21, i64 156, !6, i64 160, !22, i64 168, !23, i64 272, !23, i64 324}
!19 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!20 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!23 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!24 = !{!18, !2, i64 224}
!25 = !{!26, !6, i64 88}
!26 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !27, i64 40, !29, i64 56, !6, i64 88, !2, i64 96}
!27 = !{!"gs_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"double", !3, i64 0}
!29 = !{!"gs_rect_s", !27, i64 0, !27, i64 16}
!30 = !{!26, !2, i64 96}
!31 = !{!32, !6, i64 148}
!32 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !19, i64 40, !11, i64 56, !2, i64 64, !2, i64 72, !20, i64 80, !20, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !21, i64 156, !6, i64 160, !22, i64 168, !23, i64 272, !23, i64 324, !29, i64 376, !33, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!33 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!34 = !{!32, !2, i64 16}
!35 = !{!36, !2, i64 40}
!36 = !{!"gs_glyph_data_s", !37, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!37 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!38 = !{!32, !2, i64 224}
!39 = !{!40, !2, i64 8}
!40 = !{!"psf_outline_glyphs_s", !11, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!41 = !{!40, !11, i64 0}
!42 = !{!40, !2, i64 16}
!43 = !{!40, !6, i64 24}
