; ModuleID = './gsfname.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

; Function Attrs: nounwind uwtable
define i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %pname, i32 %len, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %pname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %dlen = alloca i32, align 4
  %pdelim = alloca i8*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pdelim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 37
  br i1 %cmp1, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %6, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory4, align 8, !tbaa !8
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev5 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %7, i32 0, i32 1
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %iodev5, align 8, !tbaa !10
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %9 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %9, i32 0, i32 2
  store i8* %8, i8** %fname, align 8, !tbaa !11
  %10 = load i32, i32* %len.addr, align 4, !tbaa !5
  %11 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len6 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %11, i32 0, i32 3
  store i32 %10, i32* %len6, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %12 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub = sub i32 %13, 1
  %conv8 = zext i32 %sub to i64
  %call = call i8* @memchr(i8* %add.ptr, i32 37, i64 %conv8) #5
  store i8* %call, i8** %pdelim, align 8, !tbaa !1
  %14 = load i8*, i8** %pdelim, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %14, null
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %15 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %15, i32* %dlen, align 4, !tbaa !5
  br label %if.end.20

if.else:                                          ; preds = %if.end.7
  %16 = load i8*, i8** %pdelim, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i8* null, i8** %pdelim, align 8, !tbaa !1
  %18 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %18, i32* %dlen, align 4, !tbaa !5
  br label %if.end.19

if.else.17:                                       ; preds = %if.else
  %19 = load i8*, i8** %pdelim, align 8, !tbaa !1
  %20 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, i32* %dlen, align 4, !tbaa !5
  %21 = load i8*, i8** %pdelim, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %pdelim, align 8, !tbaa !1
  %22 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add i32 %22, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %25 = load i32, i32* %dlen, align 4, !tbaa !5
  %call21 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %23, i8* %24, i32 %25) #6
  store %struct.gx_io_device_s* %call21, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp22 = icmp eq %struct.gx_io_device_s* %26, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.20
  %27 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %27, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory26, align 8, !tbaa !8
  %28 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %29 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev27 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %29, i32 0, i32 1
  store %struct.gx_io_device_s* %28, %struct.gx_io_device_s** %iodev27, align 8, !tbaa !10
  %30 = load i8*, i8** %pdelim, align 8, !tbaa !1
  %31 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname28 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %31, i32 0, i32 2
  store i8* %30, i8** %fname28, align 8, !tbaa !11
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %33 = load i32, i32* %dlen, align 4, !tbaa !5
  %sub29 = sub i32 %32, %33
  %34 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len30 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %34, i32 0, i32 3
  store i32 %sub29, i32* %len30, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.3, %if.then
  %35 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i8** %pdelim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

declare %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_parse_real_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %pname, i32 %len, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %pname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %1, i8* %2, i32 %3, %struct.gs_memory_s* %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %7, i32 0, i32 3
  %8 = load i32, i32* %len1, align 4, !tbaa !12
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_terminate_file_name(%struct.gs_parsed_file_name_s* %9, %struct.gs_memory_s* %10, i8* %11) #6
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gs_terminate_file_name(%struct.gs_parsed_file_name_s* %pfn, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %fname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %1, i32 0, i32 3
  %2 = load i32, i32* %len1, align 4, !tbaa !12
  store i32 %2, i32* %len, align 4, !tbaa !5
  %3 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %4, i32 0, i32 1
  %5 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !10
  %cmp = icmp eq %struct.gx_io_device_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %6, i32 0) #6
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev2 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %7, i32 0, i32 1
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev2, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %tobool = icmp ne %struct.gs_memory_s* %9, null
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !13
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i32, i32* %len, align 4, !tbaa !5
  %add = add i32 %13, 1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call5 = call i8* %11(%struct.gs_memory_s* %12, i32 %add, i8* %14) #6
  store i8* %call5, i8** %fname, align 8, !tbaa !1
  %15 = load i8*, i8** %fname, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %16 = load i8*, i8** %fname, align 8, !tbaa !1
  %17 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname9 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %fname9, align 8, !tbaa !11
  %19 = load i32, i32* %len, align 4, !tbaa !5
  %conv = zext i32 %19 to i64
  %call10 = call i8* @memcpy(i8* %16, i8* %18, i64 %conv) #7
  %20 = load i32, i32* %len, align 4, !tbaa !5
  %idxprom = zext i32 %20 to i64
  %21 = load i8*, i8** %fname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %23, i32 0, i32 0
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory11, align 8, !tbaa !8
  %24 = load i8*, i8** %fname, align 8, !tbaa !1
  %25 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %25, i32 0, i32 2
  store i8* %24, i8** %fname12, align 8, !tbaa !11
  %26 = load i32, i32* %len, align 4, !tbaa !5
  %add13 = add i32 %26, 1
  %27 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len14 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %27, i32 0, i32 3
  store i32 %add13, i32* %len14, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3
  %28 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @gs_free_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %cname) #0 {
entry:
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %fname, align 8, !tbaa !11
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %4 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %fname1, align 8, !tbaa !11
  %6 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %6, i32 0, i32 3
  %7 = load i32, i32* %len, align 4, !tbaa !12
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_free_const_string(%struct.gs_memory_s* %3, i8* %5, i32 %7, i8* %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!10 = !{!9, !2, i64 8}
!11 = !{!9, !2, i64 16}
!12 = !{!9, !6, i64 24}
!13 = !{!14, !2, i64 136}
!14 = !{!"gs_memory_s", !2, i64 0, !15, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!15 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
