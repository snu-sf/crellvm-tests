; ModuleID = './iscan.bc'
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
%struct.scan_binary_state_s = type { i32, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)*, %struct.ref_s, i32, i32, i32, i32, i32, i32, i64 }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.scanner_state_dynamic_s = type { %struct.scanner_state_s, %struct.gs_memory_s* }
%struct.obj_header_s = type opaque
%struct.sns_ = type { i32, i32 }
%struct.stream_AXD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32 }
%struct.stream_PSSD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }

@gs_scan_dsc_proc = global i32 (i8*, i32)* null, align 8
@gs_scan_comment_proc = global i32 (i8*, i32)* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"scanner state\00", align 1
@st_scanner_state_dynamic = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1376, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @scanner_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @scanner_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @scanner_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_scanner_error_object\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gs_scan_handle_refill\00", align 1
@scan_char_array = external constant [260 x i8], align 16
@s_A85D_template = external constant %struct.stream_template_s, align 8
@s_AXD_template = external constant %struct.stream_template_s, align 8
@s_PSSD_template = external constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"scanner(packed)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"scanner(proc)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"scanner\00", align 1
@name_max_string = external constant i32, align 4
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"scan_comment\00", align 1

; Function Attrs: nounwind uwtable
define internal void @scanner_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %ssptr = alloca %struct.scanner_state_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %2, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %3 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %3, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !7
  %5 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %5, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary, i32 0, i32 2
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = load i16, i16* %type_attrs3, align 2, !tbaa !7
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, -2
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %type_attrs3, align 2, !tbaa !7
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %8 = load i16, i16* %type_attrs8, align 2, !tbaa !7
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, -2
  %conv11 = trunc i32 %and10 to i16
  store i16 %conv11, i16* %type_attrs8, align 2, !tbaa !7
  %9 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @scanner_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ssptr = alloca %struct.scanner_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %2, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.11
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 0
  %5 = bitcast %struct.ref_s* %s_file to i8*
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %8 = bitcast %struct.ref_s* %object to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr2, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %10, i32 0, i32 4
  %11 = load i32, i32* %s_scan_type, align 4, !tbaa !13
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.3
  %12 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %12, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 3
  %13 = load i32, i32* %is_dynamic, align 4, !tbaa !17
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.3
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* null, i8** %ptr4, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da5 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %15, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da5, i32 0, i32 0
  %16 = load i8*, i8** %base, align 8, !tbaa !18
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr6, align 8, !tbaa !11
  %18 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da7 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %18, i32 0, i32 5
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da7, i32 0, i32 2
  %19 = load i8*, i8** %limit, align 8, !tbaa !19
  %20 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da8 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %20, i32 0, i32 5
  %base9 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da8, i32 0, i32 0
  %21 = load i8*, i8** %base9, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 1
  store i32 %conv, i32* %size10, align 4, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %entry
  %23 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_scan_type12 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %23, i32 0, i32 4
  %24 = load i32, i32* %s_scan_type12, align 4, !tbaa !13
  %cmp13 = icmp ne i32 %24, 1
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %sw.bb.11
  %25 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %25, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary, i32 0, i32 2
  %26 = bitcast %struct.ref_s* %bin_array to i8*
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr17, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.end, %if.then, %sw.bb.1, %sw.bb, %sw.default
  %28 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %29
}

; Function Attrs: nounwind uwtable
define internal void @scanner_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ssptr = alloca %struct.scanner_state_s*, align 8
  %sda = alloca %struct.gs_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %2, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 5
  %6 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !22
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 0
  %8 = bitcast %struct.ref_s* %s_file to i16*
  %9 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_file1 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %9, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file1, i64 1
  %10 = bitcast %struct.ref_s* %add.ptr to i16*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i16* %8, i16* %10, %struct.gc_state_s* %11) #6
  %12 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_file2 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %12, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, -2
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %type_attrs, align 2, !tbaa !7
  %14 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %14, i32 0, i32 4
  %15 = load i32, i32* %s_scan_type, align 4, !tbaa !13
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %16, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 3
  %17 = load i32, i32* %is_dynamic, align 4, !tbaa !17
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = bitcast %struct.gs_string_s* %sda to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da5 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %19, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da5, i32 0, i32 0
  %20 = load i8*, i8** %base, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 0
  store i8* %20, i8** %data, align 8, !tbaa !24
  %21 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da6 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %21, i32 0, i32 5
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da6, i32 0, i32 2
  %22 = load i8*, i8** %limit, align 8, !tbaa !19
  %23 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da7 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %23, i32 0, i32 5
  %base8 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da7, i32 0, i32 0
  %24 = load i8*, i8** %base8, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv9 = trunc i64 %sub.ptr.sub to i32
  %size10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 1
  store i32 %conv9, i32* %size10, align 4, !tbaa !26
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gc_state_s* %25 to %struct.gc_procs_with_refs_s**
  %27 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %26, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %27, i32 0, i32 1
  %28 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !27
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %28(%struct.gs_string_s* %sda, %struct.gc_state_s* %29) #6
  %data11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 0
  %30 = load i8*, i8** %data11, align 8, !tbaa !24
  %size12 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 1
  %31 = load i32, i32* %size12, align 4, !tbaa !26
  %idx.ext = zext i32 %31 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %32 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da14 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %32, i32 0, i32 5
  %limit15 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da14, i32 0, i32 2
  store i8* %add.ptr13, i8** %limit15, align 8, !tbaa !28
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 0
  %33 = load i8*, i8** %data16, align 8, !tbaa !24
  %34 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da17 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %34, i32 0, i32 5
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da17, i32 0, i32 1
  %35 = load i8*, i8** %next, align 8, !tbaa !29
  %36 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da18 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %36, i32 0, i32 5
  %base19 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da18, i32 0, i32 0
  %37 = load i8*, i8** %base19, align 8, !tbaa !18
  %sub.ptr.lhs.cast20 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %37 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %add.ptr23 = getelementptr inbounds i8, i8* %33, i64 %sub.ptr.sub22
  %38 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da24 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %38, i32 0, i32 5
  %next25 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da24, i32 0, i32 1
  store i8* %add.ptr23, i8** %next25, align 8, !tbaa !29
  %data26 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %sda, i32 0, i32 0
  %39 = load i8*, i8** %data26, align 8, !tbaa !24
  %40 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_da27 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %40, i32 0, i32 5
  %base28 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da27, i32 0, i32 0
  store i8* %39, i8** %base28, align 8, !tbaa !18
  %41 = bitcast %struct.gs_string_s* %sda to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %42 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_scan_type29 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %42, i32 0, i32 4
  %43 = load i32, i32* %s_scan_type29, align 4, !tbaa !13
  %cmp30 = icmp eq i32 %43, 1
  br i1 %cmp30, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %if.end
  %44 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gc_state_s* %44 to %struct.gc_procs_with_refs_s**
  %46 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %45, align 8, !tbaa !1
  %reloc_refs33 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %46, i32 0, i32 5
  %47 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs33, align 8, !tbaa !22
  %48 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %48, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary, i32 0, i32 2
  %49 = bitcast %struct.ref_s* %bin_array to i16*
  %50 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_ss34 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %50, i32 0, i32 6
  %binary35 = bitcast %union.sss_* %s_ss34 to %struct.scan_binary_state_s*
  %bin_array36 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary35, i32 0, i32 2
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array36, i64 1
  %51 = bitcast %struct.ref_s* %add.ptr37 to i16*
  %52 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %47(i16* %49, i16* %51, %struct.gc_state_s* %52) #6
  %53 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_ss38 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %53, i32 0, i32 6
  %binary39 = bitcast %union.sss_* %s_ss38 to %struct.scan_binary_state_s*
  %bin_array40 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary39, i32 0, i32 2
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array40, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  %54 = load i16, i16* %type_attrs42, align 2, !tbaa !7
  %conv43 = zext i16 %54 to i32
  %and44 = and i32 %conv43, -2
  %conv45 = trunc i32 %and44 to i16
  store i16 %conv45, i16* %type_attrs42, align 2, !tbaa !7
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.32, %if.end
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gc_state_s* %55 to %struct.gc_procs_with_refs_s**
  %57 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %56, align 8, !tbaa !1
  %reloc_refs47 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %57, i32 0, i32 5
  %58 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs47, align 8, !tbaa !22
  %59 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %59, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %60 = bitcast %struct.ref_s* %object to i16*
  %61 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_error48 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %61, i32 0, i32 7
  %object49 = getelementptr inbounds %struct.se_, %struct.se_* %s_error48, i32 0, i32 0
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object49, i64 1
  %62 = bitcast %struct.ref_s* %add.ptr50 to i16*
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %58(i16* %60, i16* %62, %struct.gc_state_s* %63) #6
  %64 = load %struct.scanner_state_s*, %struct.scanner_state_s** %ssptr, align 8, !tbaa !1
  %s_error51 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %64, i32 0, i32 7
  %object52 = getelementptr inbounds %struct.se_, %struct.se_* %s_error51, i32 0, i32 0
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  %65 = load i16, i16* %type_attrs54, align 2, !tbaa !7
  %conv55 = zext i16 %65 to i32
  %and56 = and i32 %conv55, -2
  %conv57 = trunc i32 %and56 to i16
  store i16 %conv57, i16* %type_attrs54, align 2, !tbaa !7
  %66 = bitcast %struct.scanner_state_s** %ssptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_scanner_init_options(%struct.scanner_state_s* %sstate, %struct.ref_s* %fop, i32 %options) #0 {
entry:
  %sstate.addr = alloca %struct.scanner_state_s*, align 8
  %fop.addr = alloca %struct.ref_s*, align 8
  %options.addr = alloca i32, align 4
  store %struct.scanner_state_s* %sstate, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %0, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %s_file to i8*
  %3 = bitcast %struct.ref_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false), !tbaa.struct !30
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 4
  store i32 0, i32* %s_scan_type, align 4, !tbaa !13
  %5 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_pstack = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %5, i32 0, i32 1
  store i32 0, i32* %s_pstack, align 4, !tbaa !36
  %6 = load i32, i32* %options.addr, align 4, !tbaa !5
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_options = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 3
  store i32 %6, i32* %s_options, align 4, !tbaa !37
  %8 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %8, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 0, i16* %type_attrs, align 2, !tbaa !7
  %9 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_error1 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %9, i32 0, i32 7
  %is_name = getelementptr inbounds %struct.se_, %struct.se_* %s_error1, i32 0, i32 1
  store i32 0, i32* %is_name, align 4, !tbaa !38
  %10 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_error2 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %10, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !39
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gs_scanner_init_stream_options(%struct.scanner_state_s* %sstate, %struct.stream_s* %s, i32 %options) #0 {
entry:
  %sstate.addr = alloca %struct.scanner_state_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %options.addr = alloca i32, align 4
  %fobj = alloca %struct.ref_s, align 8
  store %struct.scanner_state_s* %sstate, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s* %fobj to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fobj, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  store %struct.stream_s* %1, %struct.stream_s** %pfile, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fobj, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 800, i16* %type_attrs, align 2, !tbaa !7
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fobj, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !40
  %2 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %3 = load i32, i32* %options.addr, align 4, !tbaa !5
  call void @gs_scanner_init_options(%struct.scanner_state_s* %2, %struct.ref_s* %fobj, i32 %3) #6
  %4 = bitcast %struct.ref_s* %fobj to i8*
  call void @llvm.lifetime.end(i64 16, i8* %4) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_scanner_error_object(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %pstate, %struct.ref_s* %pseo) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %pseo.addr = alloca %struct.ref_s*, align 8
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %estr = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store %struct.ref_s* %pseo, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %0 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %0, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error2 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 7
  %object3 = getelementptr inbounds %struct.se_, %struct.se_* %s_error2, i32 0, i32 0
  %5 = bitcast %struct.ref_s* %3 to i8*
  %6 = bitcast %struct.ref_s* %object3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false), !tbaa.struct !30
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error4 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error4, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i64 0
  %8 = load i8, i8* %arrayidx5, align 1, !tbaa !39
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end.47

if.then.6:                                        ; preds = %if.end
  %9 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error7 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %10, i32 0, i32 7
  %string8 = getelementptr inbounds %struct.se_, %struct.se_* %s_error7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %string8, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #7
  %conv9 = trunc i64 %call to i32
  store i32 %conv9, i32* %len, align 4, !tbaa !5
  %11 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error10 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %11, i32 0, i32 7
  %is_name = getelementptr inbounds %struct.se_, %struct.se_* %s_error10, i32 0, i32 1
  %12 = load i32, i32* %is_name, align 4, !tbaa !38
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.6
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 2
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !50
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 16
  %18 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !53
  %19 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error13 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %19, i32 0, i32 7
  %string14 = getelementptr inbounds %struct.se_, %struct.se_* %s_error13, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [121 x i8], [121 x i8]* %string14, i32 0, i32 0
  %20 = load i32, i32* %len, align 4, !tbaa !5
  %21 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %call16 = call i32 @names_ref(%struct.name_table_s* %18, i8* %arraydecay15, i32 %20, %struct.ref_s* %21, i32 1) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %22, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.12
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.12
  %24 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %25 = load i16, i16* %type_attrs22, align 2, !tbaa !7
  %conv23 = zext i16 %25 to i32
  %or = or i32 %conv23, 128
  %conv24 = trunc i32 %or to i16
  store i16 %conv24, i16* %type_attrs22, align 2, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %cleanup.46

if.else:                                          ; preds = %if.then.6
  %27 = bitcast i8** %estr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !41
  %30 = bitcast %struct.gs_ref_memory_s* %29 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %31 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !55
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current28 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory27, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current28, align 8, !tbaa !41
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %35 = load i32, i32* %len, align 4, !tbaa !5
  %call29 = call i8* %31(%struct.gs_memory_s* %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call29, i8** %estr, align 8, !tbaa !1
  %36 = load i8*, i8** %estr, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %36, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.33:                                        ; preds = %if.else
  %37 = load i8*, i8** %estr, align 8, !tbaa !1
  %38 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error34 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %38, i32 0, i32 7
  %string35 = getelementptr inbounds %struct.se_, %struct.se_* %s_error34, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [121 x i8], [121 x i8]* %string35, i32 0, i32 0
  %39 = load i32, i32* %len, align 4, !tbaa !5
  %conv37 = sext i32 %39 to i64
  %call38 = call i8* @memcpy(i8* %37, i8* %arraydecay36, i64 %conv37) #8
  %40 = load i8*, i8** %estr, align 8, !tbaa !1
  %41 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %40, i8** %bytes, align 8, !tbaa !1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 2
  %43 = load i32, i32* %current_space, align 4, !tbaa !56
  %or40 = or i32 112, %43
  %add = add i32 4608, %or40
  %conv41 = trunc i32 %add to i16
  %44 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  store i16 %conv41, i16* %type_attrs43, align 2, !tbaa !7
  %45 = load i32, i32* %len, align 4, !tbaa !5
  %46 = load %struct.ref_s*, %struct.ref_s** %pseo.addr, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  store i32 %45, i32* %rsize, align 4, !tbaa !40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.33, %if.then.32
  %47 = bitcast i8** %estr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %cleanup.46

cleanup.46:                                       ; preds = %cleanup.45, %cleanup
  %48 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  br label %return

if.end.47:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %cleanup.46, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gs_scan_handle_refill(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %sstate, i32 %save, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %sstate.addr = alloca %struct.scanner_state_s*, align 8
  %save.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %fop = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %avail = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rstate = alloca [1 x %struct.ref_s], align 16
  %pstate = alloca %struct.scanner_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %sstate, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store i32 %save, i32* %save.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %fop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  store %struct.ref_s* %s_file, %struct.ref_s** %fop, align 8, !tbaa !1
  %2 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %fop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %4 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %4, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %7 = load i8*, i8** %limit, align 8, !tbaa !57
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %9 = load i8*, i8** %ptr, align 8, !tbaa !59
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %avail, align 4, !tbaa !5
  %10 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 9
  %12 = load i16, i16* %end_status, align 2, !tbaa !60
  %conv3 = sext i16 %12 to i32
  %cmp = icmp eq i32 %conv3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end:                                           ; preds = %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @s_process_read_buf(%struct.stream_s* %13) #6
  store i32 %call, i32* %status, align 4, !tbaa !5
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %r6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_read_s*
  %limit7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r6, i32 0, i32 1
  %15 = load i8*, i8** %limit7, align 8, !tbaa !57
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %r9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_read_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r9, i32 0, i32 0
  %17 = load i8*, i8** %ptr10, align 8, !tbaa !59
  %sub.ptr.lhs.cast11 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %17 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %18 = load i32, i32* %avail, align 4, !tbaa !5
  %conv14 = zext i32 %18 to i64
  %cmp15 = icmp sgt i64 %sub.ptr.sub13, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.18:                                        ; preds = %if.end
  %19 = load i32, i32* %status, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 9
  %21 = load i16, i16* %end_status22, align 2, !tbaa !60
  %conv23 = sext i16 %21 to i32
  store i32 %conv23, i32* %status, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.18
  %22 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %22, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.25
    i32 -3, label %sw.bb.26
    i32 -4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

sw.bb.25:                                         ; preds = %if.end.24
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

sw.bb.26:                                         ; preds = %if.end.24, %if.end.24
  %23 = bitcast [1 x %struct.ref_s]* %rstate to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %save.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %sw.bb.26
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %29 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !64
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !41
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %call30 = call i8* %29(%struct.gs_memory_s* %32, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_scanner_state_dynamic to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #6
  %33 = bitcast i8* %call30 to %struct.scanner_state_dynamic_s*
  %34 = bitcast %struct.scanner_state_dynamic_s* %33 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %34, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %35 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.scanner_state_s* %35, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.27
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.27
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current36 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory35, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current36, align 8, !tbaa !41
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %40 = bitcast %struct.scanner_state_s* %39 to %struct.scanner_state_dynamic_s*
  %mem = getelementptr inbounds %struct.scanner_state_dynamic_s, %struct.scanner_state_dynamic_s* %40, i32 0, i32 1
  store %struct.gs_memory_s* %38, %struct.gs_memory_s** %mem, align 8, !tbaa !65
  %41 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %42 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %43 = bitcast %struct.scanner_state_s* %41 to i8*
  %44 = bitcast %struct.scanner_state_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 1368, i32 8, i1 false), !tbaa.struct !67
  br label %if.end.37

if.else:                                          ; preds = %sw.bb.26
  %45 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %45, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.end.34
  %46 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %47 = bitcast %struct.scanner_state_s* %46 to %struct.obj_header_s*
  %arrayidx = getelementptr inbounds [1 x %struct.ref_s], [1 x %struct.ref_s]* %rstate, i32 0, i64 0
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pstruct = bitcast %union.v* %value38 to %struct.obj_header_s**
  store %struct.obj_header_s* %47, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 2
  %49 = load i32, i32* %current_space, align 4, !tbaa !56
  %or = or i32 0, %49
  %add = add i32 2048, %or
  %conv40 = trunc i32 %add to i16
  %arrayidx41 = getelementptr inbounds [1 x %struct.ref_s], [1 x %struct.ref_s]* %rstate, i32 0, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv40, i16* %type_attrs, align 2, !tbaa !7
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %51 = load i32, i32* %status, align 4, !tbaa !5
  %52 = load %struct.ref_s*, %struct.ref_s** %fop, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1 x %struct.ref_s], [1 x %struct.ref_s]* %rstate, i32 0, i32 0
  %53 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call42 = call i32 @s_handle_read_exception(%struct.gs_context_state_s* %50, i32 %51, %struct.ref_s* %52, %struct.ref_s* %arraydecay, i32 1, i32 (%struct.gs_context_state_s*)* %53) #6
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.33
  %54 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast [1 x %struct.ref_s]* %rstate to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #1
  br label %cleanup.44

sw.epilog:                                        ; preds = %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %sw.epilog, %cleanup, %sw.bb.25, %sw.bb, %if.then.17, %if.then
  %56 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.ref_s** %fop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @s_process_read_buf(%struct.stream_s*) #3

declare i32 @s_handle_read_exception(%struct.gs_context_state_s*, i32, %struct.ref_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_scan_string_token_options(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pstr, %struct.ref_s* %pref, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstr.addr = alloca %struct.ref_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %options.addr = alloca i32, align 4
  %st = alloca %struct.stream_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %state = alloca %struct.scanner_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pos = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstr, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s* %st to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.stream_s* %st, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %6, %struct.gs_memory_s* null) #6
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %bytes, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !40
  call void @sread_string(%struct.stream_s* %7, i8* %9, i32 %11) #6
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load i32, i32* %options.addr, align 4, !tbaa !5
  %or = or i32 %13, 1
  call void @gs_scanner_init_stream_options(%struct.scanner_state_s* %state, %struct.stream_s* %12, i32 %or) #6
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @gs_scan_token(%struct.gs_context_state_s* %14, %struct.ref_s* %15, %struct.scanner_state_s* %state) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.11
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.default
  br label %sw.epilog

if.end.4:                                         ; preds = %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %if.end, %if.end, %if.end.4
  %17 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call5 = call i64 @stell(%struct.stream_s* %18) #6
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %pos, align 4, !tbaa !5
  %19 = load i32, i32* %pos, align 4, !tbaa !5
  %20 = load %struct.ref_s*, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %bytes8 = bitcast %union.v* %value7 to i8**
  %21 = load i8*, i8** %bytes8, align 8, !tbaa !1
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %bytes8, align 8, !tbaa !1
  %22 = load i32, i32* %pos, align 4, !tbaa !5
  %23 = load %struct.ref_s*, %struct.ref_s** %pstr.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %24 = load i32, i32* %rsize10, align 4, !tbaa !40
  %sub = sub i32 %24, %22
  store i32 %sub, i32* %rsize10, align 4, !tbaa !40
  %25 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  store i32 -18, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.end, %sw.bb, %if.then.3
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %26, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.epilog
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 10
  %call15 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %27, %struct.scanner_state_s* %state, %struct.ref_s* %error_object) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.epilog
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %31) #1
  %32 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.stream_s* %st to i8*
  call void @llvm.lifetime.end(i64 352, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #3

declare void @sread_string(%struct.stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_scan_token(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %myref = alloca %struct.ref_s*, align 8
  %retcode = alloca i32, align 4
  %c = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %newptr = alloca i8*, align 8
  %daptr = alloca i8*, align 8
  %max_name_ctype = alloca i32, align 4
  %s1 = alloca [2 x i8], align 1
  %decoder = alloca i8*, align 8
  %status = alloca i32, align 4
  %sign = alloca i32, align 4
  %check_only = alloca i32, align 4
  %PDFScanRules = alloca i32, align 4
  %ctrld = alloca i32, align 4
  %sstate = alloca %struct.scanner_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %next = alloca i32, align 4
  %limit = alloca i32, align 4
  %w = alloca %struct.stream_cursor_write_s, align 8
  %size = alloca i32, align 4
  %arr = alloca %struct.ref_s, align 8
  %base664 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i32, align 4
  %c1 = alloca i32, align 4
  %endp1 = alloca i8*, align 8
  %base1066 = alloca i8*, align 8
  %size1110 = alloca i32, align 4
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %myref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.ref_s* %4, %struct.ref_s** %myref, align 8, !tbaa !1
  %5 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %retcode, align 4, !tbaa !5
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %newptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %daptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %max_name_ctype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 4
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format, i32 0, i32 1
  %intval = bitcast %union.v* %value1 to i64*
  %13 = load i64, i64* %intval, align 8, !tbaa !32
  %cmp = icmp ne i64 %13, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 2
  %15 = load i32, i32* %language_level, align 4, !tbaa !68
  %cmp2 = icmp sge i32 %15, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %cond = select i1 %16, i32 100, i32 101
  store i32 %cond, i32* %max_name_ctype, align 4, !tbaa !5
  %17 = bitcast [2 x i8]* %s1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i8** %decoder, align 8, !tbaa !1
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %check_only to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %22, i32 0, i32 3
  %23 = load i32, i32* %s_options, align 4, !tbaa !37
  %and = and i32 %23, 2
  %cmp3 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %check_only, align 4, !tbaa !5
  %24 = bitcast i32* %PDFScanRules to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 12
  %26 = load i32, i32* %scanner_options, align 4, !tbaa !69
  %and4 = and i32 %26, 16
  %cmp5 = icmp ne i32 %and4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %PDFScanRules, align 4, !tbaa !5
  %27 = bitcast i32* %ctrld to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options7 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %28, i32 0, i32 3
  %29 = load i32, i32* %s_options7, align 4, !tbaa !37
  %and8 = and i32 %29, 1
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %30 = load i32, i32* %PDFScanRules, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %31 = phi i1 [ true, %land.end ], [ %tobool9, %lor.rhs ]
  %cond10 = select i1 %31, i32 4, i32 65535
  store i32 %cond10, i32* %ctrld, align 4, !tbaa !5
  %32 = bitcast %struct.scanner_state_s* %sstate to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %32) #1
  store i8* null, i8** %endptr, align 8, !tbaa !1
  store i8* null, i8** %sptr, align 8, !tbaa !1
  %33 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_pstack = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %33, i32 0, i32 1
  %34 = load i32, i32* %s_pstack, align 4, !tbaa !36
  %cmp11 = icmp ne i32 %34, 0
  br i1 %cmp11, label %if.then, label %if.end.31

if.then:                                          ; preds = %lor.end
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !70
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 2
  %38 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !71
  %cmp15 = icmp ult %struct.ref_s* %36, %38
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !70
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p20, align 8, !tbaa !70
  br label %if.end.27

if.else:                                          ; preds = %if.then
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack22 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack21, i32 0, i32 0
  %call = call i32 @ref_stack_push(%struct.ref_stack_s* %stack22, i32 1) #6
  store i32 %call, i32* %retcode, align 4, !tbaa !5
  %cmp23 = icmp sge i32 %call, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else
  br label %if.end

if.else.26:                                       ; preds = %if.else
  %42 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1350

if.end:                                           ; preds = %if.then.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.17
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack29 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !70
  store %struct.ref_s* %44, %struct.ref_s** %myref, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %lor.end
  %45 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %45, i32 0, i32 4
  %46 = load i32, i32* %s_scan_type, align 4, !tbaa !13
  %cmp32 = icmp ne i32 %46, 0
  br i1 %cmp32, label %if.then.34, label %if.end.92

if.then.34:                                       ; preds = %if.end.31
  %47 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %48 = bitcast %struct.scanner_state_s* %sstate to i8*
  %49 = bitcast %struct.scanner_state_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 1368, i32 8, i1 false), !tbaa.struct !67
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 3
  %50 = load i32, i32* %is_dynamic, align 4, !tbaa !17
  %tobool35 = icmp ne i32 %50, 0
  br i1 %tobool35, label %if.end.71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.34
  %s_da36 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da36, i32 0, i32 0
  %51 = load i8*, i8** %base, align 8, !tbaa !18
  %s_da37 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da37, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf, i32 0, i32 0
  %cmp38 = icmp ne i8* %51, %arraydecay
  br i1 %cmp38, label %if.then.40, label %if.end.71

if.then.40:                                       ; preds = %land.lhs.true
  %52 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %s_da41 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next42 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da41, i32 0, i32 1
  %53 = load i8*, i8** %next42, align 8, !tbaa !29
  %s_da43 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base44 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da43, i32 0, i32 0
  %54 = load i8*, i8** %base44, align 8, !tbaa !18
  %sub.ptr.lhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv45 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv45, i32* %next, align 4, !tbaa !5
  %55 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %s_da46 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit47 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da46, i32 0, i32 2
  %56 = load i8*, i8** %limit47, align 8, !tbaa !28
  %s_da48 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base49 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da48, i32 0, i32 0
  %57 = load i8*, i8** %base49, align 8, !tbaa !18
  %sub.ptr.lhs.cast50 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %57 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %conv53 = trunc i64 %sub.ptr.sub52 to i32
  store i32 %conv53, i32* %limit, align 4, !tbaa !5
  %s_da54 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf55 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da54, i32 0, i32 4
  %arraydecay56 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf55, i32 0, i32 0
  %s_da57 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base58 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da57, i32 0, i32 0
  store i8* %arraydecay56, i8** %base58, align 8, !tbaa !18
  %s_da59 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf60 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da59, i32 0, i32 4
  %arraydecay61 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf60, i32 0, i32 0
  %58 = load i32, i32* %next, align 4, !tbaa !5
  %idx.ext = zext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay61, i64 %idx.ext
  %s_da62 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next63 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da62, i32 0, i32 1
  store i8* %add.ptr, i8** %next63, align 8, !tbaa !29
  %s_da64 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf65 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da64, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf65, i32 0, i32 0
  %59 = load i32, i32* %limit, align 4, !tbaa !5
  %idx.ext67 = zext i32 %59 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %arraydecay66, i64 %idx.ext67
  %s_da69 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit70 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da69, i32 0, i32 2
  store i8* %add.ptr68, i8** %limit70, align 8, !tbaa !28
  %60 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.40, %land.lhs.true, %if.then.34
  %s_da72 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next73 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da72, i32 0, i32 1
  %62 = load i8*, i8** %next73, align 8, !tbaa !29
  store i8* %62, i8** %daptr, align 8, !tbaa !1
  %s_scan_type74 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  %63 = load i32, i32* %s_scan_type74, align 4, !tbaa !13
  switch i32 %63, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.83
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %if.end.71
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  %cont = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary, i32 0, i32 1
  %64 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)** %cont, align 8, !tbaa !72
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %66 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call75 = call i32 %64(%struct.gs_context_state_s* %65, %struct.ref_s* %66, %struct.scanner_state_s* %sstate) #6
  store i32 %call75, i32* %retcode, align 4, !tbaa !5
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %67, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %68 = load i8*, i8** %ptr, align 8, !tbaa !59
  store i8* %68, i8** %sptr, align 8, !tbaa !1
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %r77 = bitcast %union.stream_cursor_s* %cursor76 to %struct.stream_cursor_read_s*
  %limit78 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r77, i32 0, i32 1
  %70 = load i8*, i8** %limit78, align 8, !tbaa !57
  store i8* %70, i8** %endptr, align 8, !tbaa !1
  %71 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp79 = icmp eq i32 %71, 3
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %sw.bb
  br label %pause

