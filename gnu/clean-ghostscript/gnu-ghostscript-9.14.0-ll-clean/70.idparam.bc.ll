; ModuleID = './idparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_uid_s = type { i64, i64* }

@.str = private unnamed_addr constant [5 x i8] c"XUID\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"get XUID\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gs_errorinfo_put_pair\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"$error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"errorinfo\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dict_bool_param(%struct.ref_s* %pdict, i8* %kstr, i32 %defaultval, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %defaultval.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  %5 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %4, i32* %5, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %10 = load i16, i16* %boolval, align 2, !tbaa !8
  %conv6 = zext i16 %10 to i32
  %11 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %conv6, i32* %11, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %12 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @dict_int_null_param(%struct.ref_s* %pdict, i8* %kstr, i32 %minval, i32 %maxval, i32 %defaultval, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %defaultval.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ival = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !5
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !5
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %4, i8* %5, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  store i32 %6, i32* %ival, align 4, !tbaa !5
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.15
    i32 14, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.else
  %10 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !10
  %12 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %conv2 = sext i32 %12 to i64
  %cmp3 = icmp slt i64 %11, %conv2
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %sw.bb
  %13 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %14 = load i64, i64* %intval7, align 8, !tbaa !10
  %15 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %conv8 = sext i32 %15 to i64
  %cmp9 = icmp sgt i64 %14, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.5, %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %16 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval13 = bitcast %union.v* %value12 to i64*
  %17 = load i64, i64* %intval13, align 8, !tbaa !10
  %conv14 = trunc i64 %17 to i32
  store i32 %conv14, i32* %ival, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.else
  %18 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %realval = bitcast %union.v* %value16 to float*
  %19 = load float, float* %realval, align 4, !tbaa !12
  %20 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %conv17 = sitofp i32 %20 to float
  %cmp18 = fcmp olt float %19, %conv17
  br i1 %cmp18, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %sw.bb.15
  %21 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %realval22 = bitcast %union.v* %value21 to float*
  %22 = load float, float* %realval22, align 4, !tbaa !12
  %23 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %conv23 = sitofp i32 %23 to float
  %cmp24 = fcmp ogt float %22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.20, %sw.bb.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false.20
  %24 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %realval29 = bitcast %union.v* %value28 to float*
  %25 = load float, float* %realval29, align 4, !tbaa !12
  %conv30 = fptosi float %25 to i64
  %conv31 = trunc i64 %conv30 to i32
  store i32 %conv31, i32* %ival, align 4, !tbaa !5
  %26 = load i32, i32* %ival, align 4, !tbaa !5
  %conv32 = sitofp i32 %26 to float
  %27 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %realval34 = bitcast %union.v* %value33 to float*
  %28 = load float, float* %realval34, align 4, !tbaa !12
  %cmp35 = fcmp une float %conv32, %28
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.27
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.27
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.else
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.38, %if.end
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %sw.epilog, %if.then
  %29 = load i32, i32* %ival, align 4, !tbaa !5
  %30 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %29, %30
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %31 = load i32, i32* %ival, align 4, !tbaa !5
  %32 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %cmp44 = icmp sgt i32 %31, %32
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.end.40
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %33, 1
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.46
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.50:                                       ; preds = %if.then.46
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %lor.lhs.false.43
  %34 = load i32, i32* %ival, align 4, !tbaa !5
  %35 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %34, i32* %35, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.else.50, %if.then.49, %sw.default, %sw.bb.39, %if.then.37, %if.then.26, %if.then.11
  %37 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @dict_int_param(%struct.ref_s* %pdict, i8* %kstr, i32 %minval, i32 %maxval, i32 %defaultval, i32* %pvalue) #0 {
entry:
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %defaultval.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !5
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !5
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %4 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %5 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  %6 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_null_param(%struct.ref_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -20, %cond.true ], [ %8, %cond.false ]
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @dict_uint_param(%struct.ref_s* %pdict, i8* %kstr, i32 %minval, i32 %maxval, i32 %defaultval, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %defaultval.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ival = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !5
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !5
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %4, i8* %5, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  store i32 %6, i32* %ival, align 4, !tbaa !5
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.else
  %7 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 11
  br i1 %cmp2, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !10
  %12 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval6 = bitcast %union.v* %value5 to i64*
  %13 = load i64, i64* %intval6, align 8, !tbaa !10
  %conv7 = trunc i64 %13 to i32
  %conv8 = zext i32 %conv7 to i64
  %cmp9 = icmp ne i64 %11, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %do.end
  %14 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %15 = load i64, i64* %intval14, align 8, !tbaa !10
  %conv15 = trunc i64 %15 to i32
  store i32 %conv15, i32* %ival, align 4, !tbaa !5
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.12, %if.then
  %16 = load i32, i32* %ival, align 4, !tbaa !5
  %17 = load i32, i32* %minval.addr, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %16, %17
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.16
  %18 = load i32, i32* %ival, align 4, !tbaa !5
  %19 = load i32, i32* %maxval.addr, align 4, !tbaa !5
  %cmp20 = icmp ugt i32 %18, %19
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.16
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %20, 1
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.22
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %if.then.22
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false.19
  %21 = load i32, i32* %ival, align 4, !tbaa !5
  %22 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %21, i32* %22, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.else.26, %if.then.25, %if.then.11, %if.then.4
  %24 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @dict_float_param(%struct.ref_s* %pdict, i8* %kstr, double %defaultval, float* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %defaultval.addr = alloca double, align 8
  %pvalue.addr = alloca float*, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store double %defaultval, double* %defaultval.addr, align 8, !tbaa !14
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load double, double* %defaultval.addr, align 8, !tbaa !14
  %conv = fptrunc double %4 to float
  %5 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %conv, float* %5, align 4, !tbaa !12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv2 = zext i8 %8 to i32
  switch i32 %conv2, label %sw.epilog [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !10
  %conv3 = sitofp i64 %10 to float
  %11 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %conv3, float* %11, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %realval = bitcast %union.v* %value5 to float*
  %13 = load float, float* %realval, align 4, !tbaa !12
  %14 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %13, float* %14, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.4, %sw.bb, %if.then
  %15 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @dict_int_array_check_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %len, i32* %ivec, i32 %under_error, i32 %over_error) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ivec.addr = alloca i32*, align 8
  %under_error.addr = alloca i32, align 4
  %over_error.addr = alloca i32, align 4
  %pa = alloca %struct.ref_s, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i32* %ivec, i32** %ivec.addr, align 8, !tbaa !1
  store i32 %under_error, i32* %under_error.addr, align 4, !tbaa !5
  store i32 %over_error, i32* %over_error.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s* %pa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %6, i8* %7, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !16
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 15360
  %cmp2 = icmp eq i32 %and, 1024
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !19
  store i32 %11, i32* %size, align 4, !tbaa !5
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %13 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp7 = icmp ugt i32 %12, %13
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %14 = load i32, i32* %over_error.addr, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %cmp11 = icmp ult i32 %15, %16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %conv13 = sext i32 %19 to i64
  %call14 = call i32 @array_get(%struct.gs_memory_s* %17, %struct.ref_s* %18, i64 %conv13, %struct.ref_s* %pa) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %20, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.body
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %22 = bitcast i16* %type_attrs20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv21 = zext i8 %23 to i32
  switch i32 %conv21, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end.18
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %24 = load i64, i64* %intval, align 8, !tbaa !10
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %25 = load i64, i64* %intval23, align 8, !tbaa !10
  %conv24 = trunc i64 %25 to i32
  %conv25 = sext i32 %conv24 to i64
  %cmp26 = icmp ne i64 %24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %sw.bb
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  %26 = load i64, i64* %intval31, align 8, !tbaa !10
  %conv32 = trunc i64 %26 to i32
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load i32*, i32** %ivec.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 %idxprom
  store i32 %conv32, i32* %arrayidx33, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.18
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %realval = bitcast %union.v* %value35 to float*
  %29 = load float, float* %realval, align 4, !tbaa !12
  %cmp36 = fcmp olt float %29, 0xC1E0000000000000
  br i1 %cmp36, label %if.then.52, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %sw.bb.34
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %realval40 = bitcast %union.v* %value39 to float*
  %30 = load float, float* %realval40, align 4, !tbaa !12
  %cmp41 = fcmp ogt float %30, 0x41E0000000000000
  br i1 %cmp41, label %if.then.52, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %realval45 = bitcast %union.v* %value44 to float*
  %31 = load float, float* %realval45, align 4, !tbaa !12
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %realval47 = bitcast %union.v* %value46 to float*
  %32 = load float, float* %realval47, align 4, !tbaa !12
  %conv48 = fptosi float %32 to i32
  %conv49 = sitofp i32 %conv48 to float
  %cmp50 = fcmp une float %31, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.38, %sw.bb.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %lor.lhs.false.43
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pa, i32 0, i32 1
  %realval55 = bitcast %union.v* %value54 to float*
  %33 = load float, float* %realval55, align 4, !tbaa !12
  %conv56 = fptosi float %33 to i32
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %34 to i64
  %35 = load i32*, i32** %ivec.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %35, i64 %idxprom57
  store i32 %conv56, i32* %arrayidx58, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.18
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.53, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %size, align 4, !tbaa !5
  %38 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %37, %38
  br i1 %cmp59, label %cond.true, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %for.end
  %39 = load i32, i32* %under_error.addr, align 4, !tbaa !5
  %cmp62 = icmp sge i32 %39, 0
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.61, %for.end
  %40 = load i32, i32* %size, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.61
  %41 = load i32, i32* %under_error.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default, %if.then.52, %if.then.28, %if.then.17, %if.then.9, %if.then.4, %if.then
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ref_s* %pa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_int_array_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %maxlen, i32* %ivec) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %ivec.addr = alloca i32*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  store i32* %ivec, i32** %ivec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %4 = load i32*, i32** %ivec.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_array_check_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 %3, i32* %4, i32 0, i32 -13) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dict_ints_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %len, i32* %ivec) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ivec.addr = alloca i32*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i32* %ivec, i32** %ivec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %4 = load i32*, i32** %ivec.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_array_check_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 %3, i32* %4, i32 -15, i32 -15) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dict_float_array_check_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %len, float* %fvec, float* %defaultvec, i32 %under_error, i32 %over_error) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %fvec.addr = alloca float*, align 8
  %defaultvec.addr = alloca float*, align 8
  %under_error.addr = alloca i32, align 4
  %over_error.addr = alloca i32, align 4
  %pdval = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store float* %fvec, float** %fvec.addr, align 8, !tbaa !1
  store float* %defaultvec, float** %defaultvec.addr, align 8, !tbaa !1
  store i32 %under_error, i32* %under_error.addr, align 4, !tbaa !5
  store i32 %over_error, i32* %over_error.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %4, i8* %5, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load float*, float** %defaultvec.addr, align 8, !tbaa !1
  %cmp2 = icmp eq float* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load float*, float** %fvec.addr, align 8, !tbaa !1
  %8 = bitcast float* %7 to i8*
  %9 = load float*, float** %defaultvec.addr, align 8, !tbaa !1
  %10 = bitcast float* %9 to i8*
  %11 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 4
  %call4 = call i8* @memcpy(i8* %8, i8* %10, i64 %mul) #6
  %12 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %13 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !16
  %conv6 = zext i16 %14 to i32
  %and = and i32 %conv6, 15360
  %cmp7 = icmp eq i32 %and, 1024
  br i1 %cmp7, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %15 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !19
  store i32 %16, i32* %size, align 4, !tbaa !5
  %17 = load i32, i32* %over_error.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %19 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp14 = icmp ugt i32 %18, %19
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %over_error.addr, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %land.lhs.true, %if.end.10
  %21 = load i32, i32* %size, align 4, !tbaa !5
  %22 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %21, %22
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %23 = load i32, i32* %size, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %24 = load i32, i32* %len.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, i32* %size, align 4, !tbaa !5
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %28 = load float*, float** %fvec.addr, align 8, !tbaa !1
  %call20 = call i32 @process_float_array(%struct.gs_memory_s* %25, %struct.ref_s* %26, i32 %27, float* %28) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %29, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end
  %30 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.34

