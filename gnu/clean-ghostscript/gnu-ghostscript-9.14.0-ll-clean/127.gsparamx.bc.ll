; ModuleID = './gsparamx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @gs_param_string_eq(%struct.gs_param_string_s* %pcs, i8* %str) #0 {
entry:
  %pcs.addr = alloca %struct.gs_param_string_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gs_param_string_s* %pcs, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %0) #5
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %2 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !8
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !5
  %conv3 = zext i32 %7 to i64
  %call4 = call i32 @strncmp(i8* %3, i8* %5, i64 %conv3) #5
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @param_put_enum(%struct.gs_param_list_s* %plist, i8* %param_name, i32* %pvalue, i8** %pnames, i32 %ecode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %param_name.addr = alloca i8*, align 8
  %pvalue.addr = alloca i32*, align 8
  %pnames.addr = alloca i8**, align 8
  %ecode.addr = alloca i32, align 4
  %ens = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %param_name, i8** %param_name.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  store i8** %pnames, i8*** %pnames.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !9
  %0 = bitcast %struct.gs_param_string_s* %ens to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %call = call i32 @param_read_name(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_string_s* %ens) #6
  store i32 %call, i32* %code, align 4, !tbaa !9
  %4 = load i32, i32* %code, align 4, !tbaa !9
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

sw.bb.1:                                          ; preds = %entry
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %7 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %pnames.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom2 = sext i32 %10 to i64
  %11 = load i8**, i8*** %pnames.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %idxprom2
  %12 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %call4 = call i32 @gs_param_string_eq(%struct.gs_param_string_s* %ens, i8* %12) #6
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !9
  %14 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %13, i32* %14, align 4, !tbaa !9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 -15, i32* %code, align 4, !tbaa !9
  br label %sw.default

sw.default:                                       ; preds = %entry, %cleanup.cont
  %17 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %17, i32* %ecode.addr, align 4, !tbaa !9
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 0
  %19 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !10
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %19, i32 0, i32 7
  %20 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %23 = load i32, i32* %code, align 4, !tbaa !9
  %call5 = call i32 %20(%struct.gs_param_list_s* %21, i8* %22, i32 %23) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %24 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %sw.epilog, %cleanup, %sw.bb
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gs_param_string_s* %ens to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @param_read_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @param_put_bool(%struct.gs_param_list_s* %plist, i8* %param_name, i32* %pval, i32 %ecode) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %param_name.addr = alloca i8*, align 8
  %pval.addr = alloca i32*, align 8
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %param_name, i8** %param_name.addr, align 8, !tbaa !1
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %1, i8* %2, i32* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !9
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %4, i32* %ecode.addr, align 4, !tbaa !9
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !10
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %6, i32 0, i32 7
  %7 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !12
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %call1 = call i32 %7(%struct.gs_param_list_s* %8, i8* %9, i32 %10) #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %11 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %11
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define i32 @param_put_int(%struct.gs_param_list_s* %plist, i8* %param_name, i32* %pval, i32 %ecode) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %param_name.addr = alloca i8*, align 8
  %pval.addr = alloca i32*, align 8
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %param_name, i8** %param_name.addr, align 8, !tbaa !1
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %1, i8* %2, i32* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !9
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %4, i32* %ecode.addr, align 4, !tbaa !9
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !10
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %6, i32 0, i32 7
  %7 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !12
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %call1 = call i32 %7(%struct.gs_param_list_s* %8, i8* %9, i32 %10) #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %11 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %11
}

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define i32 @param_put_long(%struct.gs_param_list_s* %plist, i8* %param_name, i64* %pval, i32 %ecode) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %param_name.addr = alloca i8*, align 8
  %pval.addr = alloca i64*, align 8
  %ecode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %param_name, i8** %param_name.addr, align 8, !tbaa !1
  store i64* %pval, i64** %pval.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %pval.addr, align 8, !tbaa !1
  %call = call i32 @param_read_long(%struct.gs_param_list_s* %1, i8* %2, i64* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !9
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %4, i32* %ecode.addr, align 4, !tbaa !9
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !10
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %6, i32 0, i32 7
  %7 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !12
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %call1 = call i32 %7(%struct.gs_param_list_s* %8, i8* %9, i32 %10) #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %11 = load i32, i32* %ecode.addr, align 4, !tbaa !9
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %11
}

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #3