if.end.82:                                        ; preds = %sw.bb
  br label %sret

sw.bb.83:                                         ; preds = %if.end.71
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 5
  %r85 = bitcast %union.stream_cursor_s* %cursor84 to %struct.stream_cursor_read_s*
  %ptr86 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r85, i32 0, i32 0
  %73 = load i8*, i8** %ptr86, align 8, !tbaa !59
  store i8* %73, i8** %sptr, align 8, !tbaa !1
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor87 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 5
  %r88 = bitcast %union.stream_cursor_s* %cursor87 to %struct.stream_cursor_read_s*
  %limit89 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r88, i32 0, i32 1
  %75 = load i8*, i8** %limit89, align 8, !tbaa !57
  store i8* %75, i8** %endptr, align 8, !tbaa !1
  br label %cont_comment

sw.bb.90:                                         ; preds = %if.end.71
  br label %cont_name

sw.bb.91:                                         ; preds = %if.end.71
  br label %cont_string

sw.default:                                       ; preds = %if.end.71
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1350

if.end.92:                                        ; preds = %if.end.31
  %76 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_pstack93 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %76, i32 0, i32 1
  %77 = load i32, i32* %s_pstack93, align 4, !tbaa !36
  %s_pstack94 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  store i32 %77, i32* %s_pstack94, align 4, !tbaa !36
  %78 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_pdepth = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %78, i32 0, i32 2
  %79 = load i32, i32* %s_pdepth, align 4, !tbaa !74
  %s_pdepth95 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 2
  store i32 %79, i32* %s_pdepth95, align 4, !tbaa !74
  %s_file96 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 0
  %80 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file97 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %80, i32 0, i32 0
  %81 = bitcast %struct.ref_s* %s_file96 to i8*
  %82 = bitcast %struct.ref_s* %s_file97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false), !tbaa.struct !30
  %83 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options98 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %83, i32 0, i32 3
  %84 = load i32, i32* %s_options98, align 4, !tbaa !37
  %s_options99 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 3
  store i32 %84, i32* %s_options99, align 4, !tbaa !37
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %object = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 0, i16* %type_attrs, align 2, !tbaa !7
  %s_error100 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %is_name = getelementptr inbounds %struct.se_, %struct.se_* %s_error100, i32 0, i32 1
  store i32 0, i32* %is_name, align 4, !tbaa !38
  %s_error101 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error101, i32 0, i32 2
  %arrayidx = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !39
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor102 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %85, i32 0, i32 5
  %r103 = bitcast %union.stream_cursor_s* %cursor102 to %struct.stream_cursor_read_s*
  %ptr104 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r103, i32 0, i32 0
  %86 = load i8*, i8** %ptr104, align 8, !tbaa !59
  store i8* %86, i8** %sptr, align 8, !tbaa !1
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor105 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %87, i32 0, i32 5
  %r106 = bitcast %union.stream_cursor_s* %cursor105 to %struct.stream_cursor_read_s*
  %limit107 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r106, i32 0, i32 1
  %88 = load i8*, i8** %limit107, align 8, !tbaa !57
  store i8* %88, i8** %endptr, align 8, !tbaa !1
  br label %top.108

top.108:                                          ; preds = %if.end.1322, %if.end.769, %cleanup.715, %sw.bb.125, %if.end.92
  %89 = load i8*, i8** %sptr, align 8, !tbaa !1
  %90 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp109 = icmp uge i8* %89, %90
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %top.108
  %91 = load i8*, i8** %sptr, align 8, !tbaa !1
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor111 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %92, i32 0, i32 5
  %r112 = bitcast %union.stream_cursor_s* %cursor111 to %struct.stream_cursor_read_s*
  %ptr113 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r112, i32 0, i32 0
  store i8* %91, i8** %ptr113, align 8, !tbaa !59
  %93 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call114 = call i32 @spgetcc(%struct.stream_s* %93, i32 1) #6
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 17
  store i32 %call114, i32* %inline_temp, align 4, !tbaa !75
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor115 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %95, i32 0, i32 5
  %r116 = bitcast %union.stream_cursor_s* %cursor115 to %struct.stream_cursor_read_s*
  %ptr117 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r116, i32 0, i32 0
  %96 = load i8*, i8** %ptr117, align 8, !tbaa !59
  store i8* %96, i8** %sptr, align 8, !tbaa !1
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor118 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %97, i32 0, i32 5
  %r119 = bitcast %union.stream_cursor_s* %cursor118 to %struct.stream_cursor_read_s*
  %limit120 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r119, i32 0, i32 1
  %98 = load i8*, i8** %limit120, align 8, !tbaa !57
  store i8* %98, i8** %endptr, align 8, !tbaa !1
  %99 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp121 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %99, i32 0, i32 17
  %100 = load i32, i32* %inline_temp121, align 4, !tbaa !75
  br label %cond.end

cond.false:                                       ; preds = %top.108
  %101 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr122, i8** %sptr, align 8, !tbaa !1
  %102 = load i8, i8* %incdec.ptr122, align 1, !tbaa !39
  %conv123 = zext i8 %102 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond124 = phi i32 [ %100, %cond.true ], [ %conv123, %cond.false ]
  store i32 %cond124, i32* %c, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %103 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %103, label %sw.default.886 [
    i32 32, label %sw.bb.125
    i32 12, label %sw.bb.125
    i32 9, label %sw.bb.125
    i32 13, label %sw.bb.125
    i32 10, label %sw.bb.125
    i32 0, label %sw.bb.125
    i32 4, label %sw.bb.126
    i32 91, label %sw.bb.131
    i32 93, label %sw.bb.131
    i32 60, label %sw.bb.140
    i32 40, label %sw.bb.295
    i32 123, label %sw.bb.311
    i32 62, label %sw.bb.389
    i32 41, label %sw.bb.410
    i32 125, label %sw.bb.411
    i32 47, label %sw.bb.565
    i32 37, label %sw.bb.663
    i32 -1, label %sw.bb.770
    i32 -2, label %sw.bb.779
    i32 48, label %sw.bb.817
    i32 49, label %sw.bb.817
    i32 50, label %sw.bb.817
    i32 51, label %sw.bb.817
    i32 52, label %sw.bb.817
    i32 53, label %sw.bb.817
    i32 54, label %sw.bb.817
    i32 55, label %sw.bb.817
    i32 56, label %sw.bb.817
    i32 57, label %sw.bb.817
    i32 46, label %sw.bb.817
    i32 43, label %sw.bb.858
    i32 45, label %sw.bb.859
    i32 128, label %sw.bb.860
    i32 129, label %sw.bb.860
    i32 130, label %sw.bb.860
    i32 131, label %sw.bb.860
    i32 132, label %sw.bb.860
    i32 133, label %sw.bb.860
    i32 134, label %sw.bb.860
    i32 135, label %sw.bb.860
    i32 136, label %sw.bb.860
    i32 137, label %sw.bb.860
    i32 138, label %sw.bb.860
    i32 139, label %sw.bb.860
    i32 140, label %sw.bb.860
    i32 141, label %sw.bb.860
    i32 142, label %sw.bb.860
    i32 143, label %sw.bb.860
    i32 144, label %sw.bb.860
    i32 145, label %sw.bb.860
    i32 146, label %sw.bb.860
    i32 147, label %sw.bb.860
    i32 148, label %sw.bb.860
    i32 149, label %sw.bb.860
    i32 150, label %sw.bb.860
    i32 151, label %sw.bb.860
    i32 152, label %sw.bb.860
    i32 153, label %sw.bb.860
    i32 154, label %sw.bb.860
    i32 155, label %sw.bb.860
    i32 156, label %sw.bb.860
    i32 157, label %sw.bb.860
    i32 158, label %sw.bb.860
    i32 159, label %sw.bb.860
    i32 33, label %sw.bb.898
    i32 34, label %sw.bb.898
    i32 35, label %sw.bb.898
    i32 36, label %sw.bb.898
    i32 38, label %sw.bb.898
    i32 39, label %sw.bb.898
    i32 42, label %sw.bb.898
    i32 44, label %sw.bb.898
    i32 61, label %sw.bb.898
    i32 58, label %sw.bb.898
    i32 59, label %sw.bb.898
    i32 63, label %sw.bb.898
    i32 64, label %sw.bb.898
    i32 65, label %sw.bb.898
    i32 66, label %sw.bb.898
    i32 67, label %sw.bb.898
    i32 68, label %sw.bb.898
    i32 69, label %sw.bb.898
    i32 70, label %sw.bb.898
    i32 71, label %sw.bb.898
    i32 72, label %sw.bb.898
    i32 73, label %sw.bb.898
    i32 74, label %sw.bb.898
    i32 75, label %sw.bb.898
    i32 76, label %sw.bb.898
    i32 77, label %sw.bb.898
    i32 78, label %sw.bb.898
    i32 79, label %sw.bb.898
    i32 80, label %sw.bb.898
    i32 81, label %sw.bb.898
    i32 82, label %sw.bb.898
    i32 83, label %sw.bb.898
    i32 84, label %sw.bb.898
    i32 85, label %sw.bb.898
    i32 86, label %sw.bb.898
    i32 87, label %sw.bb.898
    i32 88, label %sw.bb.898
    i32 89, label %sw.bb.898
    i32 90, label %sw.bb.898
    i32 92, label %sw.bb.898
    i32 94, label %sw.bb.898
    i32 95, label %sw.bb.898
    i32 96, label %sw.bb.898
    i32 97, label %sw.bb.898
    i32 98, label %sw.bb.898
    i32 99, label %sw.bb.898
    i32 100, label %sw.bb.898
    i32 101, label %sw.bb.898
    i32 102, label %sw.bb.898
    i32 103, label %sw.bb.898
    i32 104, label %sw.bb.898
    i32 105, label %sw.bb.898
    i32 106, label %sw.bb.898
    i32 107, label %sw.bb.898
    i32 108, label %sw.bb.898
    i32 109, label %sw.bb.898
    i32 110, label %sw.bb.898
    i32 111, label %sw.bb.898
    i32 112, label %sw.bb.898
    i32 113, label %sw.bb.898
    i32 114, label %sw.bb.898
    i32 115, label %sw.bb.898
    i32 116, label %sw.bb.898
    i32 117, label %sw.bb.898
    i32 118, label %sw.bb.898
    i32 119, label %sw.bb.898
    i32 120, label %sw.bb.898
    i32 121, label %sw.bb.898
    i32 122, label %sw.bb.898
    i32 124, label %sw.bb.898
    i32 126, label %sw.bb.898
  ]

sw.bb.125:                                        ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  br label %top.108

sw.bb.126:                                        ; preds = %do.end
  %104 = load i32, i32* %c, align 4, !tbaa !5
  %105 = load i32, i32* %ctrld, align 4, !tbaa !5
  %cmp127 = icmp eq i32 %104, %105
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %sw.bb.126
  br label %begin_name

if.end.130:                                       ; preds = %sw.bb.126
  br label %sw.bb.131

sw.bb.131:                                        ; preds = %do.end, %do.end, %if.end.130
  %106 = load i32, i32* %c, align 4, !tbaa !5
  %conv132 = trunc i32 %106 to i8
  %arrayidx133 = getelementptr inbounds [2 x i8], [2 x i8]* %s1, i32 0, i64 0
  store i8 %conv132, i8* %arrayidx133, align 1, !tbaa !39
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %108 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %109 = bitcast %struct.gs_ref_memory_s* %108 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 2
  %110 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !50
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %110, i32 0, i32 16
  %111 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !53
  %arraydecay134 = getelementptr inbounds [2 x i8], [2 x i8]* %s1, i32 0, i32 0
  %112 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call135 = call i32 @names_ref(%struct.name_table_s* %111, i8* %arraydecay134, i32 1, %struct.ref_s* %112, i32 1) #6
  store i32 %call135, i32* %retcode, align 4, !tbaa !5
  %113 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  %114 = load i16, i16* %type_attrs137, align 2, !tbaa !7
  %conv138 = zext i16 %114 to i32
  %or = or i32 %conv138, 128
  %conv139 = trunc i32 %or to i16
  store i16 %conv139, i16* %type_attrs137, align 2, !tbaa !7
  br label %sw.epilog.1258

sw.bb.140:                                        ; preds = %do.end
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level141 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 2
  %116 = load i32, i32* %language_level141, align 4, !tbaa !68
  %cmp142 = icmp sge i32 %116, 2
  br i1 %cmp142, label %if.then.144, label %if.end.195

if.then.144:                                      ; preds = %sw.bb.140
  %117 = load i8*, i8** %sptr, align 8, !tbaa !1
  %118 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp145 = icmp uge i8* %117, %118
  br i1 %cmp145, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %if.then.144
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  %119 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds i8, i8* %119, i64 -1
  store i8* %add.ptr149, i8** %sptr, align 8, !tbaa !1
  %s_scan_type150 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type150, align 4, !tbaa !13
  br label %pause

do.cond.151:                                      ; No predecessors!
  br label %do.end.152

do.end.152:                                       ; preds = %do.cond.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %if.then.144
  %120 = load i8*, i8** %sptr, align 8, !tbaa !1
  %121 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp154 = icmp uge i8* %120, %121
  br i1 %cmp154, label %cond.true.156, label %cond.false.169

cond.true.156:                                    ; preds = %if.end.153
  %122 = load i8*, i8** %sptr, align 8, !tbaa !1
  %123 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor157 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %123, i32 0, i32 5
  %r158 = bitcast %union.stream_cursor_s* %cursor157 to %struct.stream_cursor_read_s*
  %ptr159 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r158, i32 0, i32 0
  store i8* %122, i8** %ptr159, align 8, !tbaa !59
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call160 = call i32 @spgetcc(%struct.stream_s* %124, i32 1) #6
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp161 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %125, i32 0, i32 17
  store i32 %call160, i32* %inline_temp161, align 4, !tbaa !75
  %126 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor162 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %126, i32 0, i32 5
  %r163 = bitcast %union.stream_cursor_s* %cursor162 to %struct.stream_cursor_read_s*
  %ptr164 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r163, i32 0, i32 0
  %127 = load i8*, i8** %ptr164, align 8, !tbaa !59
  store i8* %127, i8** %sptr, align 8, !tbaa !1
  %128 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor165 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %128, i32 0, i32 5
  %r166 = bitcast %union.stream_cursor_s* %cursor165 to %struct.stream_cursor_read_s*
  %limit167 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r166, i32 0, i32 1
  %129 = load i8*, i8** %limit167, align 8, !tbaa !57
  store i8* %129, i8** %endptr, align 8, !tbaa !1
  %130 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp168 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %130, i32 0, i32 17
  %131 = load i32, i32* %inline_temp168, align 4, !tbaa !75
  br label %cond.end.172

cond.false.169:                                   ; preds = %if.end.153
  %132 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr170 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr170, i8** %sptr, align 8, !tbaa !1
  %133 = load i8, i8* %incdec.ptr170, align 1, !tbaa !39
  %conv171 = zext i8 %133 to i32
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.169, %cond.true.156
  %cond173 = phi i32 [ %131, %cond.true.156 ], [ %conv171, %cond.false.169 ]
  store i32 %cond173, i32* %c, align 4, !tbaa !5
  %134 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %134, label %sw.epilog [
    i32 60, label %sw.bb.174
    i32 126, label %sw.bb.179
  ]

sw.bb.174:                                        ; preds = %cond.end.172
  %135 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr175 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %incdec.ptr175, i8** %sptr, align 8, !tbaa !1
  %s_ss176 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name = bitcast %union.sss_* %s_ss176 to %struct.sns_*
  %s_name_type = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name, i32 0, i32 0
  store i32 0, i32* %s_name_type, align 4, !tbaa !76
  %s_ss177 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name178 = bitcast %union.sss_* %s_ss177 to %struct.sns_*
  %s_try_number = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name178, i32 0, i32 1
  store i32 0, i32* %s_try_number, align 4, !tbaa !78
  br label %try_funny_name

