; ModuleID = './iutil2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
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
%struct.password_s = type { i32, [64 x i8] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Password\00", align 1

; Function Attrs: nounwind uwtable
define i32 @param_read_password(%struct.gs_param_list_s* %plist, i8* %kstr, %struct.password_s* %ppass) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %ppass.addr = alloca %struct.password_s*, align 8
  %ps = alloca %struct.gs_param_string_s, align 8
  %ipass = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.password_s* %ppass, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i64* %ipass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_s* %ps) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !7
  %cmp = icmp ugt i32 %6, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.password_s, %struct.password_s* %7, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %data, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 0
  %8 = load i8*, i8** %data1, align 8, !tbaa !9
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  %9 = load i32, i32* %size2, align 4, !tbaa !7
  %conv = zext i32 %9 to i64
  %call3 = call i8* @memcpy(i8* %arraydecay, i8* %8, i64 %conv) #6
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  %10 = load i32, i32* %size4, align 4, !tbaa !7
  %11 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.password_s, %struct.password_s* %11, i32 0, i32 0
  store i32 %10, i32* %size5, align 4, !tbaa !10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %12, -20
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.epilog
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.epilog
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call11 = call i32 @param_read_long(%struct.gs_param_list_s* %14, i8* %15, i64* %ipass) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %16, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %18 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.password_s, %struct.password_s* %18, i32 0, i32 1
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %data16, i32 0, i32 0
  %19 = load i64, i64* %ipass, align 8, !tbaa !12
  %call18 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %19) #5
  %20 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.password_s, %struct.password_s* %20, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [64 x i8], [64 x i8]* %data19, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #7
  %conv22 = trunc i64 %call21 to i32
  %21 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size23 = getelementptr inbounds %struct.password_s, %struct.password_s* %21, i32 0, i32 0
  store i32 %conv22, i32* %size23, align 4, !tbaa !10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.9, %sw.bb.6, %if.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i64* %ipass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @param_write_password(%struct.gs_param_list_s* %plist, i8* %kstr, %struct.password_s* %ppass) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %ppass.addr = alloca %struct.password_s*, align 8
  %ps = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.password_s* %ppass, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.password_s, %struct.password_s* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %data, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 0
  store i8* %arraydecay, i8** %data1, align 8, !tbaa !9
  %2 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.password_s, %struct.password_s* %2, i32 0, i32 0
  %3 = load i32, i32* %size, align 4, !tbaa !10
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  store i32 %3, i32* %size2, align 4, !tbaa !7
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !14
  %size3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  %4 = load i32, i32* %size3, align 4, !tbaa !7
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @param_write_string(%struct.gs_param_list_s* %5, i8* %6, %struct.gs_param_string_s* %ps) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind uwtable
define i32 @param_check_password(%struct.gs_param_list_s* %plist, %struct.password_s* %ppass) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ppass.addr = alloca %struct.password_s*, align 8
  %pass = alloca %struct.password_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.password_s* %ppass, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %0 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.password_s, %struct.password_s* %0, i32 0, i32 0
  %1 = load i32, i32* %size, align 4, !tbaa !10
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.start(i64 68, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_password(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.password_s* %pass) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %size2 = getelementptr inbounds %struct.password_s, %struct.password_s* %pass, i32 0, i32 0
  %7 = load i32, i32* %size2, align 4, !tbaa !10
  %8 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.password_s, %struct.password_s* %8, i32 0, i32 0
  %9 = load i32, i32* %size3, align 4, !tbaa !10
  %cmp4 = icmp ne i32 %7, %9
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.password_s, %struct.password_s* %pass, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %data, i32 0, i64 0
  %size5 = getelementptr inbounds %struct.password_s, %struct.password_s* %pass, i32 0, i32 0
  %10 = load i32, i32* %size5, align 4, !tbaa !10
  %11 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.password_s, %struct.password_s* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [64 x i8], [64 x i8]* %data6, i32 0, i64 0
  %12 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.password_s, %struct.password_s* %12, i32 0, i32 0
  %13 = load i32, i32* %size8, align 4, !tbaa !10
  %call9 = call i32 @bytes_compare(i8* %arrayidx, i32 %10, i8* %arrayidx7, i32 %13) #5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.end(i64 68, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %cleanup
  %16 = load i32, i32* %retval
  ret i32 %16

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @dict_read_password(%struct.password_s* %ppass, %struct.ref_s* %pdref, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %ppass.addr = alloca %struct.password_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.password_s* %ppass, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_password(%struct.ref_s** %pvalue, %struct.ref_s* %2, i8* %3) #5
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
  %6 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %8 to i32
  %cmp1 = icmp sgt i32 %conv, 64
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.password_s, %struct.password_s* %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %data, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %const_bytes6 = bitcast %union.v* %value5 to i8**
  %11 = load i8*, i8** %const_bytes6, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %const_bytes8 = bitcast %union.v* %value7 to i8**
  %13 = load i8*, i8** %const_bytes8, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx9, align 1, !tbaa !15
  %conv10 = zext i8 %14 to i32
  %15 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.password_s, %struct.password_s* %15, i32 0, i32 0
  store i32 %conv10, i32* %size, align 4, !tbaa !10
  %conv11 = zext i32 %conv10 to i64
  %call12 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 %conv11) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_find_password(%struct.ref_s** %ppvalue, %struct.ref_s* %pdref, i8* %kstr) #0 {
entry:
  %retval = alloca i32, align 4
  %ppvalue.addr = alloca %struct.ref_s**, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s** %ppvalue, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* %2, %struct.ref_s** %pvalue) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 18
  br i1 %cmp1, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %7 = load i16, i16* %type_attrs4, align 2, !tbaa !16
  %conv5 = zext i16 %7 to i32
  %neg = xor i32 %conv5, -1
  %and = and i32 %neg, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false.6, label %if.then.12

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !15
  %conv8 = zext i8 %10 to i32
  %11 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !20
  %cmp10 = icmp uge i32 %conv8, %12
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false.6
  %13 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %14 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !1
  store %struct.ref_s* %13, %struct.ref_s** %14, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then
  %15 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @dict_write_password(%struct.password_s* %ppass, %struct.ref_s* %pdref, i8* %pkey, i32 %change_allowed) #0 {