cond.false.24:                                    ; preds = %cond.end
  %31 = load i32, i32* %size, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %31, %32
  br i1 %cmp25, label %cond.true.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %cond.false.24
  %33 = load i32, i32* %under_error.addr, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %33, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %lor.lhs.false.27, %cond.false.24
  %34 = load i32, i32* %size, align 4, !tbaa !5
  br label %cond.end.32

cond.false.31:                                    ; preds = %lor.lhs.false.27
  %35 = load i32, i32* %under_error.addr, align 4, !tbaa !5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %34, %cond.true.30 ], [ %35, %cond.false.31 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.23
  %cond35 = phi i32 [ %30, %cond.true.23 ], [ %cond33, %cond.end.32 ]
  store i32 %cond35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.34, %if.then.16, %if.then.9, %if.end, %if.then.3
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @process_float_array(%struct.gs_memory_s*, %struct.ref_s*, i32, float*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_float_array_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %maxlen, float* %fvec, float* %defaultvec) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %fvec.addr = alloca float*, align 8
  %defaultvec.addr = alloca float*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  store float* %fvec, float** %fvec.addr, align 8, !tbaa !1
  store float* %defaultvec, float** %defaultvec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %4 = load float*, float** %fvec.addr, align 8, !tbaa !1
  %5 = load float*, float** %defaultvec.addr, align 8, !tbaa !1
  %call = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 %3, float* %4, float* %5, i32 0, i32 -13) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dict_floats_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, i32 %maxlen, float* %fvec, float* %defaultvec) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %fvec.addr = alloca float*, align 8
  %defaultvec.addr = alloca float*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  store float* %fvec, float** %fvec.addr, align 8, !tbaa !1
  store float* %defaultvec, float** %defaultvec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %4 = load float*, float** %fvec.addr, align 8, !tbaa !1
  %5 = load float*, float** %defaultvec.addr, align 8, !tbaa !1
  %call = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %0, %struct.ref_s* %1, i8* %2, i32 %3, float* %4, float* %5, i32 -15, i32 -15) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dict_floats_param_errorinfo(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pdict, i8* %kstr, i32 %maxlen, float* %fvec, float* %defaultvec) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %fvec.addr = alloca float*, align 8
  %defaultvec.addr = alloca float*, align 8
  %val = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  store float* %fvec, float** %fvec.addr, align 8, !tbaa !1
  store float* %defaultvec, float** %defaultvec.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %5 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %8 = load float*, float** %fvec.addr, align 8, !tbaa !1
  %9 = load float*, float** %defaultvec.addr, align 8, !tbaa !1
  %call = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %4, %struct.ref_s* %5, i8* %6, i32 %7, float* %8, float* %9, i32 -15, i32 -15) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %11, i8* %12, %struct.ref_s** %val) #5
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %15) #7
  %conv = trunc i64 %call4 to i32
  %16 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %call5 = call i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s* %13, i8* %14, i32 %conv, %struct.ref_s* %16) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s* %i_ctx_p, i8* %key, i32 %len, %struct.ref_s* %any) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %any.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pair = alloca %struct.ref_s, align 8
  %aptr = alloca %struct.ref_s*, align 8
  %key_name = alloca %struct.ref_s, align 8
  %pderror = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store %struct.ref_s* %any, %struct.ref_s** %any.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %pair to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s* %key_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pderror to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !29
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !34
  %10 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %11 = load i32, i32* %len.addr, align 4, !tbaa !5
  %call = call i32 @names_ref(%struct.name_table_s* %9, i8* %10, i32 %11, %struct.ref_s* %key_name, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %local5 = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 3
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local5, align 8, !tbaa !29
  %call6 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %15, %struct.ref_s* %pair, i32 96, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pair, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %18, %struct.ref_s** %aptr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %20 = bitcast %struct.ref_s* %19 to i8*
  %21 = bitcast %struct.ref_s* %key_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false), !tbaa.struct !36
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 5
  %23 = load i32, i32* %new_mask, align 4, !tbaa !37
  %24 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %25 = load i16, i16* %type_attrs, align 2, !tbaa !16
  %conv = zext i16 %25 to i32
  %or = or i32 %conv, %23
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %type_attrs, align 2, !tbaa !16
  %26 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  %27 = load %struct.ref_s*, %struct.ref_s** %any.addr, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %add.ptr to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !36
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %new_mask13 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory12, i32 0, i32 5
  %31 = load i32, i32* %new_mask13, align 4, !tbaa !37
  %32 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %33 = load i16, i16* %type_attrs16, align 2, !tbaa !16
  %conv17 = zext i16 %33 to i32
  %or18 = or i32 %conv17, %31
  %conv19 = trunc i32 %or18 to i16
  store i16 %conv19, i16* %type_attrs16, align 2, !tbaa !16
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call20 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pderror) #5
  %cmp21 = icmp sle i32 %call20, 0
  br i1 %cmp21, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %35 = load %struct.ref_s*, %struct.ref_s** %pderror, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %36 = bitcast i16* %type_attrs24 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv25 = zext i8 %37 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %lor.lhs.false.28, label %if.then.33

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %38 = load %struct.ref_s*, %struct.ref_s** %pderror, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 24
  %call30 = call i32 @dict_put_string(%struct.ref_s* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* %pair, %struct.dict_stack_s* %dict_stack29) #5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %if.end.9
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %lor.lhs.false.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.8, %if.then
  %40 = bitcast %struct.ref_s** %pderror to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.ref_s* %key_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  %42 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s* %pair to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #1
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @dict_proc_param(%struct.ref_s* %pdict, i8* %kstr, %struct.ref_s* %pproc, i32 %defaultval) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %defaultval.addr = alloca i32, align 4
  %pdval = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1248, i16* %type_attrs, align 2, !tbaa !16
  %7 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !19
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  store i16 0, i16* %type_attrs5, align 2, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %9 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %10 = load i16, i16* %type_attrs8, align 2, !tbaa !16
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 15552
  %cmp9 = icmp eq i32 %and, 1216
  br i1 %cmp9, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %call12 = call i32 @check_proc_failed(%struct.ref_s* %11) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %12 to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.11, %if.end
  %16 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @dict_matrix_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pdict, i8* %kstr, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdval = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %pdval) #5
  %cmp1 = icmp sle i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pdval, align 8, !tbaa !1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call2 = call i32 @read_matrix(%struct.gs_memory_s* %4, %struct.ref_s* %5, %struct.gs_matrix_s* %6) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.ref_s** %pdval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_uid_param(%struct.ref_s* %pdict, %struct.gs_uid_s* %puid, i32 %defaultval, %struct.gs_memory_s* %mem, %struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  %defaultval.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %puniqueid = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %xvalues4 = alloca i64*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  store i32 %defaultval, i32* %defaultval.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %puniqueid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %2, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !38
  %3 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %3, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !40
  %4 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 2
  %6 = load i32, i32* %language_level, align 4, !tbaa !41
  %cmp1 = icmp sge i32 %6, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %puniqueid) #5
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.38