sw.bb.179:                                        ; preds = %cond.end.172
  br label %do.body.180

do.body.180:                                      ; preds = %sw.bb.179
  %s_ss181 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %a85d = bitcast %union.sss_* %s_ss181 to %struct.stream_A85D_state_s*
  %min_left = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %a85d, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !79
  %s_ss182 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %a85d183 = bitcast %union.sss_* %s_ss182 to %struct.stream_A85D_state_s*
  %word = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %a85d183, i32 0, i32 6
  store i64 0, i64* %word, align 8, !tbaa !81
  %s_ss184 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %a85d185 = bitcast %union.sss_* %s_ss184 to %struct.stream_A85D_state_s*
  %odd = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %a85d185, i32 0, i32 5
  store i32 0, i32* %odd, align 4, !tbaa !82
  %s_ss186 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %a85d187 = bitcast %union.sss_* %s_ss186 to %struct.stream_A85D_state_s*
  %require_eod = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %a85d187, i32 0, i32 8
  store i32 0, i32* %require_eod, align 4, !tbaa !83
  br label %do.cond.188

do.cond.188:                                      ; preds = %do.body.180
  br label %do.end.189

do.end.189:                                       ; preds = %do.cond.188
  %s_ss190 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %st = bitcast %union.sss_* %s_ss190 to %struct.stream_state_s*
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %st, i32 0, i32 0
  store %struct.stream_template_s* @s_A85D_template, %struct.stream_template_s** %templat, align 8, !tbaa !84
  %s_ss191 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %a85d192 = bitcast %union.sss_* %s_ss191 to %struct.stream_A85D_state_s*
  %require_eod193 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %a85d192, i32 0, i32 8
  store i32 1, i32* %require_eod193, align 4, !tbaa !83
  br label %str

sw.epilog:                                        ; preds = %cond.end.172
  %136 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr194 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %incdec.ptr194, i8** %sptr, align 8, !tbaa !1
  br label %if.end.195

if.end.195:                                       ; preds = %sw.epilog, %sw.bb.140
  %s_ss196 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %axd = bitcast %union.sss_* %s_ss196 to %struct.stream_AXD_state_s*
  %min_left197 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %axd, i32 0, i32 3
  store i32 1, i32* %min_left197, align 4, !tbaa !86
  %s_ss198 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %axd199 = bitcast %union.sss_* %s_ss198 to %struct.stream_AXD_state_s*
  %odd200 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %axd199, i32 0, i32 5
  store i32 -1, i32* %odd200, align 4, !tbaa !88
  %s_ss201 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %st202 = bitcast %union.sss_* %s_ss201 to %struct.stream_state_s*
  %templat203 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %st202, i32 0, i32 0
  store %struct.stream_template_s* @s_AXD_template, %struct.stream_template_s** %templat203, align 8, !tbaa !84
  br label %str

str:                                              ; preds = %land.end.304, %if.end.195, %do.end.189
  %137 = load i8*, i8** %sptr, align 8, !tbaa !1
  %138 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor204 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %138, i32 0, i32 5
  %r205 = bitcast %union.stream_cursor_s* %cursor204 to %struct.stream_cursor_read_s*
  %ptr206 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r205, i32 0, i32 0
  store i8* %137, i8** %ptr206, align 8, !tbaa !59
  %s_da207 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %139 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory208 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %139, i32 0, i32 1
  %current209 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory208, i32 0, i32 0
  %140 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current209, align 8, !tbaa !41
  %141 = bitcast %struct.gs_ref_memory_s* %140 to %struct.gs_memory_s*
  call void @dynamic_init(%struct.dynamic_area_s* %s_da207, %struct.gs_memory_s* %141) #6
  br label %cont_string

cont_string:                                      ; preds = %str, %sw.bb.91
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %cont_string
  %142 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %142) #1
  %s_da210 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next211 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da210, i32 0, i32 1
  %143 = load i8*, i8** %next211, align 8, !tbaa !29
  %add.ptr212 = getelementptr inbounds i8, i8* %143, i64 -1
  %ptr213 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr212, i8** %ptr213, align 8, !tbaa !89
  %s_da214 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit215 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da214, i32 0, i32 2
  %144 = load i8*, i8** %limit215, align 8, !tbaa !28
  %add.ptr216 = getelementptr inbounds i8, i8* %144, i64 -1
  %limit217 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr216, i8** %limit217, align 8, !tbaa !91
  %s_ss218 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %st219 = bitcast %union.sss_* %s_ss218 to %struct.stream_state_s*
  %templat220 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %st219, i32 0, i32 0
  %145 = load %struct.stream_template_s*, %struct.stream_template_s** %templat220, align 8, !tbaa !84
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %145, i32 0, i32 2
  %146 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !92
  %s_ss221 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %st222 = bitcast %union.sss_* %s_ss221 to %struct.stream_state_s*
  %147 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor223 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %147, i32 0, i32 5
  %r224 = bitcast %union.stream_cursor_s* %cursor223 to %struct.stream_cursor_read_s*
  %148 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %148, i32 0, i32 9
  %149 = load i16, i16* %end_status, align 2, !tbaa !60
  %conv225 = sext i16 %149 to i32
  %cmp226 = icmp eq i32 %conv225, -1
  %conv227 = zext i1 %cmp226 to i32
  %call228 = call i32 %146(%struct.stream_state_s* %st222, %struct.stream_cursor_read_s* %r224, %struct.stream_cursor_write_s* %w, i32 %conv227) #6
  store i32 %call228, i32* %status, align 4, !tbaa !5
  %150 = load i32, i32* %check_only, align 4, !tbaa !5
  %tobool229 = icmp ne i32 %150, 0
  br i1 %tobool229, label %if.end.235, label %if.then.230

if.then.230:                                      ; preds = %for.cond
  %ptr231 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %151 = load i8*, i8** %ptr231, align 8, !tbaa !89
  %add.ptr232 = getelementptr inbounds i8, i8* %151, i64 1
  %s_da233 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next234 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da233, i32 0, i32 1
  store i8* %add.ptr232, i8** %next234, align 8, !tbaa !29
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.230, %for.cond
  %152 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %152, label %sw.epilog.270 [
    i32 0, label %sw.bb.236
    i32 1, label %sw.bb.252
  ]

sw.bb.236:                                        ; preds = %if.end.235
  %153 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status237 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %153, i32 0, i32 9
  %154 = load i16, i16* %end_status237, align 2, !tbaa !60
  %conv238 = sext i16 %154 to i32
  store i32 %conv238, i32* %status, align 4, !tbaa !5
  %155 = load i32, i32* %status, align 4, !tbaa !5
  %cmp239 = icmp slt i32 %155, 0
  br i1 %cmp239, label %if.then.241, label %if.end.250

if.then.241:                                      ; preds = %sw.bb.236
  %156 = load i32, i32* %status, align 4, !tbaa !5
  %cmp242 = icmp eq i32 %156, -1
  br i1 %cmp242, label %if.then.244, label %if.end.249

if.then.244:                                      ; preds = %if.then.241
  %157 = load i32, i32* %check_only, align 4, !tbaa !5
  %tobool245 = icmp ne i32 %157, 0
  br i1 %tobool245, label %if.then.246, label %if.else.248

if.then.246:                                      ; preds = %if.then.244
  store i32 3, i32* %retcode, align 4, !tbaa !5
  %s_scan_type247 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 4, i32* %s_scan_type247, align 4, !tbaa !13
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup

if.else.248:                                      ; preds = %if.then.244
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.249:                                       ; preds = %if.then.241
  br label %sw.epilog.270

if.end.250:                                       ; preds = %sw.bb.236
  %158 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call251 = call i32 @s_process_read_buf(%struct.stream_s* %158) #6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.252:                                        ; preds = %if.end.235
  %159 = load i32, i32* %check_only, align 4, !tbaa !5
  %tobool253 = icmp ne i32 %159, 0
  br i1 %tobool253, label %if.end.269, label %if.then.254

if.then.254:                                      ; preds = %sw.bb.252
  %s_da255 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %s_da256 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next257 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da256, i32 0, i32 1
  %160 = load i8*, i8** %next257, align 8, !tbaa !29
  %call258 = call i32 @dynamic_grow(%struct.dynamic_area_s* %s_da255, i8* %160, i32 16777216) #6
  store i32 %call258, i32* %retcode, align 4, !tbaa !5
  %161 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp259 = icmp eq i32 %161, -25
  br i1 %cmp259, label %if.then.261, label %if.else.263

if.then.261:                                      ; preds = %if.then.254
  %s_scan_type262 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 4, i32* %s_scan_type262, align 4, !tbaa !13
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup

if.else.263:                                      ; preds = %if.then.254
  %162 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %162, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.else.263
  %163 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %163, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.267:                                       ; preds = %if.else.263
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %sw.bb.252
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.270:                                    ; preds = %if.end.235, %if.end.249
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.266, %if.then.261, %if.else.248, %if.then.246, %sw.epilog.270, %if.end.269, %if.end.250
  %164 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %164) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1350 [
    i32 21, label %for.cond
    i32 20, label %for.end
    i32 4, label %sret
    i32 23, label %suspend
  ]

for.end:                                          ; preds = %cleanup
  %165 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor271 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %165, i32 0, i32 5
  %r272 = bitcast %union.stream_cursor_s* %cursor271 to %struct.stream_cursor_read_s*
  %ptr273 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r272, i32 0, i32 0
  %166 = load i8*, i8** %ptr273, align 8, !tbaa !59
  store i8* %166, i8** %sptr, align 8, !tbaa !1
  %167 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor274 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %167, i32 0, i32 5
  %r275 = bitcast %union.stream_cursor_s* %cursor274 to %struct.stream_cursor_read_s*
  %limit276 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r275, i32 0, i32 1
  %168 = load i8*, i8** %limit276, align 8, !tbaa !57
  store i8* %168, i8** %endptr, align 8, !tbaa !1
  %169 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %169, label %sw.default.277 [
    i32 -3, label %sw.bb.278
    i32 -4, label %sw.bb.278
    i32 -1, label %sw.bb.280
  ]

sw.default.277:                                   ; preds = %for.end
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

sw.bb.278:                                        ; preds = %for.end, %for.end
  %s_scan_type279 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 4, i32* %s_scan_type279, align 4, !tbaa !13
  br label %pause

sw.bb.280:                                        ; preds = %for.end
  br label %sw.epilog.281

sw.epilog.281:                                    ; preds = %sw.bb.280
  %170 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %171 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %s_da282 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %s_da283 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next284 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da283, i32 0, i32 1
  %172 = load i8*, i8** %next284, align 8, !tbaa !29
  %call285 = call i32 @dynamic_make_string(%struct.gs_context_state_s* %170, %struct.ref_s* %171, %struct.dynamic_area_s* %s_da282, i8* %172) #6
  store i32 %call285, i32* %retcode, align 4, !tbaa !5
  %173 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp286 = icmp slt i32 %173, 0
  br i1 %cmp286, label %if.then.288, label %if.end.294

if.then.288:                                      ; preds = %sw.epilog.281
  %174 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor289 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %174, i32 0, i32 5
  %r290 = bitcast %union.stream_cursor_s* %cursor289 to %struct.stream_cursor_read_s*
  %ptr291 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r290, i32 0, i32 0
  %175 = load i8*, i8** %ptr291, align 8, !tbaa !59
  %incdec.ptr292 = getelementptr inbounds i8, i8* %175, i32 -1
  store i8* %incdec.ptr292, i8** %ptr291, align 8, !tbaa !59
  %s_scan_type293 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 4, i32* %s_scan_type293, align 4, !tbaa !13
  br label %suspend

if.end.294:                                       ; preds = %sw.epilog.281
  br label %sw.epilog.1258

sw.bb.295:                                        ; preds = %do.end
  %176 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options296 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %176, i32 0, i32 3
  %177 = load i32, i32* %s_options296, align 4, !tbaa !37
  %and297 = and i32 %177, 1
  %cmp298 = icmp ne i32 %and297, 0
  br i1 %cmp298, label %land.rhs.300, label %land.end.304

land.rhs.300:                                     ; preds = %sw.bb.295
  %178 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level301 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %178, i32 0, i32 2
  %179 = load i32, i32* %language_level301, align 4, !tbaa !68
  %cmp302 = icmp sge i32 %179, 2
  %lnot = xor i1 %cmp302, true
  br label %land.end.304

land.end.304:                                     ; preds = %land.rhs.300, %sw.bb.295
  %180 = phi i1 [ false, %sw.bb.295 ], [ %lnot, %land.rhs.300 ]
  %land.ext = zext i1 %180 to i32
  %s_ss305 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %pssd = bitcast %union.sss_* %s_ss305 to %struct.stream_PSSD_state_s*
  %from_string = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %pssd, i32 0, i32 5
  store i32 %land.ext, i32* %from_string, align 4, !tbaa !94
  %s_ss306 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %pssd307 = bitcast %union.sss_* %s_ss306 to %struct.stream_PSSD_state_s*
  %depth = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %pssd307, i32 0, i32 6
  store i32 0, i32* %depth, align 4, !tbaa !96
  %s_ss308 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %st309 = bitcast %union.sss_* %s_ss308 to %struct.stream_state_s*
  %templat310 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %st309, i32 0, i32 0
  store %struct.stream_template_s* @s_PSSD_template, %struct.stream_template_s** %templat310, align 8, !tbaa !84
  br label %str

sw.bb.311:                                        ; preds = %do.end
  %s_pstack312 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %181 = load i32, i32* %s_pstack312, align 4, !tbaa !36
  %cmp313 = icmp eq i32 %181, 0
  br i1 %cmp313, label %if.then.315, label %if.end.355

if.then.315:                                      ; preds = %sw.bb.311
  %182 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack316 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %182, i32 0, i32 26
  %stack317 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack316, i32 0, i32 0
  %p318 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack317, i32 0, i32 0
  %183 = load %struct.ref_s*, %struct.ref_s** %p318, align 8, !tbaa !70
  %184 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack319 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %184, i32 0, i32 26
  %stack320 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack319, i32 0, i32 0
  %top321 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack320, i32 0, i32 2
  %185 = load %struct.ref_s*, %struct.ref_s** %top321, align 8, !tbaa !71
  %cmp322 = icmp ult %struct.ref_s* %183, %185
  br i1 %cmp322, label %if.then.324, label %if.else.329

if.then.324:                                      ; preds = %if.then.315
  %186 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack325 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %186, i32 0, i32 26
  %stack326 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack325, i32 0, i32 0
  %p327 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack326, i32 0, i32 0
  %187 = load %struct.ref_s*, %struct.ref_s** %p327, align 8, !tbaa !70
  %incdec.ptr328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i32 1
  store %struct.ref_s* %incdec.ptr328, %struct.ref_s** %p327, align 8, !tbaa !70
  br label %if.end.340

if.else.329:                                      ; preds = %if.then.315
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack330 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %188, i32 0, i32 26
  %stack331 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack330, i32 0, i32 0
  %call332 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack331, i32 1) #6
  store i32 %call332, i32* %retcode, align 4, !tbaa !5
  %cmp333 = icmp sge i32 %call332, 0
  br i1 %cmp333, label %if.then.335, label %if.else.336

if.then.335:                                      ; preds = %if.else.329
  br label %if.end.339

if.else.336:                                      ; preds = %if.else.329
  %189 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr337 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %incdec.ptr337, i8** %sptr, align 8, !tbaa !1
  %s_scan_type338 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type338, align 4, !tbaa !13
  br label %pause_ret

if.end.339:                                       ; preds = %if.then.335
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.324
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack341 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %190, i32 0, i32 26
  %stack342 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack341, i32 0, i32 0
  %p343 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack342, i32 0, i32 0
  %191 = load %struct.ref_s*, %struct.ref_s** %p343, align 8, !tbaa !97
  %add.ptr344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i64 1
  %192 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack345 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %192, i32 0, i32 26
  %stack346 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack345, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack346, i32 0, i32 1
  %193 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !98
  %sub.ptr.lhs.cast347 = ptrtoint %struct.ref_s* %add.ptr344 to i64
  %sub.ptr.rhs.cast348 = ptrtoint %struct.ref_s* %193 to i64
  %sub.ptr.sub349 = sub i64 %sub.ptr.lhs.cast347, %sub.ptr.rhs.cast348
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub349, 16
  %194 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack350 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %194, i32 0, i32 26
  %stack351 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack350, i32 0, i32 0
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack351, i32 0, i32 5
  %195 = load i32, i32* %extension_used, align 4, !tbaa !99
  %conv352 = zext i32 %195 to i64
  %add = add nsw i64 %sub.ptr.div, %conv352
  %conv353 = trunc i64 %add to i32
  %s_pdepth354 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 2
  store i32 %conv353, i32* %s_pdepth354, align 4, !tbaa !74
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.340, %sw.bb.311
  %s_pstack356 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %196 = load i32, i32* %s_pstack356, align 4, !tbaa !36
  %conv357 = zext i32 %196 to i64
  %197 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack358 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %197, i32 0, i32 26
  %stack359 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack358, i32 0, i32 0
  %p360 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack359, i32 0, i32 0
  %198 = load %struct.ref_s*, %struct.ref_s** %p360, align 8, !tbaa !70
  %value361 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %198, i32 0, i32 1
  %intval362 = bitcast %union.v* %value361 to i64*
  store i64 %conv357, i64* %intval362, align 8, !tbaa !32
  %199 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack363 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %199, i32 0, i32 26
  %stack364 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack363, i32 0, i32 0
  %p365 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack364, i32 0, i32 0
  %200 = load %struct.ref_s*, %struct.ref_s** %p365, align 8, !tbaa !70
  %tas366 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %200, i32 0, i32 0
  %type_attrs367 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas366, i32 0, i32 0
  store i16 2816, i16* %type_attrs367, align 2, !tbaa !7
  %201 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack368 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %201, i32 0, i32 26
  %stack369 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack368, i32 0, i32 0
  %p370 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack369, i32 0, i32 0
  %202 = load %struct.ref_s*, %struct.ref_s** %p370, align 8, !tbaa !97
  %add.ptr371 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %202, i64 1
  %203 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack372 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %203, i32 0, i32 26
  %stack373 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack372, i32 0, i32 0
  %bot374 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack373, i32 0, i32 1
  %204 = load %struct.ref_s*, %struct.ref_s** %bot374, align 8, !tbaa !98
  %sub.ptr.lhs.cast375 = ptrtoint %struct.ref_s* %add.ptr371 to i64
  %sub.ptr.rhs.cast376 = ptrtoint %struct.ref_s* %204 to i64
  %sub.ptr.sub377 = sub i64 %sub.ptr.lhs.cast375, %sub.ptr.rhs.cast376
  %sub.ptr.div378 = sdiv exact i64 %sub.ptr.sub377, 16
  %205 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack379 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %205, i32 0, i32 26
  %stack380 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack379, i32 0, i32 0
  %extension_used381 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack380, i32 0, i32 5
  %206 = load i32, i32* %extension_used381, align 4, !tbaa !99
  %conv382 = zext i32 %206 to i64
  %add383 = add nsw i64 %sub.ptr.div378, %conv382
  %conv384 = trunc i64 %add383 to i32
  %s_pstack385 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  store i32 %conv384, i32* %s_pstack385, align 4, !tbaa !36
  br label %do.body.386

do.body.386:                                      ; preds = %if.end.355
  br label %do.cond.387

do.cond.387:                                      ; preds = %do.body.386
  br label %do.end.388

do.end.388:                                       ; preds = %do.cond.387
  br label %snext

sw.bb.389:                                        ; preds = %do.end
  %207 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level390 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %207, i32 0, i32 2
  %208 = load i32, i32* %language_level390, align 4, !tbaa !68
  %cmp391 = icmp sge i32 %208, 2
  br i1 %cmp391, label %if.then.393, label %if.end.409

if.then.393:                                      ; preds = %sw.bb.389
  %209 = load i8*, i8** %sptr, align 8, !tbaa !1
  %210 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp394 = icmp uge i8* %209, %210
  br i1 %cmp394, label %if.then.396, label %if.end.402

if.then.396:                                      ; preds = %if.then.393
  br label %do.body.397

do.body.397:                                      ; preds = %if.then.396
  %211 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr398 = getelementptr inbounds i8, i8* %211, i64 -1
  store i8* %add.ptr398, i8** %sptr, align 8, !tbaa !1
  %s_scan_type399 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type399, align 4, !tbaa !13
  br label %pause

do.cond.400:                                      ; No predecessors!
  br label %do.end.401

do.end.401:                                       ; preds = %do.cond.400
  br label %if.end.402

if.end.402:                                       ; preds = %do.end.401, %if.then.393
  %s_ss403 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name404 = bitcast %union.sss_* %s_ss403 to %struct.sns_*
  %s_name_type405 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name404, i32 0, i32 0
  store i32 0, i32* %s_name_type405, align 4, !tbaa !76
  %s_ss406 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name407 = bitcast %union.sss_* %s_ss406 to %struct.sns_*
  %s_try_number408 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name407, i32 0, i32 1
  store i32 0, i32* %s_try_number408, align 4, !tbaa !78
  br label %try_funny_name

if.end.409:                                       ; preds = %sw.bb.389
  br label %sw.bb.410

sw.bb.410:                                        ; preds = %do.end, %if.end.409
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

sw.bb.411:                                        ; preds = %do.end
  %s_pstack412 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %212 = load i32, i32* %s_pstack412, align 4, !tbaa !36
  %cmp413 = icmp eq i32 %212, 0
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %sw.bb.411
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.416:                                       ; preds = %sw.bb.411
  %213 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack417 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %213, i32 0, i32 26
  %stack418 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack417, i32 0, i32 0
  %p419 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack418, i32 0, i32 0
  %214 = load %struct.ref_s*, %struct.ref_s** %p419, align 8, !tbaa !70
  %incdec.ptr420 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %214, i32 -1
  store %struct.ref_s* %incdec.ptr420, %struct.ref_s** %p419, align 8, !tbaa !70
  %215 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %215) #1
  %216 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack421 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %216, i32 0, i32 26
  %stack422 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack421, i32 0, i32 0
  %p423 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack422, i32 0, i32 0
  %217 = load %struct.ref_s*, %struct.ref_s** %p423, align 8, !tbaa !97
  %add.ptr424 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %217, i64 1
  %218 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack425 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %218, i32 0, i32 26
  %stack426 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack425, i32 0, i32 0
  %bot427 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack426, i32 0, i32 1
  %219 = load %struct.ref_s*, %struct.ref_s** %bot427, align 8, !tbaa !98
  %sub.ptr.lhs.cast428 = ptrtoint %struct.ref_s* %add.ptr424 to i64
  %sub.ptr.rhs.cast429 = ptrtoint %struct.ref_s* %219 to i64
  %sub.ptr.sub430 = sub i64 %sub.ptr.lhs.cast428, %sub.ptr.rhs.cast429
  %sub.ptr.div431 = sdiv exact i64 %sub.ptr.sub430, 16
  %220 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack432 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %220, i32 0, i32 26
  %stack433 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack432, i32 0, i32 0
  %extension_used434 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack433, i32 0, i32 5
  %221 = load i32, i32* %extension_used434, align 4, !tbaa !99
  %conv435 = zext i32 %221 to i64
  %add436 = add nsw i64 %sub.ptr.div431, %conv435
  %s_pstack437 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %222 = load i32, i32* %s_pstack437, align 4, !tbaa !36
  %conv438 = zext i32 %222 to i64
  %sub = sub nsw i64 %add436, %conv438
  %conv439 = trunc i64 %sub to i32
  store i32 %conv439, i32* %size, align 4, !tbaa !5
  %223 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %223) #1
  br label %do.body.440