entry:
  %retval = alloca i32, align 4
  %ppass.addr = alloca %struct.password_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %change_allowed.addr = alloca i32, align 4
  %pvalue = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.password_s* %ppass, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32 %change_allowed, i32* %change_allowed.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_password(%struct.ref_s** %pvalue, %struct.ref_s* %2, i8* %3) #5
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
  %6 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.password_s, %struct.password_s* %6, i32 0, i32 0
  %7 = load i32, i32* %size, align 4, !tbaa !10
  %8 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !20
  %cmp1 = icmp uge i32 %7, %9
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %change_allowed.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.3
  %11 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %12 = load i8*, i8** %bytes, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %bytes5 = bitcast %union.v* %value4 to i8**
  %14 = load i8*, i8** %bytes5, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %15 to i32
  %16 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.password_s, %struct.password_s* %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %data, i32 0, i32 0
  %17 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.password_s, %struct.password_s* %17, i32 0, i32 0
  %18 = load i32, i32* %size6, align 4, !tbaa !10
  %call7 = call i32 @bytes_compare(i8* %add.ptr, i32 %conv, i8* %arraydecay, i32 %18) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %land.lhs.true, %if.end.3
  %19 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %bytes13 = bitcast %union.v* %value12 to i8**
  %20 = load i8*, i8** %bytes13, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.password_s, %struct.password_s* %21, i32 0, i32 1
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %data15, i32 0, i32 0
  %22 = load %struct.password_s*, %struct.password_s** %ppass.addr, align 8, !tbaa !1
  %size17 = getelementptr inbounds %struct.password_s, %struct.password_s* %22, i32 0, i32 0
  %23 = load i32, i32* %size17, align 4, !tbaa !10
  %conv18 = trunc i32 %23 to i8
  %24 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %bytes20 = bitcast %union.v* %value19 to i8**
  %25 = load i8*, i8** %bytes20, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv18, i8* %arrayidx21, align 1, !tbaa !15
  %conv22 = zext i8 %conv18 to i64
  %call23 = call i8* @memcpy(i8* %add.ptr14, i8* %arraydecay16, i64 %conv22) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.2, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

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
!7 = !{!8, !6, i64 8}
!8 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!9 = !{!8, !2, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"password_s", !6, i64 0, !3, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!8, !6, i64 12}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !19, i64 0}
!17 = !{!"ref_s", !18, i64 0, !3, i64 8}
!18 = !{!"tas_s", !19, i64 0, !19, i64 2, !6, i64 4}
!19 = !{!"short", !3, i64 0}
!20 = !{!17, !6, i64 4}