if.then.3:                                        ; preds = %land.lhs.true
  %8 = bitcast i64** %xvalues4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv, 4
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.3
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.8:                                         ; preds = %if.then.3
  %14 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !19
  store i32 %15, i32* %size, align 4, !tbaa !5
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.13:                                        ; preds = %if.end.8
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %18 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !42
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i32, i32* %size, align 4, !tbaa !5
  %call14 = call i8* %18(%struct.gs_memory_s* %19, i32 %20, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %21 = bitcast i8* %call14 to i64*
  store i64* %21, i64** %xvalues4, align 8, !tbaa !1
  %22 = load i64*, i64** %xvalues4, align 8, !tbaa !1
  %cmp15 = icmp eq i64* %22, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.18:                                        ; preds = %if.end.13
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %size, align 4, !tbaa !5
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %27 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %30 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %31 to i32
  %cmp25 = icmp eq i32 %conv24, 11
  br i1 %cmp25, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %for.body
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load i64*, i64** %xvalues4, align 8, !tbaa !1
  %36 = bitcast i64* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.body
  %37 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %intval = bitcast %union.v* %value30 to i64*
  %38 = load i64, i64* %intval, align 8, !tbaa !10
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %39 to i64
  %40 = load i64*, i64** %xvalues4, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i64, i64* %40, i64 %idxprom
  store i64 %38, i64* %arrayidx31, align 8, !tbaa !10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.27
  %41 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %size, align 4, !tbaa !5
  %conv32 = zext i32 %43 to i64
  %sub = sub nsw i64 0, %conv32
  %44 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id33 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %44, i32 0, i32 0
  store i64 %sub, i64* %id33, align 8, !tbaa !38
  %45 = load i64*, i64** %xvalues4, align 8, !tbaa !1
  %46 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues34 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %46, i32 0, i32 1
  store i64* %45, i64** %xvalues34, align 8, !tbaa !40
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %for.end, %cleanup, %if.then.17, %if.then.12, %if.then.7
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i64** %xvalues4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %cleanup.77

if.end.38:                                        ; preds = %land.lhs.true, %if.end
  %50 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call39 = call i32 @dict_find_string(%struct.ref_s* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %puniqueid) #5
  %cmp40 = icmp sle i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.38
  %51 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id43 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %51, i32 0, i32 0
  store i64 9223372036854775807, i64* %id43, align 8, !tbaa !38
  %52 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues44 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %52, i32 0, i32 1
  store i64* null, i64** %xvalues44, align 8, !tbaa !40
  %53 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.else:                                          ; preds = %if.end.38
  %54 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %55 = bitcast i16* %type_attrs46 to i8*
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %56 to i32
  %cmp49 = icmp eq i32 %conv48, 11
  br i1 %cmp49, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.52:                                        ; preds = %if.else
  %57 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %intval54 = bitcast %union.v* %value53 to i64*
  %58 = load i64, i64* %intval54, align 8, !tbaa !10
  %cmp55 = icmp slt i64 %58, 0
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %59 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  %60 = load i64, i64* %intval58, align 8, !tbaa !10
  %cmp59 = icmp sgt i64 %60, 16777215
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %if.end.52
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.62:                                        ; preds = %lor.lhs.false
  %61 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %intval64 = bitcast %union.v* %value63 to i64*
  %62 = load i64, i64* %intval64, align 8, !tbaa !10
  %cmp65 = icmp eq i64 %62, 0
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.end.62
  %63 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id68 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %63, i32 0, i32 0
  store i64 9223372036854775807, i64* %id68, align 8, !tbaa !38
  %64 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues69 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %64, i32 0, i32 1
  store i64* null, i64** %xvalues69, align 8, !tbaa !40
  %65 = load i32, i32* %defaultval.addr, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.else.70:                                       ; preds = %if.end.62
  %66 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %intval72 = bitcast %union.v* %value71 to i64*
  %67 = load i64, i64* %intval72, align 8, !tbaa !10
  %68 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id73 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %68, i32 0, i32 0
  store i64 %67, i64* %id73, align 8, !tbaa !38
  %69 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues74 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %69, i32 0, i32 1
  store i64* null, i64** %xvalues74, align 8, !tbaa !40
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %if.end.76, %if.then.67, %if.then.61, %if.then.51, %if.then.42, %cleanup.35, %if.then
  %70 = bitcast %struct.ref_s** %puniqueid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @dict_check_uid_param(%struct.ref_s* %pdict, %struct.gs_uid_s* %puid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdict.addr = alloca %struct.ref_s*, align 8
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  %puniqueid = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %puniqueid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %1, i32 0, i32 0
  %2 = load i64, i64* %id, align 8, !tbaa !38
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %4, i32 0, i32 0
  %5 = load i64, i64* %id1, align 8, !tbaa !38
  %sub = sub nsw i64 0, %5
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %puniqueid) #5
  %cmp2 = icmp sle i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end:                                           ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 4
  br i1 %cmp6, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !19
  %13 = load i32, i32* %size, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %12, %13
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.12:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %size, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %14, %15
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %21 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv18, 11
  br i1 %cmp19, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.body
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %intval = bitcast %union.v* %value23 to i64*
  %24 = load i64, i64* %intval, align 8, !tbaa !10
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %25 to i64
  %26 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %26, i32 0, i32 1
  %27 = load i64*, i64** %xvalues, align 8, !tbaa !40
  %arrayidx24 = getelementptr inbounds i64, i64* %27, i64 %idxprom
  %28 = load i64, i64* %arrayidx24, align 8, !tbaa !10
  %cmp25 = icmp ne i64 %24, %28
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.21
  %29 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %for.end, %cleanup, %if.then.11, %if.then.4
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %cleanup.47

if.else:                                          ; preds = %entry
  %33 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call31 = call i32 @dict_find_string(%struct.ref_s* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %puniqueid) #5
  %cmp32 = icmp sle i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.35:                                        ; preds = %if.else
  %34 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %35 = bitcast i16* %type_attrs37 to i8*
  %arrayidx38 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %36 to i32
  %cmp40 = icmp eq i32 %conv39, 11
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.35
  %37 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  %38 = load i64, i64* %intval43, align 8, !tbaa !10
  %39 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id44 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %39, i32 0, i32 0
  %40 = load i64, i64* %id44, align 8, !tbaa !38
  %cmp45 = icmp eq i64 %38, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.35
  %41 = phi i1 [ false, %if.end.35 ], [ %cmp45, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %land.end, %if.then.34, %cleanup.29
  %42 = bitcast %struct.ref_s** %puniqueid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

; Function Attrs: nounwind uwtable
define void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i8* %key) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %key.addr = alloca i8*, align 8
  %val = alloca %struct.ref_s*, align 8
  %n = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %2, i8* %3, %struct.ref_s** %val) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !16
  store %struct.ref_s* %n, %struct.ref_s** %val, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call1 to i32
  %7 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %call2 = call i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s* %4, i8* %5, i32 %conv, %struct.ref_s* %7) #5
  %8 = bitcast %struct.ref_s* %n to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #1
  %9 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !3, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"ref_s", !18, i64 0, !3, i64 8}
