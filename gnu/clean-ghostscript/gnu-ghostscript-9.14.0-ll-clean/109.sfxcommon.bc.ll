; ModuleID = './sfxcommon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@file_default_buffer_size = constant i32 2048, align 4
@.str = private unnamed_addr constant [19 x i8] c"file_close(buffer)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"file_prepare_stream(stream)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"file_close(temp stream buffer)\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"file_prepare_stream\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"file_prepare_stream(buffer)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %1, i8* %2) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 20
  store i16 1, i16* %write_id, align 2, !tbaa !5
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 19
  store i16 1, i16* %read_id, align 2, !tbaa !13
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 16
  store i32 0, i32* %is_temp, align 4, !tbaa !14
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 10
  store i8 0, i8* %foreign, align 1, !tbaa !15
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @s_disable(%struct.stream_s* %8) #5
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 21
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !16
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %next, align 8, !tbaa !17
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %11, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #2

declare void @s_disable(%struct.stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @file_open_stream(i8* %fname, i32 %len, i8* %file_access, i32 %buffer_size, %struct.stream_s** %ps, %struct.gx_io_device_s* %iodev, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %fopen_proc, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %ps.addr = alloca %struct.stream_s**, align 8
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fopen_proc.addr = alloca i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %fmode = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !18
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !18
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %fopen_proc, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %fopen_proc.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_io_device_s* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %4, i32 0) #5
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !18
  %7 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %8 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  %9 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @file_prepare_stream(i8* %5, i32 %6, i8* %7, i32 %8, %struct.stream_s** %9, i8* %arraydecay, %struct.gs_memory_s* %10) #5
  store i32 %call1, i32* %code, align 4, !tbaa !18
  %11 = load i32, i32* %code, align 4, !tbaa !18
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %13 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %14 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %16 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %fopen_proc.addr, align 8, !tbaa !1
  %17 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %18 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %19 = load %struct.stream_s*, %struct.stream_s** %18, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 6
  %20 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %21 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %22 = load %struct.stream_s*, %struct.stream_s** %21, align 8, !tbaa !1
  %cbuf12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 6
  %23 = load i8*, i8** %cbuf12, align 8, !tbaa !20
  %24 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %25 = load %struct.stream_s*, %struct.stream_s** %24, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 7
  %26 = load i32, i32* %bsize, align 4, !tbaa !21
  %call13 = call i32 %16(%struct.gx_io_device_s* %17, i8* %20, i8* %arraydecay11, %struct._IO_FILE** %file, i8* %23, i32 %26) #5
  store i32 %call13, i32* %code, align 4, !tbaa !18
  %27 = load i32, i32* %code, align 4, !tbaa !18
  %cmp14 = icmp slt i32 %27, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.10
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %32 = load %struct.stream_s*, %struct.stream_s** %31, align 8, !tbaa !1
  %cbuf17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 6
  %33 = load i8*, i8** %cbuf17, align 8, !tbaa !20
  call void %29(%struct.gs_memory_s* %30, i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !22
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %38 = load %struct.stream_s*, %struct.stream_s** %37, align 8, !tbaa !1
  %39 = bitcast %struct.stream_s* %38 to i8*
  call void %35(%struct.gs_memory_s* %36, i8* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  %40 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* null, %struct.stream_s** %40, align 8, !tbaa !1
  %41 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.10
  %42 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %43 = load %struct.stream_s*, %struct.stream_s** %42, align 8, !tbaa !1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %45 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %46 = load %struct.stream_s*, %struct.stream_s** %45, align 8, !tbaa !1
  %cbuf22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 6
  %47 = load i8*, i8** %cbuf22, align 8, !tbaa !20
  %48 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %49 = load %struct.stream_s*, %struct.stream_s** %48, align 8, !tbaa !1
  %bsize23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 7
  %50 = load i32, i32* %bsize23, align 4, !tbaa !21
  call void @file_init_stream(%struct.stream_s* %43, %struct._IO_FILE* %44, i8* %arraydecay21, i8* %47, i32 %50) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.16, %if.then.9, %if.then.5, %if.then.2
  %51 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @file_prepare_stream(i8* %fname, i32 %len, i8* %file_access, i32 %buffer_size, %struct.stream_s** %ps, i8* %fmode, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %ps.addr = alloca %struct.stream_s**, align 8
  %fmode.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %buffer = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !18
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !18
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %call = call i8* @strcpy(i8* %2, i8* %3) #6
  %4 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %call1 = call i8* @strcat(i8* %4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0)) #6
  %5 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2048, i32* %buffer_size.addr, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len.addr, align 4, !tbaa !18
  %7 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  %cmp2 = icmp uge i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #5
  store %struct.stream_s* %call5, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.stream_s* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !25
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  %call9 = call i8* %11(%struct.gs_memory_s* %12, i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call9, i8** %buffer, align 8, !tbaa !1
  %14 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %15 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %cmp13 = icmp ne i8* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %16 = load i8*, i8** %buffer, align 8, !tbaa !1
  %17 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %18 = load i32, i32* %len.addr, align 4, !tbaa !18
  %conv = zext i32 %18 to i64
  %call15 = call i8* @memcpy(i8* %16, i8* %17, i64 %conv) #6
  %19 = load i32, i32* %len.addr, align 4, !tbaa !18
  %idxprom = zext i32 %19 to i64
  %20 = load i8*, i8** %buffer, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !19
  br label %if.end.17

if.else:                                          ; preds = %if.end.12
  %21 = load i8*, i8** %buffer, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %arrayidx16, align 1, !tbaa !19
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  %22 = load i8*, i8** %buffer, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 6
  store i8* %22, i8** %cbuf, align 8, !tbaa !20
  %24 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 8
  store i32 %24, i32* %cbsize, align 4, !tbaa !26
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 7
  store i32 %24, i32* %bsize, align 4, !tbaa !21
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 25
  store i32 (%struct.stream_s*)* null, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !27
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %28, %struct.stream_s** %29, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.11, %if.then.7, %if.then.3
  %30 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @file_init_stream(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %fmode, i8* %buffer, i32 %buffer_size) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %fmode.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %rstat = alloca %struct.stat, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !18
  %0 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 97, label %sw.bb
    i32 114, label %sw.bb.1
    i32 119, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %5 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  call void @sappend_file(%struct.stream_s* %2, %struct._IO_FILE* %3, i8* %4, i32 %5) #5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = bitcast %struct.stat* %rstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %6) #1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fileno(%struct._IO_FILE* %7) #6
  %call2 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %call, %struct.stat* %rstat) #6
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %rstat, i32 0, i32 3
  %11 = load i32, i32* %st_mode, align 4, !tbaa !28
  %and = and i32 %11, 61440
  %cmp = icmp eq i32 %and, 8192
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %12 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %12, %cond.false ]
  call void @sread_file(%struct.stream_s* %8, %struct._IO_FILE* %9, i8* %10, i32 %cond) #5
  %13 = bitcast %struct.stat* %rstat to i8*
  call void @llvm.lifetime.end(i64 144, i8* %13) #1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %17 = load i32, i32* %buffer_size.addr, align 4, !tbaa !18
  call void @swrite_file(%struct.stream_s* %14, %struct._IO_FILE* %15, i8* %16, i32 %17) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %entry, %cond.end, %sw.bb
  %18 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = sext i8 %19 to i32
  %cmp7 = icmp eq i32 %conv6, 43
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 28
  %21 = load i32, i32* %file_modes, align 4, !tbaa !31
  %or = or i32 %21, 3
  store i32 %or, i32* %file_modes, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %23 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !32
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 25
  store i32 (%struct.stream_s*)* %23, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !27
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 14
  %close10 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs9, i32 0, i32 4
  store i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_s*)** %close10, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @file_close_file(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %stemp = alloca %struct.stream_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %snext = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %stemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 15
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !33
  store %struct.stream_s* %2, %struct.stream_s** %stemp, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @file_close_disable(%struct.stream_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !18
  %6 = load i32, i32* %code, align 4, !tbaa !18
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %8 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %cmp = icmp ne %struct.stream_s* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 16
  %10 = load i32, i32* %is_temp, align 4, !tbaa !14
  %cmp1 = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = bitcast %struct.stream_s** %snext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 15
  %14 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !33
  store %struct.stream_s* %14, %struct.stream_s** %snext, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !34
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %is_temp3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 16
  %18 = load i32, i32* %is_temp3, align 4, !tbaa !14
  %cmp4 = icmp sgt i32 %18, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %22 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 6
  %23 = load i8*, i8** %cbuf, align 8, !tbaa !20
  call void %20(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  %24 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  call void @s_disable(%struct.stream_s* %24) #5
  %25 = load %struct.stream_s*, %struct.stream_s** %snext, align 8, !tbaa !1
  store %struct.stream_s* %25, %struct.stream_s** %stemp, align 8, !tbaa !1
  %26 = bitcast %struct.stream_s** %snext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !34
  store %struct.gs_memory_s* %28, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !22
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 6
  %33 = load i8*, i8** %cbuf10, align 8, !tbaa !20
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 23
  %35 = load i32, i32* %close_strm, align 4, !tbaa !35
  %tobool11 = icmp ne i32 %35, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %while.end
  %36 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.stream_s* %36, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %37 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %call14 = call i32 @sclose(%struct.stream_s* %37) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %land.lhs.true, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.stream_s** %stemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @file_close_disable(%struct.stream_s*) #2

declare i32 @sclose(%struct.stream_s*) #2

declare void @sappend_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare void @sread_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #2

declare void @swrite_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #4 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !18
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !18
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #6
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 266}
!6 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !7, i64 144, !7, i64 148, !8, i64 152, !3, i64 154, !3, i64 155, !9, i64 160, !10, i64 176, !11, i64 184, !2, i64 240, !7, i64 248, !7, i64 252, !2, i64 256, !8, i64 264, !8, i64 266, !2, i64 272, !2, i64 280, !7, i64 288, !7, i64 292, !2, i64 296, !2, i64 304, !12, i64 312, !7, i64 328, !10, i64 336, !10, i64 344}
!7 = !{!"int", !3, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!10 = !{!"long", !3, i64 0}
!11 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!12 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!13 = !{!6, !8, i64 264}
!14 = !{!6, !7, i64 248}
!15 = !{!6, !3, i64 154}
!16 = !{!6, !2, i64 272}
!17 = !{!6, !2, i64 280}
!18 = !{!7, !7, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !2, i64 136}
!21 = !{!6, !7, i64 144}
!22 = !{!23, !2, i64 24}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!23, !2, i64 64}
!26 = !{!6, !7, i64 148}
!27 = !{!6, !2, i64 296}
!28 = !{!29, !7, i64 24}
!29 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !30, i64 72, !30, i64 88, !30, i64 104, !3, i64 120}
!30 = !{!"timespec", !10, i64 0, !10, i64 8}
!31 = !{!6, !7, i64 328}
!32 = !{!6, !2, i64 216}
!33 = !{!6, !2, i64 240}
!34 = !{!6, !2, i64 8}
!35 = !{!6, !7, i64 288}