do.body.440:                                      ; preds = %if.end.416
  br label %do.cond.441

do.cond.441:                                      ; preds = %do.body.440
  br label %do.end.442

do.end.442:                                       ; preds = %do.cond.441
  %224 = load i32, i32* %size, align 4, !tbaa !5
  %cmp443 = icmp ugt i32 %224, 16777216
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %do.end.442
  store i32 -13, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.562

if.end.446:                                       ; preds = %do.end.442
  %s_pstack447 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %225 = load i32, i32* %s_pstack447, align 4, !tbaa !36
  %s_pdepth448 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 2
  %226 = load i32, i32* %s_pdepth448, align 4, !tbaa !74
  %cmp449 = icmp eq i32 %225, %226
  br i1 %cmp449, label %cond.true.451, label %cond.false.452

cond.true.451:                                    ; preds = %if.end.446
  %227 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  br label %cond.end.453

cond.false.452:                                   ; preds = %if.end.446
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.452, %cond.true.451
  %cond454 = phi %struct.ref_s* [ %227, %cond.true.451 ], [ %arr, %cond.false.452 ]
  store %struct.ref_s* %cond454, %struct.ref_s** %myref, align 8, !tbaa !1
  %228 = load i32, i32* %check_only, align 4, !tbaa !5
  %tobool455 = icmp ne i32 %228, 0
  br i1 %tobool455, label %if.then.456, label %if.else.463

if.then.456:                                      ; preds = %cond.end.453
  %229 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %value457 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i32 0, i32 1
  %refs = bitcast %union.v* %value457 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %230 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas458 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %230, i32 0, i32 0
  %type_attrs459 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas458, i32 0, i32 0
  store i16 1024, i16* %type_attrs459, align 2, !tbaa !7
  %231 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas460 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %231, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas460, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !40
  %232 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack461 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %232, i32 0, i32 26
  %stack462 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack461, i32 0, i32 0
  %233 = load i32, i32* %size, align 4, !tbaa !5
  call void @ref_stack_pop(%struct.ref_stack_s* %stack462, i32 %233) #6
  br label %if.end.513

if.else.463:                                      ; preds = %cond.end.453
  %234 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %array_packing = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %234, i32 0, i32 3
  %value464 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %array_packing, i32 0, i32 1
  %boolval = bitcast %union.v* %value464 to i16*
  %235 = load i16, i16* %boolval, align 2, !tbaa !31
  %tobool465 = icmp ne i16 %235, 0
  br i1 %tobool465, label %if.then.466, label %if.else.486

if.then.466:                                      ; preds = %if.else.463
  %236 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %237 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack467 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %237, i32 0, i32 26
  %stack468 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack467, i32 0, i32 0
  %238 = load i32, i32* %size, align 4, !tbaa !5
  %239 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory469 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %239, i32 0, i32 1
  %call470 = call i32 @make_packed_array(%struct.ref_s* %236, %struct.ref_stack_s* %stack468, i32 %238, %struct.gs_dual_memory_s* %memory469, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 %call470, i32* %retcode, align 4, !tbaa !5
  %240 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp471 = icmp slt i32 %240, 0
  br i1 %cmp471, label %if.then.473, label %if.end.480

if.then.473:                                      ; preds = %if.then.466
  %241 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack474 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %241, i32 0, i32 26
  %stack475 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack474, i32 0, i32 0
  %p476 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack475, i32 0, i32 0
  %242 = load %struct.ref_s*, %struct.ref_s** %p476, align 8, !tbaa !70
  %incdec.ptr477 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %242, i32 1
  store %struct.ref_s* %incdec.ptr477, %struct.ref_s** %p476, align 8, !tbaa !70
  %243 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr478 = getelementptr inbounds i8, i8* %243, i32 -1
  store i8* %incdec.ptr478, i8** %sptr, align 8, !tbaa !1
  %s_scan_type479 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type479, align 4, !tbaa !13
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.562

if.end.480:                                       ; preds = %if.then.466
  %244 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas481 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %244, i32 0, i32 0
  %type_attrs482 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas481, i32 0, i32 0
  %245 = load i16, i16* %type_attrs482, align 2, !tbaa !7
  %conv483 = zext i16 %245 to i32
  %or484 = or i32 %conv483, 128
  %conv485 = trunc i32 %or484 to i16
  store i16 %conv485, i16* %type_attrs482, align 2, !tbaa !7
  br label %if.end.512

if.else.486:                                      ; preds = %if.else.463
  %246 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory487 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %246, i32 0, i32 1
  %current488 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory487, i32 0, i32 0
  %247 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current488, align 8, !tbaa !41
  %248 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %249 = load i32, i32* %size, align 4, !tbaa !5
  %call489 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %247, %struct.ref_s* %248, i32 240, i32 %249, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #6
  store i32 %call489, i32* %retcode, align 4, !tbaa !5
  %250 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp490 = icmp slt i32 %250, 0
  br i1 %cmp490, label %if.then.492, label %if.end.499

if.then.492:                                      ; preds = %if.else.486
  %251 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack493 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %251, i32 0, i32 26
  %stack494 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack493, i32 0, i32 0
  %p495 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack494, i32 0, i32 0
  %252 = load %struct.ref_s*, %struct.ref_s** %p495, align 8, !tbaa !70
  %incdec.ptr496 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %252, i32 1
  store %struct.ref_s* %incdec.ptr496, %struct.ref_s** %p495, align 8, !tbaa !70
  %253 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr497 = getelementptr inbounds i8, i8* %253, i32 -1
  store i8* %incdec.ptr497, i8** %sptr, align 8, !tbaa !1
  %s_scan_type498 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type498, align 4, !tbaa !13
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.562

if.end.499:                                       ; preds = %if.else.486
  %254 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack500 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %254, i32 0, i32 26
  %stack501 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack500, i32 0, i32 0
  %255 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %256 = load i32, i32* %size, align 4, !tbaa !5
  %257 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory502 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %257, i32 0, i32 1
  %call503 = call i32 @ref_stack_store(%struct.ref_stack_s* %stack501, %struct.ref_s* %255, i32 %256, i32 0, i32 1, i32 0, %struct.gs_dual_memory_s* %memory502, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  store i32 %call503, i32* %retcode, align 4, !tbaa !5
  %258 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp504 = icmp slt i32 %258, 0
  br i1 %cmp504, label %if.then.506, label %if.end.509

if.then.506:                                      ; preds = %if.end.499
  %259 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory507 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %259, i32 0, i32 1
  %current508 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory507, i32 0, i32 0
  %260 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current508, align 8, !tbaa !41
  %261 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %260, %struct.ref_s* %261, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #6
  %262 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %262, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.562

if.end.509:                                       ; preds = %if.end.499
  %263 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack510 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %263, i32 0, i32 26
  %stack511 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack510, i32 0, i32 0
  %264 = load i32, i32* %size, align 4, !tbaa !5
  call void @ref_stack_pop(%struct.ref_stack_s* %stack511, i32 %264) #6
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.509, %if.end.480
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %if.then.456
  %s_pstack514 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %265 = load i32, i32* %s_pstack514, align 4, !tbaa !36
  %s_pdepth515 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 2
  %266 = load i32, i32* %s_pdepth515, align 4, !tbaa !74
  %cmp516 = icmp eq i32 %265, %266
  br i1 %cmp516, label %if.then.518, label %if.else.537

if.then.518:                                      ; preds = %if.end.513
  %267 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack519 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %267, i32 0, i32 26
  %stack520 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack519, i32 0, i32 0
  %p521 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack520, i32 0, i32 0
  %268 = load %struct.ref_s*, %struct.ref_s** %p521, align 8, !tbaa !70
  %269 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack522 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %269, i32 0, i32 26
  %stack523 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack522, i32 0, i32 0
  %bot524 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack523, i32 0, i32 1
  %270 = load %struct.ref_s*, %struct.ref_s** %bot524, align 8, !tbaa !100
  %cmp525 = icmp uge %struct.ref_s* %268, %270
  br i1 %cmp525, label %if.then.527, label %if.else.532

if.then.527:                                      ; preds = %if.then.518
  %271 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack528 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %271, i32 0, i32 26
  %stack529 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack528, i32 0, i32 0
  %p530 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack529, i32 0, i32 0
  %272 = load %struct.ref_s*, %struct.ref_s** %p530, align 8, !tbaa !70
  %incdec.ptr531 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %272, i32 -1
  store %struct.ref_s* %incdec.ptr531, %struct.ref_s** %p530, align 8, !tbaa !70
  br label %if.end.535

if.else.532:                                      ; preds = %if.then.518
  %273 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack533 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %273, i32 0, i32 26
  %stack534 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack533, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack534, i32 1) #6
  br label %if.end.535

if.end.535:                                       ; preds = %if.else.532, %if.then.527
  %s_pstack536 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  store i32 0, i32* %s_pstack536, align 4, !tbaa !36
  br label %if.end.561

if.else.537:                                      ; preds = %if.end.513
  %274 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack538 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %274, i32 0, i32 26
  %stack539 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack538, i32 0, i32 0
  %p540 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack539, i32 0, i32 0
  %275 = load %struct.ref_s*, %struct.ref_s** %p540, align 8, !tbaa !70
  %276 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack541 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %276, i32 0, i32 26
  %stack542 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack541, i32 0, i32 0
  %bot543 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack542, i32 0, i32 1
  %277 = load %struct.ref_s*, %struct.ref_s** %bot543, align 8, !tbaa !100
  %cmp544 = icmp ult %struct.ref_s* %275, %277
  br i1 %cmp544, label %if.then.546, label %if.end.550

if.then.546:                                      ; preds = %if.else.537
  %278 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack547 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %278, i32 0, i32 26
  %stack548 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack547, i32 0, i32 0
  %call549 = call i32 @ref_stack_pop_block(%struct.ref_stack_s* %stack548) #6
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.546, %if.else.537
  %279 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack551 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %279, i32 0, i32 26
  %stack552 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack551, i32 0, i32 0
  %p553 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack552, i32 0, i32 0
  %280 = load %struct.ref_s*, %struct.ref_s** %p553, align 8, !tbaa !70
  %value554 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %280, i32 0, i32 1
  %intval555 = bitcast %union.v* %value554 to i64*
  %281 = load i64, i64* %intval555, align 8, !tbaa !32
  %conv556 = trunc i64 %281 to i32
  %s_pstack557 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  store i32 %conv556, i32* %s_pstack557, align 4, !tbaa !36
  %282 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack558 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %282, i32 0, i32 26
  %stack559 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack558, i32 0, i32 0
  %p560 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack559, i32 0, i32 0
  %283 = load %struct.ref_s*, %struct.ref_s** %p560, align 8, !tbaa !70
  %284 = bitcast %struct.ref_s* %283 to i8*
  %285 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %284, i8* %285, i64 16, i32 8, i1 false), !tbaa.struct !30
  store i32 28, i32* %cleanup.dest.slot
  br label %cleanup.562

if.end.561:                                       ; preds = %if.end.535
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.562

cleanup.562:                                      ; preds = %if.end.550, %if.then.506, %if.then.492, %if.then.473, %if.then.445, %if.end.561
  %286 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %286) #1
  %287 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %cleanup.dest.564 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.564, label %cleanup.1350 [
    i32 0, label %cleanup.cont
    i32 4, label %sret
    i32 28, label %snext
    i32 25, label %pause_ret
  ]

cleanup.cont:                                     ; preds = %cleanup.562
  br label %sw.epilog.1258

sw.bb.565:                                        ; preds = %do.end
  %288 = load i8*, i8** %sptr, align 8, !tbaa !1
  %289 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp566 = icmp uge i8* %288, %289
  br i1 %cmp566, label %land.lhs.true.568, label %if.end.579

land.lhs.true.568:                                ; preds = %sw.bb.565
  %290 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status569 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %290, i32 0, i32 9
  %291 = load i16, i16* %end_status569, align 2, !tbaa !60
  %conv570 = sext i16 %291 to i32
  %cmp571 = icmp ne i32 %conv570, -1
  br i1 %cmp571, label %if.then.573, label %if.end.579

if.then.573:                                      ; preds = %land.lhs.true.568
  br label %do.body.574

do.body.574:                                      ; preds = %if.then.573
  %292 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr575 = getelementptr inbounds i8, i8* %292, i64 -1
  store i8* %add.ptr575, i8** %sptr, align 8, !tbaa !1
  %s_scan_type576 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type576, align 4, !tbaa !13
  br label %pause

do.cond.577:                                      ; No predecessors!
  br label %do.end.578

do.end.578:                                       ; preds = %do.cond.577
  br label %if.end.579

if.end.579:                                       ; preds = %do.end.578, %land.lhs.true.568, %sw.bb.565
  %293 = load i8*, i8** %sptr, align 8, !tbaa !1
  %294 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp580 = icmp uge i8* %293, %294
  br i1 %cmp580, label %cond.true.582, label %cond.false.595

cond.true.582:                                    ; preds = %if.end.579
  %295 = load i8*, i8** %sptr, align 8, !tbaa !1
  %296 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor583 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %296, i32 0, i32 5
  %r584 = bitcast %union.stream_cursor_s* %cursor583 to %struct.stream_cursor_read_s*
  %ptr585 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r584, i32 0, i32 0
  store i8* %295, i8** %ptr585, align 8, !tbaa !59
  %297 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call586 = call i32 @spgetcc(%struct.stream_s* %297, i32 1) #6
  %298 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp587 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %298, i32 0, i32 17
  store i32 %call586, i32* %inline_temp587, align 4, !tbaa !75
  %299 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor588 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %299, i32 0, i32 5
  %r589 = bitcast %union.stream_cursor_s* %cursor588 to %struct.stream_cursor_read_s*
  %ptr590 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r589, i32 0, i32 0
  %300 = load i8*, i8** %ptr590, align 8, !tbaa !59
  store i8* %300, i8** %sptr, align 8, !tbaa !1
  %301 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor591 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %301, i32 0, i32 5
  %r592 = bitcast %union.stream_cursor_s* %cursor591 to %struct.stream_cursor_read_s*
  %limit593 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r592, i32 0, i32 1
  %302 = load i8*, i8** %limit593, align 8, !tbaa !57
  store i8* %302, i8** %endptr, align 8, !tbaa !1
  %303 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp594 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %303, i32 0, i32 17
  %304 = load i32, i32* %inline_temp594, align 4, !tbaa !75
  br label %cond.end.598

cond.false.595:                                   ; preds = %if.end.579
  %305 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr596 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %incdec.ptr596, i8** %sptr, align 8, !tbaa !1
  %306 = load i8, i8* %incdec.ptr596, align 1, !tbaa !39
  %conv597 = zext i8 %306 to i32
  br label %cond.end.598

cond.end.598:                                     ; preds = %cond.false.595, %cond.true.582
  %cond599 = phi i32 [ %304, %cond.true.582 ], [ %conv597, %cond.false.595 ]
  store i32 %cond599, i32* %c, align 4, !tbaa !5
  %307 = load i32, i32* %PDFScanRules, align 4, !tbaa !5
  %tobool600 = icmp ne i32 %307, 0
  br i1 %tobool600, label %if.else.628, label %land.lhs.true.601

land.lhs.true.601:                                ; preds = %cond.end.598
  %308 = load i32, i32* %c, align 4, !tbaa !5
  %cmp602 = icmp eq i32 %308, 47
  br i1 %cmp602, label %if.then.604, label %if.else.628

if.then.604:                                      ; preds = %land.lhs.true.601
  %s_ss605 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name606 = bitcast %union.sss_* %s_ss605 to %struct.sns_*
  %s_name_type607 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name606, i32 0, i32 0
  store i32 2, i32* %s_name_type607, align 4, !tbaa !76
  %309 = load i8*, i8** %sptr, align 8, !tbaa !1
  %310 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp608 = icmp uge i8* %309, %310
  br i1 %cmp608, label %cond.true.610, label %cond.false.623

cond.true.610:                                    ; preds = %if.then.604
  %311 = load i8*, i8** %sptr, align 8, !tbaa !1
  %312 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor611 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %312, i32 0, i32 5
  %r612 = bitcast %union.stream_cursor_s* %cursor611 to %struct.stream_cursor_read_s*
  %ptr613 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r612, i32 0, i32 0
  store i8* %311, i8** %ptr613, align 8, !tbaa !59
  %313 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call614 = call i32 @spgetcc(%struct.stream_s* %313, i32 1) #6
  %314 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp615 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %314, i32 0, i32 17
  store i32 %call614, i32* %inline_temp615, align 4, !tbaa !75
  %315 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor616 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %315, i32 0, i32 5
  %r617 = bitcast %union.stream_cursor_s* %cursor616 to %struct.stream_cursor_read_s*
  %ptr618 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r617, i32 0, i32 0
  %316 = load i8*, i8** %ptr618, align 8, !tbaa !59
  store i8* %316, i8** %sptr, align 8, !tbaa !1
  %317 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor619 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %317, i32 0, i32 5
  %r620 = bitcast %union.stream_cursor_s* %cursor619 to %struct.stream_cursor_read_s*
  %limit621 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r620, i32 0, i32 1
  %318 = load i8*, i8** %limit621, align 8, !tbaa !57
  store i8* %318, i8** %endptr, align 8, !tbaa !1
  %319 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp622 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %319, i32 0, i32 17
  %320 = load i32, i32* %inline_temp622, align 4, !tbaa !75
  br label %cond.end.626

cond.false.623:                                   ; preds = %if.then.604
  %321 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr624 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr624, i8** %sptr, align 8, !tbaa !1
  %322 = load i8, i8* %incdec.ptr624, align 1, !tbaa !39
  %conv625 = zext i8 %322 to i32
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.false.623, %cond.true.610
  %cond627 = phi i32 [ %320, %cond.true.610 ], [ %conv625, %cond.false.623 ]
  store i32 %cond627, i32* %c, align 4, !tbaa !5
  br label %if.end.632

if.else.628:                                      ; preds = %land.lhs.true.601, %cond.end.598
  %s_ss629 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name630 = bitcast %union.sss_* %s_ss629 to %struct.sns_*
  %s_name_type631 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name630, i32 0, i32 0
  store i32 1, i32* %s_name_type631, align 4, !tbaa !76
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.628, %cond.end.626
  %s_ss633 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name634 = bitcast %union.sss_* %s_ss633 to %struct.sns_*
  %s_try_number635 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name634, i32 0, i32 1
  store i32 0, i32* %s_try_number635, align 4, !tbaa !78
  %323 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %323 to i64
  %324 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx636 = getelementptr inbounds i8, i8* %324, i64 %idxprom
  %325 = load i8, i8* %arrayidx636, align 1, !tbaa !39
  %conv637 = zext i8 %325 to i32
  switch i32 %conv637, label %sw.default.639 [
    i32 100, label %sw.bb.638
    i32 101, label %sw.bb.640
    i32 104, label %sw.bb.652
    i32 102, label %sw.bb.652
    i32 103, label %sw.bb.652
  ]

sw.bb.638:                                        ; preds = %if.end.632
  br label %sw.default.639

sw.default.639:                                   ; preds = %if.end.632, %sw.bb.638
  br label %do_name

sw.bb.640:                                        ; preds = %if.end.632
  %326 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format641 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %326, i32 0, i32 4
  %value642 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format641, i32 0, i32 1
  %intval643 = bitcast %union.v* %value642 to i64*
  %327 = load i64, i64* %intval643, align 8, !tbaa !32
  %cmp644 = icmp ne i64 %327, 0
  br i1 %cmp644, label %land.lhs.true.646, label %if.then.650

land.lhs.true.646:                                ; preds = %sw.bb.640
  %328 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level647 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %328, i32 0, i32 2
  %329 = load i32, i32* %language_level647, align 4, !tbaa !68
  %cmp648 = icmp sge i32 %329, 2
  br i1 %cmp648, label %if.end.651, label %if.then.650

if.then.650:                                      ; preds = %land.lhs.true.646, %sw.bb.640
  br label %do_name

if.end.651:                                       ; preds = %land.lhs.true.646
  br label %sw.bb.652

sw.bb.652:                                        ; preds = %if.end.632, %if.end.632, %if.end.632, %if.end.651
  %330 = load i32, i32* %c, align 4, !tbaa !5
  %331 = load i32, i32* %ctrld, align 4, !tbaa !5
  %cmp653 = icmp eq i32 %330, %331
  br i1 %cmp653, label %if.then.655, label %if.end.656

if.then.655:                                      ; preds = %sw.bb.652
  br label %do_name

if.end.656:                                       ; preds = %sw.bb.652
  store i8* null, i8** %daptr, align 8, !tbaa !1
  %s_da657 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit658 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da657, i32 0, i32 2
  store i8* null, i8** %limit658, align 8, !tbaa !28
  %s_da659 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base660 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da659, i32 0, i32 0
  store i8* null, i8** %base660, align 8, !tbaa !18
  %s_da661 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic662 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da661, i32 0, i32 3
  store i32 0, i32* %is_dynamic662, align 4, !tbaa !17
  br label %nx

sw.bb.663:                                        ; preds = %do.end
  %332 = bitcast i8** %base664 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %332) #1
  %333 = load i8*, i8** %sptr, align 8, !tbaa !1
  store i8* %333, i8** %base664, align 8, !tbaa !1
  %334 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %334) #1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.683, %sw.bb.663
  %335 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr665 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %incdec.ptr665, i8** %sptr, align 8, !tbaa !1
  %336 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp666 = icmp ult i8* %incdec.ptr665, %336
  br i1 %cmp666, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %337 = load i8*, i8** %sptr, align 8, !tbaa !1
  %338 = load i8, i8* %337, align 1, !tbaa !39
  %conv668 = zext i8 %338 to i32
  switch i32 %conv668, label %sw.epilog.683 [
    i32 13, label %sw.bb.669
    i32 10, label %sw.bb.682
    i32 12, label %sw.bb.682
  ]