; Function Attrs: nounwind uwtable
define i32 @param_list_copy(%struct.gs_param_list_s* %plto, %struct.gs_param_list_s* %plfrom) #0 {
entry:
  %plto.addr = alloca %struct.gs_param_list_s*, align 8
  %plfrom.addr = alloca %struct.gs_param_list_s*, align 8
  %key_enum = alloca %union.gs_param_enumerator_s, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %copy_persists = alloca i32, align 4
  %code = alloca i32, align 4
  %string_key = alloca [256 x i8], align 16
  %value = alloca %struct.gs_param_typed_value_s, align 8
  %coll_type = alloca i32, align 4
  %copy = alloca %struct.gs_param_typed_value_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plto, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plfrom, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %0 = bitcast %union.gs_param_enumerator_s* %key_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %copy_persists to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !14
  %cmp = icmp eq %struct.gs_memory_s* %4, %6
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %copy_persists, align 4, !tbaa !9
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  call void @param_init_enumerator(%union.gs_param_enumerator_s* %key_enum) #6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %8, i32 0, i32 0
  %9 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !10
  %next_key = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %9, i32 0, i32 3
  %10 = load i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)** %next_key, align 8, !tbaa !15
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gs_param_list_s* %11, %union.gs_param_enumerator_s* %key_enum, %struct.gs_param_string_s* %key) #6
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast [256 x i8]* %string_key to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #2
  %13 = bitcast %struct.gs_param_typed_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #2
  %14 = bitcast i32* %coll_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast %struct.gs_param_typed_value_s* %copy to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #2
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %conv4 = zext i32 %16 to i64
  %cmp5 = icmp ugt i64 %conv4, 255
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -15, i32* %code, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !8
  %size7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %18 = load i32, i32* %size7, align 4, !tbaa !5
  %conv8 = zext i32 %18 to i64
  %call9 = call i8* @memcpy(i8* %arraydecay, i8* %17, i64 %conv8) #7
  %size10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %19 = load i32, i32* %size10, align 4, !tbaa !5
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !16
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  store i32 -1, i32* %type, align 4, !tbaa !17
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %call12 = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %20, i8* %arraydecay11, %struct.gs_param_typed_value_s* %value) #6
  store i32 %call12, i32* %code, align 4, !tbaa !9
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !9
  %cmp16 = icmp sgt i32 %21, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  %22 = load i32, i32* %code, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  %24 = load i32, i32* %persistent, align 4, !tbaa !19
  call void @gs_param_list_set_persist_keys(%struct.gs_param_list_s* %23, i32 %24) #6
  %type19 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  %25 = load i32, i32* %type19, align 4, !tbaa !17
  switch i32 %25, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.20
    i32 13, label %sw.bb.21
    i32 5, label %sw.bb.58
    i32 6, label %sw.bb.61
    i32 7, label %sw.bb.65
    i32 8, label %sw.bb.69
    i32 9, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.end.18
  store i32 0, i32* %coll_type, align 4, !tbaa !16
  br label %cc

sw.bb.20:                                         ; preds = %if.end.18
  store i32 1, i32* %coll_type, align 4, !tbaa !16
  br label %cc

sw.bb.21:                                         ; preds = %if.end.18
  store i32 2, i32* %coll_type, align 4, !tbaa !16
  br label %cc

cc:                                               ; preds = %sw.bb.21, %sw.bb.20, %sw.bb
  %value22 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value22 to %struct.gs_param_collection_s*
  %size23 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d, i32 0, i32 1
  %26 = load i32, i32* %size23, align 4, !tbaa !20
  %value24 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %copy, i32 0, i32 0
  %d25 = bitcast %union.gs_param_value_s* %value24 to %struct.gs_param_collection_s*
  %size26 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d25, i32 0, i32 1
  store i32 %26, i32* %size26, align 4, !tbaa !20
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %27, i32 0, i32 0
  %28 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs27, align 8, !tbaa !10
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %28, i32 0, i32 1
  %29 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !22
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %value29 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %copy, i32 0, i32 0
  %d30 = bitcast %union.gs_param_value_s* %value29 to %struct.gs_param_collection_s*
  %31 = load i32, i32* %coll_type, align 4, !tbaa !16
  %call31 = call i32 %29(%struct.gs_param_list_s* %30, i8* %arraydecay28, %struct.gs_param_collection_s* %d30, i32 %31) #6
  store i32 %call31, i32* %code, align 4, !tbaa !9
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cc
  %value34 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %copy, i32 0, i32 0
  %d35 = bitcast %union.gs_param_value_s* %value34 to %struct.gs_param_collection_s*
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d35, i32 0, i32 0
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !23
  %value36 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d37 = bitcast %union.gs_param_value_s* %value36 to %struct.gs_param_collection_s*
  %list38 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d37, i32 0, i32 0
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list38, align 8, !tbaa !23
  %call39 = call i32 @param_list_copy(%struct.gs_param_list_s* %32, %struct.gs_param_list_s* %33) #6
  store i32 %call39, i32* %code, align 4, !tbaa !9
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.50, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %34, i32 0, i32 0
  %35 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs43, align 8, !tbaa !10
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %35, i32 0, i32 2
  %36 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !24
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %arraydecay44 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %value45 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %copy, i32 0, i32 0
  %d46 = bitcast %union.gs_param_value_s* %value45 to %struct.gs_param_collection_s*
  %call47 = call i32 %36(%struct.gs_param_list_s* %37, i8* %arraydecay44, %struct.gs_param_collection_s* %d46) #6
  store i32 %call47, i32* %code, align 4, !tbaa !9
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false, %cc
  br label %sw.epilog

