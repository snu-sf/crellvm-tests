; ModuleID = './gsgdata.bc'
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
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, {}* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }

@.str = private unnamed_addr constant [16 x i8] c"gs_glyph_data_t\00", align 1
@st_glyph_data = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_glyph_data_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_glyph_data_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@free_by_font_procs = internal constant { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* } { void (%struct.gs_glyph_data_s*, i8*)* @glyph_data_free_by_font, i32 (%struct.gs_glyph_data_s*, i32, i32)* @glyph_data_substring_by_font }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"glyph_data_substring\00", align 1
@no_free_procs = internal constant { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* } { void (%struct.gs_glyph_data_s*, i8*)* @glyph_data_free_permanent, i32 (%struct.gs_glyph_data_s*, i32, i32)* @glyph_data_substring_permanent }, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_glyph_data_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pgd = alloca %struct.gs_glyph_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_glyph_data_s*
  store %struct.gs_glyph_data_s* %2, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %4 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %5 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %5, i32 0, i32 0
  %call = call %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s* %4, %struct.gs_const_bytestring_s* %bits) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !10
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.1, %sw.bb
  %9 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @gs_glyph_data_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pgd = alloca %struct.gs_glyph_data_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_glyph_data_s*
  store %struct.gs_glyph_data_s* %2, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 0
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @reloc_const_bytestring(%struct.gs_const_bytestring_s* %bits, %struct.gc_state_s* %4) #4
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !12
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %10, %struct.gc_state_s* %11) #4
  %12 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %proc_data1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %12, i32 0, i32 2
  store i8* %call, i8** %proc_data1, align 8, !tbaa !7
  %13 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_glyph_data_substring(%struct.gs_glyph_data_s* %pgd, i32 %offset, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 0
  %size1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !14
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %4, i32 0, i32 0
  %size3 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 1
  %5 = load i32, i32* %size3, align 4, !tbaa !14
  %6 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %sub = sub i32 %5, %6
  %cmp4 = icmp ugt i32 %3, %sub
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %7, i32 0, i32 1
  %8 = load %struct.gs_glyph_data_procs_s*, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !15
  %substring = getelementptr inbounds %struct.gs_glyph_data_procs_s, %struct.gs_glyph_data_procs_s* %8, i32 0, i32 1
  %substring5 = bitcast {}** %substring to i32 (%struct.gs_glyph_data_s*, i32, i32)**
  %9 = load i32 (%struct.gs_glyph_data_s*, i32, i32)*, i32 (%struct.gs_glyph_data_s*, i32, i32)** %substring5, align 8, !tbaa !16
  %10 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %11 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %12 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 %9(%struct.gs_glyph_data_s* %10, i32 %11, i32 %12) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @gs_glyph_data_free(%struct.gs_glyph_data_s* %pgd, i8* %cname) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_glyph_data_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 1
  %2 = load %struct.gs_glyph_data_procs_s*, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !15
  %cmp1 = icmp ne %struct.gs_glyph_data_procs_s* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 1
  %4 = load %struct.gs_glyph_data_procs_s*, %struct.gs_glyph_data_procs_s** %procs3, align 8, !tbaa !15
  %free = getelementptr inbounds %struct.gs_glyph_data_procs_s, %struct.gs_glyph_data_procs_s* %4, i32 0, i32 0
  %5 = load void (%struct.gs_glyph_data_s*, i8*)*, void (%struct.gs_glyph_data_s*, i8*)** %free, align 8, !tbaa !18
  %6 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %5(%struct.gs_glyph_data_s* %6, i8* %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %8) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %0, i8* null, i32 0, %struct.gs_font_s* null) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %pgd, i8* %data, i32 %size, %struct.gs_font_s* %font) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  store i8* %0, i8** %data1, align 8, !tbaa !19
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 0
  %size3 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 1
  store i32 %2, i32* %size3, align 4, !tbaa !20
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits4 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %4, i32 0, i32 0
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits4, i32 0, i32 2
  store i8* null, i8** %bytes, align 8, !tbaa !21
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to i8*
  %7 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %7, i32 0, i32 2
  store i8* %6, i8** %proc_data, align 8, !tbaa !7
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %8, null
  %cond = select i1 %tobool, %struct.gs_glyph_data_procs_s* bitcast ({ void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }* @free_by_font_procs to %struct.gs_glyph_data_procs_s*), %struct.gs_glyph_data_procs_s* bitcast ({ void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }* @no_free_procs to %struct.gs_glyph_data_procs_s*)
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %9, i32 0, i32 1
  store %struct.gs_glyph_data_procs_s* %cond, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_glyph_data_from_bytes(%struct.gs_glyph_data_s* %pgd, i8* %bytes, i32 %offset, i32 %size, %struct.gs_font_s* %font) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %bytes.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 0
  %bytes1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 2
  store i8* %0, i8** %bytes1, align 8, !tbaa !21
  %2 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 0
  store i8* %add.ptr, i8** %data, align 8, !tbaa !19
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %5 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %5, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits3, i32 0, i32 1
  store i32 %4, i32* %size4, align 4, !tbaa !20
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to i8*
  %8 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %8, i32 0, i32 2
  store i8* %7, i8** %proc_data, align 8, !tbaa !7
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %9, null
  %cond = select i1 %tobool, %struct.gs_glyph_data_procs_s* bitcast ({ void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }* @free_by_font_procs to %struct.gs_glyph_data_procs_s*), %struct.gs_glyph_data_procs_s* bitcast ({ void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }* @no_free_procs to %struct.gs_glyph_data_procs_s*)
  %10 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %10, i32 0, i32 1
  store %struct.gs_glyph_data_procs_s* %cond, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_ptr_procs_s* @enum_const_bytestring(%struct.enum_ptr_s*, %struct.gs_const_bytestring_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @reloc_const_bytestring(%struct.gs_const_bytestring_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @glyph_data_free_by_font(%struct.gs_glyph_data_s* %pgd, i8* %cname) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %2 = bitcast i8* %1 to %struct.gs_font_s*
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_free_const_bytestring(%struct.gs_memory_s* %3, %struct.gs_const_bytestring_s* %bits, i8* %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @glyph_data_substring_by_font(%struct.gs_glyph_data_s* %pgd, i32 %offset, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %font = alloca %struct.gs_font_s*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !7
  %3 = bitcast i8* %2 to %struct.gs_font_s*
  store %struct.gs_font_s* %3, %struct.gs_font_s** %font, align 8, !tbaa !1
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %5, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8, !tbaa !30
  store i8* %6, i8** %data, align 8, !tbaa !1
  %7 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %7, i32 0, i32 0
  %bytes = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 2
  %8 = load i8*, i8** %bytes, align 8, !tbaa !31
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %10 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @glyph_data_substring_permanent(%struct.gs_glyph_data_s* %9, i32 %10, i32 %11) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %12, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %13 = load i8*, i8** %data, align 8, !tbaa !1
  %14 = load i8*, i8** %data, align 8, !tbaa !1
  %15 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %16 to i64
  %call4 = call i8* @memmove(i8* %13, i8* %add.ptr, i64 %conv) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %19 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !32
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !22
  %22 = load i8*, i8** %data, align 8, !tbaa !1
  %23 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits7 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %23, i32 0, i32 0
  %size8 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits7, i32 0, i32 1
  %24 = load i32, i32* %size8, align 4, !tbaa !14
  %25 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call9 = call i8* %19(%struct.gs_memory_s* %21, i8* %22, i32 %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #4
  %26 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits10 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %26, i32 0, i32 0
  %data11 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits10, i32 0, i32 0
  store i8* %call9, i8** %data11, align 8, !tbaa !30
  %27 = load i32, i32* %size.addr, align 4, !tbaa !5
  %28 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits12 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %28, i32 0, i32 0
  %size13 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits12, i32 0, i32 1
  store i32 %27, i32* %size13, align 4, !tbaa !14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %29 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gs_free_const_bytestring(%struct.gs_memory_s*, %struct.gs_const_bytestring_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @glyph_data_substring_permanent(%struct.gs_glyph_data_s* %pgd, i32 %offset, i32 %size) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !30
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !30
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %4, i32 0, i32 0
  %size2 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits1, i32 0, i32 1
  store i32 %3, i32* %size2, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @glyph_data_free_permanent(%struct.gs_glyph_data_s* %pgd, i8* %cname) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

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
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_glyph_data_s", !9, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!9 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!10 = !{!11, !2, i64 0}
!11 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!12 = !{!13, !2, i64 0}
!13 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!14 = !{!8, !6, i64 8}
!15 = !{!8, !2, i64 24}
!16 = !{!17, !2, i64 8}
!17 = !{!"gs_glyph_data_procs_s", !2, i64 0, !2, i64 8}
!18 = !{!17, !2, i64 0}
!19 = !{!9, !2, i64 0}
!20 = !{!9, !6, i64 8}
!21 = !{!9, !2, i64 16}
!22 = !{!23, !2, i64 16}
!23 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !24, i64 40, !25, i64 56, !2, i64 64, !2, i64 72, !26, i64 80, !26, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !27, i64 156, !6, i64 160, !28, i64 168, !29, i64 272, !29, i64 324}
!24 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!25 = !{!"long", !3, i64 0}
!26 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!29 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!30 = !{!8, !2, i64 0}
!31 = !{!8, !2, i64 16}
!32 = !{!33, !2, i64 152}
!33 = !{!"gs_memory_s", !2, i64 0, !34, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