sw.bb.669:                                        ; preds = %while.body
  %339 = load i8*, i8** %sptr, align 8, !tbaa !1
  store i8* %339, i8** %end, align 8, !tbaa !1
  %340 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx670 = getelementptr inbounds i8, i8* %340, i64 1
  %341 = load i8, i8* %arrayidx670, align 1, !tbaa !39
  %conv671 = zext i8 %341 to i32
  %cmp672 = icmp eq i32 %conv671, 10
  br i1 %cmp672, label %if.then.674, label %if.end.676

if.then.674:                                      ; preds = %sw.bb.669
  %342 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr675 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %incdec.ptr675, i8** %sptr, align 8, !tbaa !1
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.674, %sw.bb.669
  br label %cend

cend:                                             ; preds = %sw.bb.682, %if.end.676
  %343 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %344 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %345 = load i8*, i8** %base664, align 8, !tbaa !1
  %346 = load i8*, i8** %end, align 8, !tbaa !1
  %call677 = call i32 @scan_comment(%struct.gs_context_state_s* %343, %struct.ref_s* %344, %struct.scanner_state_s* %sstate, i8* %345, i8* %346, i32 0) #6
  store i32 %call677, i32* %retcode, align 4, !tbaa !5
  %347 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp678 = icmp ne i32 %347, 0
  br i1 %cmp678, label %if.then.680, label %if.end.681

if.then.680:                                      ; preds = %cend
  store i32 42, i32* %cleanup.dest.slot
  br label %cleanup.715

if.end.681:                                       ; preds = %cend
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.715

sw.bb.682:                                        ; preds = %while.body, %while.body
  %348 = load i8*, i8** %sptr, align 8, !tbaa !1
  store i8* %348, i8** %end, align 8, !tbaa !1
  br label %cend

sw.epilog.683:                                    ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %349 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr684 = getelementptr inbounds i8, i8* %349, i32 -1
  store i8* %incdec.ptr684, i8** %sptr, align 8, !tbaa !1
  %s_da685 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf686 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da685, i32 0, i32 4
  %arrayidx687 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf686, i32 0, i64 1
  store i8 0, i8* %arrayidx687, align 1, !tbaa !39
  %350 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #1
  %351 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr688 = getelementptr inbounds i8, i8* %351, i64 1
  %352 = load i8*, i8** %base664, align 8, !tbaa !1
  %sub.ptr.lhs.cast689 = ptrtoint i8* %add.ptr688 to i64
  %sub.ptr.rhs.cast690 = ptrtoint i8* %352 to i64
  %sub.ptr.sub691 = sub i64 %sub.ptr.lhs.cast689, %sub.ptr.rhs.cast690
  %conv692 = trunc i64 %sub.ptr.sub691 to i32
  store i32 %conv692, i32* %len, align 4, !tbaa !5
  %353 = load i32, i32* %len, align 4, !tbaa !5
  %conv693 = zext i32 %353 to i64
  %cmp694 = icmp ugt i64 %conv693, 1023
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %while.end
  store i32 1023, i32* %len, align 4, !tbaa !5
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.696, %while.end
  %s_da698 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf699 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da698, i32 0, i32 4
  %arraydecay700 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf699, i32 0, i32 0
  %354 = load i8*, i8** %base664, align 8, !tbaa !1
  %355 = load i32, i32* %len, align 4, !tbaa !5
  %conv701 = zext i32 %355 to i64
  %call702 = call i8* @memcpy(i8* %arraydecay700, i8* %354, i64 %conv701) #8
  %s_da703 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf704 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da703, i32 0, i32 4
  %arraydecay705 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf704, i32 0, i32 0
  %356 = load i32, i32* %len, align 4, !tbaa !5
  %idx.ext706 = zext i32 %356 to i64
  %add.ptr707 = getelementptr inbounds i8, i8* %arraydecay705, i64 %idx.ext706
  store i8* %add.ptr707, i8** %daptr, align 8, !tbaa !1
  %357 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %s_da708 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf709 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da708, i32 0, i32 4
  %arraydecay710 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf709, i32 0, i32 0
  %s_da711 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base712 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da711, i32 0, i32 0
  store i8* %arraydecay710, i8** %base712, align 8, !tbaa !18
  %s_da713 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic714 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da713, i32 0, i32 3
  store i32 0, i32* %is_dynamic714, align 4, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.715

cleanup.715:                                      ; preds = %if.then.680, %if.end.697, %if.end.681
  %358 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast i8** %base664 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %cleanup.dest.717 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.717, label %cleanup.1350 [
    i32 0, label %cleanup.cont.718
    i32 8, label %top.108
    i32 42, label %comment
  ]

cleanup.cont.718:                                 ; preds = %cleanup.715
  br label %cont_comment

cont_comment:                                     ; preds = %cleanup.cont.718, %sw.bb.83
  br label %for.cond.719

for.cond.719:                                     ; preds = %if.end.760, %cont_comment
  %360 = load i8*, i8** %sptr, align 8, !tbaa !1
  %361 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp720 = icmp uge i8* %360, %361
  br i1 %cmp720, label %cond.true.722, label %cond.false.735

cond.true.722:                                    ; preds = %for.cond.719
  %362 = load i8*, i8** %sptr, align 8, !tbaa !1
  %363 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor723 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %363, i32 0, i32 5
  %r724 = bitcast %union.stream_cursor_s* %cursor723 to %struct.stream_cursor_read_s*
  %ptr725 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r724, i32 0, i32 0
  store i8* %362, i8** %ptr725, align 8, !tbaa !59
  %364 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call726 = call i32 @spgetcc(%struct.stream_s* %364, i32 1) #6
  %365 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp727 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %365, i32 0, i32 17
  store i32 %call726, i32* %inline_temp727, align 4, !tbaa !75
  %366 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor728 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %366, i32 0, i32 5
  %r729 = bitcast %union.stream_cursor_s* %cursor728 to %struct.stream_cursor_read_s*
  %ptr730 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r729, i32 0, i32 0
  %367 = load i8*, i8** %ptr730, align 8, !tbaa !59
  store i8* %367, i8** %sptr, align 8, !tbaa !1
  %368 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor731 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %368, i32 0, i32 5
  %r732 = bitcast %union.stream_cursor_s* %cursor731 to %struct.stream_cursor_read_s*
  %limit733 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r732, i32 0, i32 1
  %369 = load i8*, i8** %limit733, align 8, !tbaa !57
  store i8* %369, i8** %endptr, align 8, !tbaa !1
  %370 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp734 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %370, i32 0, i32 17
  %371 = load i32, i32* %inline_temp734, align 4, !tbaa !75
  br label %cond.end.738

cond.false.735:                                   ; preds = %for.cond.719
  %372 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr736 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %incdec.ptr736, i8** %sptr, align 8, !tbaa !1
  %373 = load i8, i8* %incdec.ptr736, align 1, !tbaa !39
  %conv737 = zext i8 %373 to i32
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.735, %cond.true.722
  %cond739 = phi i32 [ %371, %cond.true.722 ], [ %conv737, %cond.false.735 ]
  store i32 %cond739, i32* %c, align 4, !tbaa !5
  switch i32 %cond739, label %sw.default.740 [
    i32 13, label %sw.bb.761
    i32 10, label %sw.bb.761
    i32 12, label %sw.bb.761
  ]

sw.default.740:                                   ; preds = %cond.end.738
  %374 = load i32, i32* %c, align 4, !tbaa !5
  %cmp741 = icmp slt i32 %374, 0
  br i1 %cmp741, label %if.then.743, label %if.end.750

if.then.743:                                      ; preds = %sw.default.740
  %375 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %375, label %sw.default.749 [
    i32 -3, label %sw.bb.744
    i32 -4, label %sw.bb.744
    i32 -1, label %sw.bb.748
  ]

sw.bb.744:                                        ; preds = %if.then.743, %if.then.743
  %376 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da745 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next746 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da745, i32 0, i32 1
  store i8* %376, i8** %next746, align 8, !tbaa !29
  %s_scan_type747 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 2, i32* %s_scan_type747, align 4, !tbaa !13
  br label %pause

sw.bb.748:                                        ; preds = %if.then.743
  br label %end_comment

sw.default.749:                                   ; preds = %if.then.743
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.750:                                       ; preds = %sw.default.740
  %377 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da751 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf752 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da751, i32 0, i32 4
  %arraydecay753 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf752, i32 0, i32 0
  %add.ptr754 = getelementptr inbounds i8, i8* %arraydecay753, i64 255
  %cmp755 = icmp ult i8* %377, %add.ptr754
  br i1 %cmp755, label %if.then.757, label %if.end.760

if.then.757:                                      ; preds = %if.end.750
  %378 = load i32, i32* %c, align 4, !tbaa !5
  %conv758 = trunc i32 %378 to i8
  %379 = load i8*, i8** %daptr, align 8, !tbaa !1
  %incdec.ptr759 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %incdec.ptr759, i8** %daptr, align 8, !tbaa !1
  store i8 %conv758, i8* %379, align 1, !tbaa !39
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.757, %if.end.750
  br label %for.cond.719

sw.bb.761:                                        ; preds = %cond.end.738, %cond.end.738, %cond.end.738
  br label %end_comment

end_comment:                                      ; preds = %sw.bb.761, %sw.bb.748
  %380 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %381 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %s_da762 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %buf763 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da762, i32 0, i32 4
  %arraydecay764 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf763, i32 0, i32 0
  %382 = load i8*, i8** %daptr, align 8, !tbaa !1
  %call765 = call i32 @scan_comment(%struct.gs_context_state_s* %380, %struct.ref_s* %381, %struct.scanner_state_s* %sstate, i8* %arraydecay764, i8* %382, i32 1) #6
  store i32 %call765, i32* %retcode, align 4, !tbaa !5
  %383 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp766 = icmp ne i32 %383, 0
  br i1 %cmp766, label %if.then.768, label %if.end.769

if.then.768:                                      ; preds = %end_comment
  br label %comment

if.end.769:                                       ; preds = %end_comment
  br label %top.108

sw.bb.770:                                        ; preds = %do.end
  %s_pstack771 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %384 = load i32, i32* %s_pstack771, align 4, !tbaa !36
  %cmp772 = icmp ne i32 %384, 0
  br i1 %cmp772, label %if.then.774, label %if.end.778

if.then.774:                                      ; preds = %sw.bb.770
  %385 = load i32, i32* %check_only, align 4, !tbaa !5
  %tobool775 = icmp ne i32 %385, 0
  br i1 %tobool775, label %if.then.776, label %if.end.777

if.then.776:                                      ; preds = %if.then.774
  br label %pause

if.end.777:                                       ; preds = %if.then.774
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.778:                                       ; preds = %sw.bb.770
  store i32 2, i32* %retcode, align 4, !tbaa !5
  br label %sw.epilog.1258

sw.bb.779:                                        ; preds = %do.end
  store i32 -12, i32* %retcode, align 4, !tbaa !5
  br label %sret

try_funny_name:                                   ; preds = %if.end.402, %sw.bb.174
  %386 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %386) #1
  %387 = load i8*, i8** %sptr, align 8, !tbaa !1
  %388 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp780 = icmp uge i8* %387, %388
  br i1 %cmp780, label %cond.true.782, label %cond.false.795

cond.true.782:                                    ; preds = %try_funny_name
  %389 = load i8*, i8** %sptr, align 8, !tbaa !1
  %390 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor783 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %390, i32 0, i32 5
  %r784 = bitcast %union.stream_cursor_s* %cursor783 to %struct.stream_cursor_read_s*
  %ptr785 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r784, i32 0, i32 0
  store i8* %389, i8** %ptr785, align 8, !tbaa !59
  %391 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call786 = call i32 @spgetcc(%struct.stream_s* %391, i32 1) #6
  %392 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp787 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %392, i32 0, i32 17
  store i32 %call786, i32* %inline_temp787, align 4, !tbaa !75
  %393 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor788 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %393, i32 0, i32 5
  %r789 = bitcast %union.stream_cursor_s* %cursor788 to %struct.stream_cursor_read_s*
  %ptr790 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r789, i32 0, i32 0
  %394 = load i8*, i8** %ptr790, align 8, !tbaa !59
  store i8* %394, i8** %sptr, align 8, !tbaa !1
  %395 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor791 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %395, i32 0, i32 5
  %r792 = bitcast %union.stream_cursor_s* %cursor791 to %struct.stream_cursor_read_s*
  %limit793 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r792, i32 0, i32 1
  %396 = load i8*, i8** %limit793, align 8, !tbaa !57
  store i8* %396, i8** %endptr, align 8, !tbaa !1
  %397 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp794 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %397, i32 0, i32 17
  %398 = load i32, i32* %inline_temp794, align 4, !tbaa !75
  br label %cond.end.798

cond.false.795:                                   ; preds = %try_funny_name
  %399 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr796 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %incdec.ptr796, i8** %sptr, align 8, !tbaa !1
  %400 = load i8, i8* %incdec.ptr796, align 1, !tbaa !39
  %conv797 = zext i8 %400 to i32
  br label %cond.end.798

cond.end.798:                                     ; preds = %cond.false.795, %cond.true.782
  %cond799 = phi i32 [ %398, %cond.true.782 ], [ %conv797, %cond.false.795 ]
  store i32 %cond799, i32* %c1, align 4, !tbaa !5
  %401 = load i32, i32* %c1, align 4, !tbaa !5
  %402 = load i32, i32* %c, align 4, !tbaa !5
  %cmp800 = icmp eq i32 %401, %402
  br i1 %cmp800, label %if.then.802, label %if.end.812

if.then.802:                                      ; preds = %cond.end.798
  %403 = load i32, i32* %c, align 4, !tbaa !5
  %conv803 = trunc i32 %403 to i8
  %arrayidx804 = getelementptr inbounds [2 x i8], [2 x i8]* %s1, i32 0, i64 1
  store i8 %conv803, i8* %arrayidx804, align 1, !tbaa !39
  %arrayidx805 = getelementptr inbounds [2 x i8], [2 x i8]* %s1, i32 0, i64 0
  store i8 %conv803, i8* %arrayidx805, align 1, !tbaa !39
  %404 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory806 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %404, i32 0, i32 1
  %current807 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory806, i32 0, i32 0
  %405 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current807, align 8, !tbaa !41
  %406 = bitcast %struct.gs_ref_memory_s* %405 to %struct.gs_memory_s*
  %gs_lib_ctx808 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %406, i32 0, i32 2
  %407 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx808, align 8, !tbaa !50
  %gs_name_table809 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %407, i32 0, i32 16
  %408 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table809, align 8, !tbaa !53
  %arraydecay810 = getelementptr inbounds [2 x i8], [2 x i8]* %s1, i32 0, i32 0
  %409 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call811 = call i32 @names_ref(%struct.name_table_s* %408, i8* %arraydecay810, i32 2, %struct.ref_s* %409, i32 1) #6
  store i32 48, i32* %cleanup.dest.slot
  br label %cleanup.814

if.end.812:                                       ; preds = %cond.end.798
  %410 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr813 = getelementptr inbounds i8, i8* %410, i32 -1
  store i8* %incdec.ptr813, i8** %sptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.814

cleanup.814:                                      ; preds = %if.then.802, %if.end.812
  %411 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #1
  %cleanup.dest.815 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.815, label %cleanup.1350 [
    i32 0, label %cleanup.cont.816
    i32 48, label %have_name
  ]

cleanup.cont.816:                                 ; preds = %cleanup.814
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  br label %sret

sw.bb.817:                                        ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  store i32 0, i32* %sign, align 4, !tbaa !5
  br label %nr

nr:                                               ; preds = %sw.bb.859, %sw.bb.858, %sw.bb.817
  %412 = load i8*, i8** %sptr, align 8, !tbaa !1
  %413 = load i32, i32* %sign, align 4, !tbaa !5
  %and818 = and i32 %413, 1
  %idx.ext819 = sext i32 %and818 to i64
  %add.ptr820 = getelementptr inbounds i8, i8* %412, i64 %idx.ext819
  %414 = load i8*, i8** %endptr, align 8, !tbaa !1
  %415 = load i32, i32* %sign, align 4, !tbaa !5
  %416 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %417 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options821 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %417, i32 0, i32 12
  %418 = load i32, i32* %scanner_options821, align 4, !tbaa !69
  %call822 = call i32 @scan_number(i8* %add.ptr820, i8* %414, i32 %415, %struct.ref_s* %416, i8** %newptr, i32 %418) #6
  store i32 %call822, i32* %retcode, align 4, !tbaa !5
  %419 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp823 = icmp eq i32 %419, 1
  br i1 %cmp823, label %land.lhs.true.825, label %if.end.851

land.lhs.true.825:                                ; preds = %nr
  %420 = load i8*, i8** %newptr, align 8, !tbaa !1
  %arrayidx826 = getelementptr inbounds i8, i8* %420, i64 -1
  %421 = load i8, i8* %arrayidx826, align 1, !tbaa !39
  %idxprom827 = zext i8 %421 to i64
  %422 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx828 = getelementptr inbounds i8, i8* %422, i64 %idxprom827
  %423 = load i8, i8* %arrayidx828, align 1, !tbaa !39
  %conv829 = zext i8 %423 to i32
  %cmp830 = icmp eq i32 %conv829, 102
  br i1 %cmp830, label %if.then.832, label %if.end.851

if.then.832:                                      ; preds = %land.lhs.true.825
  %424 = load i8*, i8** %newptr, align 8, !tbaa !1
  %add.ptr833 = getelementptr inbounds i8, i8* %424, i64 -1
  store i8* %add.ptr833, i8** %sptr, align 8, !tbaa !1
  %425 = load i8*, i8** %sptr, align 8, !tbaa !1
  %426 = load i8, i8* %425, align 1, !tbaa !39
  %conv834 = zext i8 %426 to i32
  %cmp835 = icmp eq i32 %conv834, 13
  br i1 %cmp835, label %land.lhs.true.837, label %if.end.844

land.lhs.true.837:                                ; preds = %if.then.832
  %427 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx838 = getelementptr inbounds i8, i8* %427, i64 1
  %428 = load i8, i8* %arrayidx838, align 1, !tbaa !39
  %conv839 = zext i8 %428 to i32
  %cmp840 = icmp eq i32 %conv839, 10
  br i1 %cmp840, label %if.then.842, label %if.end.844

if.then.842:                                      ; preds = %land.lhs.true.837
  %429 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr843 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %incdec.ptr843, i8** %sptr, align 8, !tbaa !1
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.842, %land.lhs.true.837, %if.then.832
  store i32 0, i32* %retcode, align 4, !tbaa !5
  %430 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory845 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %430, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory845, i32 0, i32 5
  %431 = load i32, i32* %new_mask, align 4, !tbaa !101
  %432 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas846 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %432, i32 0, i32 0
  %type_attrs847 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas846, i32 0, i32 0
  %433 = load i16, i16* %type_attrs847, align 2, !tbaa !7
  %conv848 = zext i16 %433 to i32
  %or849 = or i32 %conv848, %431
  %conv850 = trunc i32 %or849 to i16
  store i16 %conv850, i16* %type_attrs847, align 2, !tbaa !7
  br label %sw.epilog.1258

if.end.851:                                       ; preds = %land.lhs.true.825, %nr
  %s_ss852 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name853 = bitcast %union.sss_* %s_ss852 to %struct.sns_*
  %s_name_type854 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name853, i32 0, i32 0
  store i32 0, i32* %s_name_type854, align 4, !tbaa !76
  %s_ss855 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name856 = bitcast %union.sss_* %s_ss855 to %struct.sns_*
  %s_try_number857 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name856, i32 0, i32 1
  store i32 1, i32* %s_try_number857, align 4, !tbaa !78
  br label %do_name

sw.bb.858:                                        ; preds = %do.end
  store i32 1, i32* %sign, align 4, !tbaa !5
  br label %nr

sw.bb.859:                                        ; preds = %do.end
  store i32 -1, i32* %sign, align 4, !tbaa !5
  br label %nr

sw.bb.860:                                        ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %434 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format861 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %434, i32 0, i32 4
  %value862 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format861, i32 0, i32 1
  %intval863 = bitcast %union.v* %value862 to i64*
  %435 = load i64, i64* %intval863, align 8, !tbaa !32
  %cmp864 = icmp ne i64 %435, 0
  br i1 %cmp864, label %land.lhs.true.866, label %if.end.885

land.lhs.true.866:                                ; preds = %sw.bb.860
  %436 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level867 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %436, i32 0, i32 2
  %437 = load i32, i32* %language_level867, align 4, !tbaa !68
  %cmp868 = icmp sge i32 %437, 2
  br i1 %cmp868, label %if.then.870, label %if.end.885

if.then.870:                                      ; preds = %land.lhs.true.866
  %438 = load i8*, i8** %sptr, align 8, !tbaa !1
  %439 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor871 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %439, i32 0, i32 5
  %r872 = bitcast %union.stream_cursor_s* %cursor871 to %struct.stream_cursor_read_s*
  %ptr873 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r872, i32 0, i32 0
  store i8* %438, i8** %ptr873, align 8, !tbaa !59
  %440 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %441 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call874 = call i32 @scan_binary_token(%struct.gs_context_state_s* %440, %struct.ref_s* %441, %struct.scanner_state_s* %sstate) #6
  store i32 %call874, i32* %retcode, align 4, !tbaa !5
  %442 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor875 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %442, i32 0, i32 5
  %r876 = bitcast %union.stream_cursor_s* %cursor875 to %struct.stream_cursor_read_s*
  %ptr877 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r876, i32 0, i32 0
  %443 = load i8*, i8** %ptr877, align 8, !tbaa !59
  store i8* %443, i8** %sptr, align 8, !tbaa !1
  %444 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor878 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %444, i32 0, i32 5
  %r879 = bitcast %union.stream_cursor_s* %cursor878 to %struct.stream_cursor_read_s*
  %limit880 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r879, i32 0, i32 1
  %445 = load i8*, i8** %limit880, align 8, !tbaa !57
  store i8* %445, i8** %endptr, align 8, !tbaa !1
  %446 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp881 = icmp eq i32 %446, 3
  br i1 %cmp881, label %if.then.883, label %if.end.884

if.then.883:                                      ; preds = %if.then.870
  br label %pause

if.end.884:                                       ; preds = %if.then.870
  br label %sw.epilog.1258

if.end.885:                                       ; preds = %land.lhs.true.866, %sw.bb.860
  br label %sw.default.886

sw.default.886:                                   ; preds = %do.end, %if.end.885
  %447 = load i32, i32* %c, align 4, !tbaa !5
  %cmp887 = icmp slt i32 %447, 0
  br i1 %cmp887, label %if.then.889, label %if.end.897

if.then.889:                                      ; preds = %sw.default.886
  %s_da890 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %448 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory891 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %448, i32 0, i32 1
  %current892 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory891, i32 0, i32 0
  %449 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current892, align 8, !tbaa !41
  %450 = bitcast %struct.gs_ref_memory_s* %449 to %struct.gs_memory_s*
  %gs_lib_ctx893 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %450, i32 0, i32 2
  %451 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx893, align 8, !tbaa !50
  %gs_name_table894 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %451, i32 0, i32 16
  %452 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table894, align 8, !tbaa !53
  %call895 = call %struct.gs_memory_s* @names_memory(%struct.name_table_s* %452) #6
  call void @dynamic_init(%struct.dynamic_area_s* %s_da890, %struct.gs_memory_s* %call895) #6
  %s_scan_type896 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type896, align 4, !tbaa !13
  br label %pause