if.end.51:                                        ; preds = %lor.lhs.false.42
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %procs52 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %38, i32 0, i32 0
  %39 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs52, align 8, !tbaa !10
  %end_xmit_collection53 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %39, i32 0, i32 2
  %40 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection53, align 8, !tbaa !24
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plfrom.addr, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %value55 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d56 = bitcast %union.gs_param_value_s* %value55 to %struct.gs_param_collection_s*
  %call57 = call i32 %40(%struct.gs_param_list_s* %41, i8* %arraydecay54, %struct.gs_param_collection_s* %d56) #6
  store i32 %call57, i32* %code, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.18
  %42 = load i32, i32* %copy_persists, align 4, !tbaa !9
  %value59 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value59 to %struct.gs_param_string_s*
  %persistent60 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 2
  %43 = load i32, i32* %persistent60, align 4, !tbaa !19
  %and = and i32 %43, %42
  store i32 %and, i32* %persistent60, align 4, !tbaa !19
  br label %ca

sw.bb.61:                                         ; preds = %if.end.18
  %44 = load i32, i32* %copy_persists, align 4, !tbaa !9
  %value62 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value62 to %struct.gs_param_string_s*
  %persistent63 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %n, i32 0, i32 2
  %45 = load i32, i32* %persistent63, align 4, !tbaa !19
  %and64 = and i32 %45, %44
  store i32 %and64, i32* %persistent63, align 4, !tbaa !19
  br label %ca

sw.bb.65:                                         ; preds = %if.end.18
  %46 = load i32, i32* %copy_persists, align 4, !tbaa !9
  %value66 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value66 to %struct.gs_param_int_array_s*
  %persistent67 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 2
  %47 = load i32, i32* %persistent67, align 4, !tbaa !25
  %and68 = and i32 %47, %46
  store i32 %and68, i32* %persistent67, align 4, !tbaa !25
  br label %ca

sw.bb.69:                                         ; preds = %if.end.18
  %48 = load i32, i32* %copy_persists, align 4, !tbaa !9
  %value70 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value70 to %struct.gs_param_float_array_s*
  %persistent71 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  %49 = load i32, i32* %persistent71, align 4, !tbaa !27
  %and72 = and i32 %49, %48
  store i32 %and72, i32* %persistent71, align 4, !tbaa !27
  br label %ca

sw.bb.73:                                         ; preds = %if.end.18
  %50 = load i32, i32* %copy_persists, align 4, !tbaa !9
  %value74 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value74 to %struct.gs_param_string_array_s*
  %persistent75 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 2
  %51 = load i32, i32* %persistent75, align 4, !tbaa !29
  %and76 = and i32 %51, %50
  store i32 %and76, i32* %persistent75, align 4, !tbaa !29
  br label %ca

ca:                                               ; preds = %sw.bb.73, %sw.bb.69, %sw.bb.65, %sw.bb.61, %sw.bb.58
  br label %sw.default

sw.default:                                       ; preds = %if.end.18, %ca
  %52 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %52, i32 0, i32 0
  %53 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs77, align 8, !tbaa !10
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %53, i32 0, i32 0
  %54 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !31
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plto.addr, align 8, !tbaa !1
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %call79 = call i32 %54(%struct.gs_param_list_s* %55, i8* %arraydecay78, %struct.gs_param_typed_value_s* %value) #6
  store i32 %call79, i32* %code, align 4, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.51, %if.then.50
  %56 = load i32, i32* %code, align 4, !tbaa !9
  %cmp80 = icmp slt i32 %56, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %sw.epilog
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.82, %cond.end, %if.then
  %57 = bitcast %struct.gs_param_typed_value_s* %copy to i8*
  call void @llvm.lifetime.end(i64 24, i8* %57) #2
  %58 = bitcast i32* %coll_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gs_param_typed_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %59) #2
  %60 = bitcast [256 x i8]* %string_key to i8*
  call void @llvm.lifetime.end(i64 256, i8* %60) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %61 = load i32, i32* %code, align 4, !tbaa !9
  store i32 1, i32* %cleanup.dest.slot
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %copy_persists to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #2
  %65 = bitcast %union.gs_param_enumerator_s* %key_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  ret i32 %61

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @param_init_enumerator(%union.gs_param_enumerator_s*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @param_read_requested_typed(%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*) #3

declare void @gs_param_list_set_persist_keys(%struct.gs_param_list_s*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!12 = !{!13, !2, i64 56}
!13 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!14 = !{!11, !2, i64 8}
!15 = !{!13, !2, i64 24}
!16 = !{!3, !3, i64 0}
!17 = !{!18, !3, i64 16}
!18 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!19 = !{!6, !7, i64 12}
!20 = !{!21, !7, i64 8}
!21 = !{!"gs_param_collection_s", !2, i64 0, !7, i64 8}
!22 = !{!13, !2, i64 8}
!23 = !{!21, !2, i64 0}
!24 = !{!13, !2, i64 16}
!25 = !{!26, !7, i64 12}
!26 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!27 = !{!28, !7, i64 12}
!28 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!29 = !{!30, !7, i64 12}
!30 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!31 = !{!13, !2, i64 0}
