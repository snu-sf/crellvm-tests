; ModuleID = './gsparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, {}*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_param_item_s = type { i8*, i8, i16 }

@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@xfer_item_sizes = internal constant [14 x i8] c"\00\04\04\08\04\10\10\10\10\10\10\00\00\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"int array => float array\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_ptr_procs_s* @gs_param_typed_value_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pvalue = alloca %struct.gs_param_typed_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_typed_value_s*
  store %struct.gs_param_typed_value_s* %2, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !7
  switch i32 %5, label %sw.default.30 [
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.14
    i32 8, label %sw.bb.18
    i32 9, label %sw.bb.22
    i32 10, label %sw.bb.26
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %6 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %6, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !9
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !11
  %9 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %9, i32 0, i32 0
  %s3 = bitcast %union.gs_param_value_s* %value2 to %struct.gs_param_string_s*
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s3, i32 0, i32 1
  %10 = load i32, i32* %size4, align 4, !tbaa !13
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 1
  store i32 %10, i32* %size5, align 4, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %sw.bb
  %12 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %12, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value7 to %struct.gs_param_string_s*
  %data8 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %n, i32 0, i32 0
  %13 = load i8*, i8** %data8, align 8, !tbaa !9
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %13, i8** %ptr9, align 8, !tbaa !11
  %15 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %15, i32 0, i32 0
  %n11 = bitcast %union.gs_param_value_s* %value10 to %struct.gs_param_string_s*
  %size12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %n11, i32 0, i32 1
  %16 = load i32, i32* %size12, align 4, !tbaa !13
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 1
  store i32 %16, i32* %size13, align 4, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %sw.bb
  %18 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %18, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value15 to %struct.gs_param_int_array_s*
  %data16 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 0
  %19 = load i32*, i32** %data16, align 8, !tbaa !15
  %20 = bitcast i32* %19 to i8*
  %21 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %21, i32 0, i32 0
  store i8* %20, i8** %ptr17, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.18:                                         ; preds = %sw.bb
  %22 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %22, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value19 to %struct.gs_param_float_array_s*
  %data20 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  %23 = load float*, float** %data20, align 8, !tbaa !17
  %24 = bitcast float* %23 to i8*
  %25 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr21, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %sw.bb
  %26 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %26, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value23 to %struct.gs_param_string_array_s*
  %data24 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data24, align 8, !tbaa !19
  %28 = bitcast %struct.gs_param_string_s* %27 to i8*
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr25, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.26:                                         ; preds = %sw.bb
  %30 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %30, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value27 to %struct.gs_param_string_array_s*
  %data28 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %na, i32 0, i32 0
  %31 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data28, align 8, !tbaa !19
  %32 = bitcast %struct.gs_param_string_s* %31 to i8*
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %33, i32 0, i32 0
  store i8* %32, i8** %ptr29, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.30:                                    ; preds = %sw.bb
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* null, i8** %ptr31, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.30, %sw.bb.26, %sw.bb.22, %sw.bb.18, %sw.bb.14, %sw.bb.6, %sw.bb.1, %sw.default
  %35 = bitcast %struct.gs_param_typed_value_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_param_typed_value_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pvalue = alloca %struct.gs_param_typed_value_s*, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_typed_value_s*
  store %struct.gs_param_typed_value_s* %2, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %3 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !7
  switch i32 %4, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb.10
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.24
    i32 10, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %6, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !9
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %7, i8** %data1, align 8, !tbaa !21
  %8 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %8, i32 0, i32 0
  %s3 = bitcast %union.gs_param_value_s* %value2 to %struct.gs_param_string_s*
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s3, i32 0, i32 1
  %9 = load i32, i32* %size4, align 4, !tbaa !13
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %9, i32* %size5, align 4, !tbaa !23
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gc_state_s* %10 to %struct.gc_procs_common_s**
  %12 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %11, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %12, i32 0, i32 2
  %13 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !24
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %13(%struct.gs_const_string_s* %str, %struct.gc_state_s* %14) #4
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %15 = load i8*, i8** %data6, align 8, !tbaa !21
  %16 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %16, i32 0, i32 0
  %s8 = bitcast %union.gs_param_value_s* %value7 to %struct.gs_param_string_s*
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s8, i32 0, i32 0
  store i8* %15, i8** %data9, align 8, !tbaa !9
  %17 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gc_state_s* %18 to %struct.gc_procs_common_s**
  %20 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %19, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %20, i32 0, i32 0
  %21 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !26
  %22 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %22, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value11 to %struct.gs_param_int_array_s*
  %data12 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 0
  %23 = load i32*, i32** %data12, align 8, !tbaa !15
  %24 = bitcast i32* %23 to i8*
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %21(i8* %24, %struct.gc_state_s* %25) #4
  %26 = bitcast i8* %call to i32*
  %27 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %27, i32 0, i32 0
  %ia14 = bitcast %union.gs_param_value_s* %value13 to %struct.gs_param_int_array_s*
  %data15 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia14, i32 0, i32 0
  store i32* %26, i32** %data15, align 8, !tbaa !15
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 0
  %31 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !26
  %32 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %32, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value18 to %struct.gs_param_float_array_s*
  %data19 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  %33 = load float*, float** %data19, align 8, !tbaa !17
  %34 = bitcast float* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call20 = call i8* %31(i8* %34, %struct.gc_state_s* %35) #4
  %36 = bitcast i8* %call20 to float*
  %37 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %37, i32 0, i32 0
  %fa22 = bitcast %union.gs_param_value_s* %value21 to %struct.gs_param_float_array_s*
  %data23 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa22, i32 0, i32 0
  store float* %36, float** %data23, align 8, !tbaa !17
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %38 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gc_state_s* %38 to %struct.gc_procs_common_s**
  %40 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %39, align 8, !tbaa !1
  %reloc_struct_ptr25 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %40, i32 0, i32 0
  %41 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr25, align 8, !tbaa !26
  %42 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %42, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value26 to %struct.gs_param_string_array_s*
  %data27 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data27, align 8, !tbaa !19
  %44 = bitcast %struct.gs_param_string_s* %43 to i8*
  %45 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call28 = call i8* %41(i8* %44, %struct.gc_state_s* %45) #4
  %46 = bitcast i8* %call28 to %struct.gs_param_string_s*
  %47 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %47, i32 0, i32 0
  %sa30 = bitcast %union.gs_param_value_s* %value29 to %struct.gs_param_string_array_s*
  %data31 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa30, i32 0, i32 0
  store %struct.gs_param_string_s* %46, %struct.gs_param_string_s** %data31, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %48 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %49 = bitcast %struct.gc_state_s* %48 to %struct.gc_procs_common_s**
  %50 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %49, align 8, !tbaa !1
  %reloc_struct_ptr33 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %50, i32 0, i32 0
  %51 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr33, align 8, !tbaa !26
  %52 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %52, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value34 to %struct.gs_param_string_array_s*
  %data35 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %na, i32 0, i32 0
  %53 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data35, align 8, !tbaa !19
  %54 = bitcast %struct.gs_param_string_s* %53 to i8*
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call36 = call i8* %51(i8* %54, %struct.gc_state_s* %55) #4
  %56 = bitcast i8* %call36 to %struct.gs_param_string_s*
  %57 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %57, i32 0, i32 0
  %na38 = bitcast %union.gs_param_value_s* %value37 to %struct.gs_param_string_array_s*
  %data39 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %na38, i32 0, i32 0
  store %struct.gs_param_string_s* %56, %struct.gs_param_string_s** %data39, align 8, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %sw.bb.24, %sw.bb.16, %sw.bb.10, %sw.bb
  %58 = bitcast %struct.gs_param_typed_value_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_param_list_init(%struct.gs_param_list_s* %plist, %struct.gs_param_list_procs_s* %procs, %struct.gs_memory_s* %mem) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %procs.addr = alloca %struct.gs_param_list_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_param_list_procs_s* %procs, %struct.gs_param_list_procs_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %1, i32 0, i32 0
  store %struct.gs_param_list_procs_s* %0, %struct.gs_param_list_procs_s** %procs1, align 8, !tbaa !27
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 1
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %persistent_keys = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 2
  store i32 1, i32* %persistent_keys, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_param_list_set_persist_keys(%struct.gs_param_list_s* %plist, i32 %persistent) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %persistent.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 %persistent, i32* %persistent.addr, align 4, !tbaa !5
  %0 = load i32, i32* %persistent.addr, align 4, !tbaa !5
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %persistent_keys = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %1, i32 0, i32 2
  store i32 %0, i32* %persistent_keys, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define void @param_init_enumerator(%union.gs_param_enumerator_s* %enumerator) #0 {
entry:
  %enumerator.addr = alloca %union.gs_param_enumerator_s*, align 8
  store %union.gs_param_enumerator_s* %enumerator, %union.gs_param_enumerator_s** %enumerator.addr, align 8, !tbaa !1
  %0 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %enumerator.addr, align 8, !tbaa !1
  %1 = bitcast %union.gs_param_enumerator_s* %0 to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 8) #5
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gs_param_read_items(%struct.gs_param_list_s* %plist, i8* %obj, %struct.gs_param_item_s* %items) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %obj.addr = alloca i8*, align 8
  %items.addr = alloca %struct.gs_param_item_s*, align 8
  %pi = alloca %struct.gs_param_item_s*, align 8
  %ecode = alloca i32, align 4
  %key1 = alloca i8*, align 8
  %pvalue = alloca i8*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store %struct.gs_param_item_s* %items, %struct.gs_param_item_s** %items.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_item_s** %pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %2 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %items.addr, align 8, !tbaa !1
  store %struct.gs_param_item_s* %2, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8, !tbaa !31
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i8** %key1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key2, align 8, !tbaa !31
  store i8* %7, i8** %key1, align 8, !tbaa !1
  %8 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %10 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %10, i32 0, i32 2
  %11 = load i16, i16* %offset, align 2, !tbaa !34
  %conv = sext i16 %11 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %pvalue, align 8, !tbaa !1
  %12 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %14, i32 0, i32 1
  %15 = load i8, i8* %type, align 1, !tbaa !35
  %conv3 = zext i8 %15 to i32
  %type4 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 %conv3, i32* %type4, align 4, !tbaa !7
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %key1, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %16, i8* %17, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %18, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %for.body
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %ecode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %type5 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  %20 = load i32, i32* %type5, align 4, !tbaa !7
  %21 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %21, i32 0, i32 1
  %22 = load i8, i8* %type6, align 1, !tbaa !35
  %conv7 = zext i8 %22 to i32
  %cmp8 = icmp ne i32 %20, %conv7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 -20, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %23 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %24 = bitcast %union.gs_param_value_s* %value to i8*
  %25 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %25, i32 0, i32 1
  %26 = load i8, i8* %type10, align 1, !tbaa !35
  %idxprom = zext i8 %26 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* @xfer_item_sizes, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %conv11 = zext i8 %27 to i64
  %call12 = call i8* @memcpy(i8* %23, i8* %24, i64 %conv11) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default, %for.body
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %30 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i8** %key1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %32 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %32, i32 1
  store %struct.gs_param_item_s* %incdec.ptr, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %ecode, align 4, !tbaa !5
  %34 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_param_item_s** %pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @param_read_requested_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %req_type = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %req_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !7
  store i32 %2, i32* %req_type, align 4, !tbaa !36
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %13 = load i32, i32* %req_type, align 4, !tbaa !36
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %call1 = call i32 @param_coerce_typed(%struct.gs_param_typed_value_s* %12, i32 %13, %struct.gs_memory_s* %15) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %req_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gs_param_write_items(%struct.gs_param_list_s* %plist, i8* %obj, i8* %default_obj, %struct.gs_param_item_s* %items) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %obj.addr = alloca i8*, align 8
  %default_obj.addr = alloca i8*, align 8
  %items.addr = alloca %struct.gs_param_item_s*, align 8
  %pi = alloca %struct.gs_param_item_s*, align 8
  %ecode = alloca i32, align 4
  %key1 = alloca i8*, align 8
  %pvalue = alloca i8*, align 8
  %size = alloca i32, align 4
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i8* %default_obj, i8** %default_obj.addr, align 8, !tbaa !1
  store %struct.gs_param_item_s* %items, %struct.gs_param_item_s** %items.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_item_s** %pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %2 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %items.addr, align 8, !tbaa !1
  store %struct.gs_param_item_s* %2, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8, !tbaa !31
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i8** %key1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key2, align 8, !tbaa !31
  store i8* %7, i8** %key1, align 8, !tbaa !1
  %8 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %10 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %10, i32 0, i32 2
  %11 = load i16, i16* %offset, align 2, !tbaa !34
  %conv = sext i16 %11 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %pvalue, align 8, !tbaa !1
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %13, i32 0, i32 1
  %14 = load i8, i8* %type, align 1, !tbaa !35
  %idxprom = zext i8 %14 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* @xfer_item_sizes, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %conv3 = zext i8 %15 to i32
  store i32 %conv3, i32* %size, align 4, !tbaa !5
  %16 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %default_obj.addr, align 8, !tbaa !1
  %cmp4 = icmp ne i8* %18, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load i8*, i8** %default_obj.addr, align 8, !tbaa !1
  %20 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %offset6 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %20, i32 0, i32 2
  %21 = load i16, i16* %offset6, align 2, !tbaa !34
  %conv7 = sext i16 %21 to i32
  %idx.ext8 = sext i32 %conv7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 %idx.ext8
  %22 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %conv10 = sext i32 %23 to i64
  %call = call i32 @memcmp(i8* %add.ptr9, i8* %22, i64 %conv10) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %24 = bitcast %union.gs_param_value_s* %value to i8*
  %25 = load i8*, i8** %pvalue, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %conv11 = sext i32 %26 to i64
  %call12 = call i8* @memcpy(i8* %24, i8* %25, i64 %conv11) #5
  %27 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %27, i32 0, i32 1
  %28 = load i8, i8* %type13, align 1, !tbaa !35
  %conv14 = zext i8 %28 to i32
  %type15 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 %conv14, i32* %type15, align 4, !tbaa !7
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %29, i32 0, i32 0
  %30 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %30, i32 0, i32 0
  %31 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %key1, align 8, !tbaa !1
  %call16 = call i32 %31(%struct.gs_param_list_s* %32, i8* %33, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %34, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %ecode, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #1
  %38 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %key1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %41 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %41, i32 1
  store %struct.gs_param_item_s* %incdec.ptr, %struct.gs_param_item_s** %pi, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %43 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.gs_param_item_s** %pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret i32 %42

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @param_coerce_typed(%struct.gs_param_typed_value_s* %pvalue, i32 %req_type, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %req_type.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size = alloca i32, align 4
  %fv = alloca float*, align 8
  %i49 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %req_type, i32* %req_type.addr, align 4, !tbaa !36
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !7
  %3 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %4, i32 0, i32 1
  %5 = load i32, i32* %type2, align 4, !tbaa !7
  switch i32 %5, label %sw.default.101 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.10
    i32 5, label %sw.bb.35
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.45
    i32 9, label %sw.bb.73
    i32 10, label %sw.bb.78
    i32 13, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  switch i32 %6, label %sw.default [
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
  ]

sw.bb.3:                                          ; preds = %sw.bb
  %7 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %7, i32 0, i32 0
  %i = bitcast %union.gs_param_value_s* %value to i32*
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %9 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %9, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value4 to i64*
  store i64 %conv, i64* %l, align 8, !tbaa !39
  br label %ok

sw.bb.5:                                          ; preds = %sw.bb
  %10 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %10, i32 0, i32 0
  %l7 = bitcast %union.gs_param_value_s* %value6 to i64*
  %11 = load i64, i64* %l7, align 8, !tbaa !39
  %conv8 = sitofp i64 %11 to float
  %12 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %12, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value9 to float*
  store float %conv8, float* %f, align 4, !tbaa !41
  br label %ok

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog.102

sw.bb.10:                                         ; preds = %if.end
  %13 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  switch i32 %13, label %sw.default.33 [
    i32 2, label %sw.bb.11
    i32 4, label %sw.bb.27
  ]

sw.bb.11:                                         ; preds = %sw.bb.10
  %14 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %14, i32 0, i32 0
  %l13 = bitcast %union.gs_param_value_s* %value12 to i64*
  %15 = load i64, i64* %l13, align 8, !tbaa !39
  %16 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %16, i32 0, i32 0
  %l15 = bitcast %union.gs_param_value_s* %value14 to i64*
  %17 = load i64, i64* %l15, align 8, !tbaa !39
  %conv16 = trunc i64 %17 to i32
  %conv17 = sext i32 %conv16 to i64
  %cmp18 = icmp ne i64 %15, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.11
  store i32 -15, i32* %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb.11
  %18 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %18, i32 0, i32 0
  %l23 = bitcast %union.gs_param_value_s* %value22 to i64*
  %19 = load i64, i64* %l23, align 8, !tbaa !39
  %conv24 = trunc i64 %19 to i32
  %20 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value25 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %20, i32 0, i32 0
  %i26 = bitcast %union.gs_param_value_s* %value25 to i32*
  store i32 %conv24, i32* %i26, align 4, !tbaa !5
  br label %ok

sw.bb.27:                                         ; preds = %sw.bb.10
  %21 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %21, i32 0, i32 0
  %l29 = bitcast %union.gs_param_value_s* %value28 to i64*
  %22 = load i64, i64* %l29, align 8, !tbaa !39
  %conv30 = sitofp i64 %22 to float
  %23 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %23, i32 0, i32 0
  %f32 = bitcast %union.gs_param_value_s* %value31 to float*
  store float %conv30, float* %f32, align 4, !tbaa !41
  br label %ok

sw.default.33:                                    ; preds = %sw.bb.10
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %sw.default.33
  br label %sw.epilog.102

sw.bb.35:                                         ; preds = %if.end
  %24 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp36 = icmp eq i32 %24, 6
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.35
  br label %ok

if.end.39:                                        ; preds = %sw.bb.35
  br label %sw.epilog.102

sw.bb.40:                                         ; preds = %if.end
  %25 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp41 = icmp eq i32 %25, 5
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.40
  br label %ok

if.end.44:                                        ; preds = %sw.bb.40
  br label %sw.epilog.102

sw.bb.45:                                         ; preds = %if.end
  %26 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  switch i32 %26, label %sw.default.71 [
    i32 8, label %sw.bb.46
  ]

sw.bb.46:                                         ; preds = %sw.bb.45
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %28, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value47 to %struct.gs_param_int_array_s*
  %size48 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  %29 = load i32, i32* %size48, align 4, !tbaa !43
  store i32 %29, i32* %size, align 4, !tbaa !5
  %30 = bitcast float** %fv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i32* %i49 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp50 = icmp eq %struct.gs_memory_s* %32, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.bb.46
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %sw.bb.46
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %34 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !44
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load i32, i32* %size, align 4, !tbaa !5
  %call = call i8* %34(%struct.gs_memory_s* %35, i32 %36, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #4
  %37 = bitcast i8* %call to float*
  store float* %37, float** %fv, align 8, !tbaa !1
  %38 = load float*, float** %fv, align 8, !tbaa !1
  %cmp54 = icmp eq float* %38, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.53
  store i32 0, i32* %i49, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.57
  %39 = load i32, i32* %i49, align 4, !tbaa !5
  %40 = load i32, i32* %size, align 4, !tbaa !5
  %cmp58 = icmp ult i32 %39, %40
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %i49, align 4, !tbaa !5
  %idxprom = zext i32 %41 to i64
  %42 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value60 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %42, i32 0, i32 0
  %ia61 = bitcast %union.gs_param_value_s* %value60 to %struct.gs_param_int_array_s*
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia61, i32 0, i32 0
  %43 = load i32*, i32** %data, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv62 = sitofp i32 %44 to float
  %45 = load i32, i32* %i49, align 4, !tbaa !5
  %idxprom63 = zext i32 %45 to i64
  %46 = load float*, float** %fv, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds float, float* %46, i64 %idxprom63
  store float %conv62, float* %arrayidx64, align 4, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i49, align 4, !tbaa !5
  %inc = add i32 %47, 1
  store i32 %inc, i32* %i49, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load float*, float** %fv, align 8, !tbaa !1
  %49 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value65 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %49, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value65 to %struct.gs_param_float_array_s*
  %data66 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %48, float** %data66, align 8, !tbaa !17
  %50 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value67 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %50, i32 0, i32 0
  %fa68 = bitcast %union.gs_param_value_s* %value67 to %struct.gs_param_float_array_s*
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa68, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !47
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.56, %if.then.52
  %51 = bitcast i32* %i49 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast float** %fv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 6, label %sw.epilog.72
    i32 1, label %return
    i32 4, label %ok
  ]

sw.default.71:                                    ; preds = %sw.bb.45
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %sw.default.71, %cleanup
  br label %sw.epilog.102

sw.bb.73:                                         ; preds = %if.end
  %54 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp74 = icmp eq i32 %54, 10
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.73
  br label %ok

if.end.77:                                        ; preds = %sw.bb.73
  br label %sw.epilog.102

sw.bb.78:                                         ; preds = %if.end
  %55 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp79 = icmp eq i32 %55, 9
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %sw.bb.78
  br label %ok

if.end.82:                                        ; preds = %sw.bb.78
  br label %sw.epilog.102

sw.bb.83:                                         ; preds = %if.end
  %56 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value84 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %56, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value84 to %struct.gs_param_collection_s*
  %size85 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d, i32 0, i32 1
  %57 = load i32, i32* %size85, align 4, !tbaa !48
  %cmp86 = icmp eq i32 %57, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %sw.bb.83
  %58 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp88 = icmp eq i32 %58, 7
  br i1 %cmp88, label %if.then.99, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true
  %59 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp91 = icmp eq i32 %59, 8
  br i1 %cmp91, label %if.then.99, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.90
  %60 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp94 = icmp eq i32 %60, 9
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.93
  %61 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %cmp97 = icmp eq i32 %61, 10
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.96, %lor.lhs.false.93, %lor.lhs.false.90, %land.lhs.true
  br label %ok

if.end.100:                                       ; preds = %lor.lhs.false.96, %sw.bb.83
  br label %sw.epilog.102

sw.default.101:                                   ; preds = %if.end
  br label %sw.epilog.102

sw.epilog.102:                                    ; preds = %sw.default.101, %if.end.100, %if.end.82, %if.end.77, %sw.epilog.72, %if.end.44, %if.end.39, %sw.epilog.34, %sw.epilog
  store i32 -20, i32* %retval
  br label %return

ok:                                               ; preds = %if.then.99, %if.then.81, %if.then.76, %cleanup, %if.then.43, %if.then.38, %sw.bb.27, %if.end.21, %sw.bb.5, %sw.bb.3
  %62 = load i32, i32* %req_type.addr, align 4, !tbaa !36
  %63 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type103 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %63, i32 0, i32 1
  store i32 %62, i32* %type103, align 4, !tbaa !7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %ok, %sw.epilog.102, %cleanup, %if.then.20, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @param_read_null(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !7
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %1, i8* %2, %struct.gs_param_typed_value_s* %typed) #4
  %3 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_read_bool(%struct.gs_param_list_s* %plist, i8* %pkey, i32* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %b = bitcast %union.gs_param_value_s* %value to i32*
  %5 = load i32, i32* %b, align 4, !tbaa !5
  %6 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %5, i32* %6, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @param_read_int(%struct.gs_param_list_s* %plist, i8* %pkey, i32* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %i = bitcast %union.gs_param_value_s* %value to i32*
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %5, i32* %6, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @param_read_long(%struct.gs_param_list_s* %plist, i8* %pkey, i64* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i64*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i64* %pvalue, i64** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 3, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value to i64*
  %5 = load i64, i64* %l, align 8, !tbaa !39
  %6 = load i64*, i64** %pvalue.addr, align 8, !tbaa !1
  store i64 %5, i64* %6, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @param_read_float(%struct.gs_param_list_s* %plist, i8* %pkey, float* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca float*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 4, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value to float*
  %5 = load float, float* %f, align 4, !tbaa !41
  %6 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %5, float* %6, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @param_read_string(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 5, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %6 = bitcast %struct.gs_param_string_s* %5 to i8*
  %7 = bitcast %struct.gs_param_string_s* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @param_read_name(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 5, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %6 = bitcast %struct.gs_param_string_s* %5 to i8*
  %7 = bitcast %struct.gs_param_string_s* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @param_read_int_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_int_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_int_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_int_array_s* %pvalue, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 7, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_int_array_s*, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value to %struct.gs_param_int_array_s*
  %6 = bitcast %struct.gs_param_int_array_s* %5 to i8*
  %7 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @param_read_float_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_float_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_float_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_float_array_s* %pvalue, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 8, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value to %struct.gs_param_float_array_s*
  %6 = bitcast %struct.gs_param_float_array_s* %5 to i8*
  %7 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @param_read_string_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pvalue, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 9, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_array_s*
  %6 = bitcast %struct.gs_param_string_array_s* %5 to i8*
  %7 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @param_read_name_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pvalue, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 10, i32* %type, align 4, !tbaa !7
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_array_s*
  %6 = bitcast %struct.gs_param_string_array_s* %5 to i8*
  %7 = bitcast %struct.gs_param_string_array_s* %na to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @param_write_null(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !7
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %1, i32 0, i32 0
  %2 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %2, i32 0, i32 0
  %3 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_typed_value_s* %typed) #4
  %6 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_bool(%struct.gs_param_list_s* %plist, i8* %pkey, i32* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %b = bitcast %union.gs_param_value_s* %value to i32*
  store i32 %2, i32* %b, align 4, !tbaa !5
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !7
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 0
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_typed_value_s* %typed) #4
  %8 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_int(%struct.gs_param_list_s* %plist, i8* %pkey, i32* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %i = bitcast %union.gs_param_value_s* %value to i32*
  store i32 %2, i32* %i, align 4, !tbaa !5
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !7
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 0
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_typed_value_s* %typed) #4
  %8 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_long(%struct.gs_param_list_s* %plist, i8* %pkey, i64* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i64*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i64* %pvalue, i64** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load i64*, i64** %pvalue.addr, align 8, !tbaa !1
  %2 = load i64, i64* %1, align 8, !tbaa !39
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value to i64*
  store i64 %2, i64* %l, align 8, !tbaa !39
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 3, i32* %type, align 4, !tbaa !7
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 0
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_typed_value_s* %typed) #4
  %8 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_float(%struct.gs_param_list_s* %plist, i8* %pkey, float* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca float*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  %2 = load float, float* %1, align 4, !tbaa !41
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value to float*
  store float %2, float* %f, align 4, !tbaa !41
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 4, i32* %type, align 4, !tbaa !7
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 0
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_typed_value_s* %typed) #4
  %8 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_string(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_s* %s to i8*
  %3 = bitcast %struct.gs_param_string_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 5, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_name(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_s*
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_s* %n to i8*
  %3 = bitcast %struct.gs_param_string_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 6, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_int_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_int_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_int_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_int_array_s* %pvalue, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value to %struct.gs_param_int_array_s*
  %1 = load %struct.gs_param_int_array_s*, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  %3 = bitcast %struct.gs_param_int_array_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 7, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_int_values(%struct.gs_param_list_s* %plist, i8* %pkey, i32* %values, i32 %size, i32 %persistent) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %values.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %persistent.addr = alloca i32, align 4
  %ia = alloca %struct.gs_param_int_array_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32* %values, i32** %values.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %persistent, i32* %persistent.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i32*, i32** %values.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 0
  store i32* %1, i32** %data, align 8, !tbaa !15
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  store i32 %2, i32* %size1, align 4, !tbaa !43
  %3 = load i32, i32* %persistent.addr, align 4, !tbaa !5
  %persistent2 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 2
  store i32 %3, i32* %persistent2, align 4, !tbaa !51
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_write_int_array(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_int_array_s* %ia) #4
  %6 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_float_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_float_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_float_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_float_array_s* %pvalue, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value to %struct.gs_param_float_array_s*
  %1 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  %3 = bitcast %struct.gs_param_float_array_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 8, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_float_values(%struct.gs_param_list_s* %plist, i8* %pkey, float* %values, i32 %size, i32 %persistent) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %values.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %persistent.addr = alloca i32, align 4
  %fa = alloca %struct.gs_param_float_array_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store float* %values, float** %values.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %persistent, i32* %persistent.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load float*, float** %values.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %1, float** %data, align 8, !tbaa !17
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %size1 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %2, i32* %size1, align 4, !tbaa !52
  %3 = load i32, i32* %persistent.addr, align 4, !tbaa !5
  %persistent2 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 %3, i32* %persistent2, align 4, !tbaa !47
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @param_write_float_array(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_float_array_s* %fa) #4
  %6 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_string_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pvalue, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_array_s*
  %1 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  %3 = bitcast %struct.gs_param_string_array_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 9, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @param_write_name_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_array_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_array_s*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pvalue, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value to %struct.gs_param_string_array_s*
  %1 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_array_s* %na to i8*
  %3 = bitcast %struct.gs_param_string_array_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !50
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 10, i32* %type, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !27
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 0
  %6 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !37
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_typed_value_s* %typed) #4
  %9 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_param_request_default(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_param_requested_default(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  ret i32 -1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 16}
!8 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!9 = !{!10, !2, i64 0}
!10 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 8}
!14 = !{!12, !6, i64 8}
!15 = !{!16, !2, i64 0}
!16 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!18, !2, i64 0}
!18 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!19 = !{!20, !2, i64 0}
!20 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!21 = !{!22, !2, i64 0}
!22 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!23 = !{!22, !6, i64 8}
!24 = !{!25, !2, i64 16}
!25 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!25, !2, i64 0}
!27 = !{!28, !2, i64 0}
!28 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!29 = !{!28, !2, i64 8}
!30 = !{!28, !6, i64 16}
!31 = !{!32, !2, i64 0}
!32 = !{!"gs_param_item_s", !2, i64 0, !3, i64 8, !33, i64 10}
!33 = !{!"short", !3, i64 0}
!34 = !{!32, !33, i64 10}
!35 = !{!32, !3, i64 8}
!36 = !{!3, !3, i64 0}
!37 = !{!38, !2, i64 0}
!38 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !3, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !3, i64 0}
!43 = !{!16, !6, i64 8}
!44 = !{!45, !2, i64 88}
!45 = !{!"gs_memory_s", !2, i64 0, !46, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!46 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!47 = !{!18, !6, i64 12}
!48 = !{!49, !6, i64 8}
!49 = !{!"gs_param_collection_s", !2, i64 0, !6, i64 8}
!50 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5}
!51 = !{!16, !6, i64 12}
!52 = !{!18, !6, i64 8}
