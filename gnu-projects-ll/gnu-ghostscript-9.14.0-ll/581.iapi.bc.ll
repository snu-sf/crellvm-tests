; ModuleID = './iapi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vd_trace_interface_s = type opaque
%struct.gsapi_revision_s = type { i8*, i8*, i64, i64 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.display_callback_s = type opaque
%struct.gs_context_state_s = type opaque

@gs_product = external constant i8*, align 8
@gs_copyright = external constant i8*, align 8
@gs_revision = external constant i64, align 8
@gs_revisiondate = external constant i64, align 8
@gsapi_instance_counter = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gsapi_run_file\00", align 1
@vd_trace0 = external global %struct.vd_trace_interface_s*, align 8

; Function Attrs: nounwind uwtable
define i32 @gsapi_revision(%struct.gsapi_revision_s* %pr, i32 %rvsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.gsapi_revision_s*, align 8
  %rvsize.addr = alloca i32, align 4
  store %struct.gsapi_revision_s* %pr, %struct.gsapi_revision_s** %pr.addr, align 8, !tbaa !1
  store i32 %rvsize, i32* %rvsize.addr, align 4, !tbaa !5
  %0 = load i32, i32* %rvsize.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %2 = load %struct.gsapi_revision_s*, %struct.gsapi_revision_s** %pr.addr, align 8, !tbaa !1
  %product = getelementptr inbounds %struct.gsapi_revision_s, %struct.gsapi_revision_s* %2, i32 0, i32 0
  store i8* %1, i8** %product, align 8, !tbaa !7
  %3 = load i8*, i8** @gs_copyright, align 8, !tbaa !1
  %4 = load %struct.gsapi_revision_s*, %struct.gsapi_revision_s** %pr.addr, align 8, !tbaa !1
  %copyright = getelementptr inbounds %struct.gsapi_revision_s, %struct.gsapi_revision_s* %4, i32 0, i32 1
  store i8* %3, i8** %copyright, align 8, !tbaa !10
  %5 = load i64, i64* @gs_revision, align 8, !tbaa !11
  %6 = load %struct.gsapi_revision_s*, %struct.gsapi_revision_s** %pr.addr, align 8, !tbaa !1
  %revision = getelementptr inbounds %struct.gsapi_revision_s, %struct.gsapi_revision_s* %6, i32 0, i32 2
  store i64 %5, i64* %revision, align 8, !tbaa !12
  %7 = load i64, i64* @gs_revisiondate, align 8, !tbaa !11
  %8 = load %struct.gsapi_revision_s*, %struct.gsapi_revision_s** %pr.addr, align 8, !tbaa !1
  %revisiondate = getelementptr inbounds %struct.gsapi_revision_s, %struct.gsapi_revision_s* %8, i32 0, i32 3
  store i64 %7, i64* %revisiondate, align 8, !tbaa !13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gsapi_new_instance(i8** %pinstance, i8* %caller_handle) #0 {
entry:
  %retval = alloca i32, align 4
  %pinstance.addr = alloca i8**, align 8
  %caller_handle.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %pinstance, i8*** %pinstance.addr, align 8, !tbaa !1
  store i8* %caller_handle, i8** %caller_handle.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %1 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_main_instance_s* null, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %2 = load i8**, i8*** %pinstance.addr, align 8, !tbaa !1
  %cmp = icmp eq i8** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @gsapi_instance_counter, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* @gsapi_instance_counter, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @gsapi_instance_counter, align 4, !tbaa !5
  %5 = load i8**, i8*** %pinstance.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %call = call %struct.gs_memory_s* @gs_malloc_init() #4
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  br label %if.end.7

if.else:                                          ; preds = %if.end.3
  %call6 = call %struct.gs_memory_s* @gs_malloc_init() #4
  store %struct.gs_memory_s* %call6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_memory_s* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.7
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call11 = call %struct.gs_main_instance_s* @gs_main_alloc_instance(%struct.gs_memory_s* %8) #4
  store %struct.gs_main_instance_s* %call11, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %9 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gs_main_instance_s* %9, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_malloc_release(%struct.gs_memory_s* %10) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %12 = bitcast %struct.gs_main_instance_s* %11 to i8*
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !14
  %top_of_system = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 15
  store i8* %12, i8** %top_of_system, align 8, !tbaa !17
  %15 = load i8*, i8** %caller_handle.addr, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 2
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx15, align 8, !tbaa !14
  %caller_handle16 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 8
  store i8* %15, i8** %caller_handle16, align 8, !tbaa !19
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx17, align 8, !tbaa !14
  %custom_color_callback = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 9
  store i8* null, i8** %custom_color_callback, align 8, !tbaa !20
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 2
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx18, align 8, !tbaa !14
  %stdin_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %21, i32 0, i32 10
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stdin_fn, align 8, !tbaa !21
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 2
  %23 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx19, align 8, !tbaa !14
  %stdout_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %23, i32 0, i32 11
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stdout_fn, align 8, !tbaa !22
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 2
  %25 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx20, align 8, !tbaa !14
  %stderr_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %25, i32 0, i32 12
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stderr_fn, align 8, !tbaa !23
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 2
  %27 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx21, align 8, !tbaa !14
  %poll_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %27, i32 0, i32 13
  store i32 (i8*)* null, i32 (i8*)** %poll_fn, align 8, !tbaa !24
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 2
  %29 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx22, align 8, !tbaa !14
  %30 = bitcast %struct.gs_lib_ctx_s* %29 to i8*
  %31 = load i8**, i8*** %pinstance.addr, align 8, !tbaa !1
  store i8* %30, i8** %31, align 8, !tbaa !1
  %32 = load i8**, i8*** %pinstance.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %32, align 8, !tbaa !1
  %call23 = call i32 @gsapi_set_arg_encoding(i8* %33, i32 0) #4
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.2, %if.then
  %34 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_memory_s* @gs_malloc_init() #2

declare %struct.gs_main_instance_s* @gs_main_alloc_instance(%struct.gs_memory_s*) #2

declare void @gs_malloc_release(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_set_arg_encoding(i8* %lib, i32 %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %encoding.addr = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 %encoding, i32* %encoding.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %encoding.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %6) #4
  call void @gs_main_inst_arg_decode(%struct.gs_main_instance_s* %call, i32 (%struct._IO_FILE*, i8**)* null) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %encoding.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !25
  %call7 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %9) #4
  call void @gs_main_inst_arg_decode(%struct.gs_main_instance_s* %call7, i32 (%struct._IO_FILE*, i8**)* null) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %10 = load i32, i32* %encoding.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %10, 2
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !25
  %call12 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %12) #4
  call void @gs_main_inst_arg_decode(%struct.gs_main_instance_s* %call12, i32 (%struct._IO_FILE*, i8**)* @utf16le_get_codepoint) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.10, %if.then.5, %if.then.2, %if.then
  %13 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gsapi_delete_instance(i8* %lib) #0 {
entry:
  %lib.addr = alloca i8*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_lib_ctx_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %6) #4
  store %struct.gs_main_instance_s* %call, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %caller_handle = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 8
  store i8* null, i8** %caller_handle, align 8, !tbaa !19
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stdin_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 10
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stdin_fn, align 8, !tbaa !21
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stdout_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 11
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stdout_fn, align 8, !tbaa !22
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stderr_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 12
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %stderr_fn, align 8, !tbaa !23
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %poll_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 13
  store i32 (i8*)* null, i32 (i8*)** %poll_fn, align 8, !tbaa !24
  %12 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %display = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %12, i32 0, i32 13
  store %struct.display_callback_s* null, %struct.display_callback_s** %display, align 8, !tbaa !26
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !32
  call void @gs_malloc_release(%struct.gs_memory_s* %14) #4
  %15 = load i32, i32* @gsapi_instance_counter, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @gsapi_instance_counter, align 4, !tbaa !5
  %16 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