if.end.897:                                       ; preds = %sw.default.886
  br label %sw.bb.898

sw.bb.898:                                        ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %if.end.897
  br label %begin_name

begin_name:                                       ; preds = %sw.bb.898, %if.then.129
  %s_ss899 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name900 = bitcast %union.sss_* %s_ss899 to %struct.sns_*
  %s_name_type901 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name900, i32 0, i32 0
  store i32 0, i32* %s_name_type901, align 4, !tbaa !76
  %s_ss902 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name903 = bitcast %union.sss_* %s_ss902 to %struct.sns_*
  %s_try_number904 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name903, i32 0, i32 1
  store i32 0, i32* %s_try_number904, align 4, !tbaa !78
  br label %do_name

do_name:                                          ; preds = %begin_name, %if.end.851, %if.then.655, %if.then.650, %sw.default.639
  %453 = load i8*, i8** %sptr, align 8, !tbaa !1
  %s_da905 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base906 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da905, i32 0, i32 0
  store i8* %453, i8** %base906, align 8, !tbaa !18
  %s_da907 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic908 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da907, i32 0, i32 3
  store i32 0, i32* %is_dynamic908, align 4, !tbaa !17
  %454 = bitcast i8** %endp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %454) #1
  %455 = load i8*, i8** %endptr, align 8, !tbaa !1
  %add.ptr909 = getelementptr inbounds i8, i8* %455, i64 -1
  store i8* %add.ptr909, i8** %endp1, align 8, !tbaa !1
  br label %do.body.910

do.body.910:                                      ; preds = %lor.end.926, %do_name
  %456 = load i8*, i8** %sptr, align 8, !tbaa !1
  %457 = load i8*, i8** %endp1, align 8, !tbaa !1
  %cmp911 = icmp uge i8* %456, %457
  br i1 %cmp911, label %if.then.913, label %if.end.914

if.then.913:                                      ; preds = %do.body.910
  store i32 52, i32* %cleanup.dest.slot
  br label %cleanup.928

if.end.914:                                       ; preds = %do.body.910
  br label %do.cond.915

do.cond.915:                                      ; preds = %if.end.914
  %458 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr916 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %incdec.ptr916, i8** %sptr, align 8, !tbaa !1
  %459 = load i8, i8* %incdec.ptr916, align 1, !tbaa !39
  %idxprom917 = zext i8 %459 to i64
  %460 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx918 = getelementptr inbounds i8, i8* %460, i64 %idxprom917
  %461 = load i8, i8* %arrayidx918, align 1, !tbaa !39
  %conv919 = zext i8 %461 to i32
  %462 = load i32, i32* %max_name_ctype, align 4, !tbaa !5
  %cmp920 = icmp sle i32 %conv919, %462
  br i1 %cmp920, label %lor.end.926, label %lor.rhs.922

lor.rhs.922:                                      ; preds = %do.cond.915
  %463 = load i8*, i8** %sptr, align 8, !tbaa !1
  %464 = load i8, i8* %463, align 1, !tbaa !39
  %conv923 = zext i8 %464 to i32
  %465 = load i32, i32* %ctrld, align 4, !tbaa !5
  %cmp924 = icmp eq i32 %conv923, %465
  br label %lor.end.926

lor.end.926:                                      ; preds = %lor.rhs.922, %do.cond.915
  %466 = phi i1 [ true, %do.cond.915 ], [ %cmp924, %lor.rhs.922 ]
  br i1 %466, label %do.body.910, label %do.end.927

do.end.927:                                       ; preds = %lor.end.926
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.928

cleanup.928:                                      ; preds = %if.then.913, %do.end.927
  %467 = bitcast i8** %endp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %467) #1
  %cleanup.dest.929 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.929, label %cleanup.1350 [
    i32 0, label %cleanup.cont.930
    i32 52, label %dyn_name
  ]

cleanup.cont.930:                                 ; preds = %cleanup.928
  %468 = load i8*, i8** %sptr, align 8, !tbaa !1
  store i8* %468, i8** %daptr, align 8, !tbaa !1
  %469 = load i8*, i8** %sptr, align 8, !tbaa !1
  %470 = load i8, i8* %469, align 1, !tbaa !39
  %conv931 = zext i8 %470 to i32
  store i32 %conv931, i32* %c, align 4, !tbaa !5
  br label %nx

dyn_name:                                         ; preds = %cleanup.928
  %471 = load i8*, i8** %sptr, align 8, !tbaa !1
  %472 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor932 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %472, i32 0, i32 5
  %r933 = bitcast %union.stream_cursor_s* %cursor932 to %struct.stream_cursor_read_s*
  %ptr934 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r933, i32 0, i32 0
  store i8* %471, i8** %ptr934, align 8, !tbaa !59
  %473 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr935 = getelementptr inbounds i8, i8* %473, i32 1
  store i8* %incdec.ptr935, i8** %sptr, align 8, !tbaa !1
  %s_da936 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit937 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da936, i32 0, i32 2
  store i8* %incdec.ptr935, i8** %limit937, align 8, !tbaa !28
  %474 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory938 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %474, i32 0, i32 1
  %current939 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory938, i32 0, i32 0
  %475 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current939, align 8, !tbaa !41
  %476 = bitcast %struct.gs_ref_memory_s* %475 to %struct.gs_memory_s*
  %gs_lib_ctx940 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %476, i32 0, i32 2
  %477 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx940, align 8, !tbaa !50
  %gs_name_table941 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %477, i32 0, i32 16
  %478 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table941, align 8, !tbaa !53
  %call942 = call %struct.gs_memory_s* @names_memory(%struct.name_table_s* %478) #6
  %s_da943 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %memory944 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da943, i32 0, i32 5
  store %struct.gs_memory_s* %call942, %struct.gs_memory_s** %memory944, align 8, !tbaa !102
  %s_da945 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %s_da946 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit947 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da946, i32 0, i32 2
  %479 = load i8*, i8** %limit947, align 8, !tbaa !28
  %480 = load i32, i32* @name_max_string, align 4, !tbaa !5
  %call948 = call i32 @dynamic_grow(%struct.dynamic_area_s* %s_da945, i8* %479, i32 %480) #6
  store i32 %call948, i32* %retcode, align 4, !tbaa !5
  %481 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp949 = icmp slt i32 %481, 0
  br i1 %cmp949, label %if.then.951, label %if.end.958

if.then.951:                                      ; preds = %dyn_name
  %s_da952 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_save(%struct.dynamic_area_s* %s_da952) #6
  %482 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp953 = icmp ne i32 %482, -25
  br i1 %cmp953, label %if.then.955, label %if.end.956

if.then.955:                                      ; preds = %if.then.951
  %483 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %483, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.956:                                       ; preds = %if.then.951
  %s_scan_type957 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 3, i32* %s_scan_type957, align 4, !tbaa !13
  br label %pause_ret

if.end.958:                                       ; preds = %dyn_name
  %s_da959 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next960 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da959, i32 0, i32 1
  %484 = load i8*, i8** %next960, align 8, !tbaa !29
  store i8* %484, i8** %daptr, align 8, !tbaa !1
  br label %cont_name

cont_name:                                        ; preds = %if.end.958, %sw.bb.90
  %485 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor961 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %485, i32 0, i32 5
  %r962 = bitcast %union.stream_cursor_s* %cursor961 to %struct.stream_cursor_read_s*
  %ptr963 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r962, i32 0, i32 0
  %486 = load i8*, i8** %ptr963, align 8, !tbaa !59
  store i8* %486, i8** %sptr, align 8, !tbaa !1
  %487 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor964 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %487, i32 0, i32 5
  %r965 = bitcast %union.stream_cursor_s* %cursor964 to %struct.stream_cursor_read_s*
  %limit966 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r965, i32 0, i32 1
  %488 = load i8*, i8** %limit966, align 8, !tbaa !57
  store i8* %488, i8** %endptr, align 8, !tbaa !1
  br label %while.cond.967

while.cond.967:                                   ; preds = %if.end.1018, %cont_name
  %489 = load i8*, i8** %sptr, align 8, !tbaa !1
  %490 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp968 = icmp uge i8* %489, %490
  br i1 %cmp968, label %cond.true.970, label %cond.false.983

cond.true.970:                                    ; preds = %while.cond.967
  %491 = load i8*, i8** %sptr, align 8, !tbaa !1
  %492 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor971 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %492, i32 0, i32 5
  %r972 = bitcast %union.stream_cursor_s* %cursor971 to %struct.stream_cursor_read_s*
  %ptr973 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r972, i32 0, i32 0
  store i8* %491, i8** %ptr973, align 8, !tbaa !59
  %493 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call974 = call i32 @spgetcc(%struct.stream_s* %493, i32 1) #6
  %494 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp975 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %494, i32 0, i32 17
  store i32 %call974, i32* %inline_temp975, align 4, !tbaa !75
  %495 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor976 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %495, i32 0, i32 5
  %r977 = bitcast %union.stream_cursor_s* %cursor976 to %struct.stream_cursor_read_s*
  %ptr978 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r977, i32 0, i32 0
  %496 = load i8*, i8** %ptr978, align 8, !tbaa !59
  store i8* %496, i8** %sptr, align 8, !tbaa !1
  %497 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor979 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %497, i32 0, i32 5
  %r980 = bitcast %union.stream_cursor_s* %cursor979 to %struct.stream_cursor_read_s*
  %limit981 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r980, i32 0, i32 1
  %498 = load i8*, i8** %limit981, align 8, !tbaa !57
  store i8* %498, i8** %endptr, align 8, !tbaa !1
  %499 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %inline_temp982 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %499, i32 0, i32 17
  %500 = load i32, i32* %inline_temp982, align 4, !tbaa !75
  br label %cond.end.986

cond.false.983:                                   ; preds = %while.cond.967
  %501 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr984 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %incdec.ptr984, i8** %sptr, align 8, !tbaa !1
  %502 = load i8, i8* %incdec.ptr984, align 1, !tbaa !39
  %conv985 = zext i8 %502 to i32
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.983, %cond.true.970
  %cond987 = phi i32 [ %500, %cond.true.970 ], [ %conv985, %cond.false.983 ]
  store i32 %cond987, i32* %c, align 4, !tbaa !5
  %idxprom988 = sext i32 %cond987 to i64
  %503 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx989 = getelementptr inbounds i8, i8* %503, i64 %idxprom988
  %504 = load i8, i8* %arrayidx989, align 1, !tbaa !39
  %conv990 = zext i8 %504 to i32
  %505 = load i32, i32* %max_name_ctype, align 4, !tbaa !5
  %cmp991 = icmp sle i32 %conv990, %505
  br i1 %cmp991, label %lor.end.996, label %lor.rhs.993

lor.rhs.993:                                      ; preds = %cond.end.986
  %506 = load i32, i32* %c, align 4, !tbaa !5
  %507 = load i32, i32* %ctrld, align 4, !tbaa !5
  %cmp994 = icmp eq i32 %506, %507
  br label %lor.end.996

lor.end.996:                                      ; preds = %lor.rhs.993, %cond.end.986
  %508 = phi i1 [ true, %cond.end.986 ], [ %cmp994, %lor.rhs.993 ]
  br i1 %508, label %while.body.997, label %while.end.1021

while.body.997:                                   ; preds = %lor.end.996
  %509 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da998 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %limit999 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da998, i32 0, i32 2
  %510 = load i8*, i8** %limit999, align 8, !tbaa !28
  %cmp1000 = icmp eq i8* %509, %510
  br i1 %cmp1000, label %if.then.1002, label %if.end.1018

if.then.1002:                                     ; preds = %while.body.997
  %s_da1003 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %511 = load i8*, i8** %daptr, align 8, !tbaa !1
  %512 = load i32, i32* @name_max_string, align 4, !tbaa !5
  %call1004 = call i32 @dynamic_grow(%struct.dynamic_area_s* %s_da1003, i8* %511, i32 %512) #6
  store i32 %call1004, i32* %retcode, align 4, !tbaa !5
  %513 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1005 = icmp slt i32 %513, 0
  br i1 %cmp1005, label %if.then.1007, label %if.end.1015

if.then.1007:                                     ; preds = %if.then.1002
  %s_da1008 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_save(%struct.dynamic_area_s* %s_da1008) #6
  %514 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1009 = icmp ne i32 %514, -25
  br i1 %cmp1009, label %if.then.1011, label %if.end.1012

if.then.1011:                                     ; preds = %if.then.1007
  %515 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %515, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.1012:                                      ; preds = %if.then.1007
  %516 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1013 = getelementptr inbounds i8, i8* %516, i32 -1
  store i8* %incdec.ptr1013, i8** %sptr, align 8, !tbaa !1
  %s_scan_type1014 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 3, i32* %s_scan_type1014, align 4, !tbaa !13
  br label %pause_ret

if.end.1015:                                      ; preds = %if.then.1002
  %s_da1016 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next1017 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1016, i32 0, i32 1
  %517 = load i8*, i8** %next1017, align 8, !tbaa !29
  store i8* %517, i8** %daptr, align 8, !tbaa !1
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.end.1015, %while.body.997
  %518 = load i32, i32* %c, align 4, !tbaa !5
  %conv1019 = trunc i32 %518 to i8
  %519 = load i8*, i8** %daptr, align 8, !tbaa !1
  %incdec.ptr1020 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %incdec.ptr1020, i8** %daptr, align 8, !tbaa !1
  store i8 %conv1019, i8* %519, align 1, !tbaa !39
  br label %while.cond.967

while.end.1021:                                   ; preds = %lor.end.996
  br label %nx

nx:                                               ; preds = %while.end.1021, %cleanup.cont.930, %if.end.656
  %520 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom1022 = sext i32 %520 to i64
  %521 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx1023 = getelementptr inbounds i8, i8* %521, i64 %idxprom1022
  %522 = load i8, i8* %arrayidx1023, align 1, !tbaa !39
  %conv1024 = zext i8 %522 to i32
  switch i32 %conv1024, label %sw.epilog.1060 [
    i32 103, label %sw.bb.1025
    i32 101, label %sw.bb.1030
    i32 102, label %sw.bb.1032
    i32 104, label %sw.bb.1056
  ]

sw.bb.1025:                                       ; preds = %nx
  %523 = load i32, i32* %c, align 4, !tbaa !5
  %524 = load i32, i32* %ctrld, align 4, !tbaa !5
  %cmp1026 = icmp eq i32 %523, %524
  br i1 %cmp1026, label %if.then.1028, label %if.end.1029

if.then.1028:                                     ; preds = %sw.bb.1025
  br label %sw.epilog.1060

if.end.1029:                                      ; preds = %sw.bb.1025
  br label %sw.bb.1030

sw.bb.1030:                                       ; preds = %nx, %if.end.1029
  %525 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1031 = getelementptr inbounds i8, i8* %525, i32 -1
  store i8* %incdec.ptr1031, i8** %sptr, align 8, !tbaa !1
  br label %sw.epilog.1060

sw.bb.1032:                                       ; preds = %nx
  %526 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1033 = icmp eq i32 %526, 13
  br i1 %cmp1033, label %if.then.1035, label %if.end.1055

if.then.1035:                                     ; preds = %sw.bb.1032
  %527 = load i8*, i8** %sptr, align 8, !tbaa !1
  %528 = load i8*, i8** %endptr, align 8, !tbaa !1
  %cmp1036 = icmp uge i8* %527, %528
  br i1 %cmp1036, label %if.then.1038, label %if.else.1046

if.then.1038:                                     ; preds = %if.then.1035
  %529 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status1039 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %529, i32 0, i32 9
  %530 = load i16, i16* %end_status1039, align 2, !tbaa !60
  %conv1040 = sext i16 %530 to i32
  %cmp1041 = icmp ne i32 %conv1040, -1
  br i1 %cmp1041, label %if.then.1043, label %if.end.1045

if.then.1043:                                     ; preds = %if.then.1038
  %531 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1044 = getelementptr inbounds i8, i8* %531, i32 -1
  store i8* %incdec.ptr1044, i8** %sptr, align 8, !tbaa !1
  br label %pause_name

if.end.1045:                                      ; preds = %if.then.1038
  br label %if.end.1054

if.else.1046:                                     ; preds = %if.then.1035
  %532 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx1047 = getelementptr inbounds i8, i8* %532, i64 1
  %533 = load i8, i8* %arrayidx1047, align 1, !tbaa !39
  %conv1048 = zext i8 %533 to i32
  %cmp1049 = icmp eq i32 %conv1048, 10
  br i1 %cmp1049, label %if.then.1051, label %if.end.1053

if.then.1051:                                     ; preds = %if.else.1046
  %534 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1052 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %incdec.ptr1052, i8** %sptr, align 8, !tbaa !1
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.then.1051, %if.else.1046
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.end.1053, %if.end.1045
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.end.1054, %sw.bb.1032
  br label %sw.epilog.1060

sw.bb.1056:                                       ; preds = %nx
  %535 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %535, label %sw.epilog.1059 [
    i32 -3, label %sw.bb.1057
    i32 -4, label %sw.bb.1057
    i32 -2, label %sw.bb.1058
    i32 -1, label %sw.epilog.1059
  ]

sw.bb.1057:                                       ; preds = %sw.bb.1056, %sw.bb.1056
  br label %pause_name

sw.bb.1058:                                       ; preds = %sw.bb.1056
  store i32 -12, i32* %retcode, align 4, !tbaa !5
  br label %sret

sw.epilog.1059:                                   ; preds = %sw.bb.1056, %sw.bb.1056
  br label %sw.epilog.1060

sw.epilog.1060:                                   ; preds = %sw.epilog.1059, %nx, %if.end.1055, %sw.bb.1030, %if.then.1028
  %s_ss1061 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name1062 = bitcast %union.sss_* %s_ss1061 to %struct.sns_*
  %s_try_number1063 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name1062, i32 0, i32 1
  %536 = load i32, i32* %s_try_number1063, align 4, !tbaa !78
  %tobool1064 = icmp ne i32 %536, 0
  br i1 %tobool1064, label %if.then.1065, label %if.end.1105

if.then.1065:                                     ; preds = %sw.epilog.1060
  %537 = bitcast i8** %base1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %537) #1
  %s_da1067 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1068 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1067, i32 0, i32 0
  %538 = load i8*, i8** %base1068, align 8, !tbaa !18
  store i8* %538, i8** %base1066, align 8, !tbaa !1
  %539 = load i8*, i8** %base1066, align 8, !tbaa !1
  %540 = load i8, i8* %539, align 1, !tbaa !39
  %conv1069 = zext i8 %540 to i32
  switch i32 %conv1069, label %sw.default.1074 [
    i32 45, label %sw.bb.1070
    i32 43, label %sw.bb.1072
  ]

sw.bb.1070:                                       ; preds = %if.then.1065
  store i32 -1, i32* %sign, align 4, !tbaa !5
  %541 = load i8*, i8** %base1066, align 8, !tbaa !1
  %incdec.ptr1071 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %incdec.ptr1071, i8** %base1066, align 8, !tbaa !1
  br label %sw.epilog.1075

sw.bb.1072:                                       ; preds = %if.then.1065
  store i32 1, i32* %sign, align 4, !tbaa !5
  %542 = load i8*, i8** %base1066, align 8, !tbaa !1
  %incdec.ptr1073 = getelementptr inbounds i8, i8* %542, i32 1
  store i8* %incdec.ptr1073, i8** %base1066, align 8, !tbaa !1
  br label %sw.epilog.1075

sw.default.1074:                                  ; preds = %if.then.1065
  store i32 0, i32* %sign, align 4, !tbaa !5
  br label %sw.epilog.1075

sw.epilog.1075:                                   ; preds = %sw.default.1074, %sw.bb.1072, %sw.bb.1070
  %543 = load i8*, i8** %base1066, align 8, !tbaa !1
  %544 = load i8*, i8** %daptr, align 8, !tbaa !1
  %545 = load i32, i32* %sign, align 4, !tbaa !5
  %546 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %547 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options1076 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %547, i32 0, i32 12
  %548 = load i32, i32* %scanner_options1076, align 4, !tbaa !69
  %call1077 = call i32 @scan_number(i8* %543, i8* %544, i32 %545, %struct.ref_s* %546, i8** %newptr, i32 %548) #6
  store i32 %call1077, i32* %retcode, align 4, !tbaa !5
  %549 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1078 = icmp eq i32 %549, 1
  br i1 %cmp1078, label %if.then.1080, label %if.else.1088

if.then.1080:                                     ; preds = %sw.epilog.1075
  %550 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1081 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %550, i32 0, i32 1
  %new_mask1082 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1081, i32 0, i32 5
  %551 = load i32, i32* %new_mask1082, align 4, !tbaa !101
  %552 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas1083 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %552, i32 0, i32 0
  %type_attrs1084 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1083, i32 0, i32 0
  %553 = load i16, i16* %type_attrs1084, align 2, !tbaa !7
  %conv1085 = zext i16 %553 to i32
  %or1086 = or i32 %conv1085, %551
  %conv1087 = trunc i32 %or1086 to i16
  store i16 %conv1087, i16* %type_attrs1084, align 2, !tbaa !7
  store i32 0, i32* %retcode, align 4, !tbaa !5
  br label %if.end.1101

if.else.1088:                                     ; preds = %sw.epilog.1075
  %554 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1089 = icmp ne i32 %554, -18
  br i1 %cmp1089, label %if.then.1091, label %if.end.1100

if.then.1091:                                     ; preds = %if.else.1088
  %s_da1092 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_free(%struct.dynamic_area_s* %s_da1092) #6
  %s_ss1093 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name1094 = bitcast %union.sss_* %s_ss1093 to %struct.sns_*
  %s_name_type1095 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name1094, i32 0, i32 0
  %555 = load i32, i32* %s_name_type1095, align 4, !tbaa !76
  %cmp1096 = icmp eq i32 %555, 2
  br i1 %cmp1096, label %if.then.1098, label %if.end.1099

if.then.1098:                                     ; preds = %if.then.1091
  store i32 -18, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1102

if.end.1099:                                      ; preds = %if.then.1091
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.1102

if.end.1100:                                      ; preds = %if.else.1088
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.end.1100, %if.then.1080
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1102

cleanup.1102:                                     ; preds = %if.then.1098, %if.end.1101, %if.end.1099
  %556 = bitcast i8** %base1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %556) #1
  %cleanup.dest.1103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1103, label %cleanup.1350 [
    i32 0, label %cleanup.cont.1104
    i32 11, label %sw.epilog.1258
    i32 4, label %sret
  ]

cleanup.cont.1104:                                ; preds = %cleanup.1102
  br label %if.end.1105

if.end.1105:                                      ; preds = %cleanup.cont.1104, %sw.epilog.1060
  %s_da1106 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic1107 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1106, i32 0, i32 3
  %557 = load i32, i32* %is_dynamic1107, align 4, !tbaa !17
  %tobool1108 = icmp ne i32 %557, 0
  br i1 %tobool1108, label %if.then.1109, label %if.else.1152