!18 = !{!"tas_s", !9, i64 0, !9, i64 2, !6, i64 4}
!19 = !{!17, !6, i64 4}
!20 = !{!21, !2, i64 8}
!21 = !{!"gs_context_state_s", !2, i64 0, !22, i64 8, !6, i64 80, !17, i64 88, !17, i64 104, !11, i64 120, !11, i64 128, !11, i64 136, !6, i64 144, !6, i64 148, !17, i64 152, !17, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !24, i64 264, !24, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !25, i64 368, !27, i64 520, !28, i64 624, !2, i64 720}
!22 = !{!"gs_dual_memory_s", !2, i64 0, !23, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!23 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!24 = !{!"op_array_table_s", !17, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!25 = !{!"dict_stack_s", !26, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !17, i64 136}
!26 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !17, i64 24, !6, i64 40, !6, i64 44, !17, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!27 = !{!"exec_stack_s", !26, i64 0, !2, i64 96}
!28 = !{!"op_stack_s", !26, i64 0}
!29 = !{!30, !2, i64 24}
!30 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!31 = !{!32, !2, i64 192}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!35, !2, i64 120}
!35 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!36 = !{i64 0, i64 2, !8, i64 2, i64 2, !8, i64 4, i64 4, !5, i64 8, i64 8, !10, i64 8, i64 2, !8, i64 8, i64 4, !12, i64 8, i64 8, !10, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !10}
!37 = !{!22, !6, i64 68}
!38 = !{!39, !11, i64 0}
!39 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!40 = !{!39, !2, i64 8}
!41 = !{!21, !6, i64 80}
!42 = !{!32, !2, i64 88}
!43 = !{!32, !2, i64 24}