declare %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_set_stdio(i8* %lib, i32 (i8*, i8*, i32)* %stdin_fn, i32 (i8*, i8*, i32)* %stdout_fn, i32 (i8*, i8*, i32)* %stderr_fn) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %stdin_fn.addr = alloca i32 (i8*, i8*, i32)*, align 8
  %stdout_fn.addr = alloca i32 (i8*, i8*, i32)*, align 8
  %stderr_fn.addr = alloca i32 (i8*, i8*, i32)*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32)* %stdin_fn, i32 (i8*, i8*, i32)** %stdin_fn.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32)* %stdout_fn, i32 (i8*, i8*, i32)** %stdout_fn.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32)* %stderr_fn, i32 (i8*, i8*, i32)** %stderr_fn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdin_fn.addr, align 8, !tbaa !1
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stdin_fn1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 10
  store i32 (i8*, i8*, i32)* %4, i32 (i8*, i8*, i32)** %stdin_fn1, align 8, !tbaa !21
  %6 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdout_fn.addr, align 8, !tbaa !1
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stdout_fn2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 11
  store i32 (i8*, i8*, i32)* %6, i32 (i8*, i8*, i32)** %stdout_fn2, align 8, !tbaa !22
  %8 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stderr_fn.addr, align 8, !tbaa !1
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stderr_fn3 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 12
  store i32 (i8*, i8*, i32)* %8, i32 (i8*, i8*, i32)** %stderr_fn3, align 8, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gsapi_set_poll(i8* %lib, i32 (i8*)* %poll_fn) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %poll_fn.addr = alloca i32 (i8*)*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 (i8*)* %poll_fn, i32 (i8*)** %poll_fn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32 (i8*)*, i32 (i8*)** %poll_fn.addr, align 8, !tbaa !1
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %poll_fn1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 13
  store i32 (i8*)* %4, i32 (i8*)** %poll_fn1, align 8, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gsapi_set_display_callback(i8* %lib, %struct.display_callback_s* %callback) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %callback.addr = alloca %struct.display_callback_s*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store %struct.display_callback_s* %callback, %struct.display_callback_s** %callback.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.display_callback_s*, %struct.display_callback_s** %callback.addr, align 8, !tbaa !1
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %6) #4
  %display = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call, i32 0, i32 13
  store %struct.display_callback_s* %4, %struct.display_callback_s** %display, align 8, !tbaa !26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @gs_main_inst_arg_decode(%struct.gs_main_instance_s*, i32 (%struct._IO_FILE*, i8**)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @utf16le_get_codepoint(%struct._IO_FILE* %file, i8** %astr) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %astr.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %rune = alloca i32, align 4
  %trail = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8** %astr, i8*** %astr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %trail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fgetc(%struct._IO_FILE* %4) #4
  store i32 %call, i32* %rune, align 4, !tbaa !5
  %5 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fgetc(%struct._IO_FILE* %6) #4
  store i32 %call2, i32* %c, align 4, !tbaa !5
  %7 = load i32, i32* %c, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %7, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %c, align 4, !tbaa !5
  %shl = shl i32 %8, 8
  %9 = load i32, i32* %rune, align 4, !tbaa !5
  %add = add nsw i32 %9, %shl
  store i32 %add, i32* %rune, align 4, !tbaa !5
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %10 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !33
  %conv = sext i8 %12 to i32
  %13 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !33
  %conv7 = sext i8 %15 to i32
  %shl8 = shl i32 %conv7, 8
  %or = or i32 %conv, %shl8
  store i32 %or, i32* %rune, align 4, !tbaa !5
  %16 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %17 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %17, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %add.ptr, i8** %17, align 8, !tbaa !1
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.5
  %19 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %19, 65279
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %do.cond

if.end.18:                                        ; preds = %if.end.14
  %20 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %20, 65534
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  %21 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %21, 55296
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %22 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %22, 57344
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.22
  %23 = load i32, i32* %rune, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %24, 56320
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  br label %do.cond

if.end.32:                                        ; preds = %if.end.28
  br label %lead

lead:                                             ; preds = %if.then.79, %if.end.32
  %25 = load i32, i32* %rune, align 4, !tbaa !5
  %sub = sub nsw i32 %25, 55296
  store i32 %sub, i32* %rune, align 4, !tbaa !5
  %26 = load i32, i32* %rune, align 4, !tbaa !5
  %shl33 = shl i32 %26, 10
  store i32 %shl33, i32* %rune, align 4, !tbaa !5
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %tobool34 = icmp ne %struct._IO_FILE* %27, null
  br i1 %tobool34, label %if.then.35, label %if.else.48

if.then.35:                                       ; preds = %lead
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call36 = call i32 @fgetc(%struct._IO_FILE* %28) #4
  store i32 %call36, i32* %trail, align 4, !tbaa !5
  %29 = load i32, i32* %trail, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %29, -1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.then.35
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call41 = call i32 @fgetc(%struct._IO_FILE* %30) #4
  store i32 %call41, i32* %c, align 4, !tbaa !5
  %31 = load i32, i32* %c, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %31, -1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.40
  %32 = load i32, i32* %c, align 4, !tbaa !5
  %shl46 = shl i32 %32, 8
  %33 = load i32, i32* %trail, align 4, !tbaa !5
  %add47 = add nsw i32 %33, %shl46
  store i32 %add47, i32* %trail, align 4, !tbaa !5
  br label %if.end.61

if.else.48:                                       ; preds = %lead
  %34 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %34, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx49, align 1, !tbaa !33
  %conv50 = sext i8 %36 to i32
  %37 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %37, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx51, align 1, !tbaa !33
  %conv52 = sext i8 %39 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %conv50, %shl53
  store i32 %or54, i32* %trail, align 4, !tbaa !5
  %40 = load i32, i32* %trail, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %40, 0
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.else.48
  %41 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %41, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr58, i8** %41, align 8, !tbaa !1
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.48
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.45
  %43 = load i32, i32* %trail, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %43, 55296
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.end.61
  %44 = load i32, i32* %trail, align 4, !tbaa !5
  %cmp65 = icmp sge i32 %44, 57344
  br i1 %cmp65, label %if.then.67, label %if.end.76

if.then.67:                                       ; preds = %lor.lhs.false.64, %if.end.61
  %45 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %45, 65279
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  br label %do.cond

if.end.71:                                        ; preds = %if.then.67
  %46 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp72 = icmp eq i32 %46, 65534
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.71
  %47 = load i32, i32* %trail, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %lor.lhs.false.64
  %48 = load i32, i32* %trail, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %48, 56320
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  %49 = load i32, i32* %trail, align 4, !tbaa !5
  store i32 %49, i32* %rune, align 4, !tbaa !5
  br label %lead

if.end.80:                                        ; preds = %if.end.76
  br label %do.end

do.cond:                                          ; preds = %if.then.70, %if.then.31, %if.then.17
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.80
  %50 = load i32, i32* %rune, align 4, !tbaa !5
  %51 = load i32, i32* %trail, align 4, !tbaa !5
  %sub81 = sub nsw i32 %51, 56320
  %add82 = add nsw i32 %50, %sub81
  %add83 = add nsw i32 %add82, 65536
  store i32 %add83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.75, %if.then.74, %if.else.59, %if.then.44, %if.then.39, %if.then.27, %if.then.21, %if.else.12, %if.then.4, %if.then.1
  %52 = bitcast i32* %trail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define i32 @gsapi_init_with_args(i8* %lib, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !5
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %5) #4
  %6 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %7 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_init_with_args(%struct.gs_main_instance_s* %call, i32 %6, i8** %7) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @gs_main_init_with_args(%struct.gs_main_instance_s*, i32, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_string_begin(i8* %lib, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %5) #4
  %6 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %7 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call2 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %9) #4
  %error_object = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call2, i32 0, i32 11
  %call3 = call i32 @gs_main_run_string_begin(%struct.gs_main_instance_s* %call, i32 %6, i32* %7, %struct.ref_s* %error_object) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gs_main_run_string_begin(%struct.gs_main_instance_s*, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_string_continue(i8* %lib, i8* %str, i32 %length, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %5) #4
  %6 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %7 = load i32, i32* %length.addr, align 4, !tbaa !5
  %8 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %9 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call2 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %11) #4
  %error_object = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call2, i32 0, i32 11
  %call3 = call i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %call, i8* %6, i32 %7, i32 %8, i32* %9, %struct.ref_s* %error_object) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_main_run_string_continue(%struct.gs_main_instance_s*, i8*, i32, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_string_end(i8* %lib, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %5) #4
  %6 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %7 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call2 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %9) #4
  %error_object = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call2, i32 0, i32 11
  %call3 = call i32 @gs_main_run_string_end(%struct.gs_main_instance_s* %call, i32 %6, i32* %7, %struct.ref_s* %error_object) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gs_main_run_string_end(%struct.gs_main_instance_s*, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_string_with_length(i8* %lib, i8* %str, i32 %length, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %5) #4
  %6 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %7 = load i32, i32* %length.addr, align 4, !tbaa !5
  %8 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %9 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call2 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %11) #4
  %error_object = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call2, i32 0, i32 11
  %call3 = call i32 @gs_main_run_string_with_length(%struct.gs_main_instance_s* %call, i8* %6, i32 %7, i32 %8, i32* %9, %struct.ref_s* %error_object) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_main_run_string_with_length(%struct.gs_main_instance_s*, i8*, i32, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_string(i8* %lib, i8* %str, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %lib.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %4) #4
  %5 = bitcast %struct.gs_main_instance_s* %call to i8*
  %6 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %7) #5
  %conv = trunc i64 %call1 to i32
  %8 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %9 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %call2 = call i32 @gsapi_run_string_with_length(i8* %5, i8* %6, i32 %conv, i32 %8, i32* %9) #4
  %10 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call2
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gsapi_run_file(i8* %lib, i8* %file_name, i32 %user_errors, i32* %pexit_code) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %file_name.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %d = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %c = alloca i8*, align 8
  %dummy = alloca [6 x i8], align 1
  %rune = alloca i32, align 4
  %code = alloca i32, align 4
  %len = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !5
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  %0 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  store i8* %3, i8** %c, align 8, !tbaa !1
  %4 = bitcast [6 x i8]* %dummy to i8*
  call void @llvm.lifetime.start(i64 6, i8* %4) #1
  %5 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %10, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %11 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %14) #4
  store %struct.gs_main_instance_s* %call, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  store i32 1, i32* %len, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %get_codepoint = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %15, i32 0, i32 12
  %16 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint, align 8, !tbaa !34
  %call1 = call i32 %16(%struct._IO_FILE* null, i8** %c) #4
  store i32 %call1, i32* %rune, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %dummy, i32 0, i32 0
  %17 = load i32, i32* %rune, align 4, !tbaa !5
  %call3 = call i32 @codepoint_to_utf8(i8* %arraydecay, i32 %17) #4
  %18 = load i32, i32* %len, align 4, !tbaa !5
  %add = add nsw i32 %18, %call3
  store i32 %add, i32* %len, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %21 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !35
  %22 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %22, i32 0, i32 0
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !25
  %24 = load i32, i32* %len, align 4, !tbaa !5
  %call6 = call i8* %21(%struct.gs_memory_s* %23, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call6, i8** %temp, align 8, !tbaa !1
  %25 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %25, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.end
  %26 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  store i8* %26, i8** %c, align 8, !tbaa !1
  %27 = load i8*, i8** %temp, align 8, !tbaa !1
  store i8* %27, i8** %d, align 8, !tbaa !1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.14, %if.end.9
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %get_codepoint11 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %28, i32 0, i32 12
  %29 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint11, align 8, !tbaa !34
  %call12 = call i32 %29(%struct._IO_FILE* null, i8** %c) #4
  store i32 %call12, i32* %rune, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %while.body.14, label %while.end.16

while.body.14:                                    ; preds = %while.cond.10
  %30 = load i8*, i8** %d, align 8, !tbaa !1
  %31 = load i32, i32* %rune, align 4, !tbaa !5
  %call15 = call i32 @codepoint_to_utf8(i8* %30, i32 %31) #4
  %32 = load i8*, i8** %d, align 8, !tbaa !1
  %idx.ext = sext i32 %call15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8, !tbaa !1
  br label %while.cond.10

while.end.16:                                     ; preds = %while.cond.10
  %33 = load i8*, i8** %d, align 8, !tbaa !1
  store i8 0, i8* %33, align 1, !tbaa !33
  %34 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %35 = load i8*, i8** %temp, align 8, !tbaa !1
  %36 = load i32, i32* %user_errors.addr, align 4, !tbaa !5
  %37 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %38 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %38, i32 0, i32 11
  %call17 = call i32 @gs_main_run_file(%struct.gs_main_instance_s* %34, i8* %35, i32 %36, i32* %37, %struct.ref_s* %error_object) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %39 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %39, i32 0, i32 0
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !25
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !36
  %42 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !25
  %44 = load i8*, i8** %temp, align 8, !tbaa !1
  call void %41(%struct.gs_memory_s* %43, i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #4
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.16, %if.then.8, %if.then
  %46 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast [6 x i8]* %dummy to i8*
  call void @llvm.lifetime.end(i64 6, i8* %51) #1
  %52 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @codepoint_to_utf8(i8*, i32) #2

declare i32 @gs_main_run_file(%struct.gs_main_instance_s*, i8*, i32, i32*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsapi_exit(i8* %lib) #0 {
entry:
  %retval = alloca i32, align 4
  %lib.addr = alloca i8*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %lib, i8** %lib.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %3 = load i8*, i8** %lib.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call = call i32 @gs_to_exit(%struct.gs_memory_s* %5, i32 0) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_to_exit(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define void @gsapi_set_visual_tracer(%struct.vd_trace_interface_s* %I) #0 {
entry:
  %I.addr = alloca %struct.vd_trace_interface_s*, align 8
  store %struct.vd_trace_interface_s* %I, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !1
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !1
  store %struct.vd_trace_interface_s* %0, %struct.vd_trace_interface_s** @vd_trace0, align 8, !tbaa !1
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gsapi_revision_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"long", !3, i64 0}
!10 = !{!8, !2, i64 8}
!11 = !{!9, !9, i64 0}
!12 = !{!8, !9, i64 16}
!13 = !{!8, !9, i64 24}
!14 = !{!15, !2, i64 192}
!15 = !{!"gs_memory_s", !2, i64 0, !16, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!16 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!17 = !{!18, !2, i64 112}
!18 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!19 = !{!18, !2, i64 56}
!20 = !{!18, !2, i64 64}
!21 = !{!18, !2, i64 72}
!22 = !{!18, !2, i64 80}
!23 = !{!18, !2, i64 88}
!24 = !{!18, !2, i64 96}
!25 = !{!18, !2, i64 0}
!26 = !{!27, !2, i64 152}
!27 = !{!"gs_main_instance_s", !2, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !28, i64 48, !3, i64 104, !2, i64 120, !29, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !6, i64 176}
!28 = !{!"gs_file_path_s", !29, i64 0, !29, i64 16, !2, i64 32, !2, i64 40, !6, i64 48}
!29 = !{!"ref_s", !30, i64 0, !3, i64 8}
!30 = !{!"tas_s", !31, i64 0, !31, i64 2, !6, i64 4}
!31 = !{!"short", !3, i64 0}
!32 = !{!27, !2, i64 0}
!33 = !{!3, !3, i64 0}
!34 = !{!27, !2, i64 144}
!35 = !{!15, !2, i64 8}
!36 = !{!15, !2, i64 24}