if.then.1109:                                     ; preds = %if.end.1105
  %558 = bitcast i32* %size1110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %558) #1
  %559 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da1111 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1112 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1111, i32 0, i32 0
  %560 = load i8*, i8** %base1112, align 8, !tbaa !18
  %sub.ptr.lhs.cast1113 = ptrtoint i8* %559 to i64
  %sub.ptr.rhs.cast1114 = ptrtoint i8* %560 to i64
  %sub.ptr.sub1115 = sub i64 %sub.ptr.lhs.cast1113, %sub.ptr.rhs.cast1114
  %conv1116 = trunc i64 %sub.ptr.sub1115 to i32
  store i32 %conv1116, i32* %size1110, align 4, !tbaa !5
  %561 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %561, i32 0, i32 1
  %current1118 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1117, i32 0, i32 0
  %562 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current1118, align 8, !tbaa !41
  %563 = bitcast %struct.gs_ref_memory_s* %562 to %struct.gs_memory_s*
  %gs_lib_ctx1119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %563, i32 0, i32 2
  %564 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1119, align 8, !tbaa !50
  %gs_name_table1120 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %564, i32 0, i32 16
  %565 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table1120, align 8, !tbaa !53
  %s_da1121 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1122 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1121, i32 0, i32 0
  %566 = load i8*, i8** %base1122, align 8, !tbaa !18
  %567 = load i32, i32* %size1110, align 4, !tbaa !5
  %568 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call1123 = call i32 @names_ref(%struct.name_table_s* %565, i8* %566, i32 %567, %struct.ref_s* %568, i32 -1) #6
  store i32 %call1123, i32* %retcode, align 4, !tbaa !5
  %569 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1124 = icmp sge i32 %569, 0
  br i1 %cmp1124, label %if.then.1126, label %if.else.1128

if.then.1126:                                     ; preds = %if.then.1109
  %s_da1127 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_free(%struct.dynamic_area_s* %s_da1127) #6
  br label %if.end.1148

if.else.1128:                                     ; preds = %if.then.1109
  %s_da1129 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %570 = load i32, i32* %size1110, align 4, !tbaa !5
  %call1130 = call i32 @dynamic_resize(%struct.dynamic_area_s* %s_da1129, i32 %570) #6
  store i32 %call1130, i32* %retcode, align 4, !tbaa !5
  %571 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1131 = icmp slt i32 %571, 0
  br i1 %cmp1131, label %if.then.1133, label %if.end.1140

if.then.1133:                                     ; preds = %if.else.1128
  %572 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1134 = icmp ne i32 %572, -1
  br i1 %cmp1134, label %if.then.1136, label %if.end.1138

if.then.1136:                                     ; preds = %if.then.1133
  %573 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1137 = getelementptr inbounds i8, i8* %573, i32 -1
  store i8* %incdec.ptr1137, i8** %sptr, align 8, !tbaa !1
  br label %if.end.1138

if.end.1138:                                      ; preds = %if.then.1136, %if.then.1133
  %s_scan_type1139 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 3, i32* %s_scan_type1139, align 4, !tbaa !13
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup.1149

if.end.1140:                                      ; preds = %if.else.1128
  %574 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1141 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %574, i32 0, i32 1
  %current1142 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1141, i32 0, i32 0
  %575 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current1142, align 8, !tbaa !41
  %576 = bitcast %struct.gs_ref_memory_s* %575 to %struct.gs_memory_s*
  %gs_lib_ctx1143 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %576, i32 0, i32 2
  %577 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1143, align 8, !tbaa !50
  %gs_name_table1144 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %577, i32 0, i32 16
  %578 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table1144, align 8, !tbaa !53
  %s_da1145 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1146 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1145, i32 0, i32 0
  %579 = load i8*, i8** %base1146, align 8, !tbaa !18
  %580 = load i32, i32* %size1110, align 4, !tbaa !5
  %581 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call1147 = call i32 @names_ref(%struct.name_table_s* %578, i8* %579, i32 %580, %struct.ref_s* %581, i32 2) #6
  store i32 %call1147, i32* %retcode, align 4, !tbaa !5
  br label %if.end.1148

if.end.1148:                                      ; preds = %if.end.1140, %if.then.1126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1149

cleanup.1149:                                     ; preds = %if.end.1138, %if.end.1148
  %582 = bitcast i32* %size1110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %582) #1
  %cleanup.dest.1150 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1150, label %cleanup.1350 [
    i32 0, label %cleanup.cont.1151
    i32 25, label %pause_ret
  ]

cleanup.cont.1151:                                ; preds = %cleanup.1149
  br label %if.end.1168

if.else.1152:                                     ; preds = %if.end.1105
  %583 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1153 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %583, i32 0, i32 1
  %current1154 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1153, i32 0, i32 0
  %584 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current1154, align 8, !tbaa !41
  %585 = bitcast %struct.gs_ref_memory_s* %584 to %struct.gs_memory_s*
  %gs_lib_ctx1155 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %585, i32 0, i32 2
  %586 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1155, align 8, !tbaa !50
  %gs_name_table1156 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %586, i32 0, i32 16
  %587 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table1156, align 8, !tbaa !53
  %s_da1157 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1158 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1157, i32 0, i32 0
  %588 = load i8*, i8** %base1158, align 8, !tbaa !18
  %589 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da1159 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %base1160 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1159, i32 0, i32 0
  %590 = load i8*, i8** %base1160, align 8, !tbaa !18
  %sub.ptr.lhs.cast1161 = ptrtoint i8* %589 to i64
  %sub.ptr.rhs.cast1162 = ptrtoint i8* %590 to i64
  %sub.ptr.sub1163 = sub i64 %sub.ptr.lhs.cast1161, %sub.ptr.rhs.cast1162
  %conv1164 = trunc i64 %sub.ptr.sub1163 to i32
  %591 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %592 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %592, i32 0, i32 10
  %593 = load i8, i8* %foreign, align 1, !tbaa !103
  %tobool1165 = icmp ne i8 %593, 0
  %lnot1166 = xor i1 %tobool1165, true
  %lnot.ext = zext i1 %lnot1166 to i32
  %call1167 = call i32 @names_ref(%struct.name_table_s* %587, i8* %588, i32 %conv1164, %struct.ref_s* %591, i32 %lnot.ext) #6
  store i32 %call1167, i32* %retcode, align 4, !tbaa !5
  br label %if.end.1168

if.end.1168:                                      ; preds = %if.else.1152, %cleanup.cont.1151
  %594 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1169 = icmp slt i32 %594, 0
  br i1 %cmp1169, label %if.then.1171, label %if.end.1190

if.then.1171:                                     ; preds = %if.end.1168
  %595 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1172 = icmp ne i32 %595, -25
  br i1 %cmp1172, label %if.then.1174, label %if.end.1175

if.then.1174:                                     ; preds = %if.then.1171
  %596 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %596, i32* %retcode, align 4, !tbaa !5
  br label %sret

if.end.1175:                                      ; preds = %if.then.1171
  %s_da1176 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %is_dynamic1177 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1176, i32 0, i32 3
  %597 = load i32, i32* %is_dynamic1177, align 4, !tbaa !17
  %tobool1178 = icmp ne i32 %597, 0
  br i1 %tobool1178, label %if.end.1183, label %if.then.1179

if.then.1179:                                     ; preds = %if.end.1175
  %598 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da1180 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next1181 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1180, i32 0, i32 1
  store i8* %598, i8** %next1181, align 8, !tbaa !29
  %s_da1182 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_save(%struct.dynamic_area_s* %s_da1182) #6
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.then.1179, %if.end.1175
  %599 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1184 = icmp ne i32 %599, -1
  br i1 %cmp1184, label %if.then.1186, label %if.end.1188

if.then.1186:                                     ; preds = %if.end.1183
  %600 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr1187 = getelementptr inbounds i8, i8* %600, i32 -1
  store i8* %incdec.ptr1187, i8** %sptr, align 8, !tbaa !1
  br label %if.end.1188

if.end.1188:                                      ; preds = %if.then.1186, %if.end.1183
  %s_scan_type1189 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 3, i32* %s_scan_type1189, align 4, !tbaa !13
  br label %pause_ret

if.end.1190:                                      ; preds = %if.end.1168
  br label %have_name

have_name:                                        ; preds = %if.end.1190, %cleanup.814
  %s_ss1191 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 6
  %s_name1192 = bitcast %union.sss_* %s_ss1191 to %struct.sns_*
  %s_name_type1193 = getelementptr inbounds %struct.sns_, %struct.sns_* %s_name1192, i32 0, i32 0
  %601 = load i32, i32* %s_name_type1193, align 4, !tbaa !76
  switch i32 %601, label %sw.epilog.1257 [
    i32 0, label %sw.bb.1194
    i32 1, label %sw.epilog.1257
    i32 2, label %sw.bb.1208
  ]

sw.bb.1194:                                       ; preds = %have_name
  %602 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas1195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %602, i32 0, i32 0
  %type_attrs1196 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1195, i32 0, i32 0
  %603 = bitcast i16* %type_attrs1196 to i8*
  %arrayidx1197 = getelementptr inbounds i8, i8* %603, i64 1
  %604 = load i8, i8* %arrayidx1197, align 1, !tbaa !39
  %conv1198 = zext i8 %604 to i32
  %cmp1199 = icmp eq i32 %conv1198, 13
  br i1 %cmp1199, label %if.then.1201, label %if.end.1207

if.then.1201:                                     ; preds = %sw.bb.1194
  %605 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas1202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %605, i32 0, i32 0
  %type_attrs1203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1202, i32 0, i32 0
  %606 = load i16, i16* %type_attrs1203, align 2, !tbaa !7
  %conv1204 = zext i16 %606 to i32
  %or1205 = or i32 %conv1204, 128
  %conv1206 = trunc i32 %or1205 to i16
  store i16 %conv1206, i16* %type_attrs1203, align 2, !tbaa !7
  br label %if.end.1207

if.end.1207:                                      ; preds = %if.then.1201, %sw.bb.1194
  br label %sw.epilog.1257

sw.bb.1208:                                       ; preds = %have_name
  %607 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %607) #1
  %608 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas1209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %608, i32 0, i32 0
  %type_attrs1210 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1209, i32 0, i32 0
  %609 = bitcast i16* %type_attrs1210 to i8*
  %arrayidx1211 = getelementptr inbounds i8, i8* %609, i64 1
  %610 = load i8, i8* %arrayidx1211, align 1, !tbaa !39
  %conv1212 = zext i8 %610 to i32
  %cmp1213 = icmp eq i32 %conv1212, 13
  br i1 %cmp1213, label %lor.lhs.false, label %if.then.1223

lor.lhs.false:                                    ; preds = %sw.bb.1208
  %611 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %611, i32 0, i32 24
  %612 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1215 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %612, i32 0, i32 1
  %current1216 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1215, i32 0, i32 0
  %613 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current1216, align 8, !tbaa !41
  %614 = bitcast %struct.gs_ref_memory_s* %613 to %struct.gs_memory_s*
  %gs_lib_ctx1217 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %614, i32 0, i32 2
  %615 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1217, align 8, !tbaa !50
  %gs_name_table1218 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %615, i32 0, i32 16
  %616 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table1218, align 8, !tbaa !53
  %617 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %call1219 = call i32 @names_index(%struct.name_table_s* %616, %struct.ref_s* %617) #6
  %call1220 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack, i32 %call1219) #6
  store %struct.ref_s* %call1220, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %cmp1221 = icmp eq %struct.ref_s* %call1220, null
  br i1 %cmp1221, label %if.then.1223, label %if.end.1233

if.then.1223:                                     ; preds = %lor.lhs.false, %sw.bb.1208
  %s_error1224 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %object1225 = getelementptr inbounds %struct.se_, %struct.se_* %s_error1224, i32 0, i32 0
  %618 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %619 = bitcast %struct.ref_s* %object1225 to i8*
  %620 = bitcast %struct.ref_s* %618 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %619, i8* %620, i64 16, i32 8, i1 false), !tbaa.struct !30
  %s_error1226 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %object1227 = getelementptr inbounds %struct.se_, %struct.se_* %s_error1226, i32 0, i32 0
  %tas1228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %object1227, i32 0, i32 0
  %type_attrs1229 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1228, i32 0, i32 0
  %621 = load i16, i16* %type_attrs1229, align 2, !tbaa !7
  %conv1230 = zext i16 %621 to i32
  %or1231 = or i32 %conv1230, 128
  %conv1232 = trunc i32 %or1231 to i16
  store i16 %conv1232, i16* %type_attrs1229, align 2, !tbaa !7
  store i32 -21, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1254

if.end.1233:                                      ; preds = %lor.lhs.false
  %s_pstack1234 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %622 = load i32, i32* %s_pstack1234, align 4, !tbaa !36
  %cmp1235 = icmp ne i32 %622, 0
  br i1 %cmp1235, label %land.lhs.true.1237, label %if.end.1246

land.lhs.true.1237:                               ; preds = %if.end.1233
  %623 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas1238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %623, i32 0, i32 0
  %type_attrs1239 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1238, i32 0, i32 0
  %624 = load i16, i16* %type_attrs1239, align 2, !tbaa !7
  %conv1240 = zext i16 %624 to i32
  %and1241 = and i32 %conv1240, 12
  %625 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1242 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %625, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1242, i32 0, i32 2
  %626 = load i32, i32* %current_space, align 4, !tbaa !56
  %cmp1243 = icmp ugt i32 %and1241, %626
  br i1 %cmp1243, label %if.then.1245, label %if.end.1246

if.then.1245:                                     ; preds = %land.lhs.true.1237
  store i32 -7, i32* %retcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.1254

if.end.1246:                                      ; preds = %land.lhs.true.1237, %if.end.1233
  %627 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %628 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %629 = bitcast %struct.ref_s* %627 to i8*
  %630 = bitcast %struct.ref_s* %628 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %629, i8* %630, i64 16, i32 8, i1 false), !tbaa.struct !30
  %631 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1247 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %631, i32 0, i32 1
  %new_mask1248 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1247, i32 0, i32 5
  %632 = load i32, i32* %new_mask1248, align 4, !tbaa !101
  %633 = load %struct.ref_s*, %struct.ref_s** %myref, align 8, !tbaa !1
  %tas1249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %633, i32 0, i32 0
  %type_attrs1250 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1249, i32 0, i32 0
  %634 = load i16, i16* %type_attrs1250, align 2, !tbaa !7
  %conv1251 = zext i16 %634 to i32
  %or1252 = or i32 %conv1251, %632
  %conv1253 = trunc i32 %or1252 to i16
  store i16 %conv1253, i16* %type_attrs1250, align 2, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1254

cleanup.1254:                                     ; preds = %if.then.1245, %if.then.1223, %if.end.1246
  %635 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %635) #1
  %cleanup.dest.1255 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1255, label %cleanup.1350 [
    i32 0, label %cleanup.cont.1256
    i32 4, label %sret
  ]

cleanup.cont.1256:                                ; preds = %cleanup.1254
  br label %sw.epilog.1257

sw.epilog.1257:                                   ; preds = %cleanup.cont.1256, %have_name, %if.end.1207, %have_name
  br label %sw.epilog.1258

sw.epilog.1258:                                   ; preds = %sw.epilog.1257, %cleanup.1102, %if.end.884, %if.end.844, %if.end.778, %cleanup.cont, %if.end.294, %sw.bb.131
  br label %sret

sret:                                             ; preds = %if.then.1344, %sw.epilog.1258, %cleanup.1254, %cleanup.1102, %cleanup.562, %cleanup, %if.then.1174, %sw.bb.1058, %if.then.1011, %if.then.955, %cleanup.cont.816, %sw.bb.779, %if.end.777, %sw.default.749, %if.then.415, %sw.bb.410, %sw.default.277, %if.end.82
  %636 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1259 = icmp slt i32 %636, 0
  br i1 %cmp1259, label %if.then.1261, label %if.end.1287

if.then.1261:                                     ; preds = %sret
  %637 = load i8*, i8** %sptr, align 8, !tbaa !1
  %638 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1262 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %638, i32 0, i32 5
  %r1263 = bitcast %union.stream_cursor_s* %cursor1262 to %struct.stream_cursor_read_s*
  %ptr1264 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1263, i32 0, i32 0
  store i8* %637, i8** %ptr1264, align 8, !tbaa !59
  %639 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error1265 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %639, i32 0, i32 7
  %s_error1266 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 7
  %640 = bitcast %struct.se_* %s_error1265 to i8*
  %641 = bitcast %struct.se_* %s_error1266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %640, i8* %641, i64 144, i32 8, i1 false), !tbaa.struct !104
  %s_pstack1267 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %642 = load i32, i32* %s_pstack1267, align 4, !tbaa !36
  %cmp1268 = icmp ne i32 %642, 0
  br i1 %cmp1268, label %if.then.1270, label %if.end.1286

if.then.1270:                                     ; preds = %if.then.1261
  %643 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1271 = icmp eq i32 %643, -21
  br i1 %cmp1271, label %if.then.1273, label %if.end.1277

if.then.1273:                                     ; preds = %if.then.1270
  %644 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %645 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1274 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %645, i32 0, i32 26
  %stack1275 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1274, i32 0, i32 0
  %p1276 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1275, i32 0, i32 0
  %646 = load %struct.ref_s*, %struct.ref_s** %p1276, align 8, !tbaa !70
  %647 = bitcast %struct.ref_s* %644 to i8*
  %648 = bitcast %struct.ref_s* %646 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %647, i8* %648, i64 16, i32 8, i1 false), !tbaa.struct !30
  br label %if.end.1277

if.end.1277:                                      ; preds = %if.then.1273, %if.then.1270
  %649 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1278 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %649, i32 0, i32 26
  %stack1279 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1278, i32 0, i32 0
  %650 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1280 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %650, i32 0, i32 26
  %stack1281 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1280, i32 0, i32 0
  %call1282 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack1281) #6
  %s_pdepth1283 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 2
  %651 = load i32, i32* %s_pdepth1283, align 4, !tbaa !74
  %sub1284 = sub i32 %651, 1
  %sub1285 = sub i32 %call1282, %sub1284
  call void @ref_stack_pop(%struct.ref_stack_s* %stack1279, i32 %sub1285) #6
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.end.1277, %if.then.1261
  %652 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %652, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1350

if.end.1287:                                      ; preds = %sret
  %s_pstack1288 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %653 = load i32, i32* %s_pstack1288, align 4, !tbaa !36
  %cmp1289 = icmp eq i32 %653, 0
  br i1 %cmp1289, label %if.then.1291, label %if.end.1295

if.then.1291:                                     ; preds = %if.end.1287
  %654 = load i8*, i8** %sptr, align 8, !tbaa !1
  %655 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1292 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %655, i32 0, i32 5
  %r1293 = bitcast %union.stream_cursor_s* %cursor1292 to %struct.stream_cursor_read_s*
  %ptr1294 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1293, i32 0, i32 0
  store i8* %654, i8** %ptr1294, align 8, !tbaa !59
  %656 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %656, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1350

if.end.1295:                                      ; preds = %if.end.1287
  br label %snext

snext:                                            ; preds = %if.end.1295, %cleanup.562, %do.end.388
  %657 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1296 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %657, i32 0, i32 26
  %stack1297 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1296, i32 0, i32 0
  %p1298 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1297, i32 0, i32 0
  %658 = load %struct.ref_s*, %struct.ref_s** %p1298, align 8, !tbaa !70
  %659 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1299 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %659, i32 0, i32 26
  %stack1300 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1299, i32 0, i32 0
  %top1301 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1300, i32 0, i32 2
  %660 = load %struct.ref_s*, %struct.ref_s** %top1301, align 8, !tbaa !71
  %cmp1302 = icmp ult %struct.ref_s* %658, %660
  br i1 %cmp1302, label %if.then.1304, label %if.else.1309

if.then.1304:                                     ; preds = %snext
  %661 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1305 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %661, i32 0, i32 26
  %stack1306 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1305, i32 0, i32 0
  %p1307 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1306, i32 0, i32 0
  %662 = load %struct.ref_s*, %struct.ref_s** %p1307, align 8, !tbaa !70
  %incdec.ptr1308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %662, i32 1
  store %struct.ref_s* %incdec.ptr1308, %struct.ref_s** %p1307, align 8, !tbaa !70
  br label %if.end.1322

if.else.1309:                                     ; preds = %snext
  %663 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1310 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %663, i32 0, i32 26
  %stack1311 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1310, i32 0, i32 0
  %call1312 = call i32 @ref_stack_push(%struct.ref_stack_s* %stack1311, i32 1) #6
  store i32 %call1312, i32* %retcode, align 4, !tbaa !5
  %cmp1313 = icmp sge i32 %call1312, 0
  br i1 %cmp1313, label %if.then.1315, label %if.else.1316

if.then.1315:                                     ; preds = %if.else.1309
  br label %if.end.1321

if.else.1316:                                     ; preds = %if.else.1309
  %664 = load i8*, i8** %sptr, align 8, !tbaa !1
  %665 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1317 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %665, i32 0, i32 5
  %r1318 = bitcast %union.stream_cursor_s* %cursor1317 to %struct.stream_cursor_read_s*
  %ptr1319 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1318, i32 0, i32 0
  store i8* %664, i8** %ptr1319, align 8, !tbaa !59
  %s_scan_type1320 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type1320, align 4, !tbaa !13
  br label %save

if.end.1321:                                      ; preds = %if.then.1315
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.end.1321, %if.then.1304
  %666 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1323 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %666, i32 0, i32 26
  %stack1324 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1323, i32 0, i32 0
  %p1325 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1324, i32 0, i32 0
  %667 = load %struct.ref_s*, %struct.ref_s** %p1325, align 8, !tbaa !70
  store %struct.ref_s* %667, %struct.ref_s** %myref, align 8, !tbaa !1
  br label %top.108

pause_name:                                       ; preds = %sw.bb.1057, %if.then.1043
  %668 = load i8*, i8** %daptr, align 8, !tbaa !1
  %s_da1326 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  %next1327 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1326, i32 0, i32 1
  store i8* %668, i8** %next1327, align 8, !tbaa !29
  %s_da1328 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 5
  call void @dynamic_save(%struct.dynamic_area_s* %s_da1328) #6
  %s_scan_type1329 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 3, i32* %s_scan_type1329, align 4, !tbaa !13
  br label %pause

pause:                                            ; preds = %pause_name, %if.then.889, %if.then.883, %if.then.776, %sw.bb.744, %do.body.574, %do.body.397, %sw.bb.278, %do.body.148, %if.then.81
  store i32 3, i32* %retcode, align 4, !tbaa !5
  br label %pause_ret

pause_ret:                                        ; preds = %pause, %cleanup.1149, %cleanup.562, %if.end.1188, %if.end.1012, %if.end.956, %if.else.336
  %669 = load i8*, i8** %sptr, align 8, !tbaa !1
  %670 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1330 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %670, i32 0, i32 5
  %r1331 = bitcast %union.stream_cursor_s* %cursor1330 to %struct.stream_cursor_read_s*
  %ptr1332 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1331, i32 0, i32 0
  store i8* %669, i8** %ptr1332, align 8, !tbaa !59
  br label %suspend

suspend:                                          ; preds = %pause_ret, %cleanup, %if.then.288
  %s_pstack1333 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 1
  %671 = load i32, i32* %s_pstack1333, align 4, !tbaa !36
  %cmp1334 = icmp ne i32 %671, 0
  br i1 %cmp1334, label %if.then.1336, label %if.end.1341

if.then.1336:                                     ; preds = %suspend
  %672 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1337 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %672, i32 0, i32 26
  %stack1338 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1337, i32 0, i32 0
  %p1339 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1338, i32 0, i32 0
  %673 = load %struct.ref_s*, %struct.ref_s** %p1339, align 8, !tbaa !70
  %incdec.ptr1340 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %673, i32 -1
  store %struct.ref_s* %incdec.ptr1340, %struct.ref_s** %p1339, align 8, !tbaa !70
  br label %if.end.1341

if.end.1341:                                      ; preds = %if.then.1336, %suspend
  br label %save

save:                                             ; preds = %if.end.1345, %if.end.1341, %if.else.1316
  %674 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %675 = bitcast %struct.scanner_state_s* %674 to i8*
  %676 = bitcast %struct.scanner_state_s* %sstate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %675, i8* %676, i64 1368, i32 8, i1 false), !tbaa.struct !67
  %677 = load i32, i32* %retcode, align 4, !tbaa !5
  store i32 %677, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1350

comment:                                          ; preds = %cleanup.715, %if.then.768
  %678 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp1342 = icmp slt i32 %678, 0
  br i1 %cmp1342, label %if.then.1344, label %if.end.1345

if.then.1344:                                     ; preds = %comment
  br label %sret

if.end.1345:                                      ; preds = %comment
  %679 = load i8*, i8** %sptr, align 8, !tbaa !1
  %680 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1346 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %680, i32 0, i32 5
  %r1347 = bitcast %union.stream_cursor_s* %cursor1346 to %struct.stream_cursor_read_s*
  %ptr1348 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r1347, i32 0, i32 0
  store i8* %679, i8** %ptr1348, align 8, !tbaa !59
  %s_scan_type1349 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %sstate, i32 0, i32 4
  store i32 0, i32* %s_scan_type1349, align 4, !tbaa !13
  br label %save

cleanup.1350:                                     ; preds = %save, %if.then.1291, %if.end.1286, %cleanup.1254, %cleanup.1149, %cleanup.1102, %cleanup.928, %cleanup.814, %cleanup.715, %cleanup.562, %cleanup, %sw.default, %if.else.26
  %681 = bitcast %struct.scanner_state_s* %sstate to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %681) #1
  %682 = bitcast i32* %ctrld to i8*
  call void @llvm.lifetime.end(i64 4, i8* %682) #1
  %683 = bitcast i32* %PDFScanRules to i8*
  call void @llvm.lifetime.end(i64 4, i8* %683) #1
  %684 = bitcast i32* %check_only to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %685) #1
  %686 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %686) #1
  %687 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast [2 x i8]* %s1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %688) #1
  %689 = bitcast i32* %max_name_ctype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast i8** %daptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %690) #1
  %691 = bitcast i8** %newptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  %692 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %692) #1
  %693 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %694 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
  %695 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast %struct.ref_s** %myref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %697) #1
  %698 = load i32, i32* %retval
  ret i32 %698
}

declare i64 @stell(%struct.stream_s*) #3

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #3

declare i32 @spgetcc(%struct.stream_s*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @dynamic_init(%struct.dynamic_area_s* %pda, %struct.gs_memory_s* %mem) #5 {
entry:
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %0, i32 0, i32 3
  store i32 0, i32* %is_dynamic, align 4, !tbaa !105
  %1 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1023
  %2 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %2, i32 0, i32 2
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !19
  %3 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf1, i32 0, i32 0
  %4 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %4, i32 0, i32 0
  store i8* %arraydecay2, i8** %base, align 8, !tbaa !20
  %5 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %5, i32 0, i32 1
  store i8* %arraydecay2, i8** %next, align 8, !tbaa !106
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %7, i32 0, i32 5
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dynamic_grow(%struct.dynamic_area_s* %pda, i8* %next, i32 %max_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %next.addr = alloca i8*, align 8
  %max_size.addr = alloca i32, align 4
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  store i8* %next, i8** %next.addr, align 8, !tbaa !1
  store i32 %max_size, i32* %max_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %limit, align 8, !tbaa !19
  %3 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %base, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %old_size, align 4, !tbaa !5
  %5 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %old_size, align 4, !tbaa !5
  %cmp = icmp ult i32 %6, 10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %old_size, align 4, !tbaa !5
  %8 = load i32, i32* %max_size.addr, align 4, !tbaa !5
  %shr = lshr i32 %8, 1
  %cmp2 = icmp uge i32 %7, %shr
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  %9 = load i32, i32* %max_size.addr, align 4, !tbaa !5
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %10 = load i32, i32* %old_size, align 4, !tbaa !5
  %shl = shl i32 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ %9, %cond.true.4 ], [ %shl, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ 20, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond7, i32* %new_size, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %next.addr, align 8, !tbaa !1
  %13 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %13, i32 0, i32 1
  store i8* %12, i8** %next8, align 8, !tbaa !106
  %14 = load i32, i32* %old_size, align 4, !tbaa !5
  %15 = load i32, i32* %max_size.addr, align 4, !tbaa !5
  %cmp9 = icmp uge i32 %14, %15
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %17 = load i32, i32* %new_size, align 4, !tbaa !5
  %call = call i32 @dynamic_resize(%struct.dynamic_area_s* %16, i32 %17) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %new_size, align 4, !tbaa !5
  %19 = load i32, i32* %old_size, align 4, !tbaa !5
  %cmp13 = icmp ugt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32, i32* %new_size, align 4, !tbaa !5
  %22 = load i32, i32* %old_size, align 4, !tbaa !5
  %sub = sub i32 %21, %22
  %add = add i32 %sub, 1
  %shr15 = lshr i32 %add, 1
  %23 = load i32, i32* %new_size, align 4, !tbaa !5
  %sub16 = sub i32 %23, %shr15
  store i32 %sub16, i32* %new_size, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @dynamic_make_string(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.dynamic_area_s* %pda, i8* %next) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %next.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  store i8* %next, i8** %next.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %next.addr, align 8, !tbaa !1
  %2 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %2, i32 0, i32 1
  store i8* %1, i8** %next1, align 8, !tbaa !106
  %3 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %base, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %call = call i32 @dynamic_resize(%struct.dynamic_area_s* %6, i32 %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base3 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %base3, align 8, !tbaa !20
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %11, i8** %bytes, align 8, !tbaa !1
  %13 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %13, i32 0, i32 5
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !107
  %15 = bitcast %struct.gs_memory_s* %14 to %struct.gs_ref_memory_s*
  %call4 = call i32 @imemory_space(%struct.gs_ref_memory_s* %15) #6
  %or = or i32 112, %call4
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 5
  %17 = load i32, i32* %new_mask, align 4, !tbaa !101
  %or6 = or i32 %or, %17
  %add = add i32 4608, %or6
  %conv7 = trunc i32 %add to i16
  %18 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv7, i16* %type_attrs, align 2, !tbaa !7
  %19 = load i32, i32* %size, align 4, !tbaa !5
  %20 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  store i32 %19, i32* %rsize, align 4, !tbaa !40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #3

declare i32 @make_packed_array(%struct.ref_s*, %struct.ref_stack_s*, i32, %struct.gs_dual_memory_s*, i8*) #3

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #3

declare i32 @ref_stack_store(%struct.ref_stack_s*, %struct.ref_s*, i32, i32, i32, i32, %struct.gs_dual_memory_s*, i8*) #3

declare void @gs_free_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i8*) #3

declare i32 @ref_stack_pop_block(%struct.ref_stack_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @scan_comment(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate, i8* %base, i8* %end, i32 %saved) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %base.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %saved.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cstr = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i32 %saved, i32* %saved.addr, align 4, !tbaa !5
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %len, align 4, !tbaa !5
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 37
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1, !tbaa !39
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 33
  br i1 %cmp7, label %if.then, label %if.end.16

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load i32 (i8*, i32)*, i32 (i8*, i32)** @gs_scan_dsc_proc, align 8, !tbaa !1
  %cmp9 = icmp ne i32 (i8*, i32)* %9, null
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %10 = load i32 (i8*, i32)*, i32 (i8*, i32)** @gs_scan_dsc_proc, align 8, !tbaa !1
  %11 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %12 = load i32, i32* %len, align 4, !tbaa !5
  %call = call i32 %10(i8* %11, i32 %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %13, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %14 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %if.then
  %15 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %15, i32 0, i32 3
  %16 = load i32, i32* %s_options, align 4, !tbaa !37
  %and = and i32 %16, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 5, i32* %code, align 4, !tbaa !5
  br label %comment

if.end.15:                                        ; preds = %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %lor.lhs.false, %entry
  %17 = load i32 (i8*, i32)*, i32 (i8*, i32)** @gs_scan_comment_proc, align 8, !tbaa !1
  %cmp17 = icmp ne i32 (i8*, i32)* %17, null
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.16
  %18 = load i32 (i8*, i32)*, i32 (i8*, i32)** @gs_scan_comment_proc, align 8, !tbaa !1
  %19 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %20 = load i32, i32* %len, align 4, !tbaa !5
  %call20 = call i32 %18(i8* %19, i32 %20) #6
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %21, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.then.19
  %22 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.19
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %22, %cond.true.23 ], [ 0, %cond.false.24 ]
  store i32 %cond26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.27:                                        ; preds = %if.end.16
  %23 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_options28 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %23, i32 0, i32 3
  %24 = load i32, i32* %s_options28, align 4, !tbaa !37
  %and29 = and i32 %24, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 4, i32* %code, align 4, !tbaa !5
  br label %comment

if.end.32:                                        ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

comment:                                          ; preds = %if.then.31, %if.then.14
  %25 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !55
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !41
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %33 = load i32, i32* %len, align 4, !tbaa !5
  %call35 = call i8* %29(%struct.gs_memory_s* %32, i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #6
  store i8* %call35, i8** %cstr, align 8, !tbaa !1
  %34 = load i8*, i8** %cstr, align 8, !tbaa !1
  %cmp36 = icmp eq i8* %34, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %comment
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %comment
  %35 = load i8*, i8** %cstr, align 8, !tbaa !1
  %36 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %37 = load i32, i32* %len, align 4, !tbaa !5
  %conv40 = zext i32 %37 to i64
  %call41 = call i8* @memcpy(i8* %35, i8* %36, i64 %conv40) #8
  %38 = load i8*, i8** %cstr, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %38, i8** %bytes, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory42, i32 0, i32 2
  %41 = load i32, i32* %current_space, align 4, !tbaa !56
  %or = or i32 112, %41
  %add = add i32 4608, %or
  %conv43 = trunc i32 %add to i16
  %42 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv43, i16* %type_attrs, align 2, !tbaa !7
  %43 = load i32, i32* %len, align 4, !tbaa !5
  %44 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  store i32 %43, i32* %rsize, align 4, !tbaa !40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38
  %45 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %cleanup.cont, %cleanup, %if.end.32, %cond.end.25, %cond.end
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @scan_number(i8*, i8*, i32, %struct.ref_s*, i8**, i32) #3

declare i32 @scan_binary_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #3

declare %struct.gs_memory_s* @names_memory(%struct.name_table_s*) #3

; Function Attrs: nounwind uwtable
define internal void @dynamic_save(%struct.dynamic_area_s* %pda) #0 {
entry:
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %len = alloca i32, align 4
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %0 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %0, i32 0, i32 3
  %1 = load i32, i32* %is_dynamic, align 4, !tbaa !105
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %base, align 8, !tbaa !20
  %4 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf, i32 0, i32 0
  %cmp = icmp ne i8* %3, %arraydecay
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !19
  %8 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %base1, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %10 = load i32, i32* %len, align 4, !tbaa !5
  %conv2 = sext i32 %10 to i64
  %cmp3 = icmp ugt i64 %conv2, 1023
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 1023, i32* %len, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf6 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %11, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf6, i32 0, i32 0
  %12 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base8 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %base8, align 8, !tbaa !20
  %14 = load i32, i32* %len, align 4, !tbaa !5
  %conv9 = sext i32 %14 to i64
  %call = call i8* @memcpy(i8* %arraydecay7, i8* %13, i64 %conv9) #8
  %15 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf10 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %15, i32 0, i32 4
  %arraydecay11 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf10, i32 0, i32 0
  %16 = load i32, i32* %len, align 4, !tbaa !5
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay11, i64 %idx.ext
  %17 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %17, i32 0, i32 1
  store i8* %add.ptr, i8** %next, align 8, !tbaa !106
  %18 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %buf12 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %18, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf12, i32 0, i32 0
  %19 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base14 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %19, i32 0, i32 0
  store i8* %arraydecay13, i8** %base14, align 8, !tbaa !20
  %20 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dynamic_free(%struct.dynamic_area_s* %pda) #0 {
entry:
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %0 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %0, i32 0, i32 3
  %1 = load i32, i32* %is_dynamic, align 4, !tbaa !105
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %2, i32 0, i32 5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !107
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %4 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !108
  %5 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !107
  %7 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %base, align 8, !tbaa !20
  %9 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !19
  %11 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %base2, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void %4(%struct.gs_memory_s* %6, i8* %8, i32 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dynamic_resize(%struct.dynamic_area_s* %pda, i32 %new_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %new_size.addr = alloca i32, align 4
  %old_size = alloca i32, align 4
  %pos = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %base6 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  store i32 %new_size, i32* %new_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %limit, align 8, !tbaa !19
  %3 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %base, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %old_size, align 4, !tbaa !5
  %5 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %next, align 8, !tbaa !106
  %8 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %base1, align 8, !tbaa !20
  %sub.ptr.lhs.cast2 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %9 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %conv5 = trunc i64 %sub.ptr.sub4 to i32
  store i32 %conv5, i32* %pos, align 4, !tbaa !5
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %11, i32 0, i32 5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !107
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = bitcast i8** %base6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %14, i32 0, i32 3
  %15 = load i32, i32* %is_dynamic, align 4, !tbaa !105
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %17 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !109
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %19 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base7 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %19, i32 0, i32 0
  %20 = load i8*, i8** %base7, align 8, !tbaa !20
  %21 = load i32, i32* %old_size, align 4, !tbaa !5
  %22 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %call = call i8* %17(%struct.gs_memory_s* %18, i8* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %call, i8** %base6, align 8, !tbaa !1
  %23 = load i8*, i8** %base6, align 8, !tbaa !1
  %cmp = icmp eq i8* %23, null
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 16
  %25 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !55
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %call11 = call i8* %25(%struct.gs_memory_s* %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %call11, i8** %base6, align 8, !tbaa !1
  %28 = load i8*, i8** %base6, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %28, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.else
  %29 = load i8*, i8** %base6, align 8, !tbaa !1
  %30 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base16 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %base16, align 8, !tbaa !20
  %32 = load i32, i32* %old_size, align 4, !tbaa !5
  %33 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %32, %33
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %34 = load i32, i32* %old_size, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %35 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %35, %cond.false ]
  %conv19 = zext i32 %cond to i64
  %call20 = call i8* @memcpy(i8* %29, i8* %31, i64 %conv19) #8
  %36 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %is_dynamic21 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %36, i32 0, i32 3
  store i32 1, i32* %is_dynamic21, align 4, !tbaa !105
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %if.end
  %37 = load i8*, i8** %base6, align 8, !tbaa !1
  %38 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %base23 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %38, i32 0, i32 0
  store i8* %37, i8** %base23, align 8, !tbaa !20
  %39 = load i8*, i8** %base6, align 8, !tbaa !1
  %40 = load i32, i32* %pos, align 4, !tbaa !5
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %next24 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %41, i32 0, i32 1
  store i8* %add.ptr, i8** %next24, align 8, !tbaa !106
  %42 = load i8*, i8** %base6, align 8, !tbaa !1
  %43 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %idx.ext25 = zext i32 %43 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %42, i64 %idx.ext25
  %44 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8, !tbaa !1
  %limit27 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %44, i32 0, i32 2
  store i8* %add.ptr26, i8** %limit27, align 8, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.14, %if.then.9
  %45 = bitcast i8** %base6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #3

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #3

declare i32 @ref_stack_count(%struct.ref_stack_s*) #3

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !10, i64 0}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !6, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!14, !3, i64 28}
!14 = !{!"scanner_state_s", !8, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 28, !15, i64 32, !3, i64 1096, !16, i64 1224}
!15 = !{!"dynamic_area_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 1056}
!16 = !{!"se_", !8, i64 0, !6, i64 16, !3, i64 20}
!17 = !{!14, !6, i64 56}
!18 = !{!14, !2, i64 32}
!19 = !{!15, !2, i64 16}
!20 = !{!15, !2, i64 0}
!21 = !{!12, !6, i64 8}
!22 = !{!23, !2, i64 40}
!23 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!24 = !{!25, !2, i64 0}
!25 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!26 = !{!25, !6, i64 8}
!27 = !{!23, !2, i64 8}
!28 = !{!14, !2, i64 48}
!29 = !{!14, !2, i64 40}
!30 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 4, i64 4, !5, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !34, i64 8, i64 8, !32, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !32}
!31 = !{!10, !10, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !3, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !3, i64 0}
!36 = !{!14, !6, i64 16}
!37 = !{!14, !6, i64 24}
!38 = !{!14, !6, i64 1240}
!39 = !{!3, !3, i64 0}
!40 = !{!8, !6, i64 4}
!41 = !{!42, !2, i64 8}
!42 = !{!"gs_context_state_s", !2, i64 0, !43, i64 8, !6, i64 80, !8, i64 88, !8, i64 104, !33, i64 120, !33, i64 128, !33, i64 136, !6, i64 144, !6, i64 148, !8, i64 152, !8, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !45, i64 264, !45, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !46, i64 368, !48, i64 520, !49, i64 624, !2, i64 720}
!43 = !{!"gs_dual_memory_s", !2, i64 0, !44, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!44 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!45 = !{!"op_array_table_s", !8, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!46 = !{!"dict_stack_s", !47, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !8, i64 136}
!47 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !6, i64 40, !6, i64 44, !8, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!48 = !{!"exec_stack_s", !47, i64 0, !2, i64 96}
!49 = !{!"op_stack_s", !47, i64 0}
!50 = !{!51, !2, i64 192}
!51 = !{!"gs_memory_s", !2, i64 0, !52, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!52 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!53 = !{!54, !2, i64 120}
!54 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !33, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!51, !2, i64 136}
!56 = !{!43, !6, i64 48}
!57 = !{!58, !2, i64 8}
!58 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!59 = !{!58, !2, i64 0}
!60 = !{!61, !10, i64 152}
!61 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !3, i64 154, !3, i64 155, !25, i64 160, !33, i64 176, !62, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !10, i64 264, !10, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !63, i64 312, !6, i64 328, !33, i64 336, !33, i64 344}
!62 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!63 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!64 = !{!51, !2, i64 72}
!65 = !{!66, !2, i64 1368}
!66 = !{!"scanner_state_dynamic_s", !14, i64 0, !2, i64 1368}
!67 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 4, i64 4, !5, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !34, i64 8, i64 8, !32, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !32, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !39, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 4, !5, i64 60, i64 1023, !39, i64 1088, i64 8, !1, i64 1096, i64 4, !5, i64 1104, i64 8, !1, i64 1112, i64 2, !31, i64 1114, i64 2, !31, i64 1116, i64 4, !5, i64 1120, i64 8, !32, i64 1120, i64 2, !31, i64 1120, i64 4, !34, i64 1120, i64 8, !32, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !32, i64 1128, i64 4, !5, i64 1132, i64 4, !5, i64 1136, i64 4, !5, i64 1140, i64 4, !5, i64 1144, i64 4, !5, i64 1148, i64 4, !5, i64 1152, i64 8, !32, i64 1096, i64 4, !5, i64 1100, i64 4, !5, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !5, i64 1124, i64 80, !39, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !5, i64 1124, i64 80, !39, i64 1204, i64 4, !5, i64 1208, i64 8, !32, i64 1216, i64 4, !5, i64 1220, i64 4, !5, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !5, i64 1124, i64 80, !39, i64 1204, i64 4, !5, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !5, i64 1124, i64 80, !39, i64 1204, i64 4, !5, i64 1208, i64 4, !5, i64 1224, i64 2, !31, i64 1226, i64 2, !31, i64 1228, i64 4, !5, i64 1232, i64 8, !32, i64 1232, i64 2, !31, i64 1232, i64 4, !34, i64 1232, i64 8, !32, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !32, i64 1240, i64 4, !5, i64 1244, i64 121, !39}
!68 = !{!42, !6, i64 80}
!69 = !{!42, !6, i64 184}
!70 = !{!42, !2, i64 624}
!71 = !{!42, !2, i64 640}
!72 = !{!73, !2, i64 8}
!73 = !{!"scan_binary_state_s", !6, i64 0, !2, i64 8, !8, i64 16, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !33, i64 56}
!74 = !{!14, !6, i64 20}
!75 = !{!61, !6, i64 252}
!76 = !{!77, !6, i64 0}
!77 = !{!"sns_", !6, i64 0, !6, i64 4}
!78 = !{!77, !6, i64 4}
!79 = !{!80, !6, i64 24}
!80 = !{!"stream_A85D_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !33, i64 112, !6, i64 120, !6, i64 124}
!81 = !{!80, !33, i64 112}
!82 = !{!80, !6, i64 108}
!83 = !{!80, !6, i64 124}
!84 = !{!85, !2, i64 0}
!85 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!86 = !{!87, !6, i64 24}
!87 = !{!"stream_AXD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108}
!88 = !{!87, !6, i64 108}
!89 = !{!90, !2, i64 8}
!90 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!91 = !{!90, !2, i64 16}
!92 = !{!93, !2, i64 16}
!93 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!94 = !{!95, !6, i64 108}
!95 = !{!"stream_PSSD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112}
!96 = !{!95, !6, i64 112}
!97 = !{!47, !2, i64 0}
!98 = !{!47, !2, i64 8}
!99 = !{!47, !6, i64 44}
!100 = !{!42, !2, i64 632}
!101 = !{!43, !6, i64 68}
!102 = !{!14, !2, i64 1088}
!103 = !{!61, !3, i64 154}
!104 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 4, i64 4, !5, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !34, i64 8, i64 8, !32, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !32, i64 16, i64 4, !5, i64 20, i64 121, !39}
!105 = !{!15, !6, i64 24}
!106 = !{!15, !2, i64 8}
!107 = !{!15, !2, i64 1056}
!108 = !{!51, !2, i64 160}
!109 = !{!51, !2, i64 152}
