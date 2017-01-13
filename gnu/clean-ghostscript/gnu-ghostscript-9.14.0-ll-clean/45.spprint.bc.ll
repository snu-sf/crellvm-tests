; ModuleID = './spprint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%1.1f\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%1.8f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: nounwind uwtable
define i32 @stream_write(%struct.stream_s* %s, i8* %ptr, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 %3, i32* %used) #6
  %4 = load i32, i32* %used, align 4, !tbaa !5
  %5 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @stream_puts(%struct.stream_s* %s, i8* %str) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %used = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %2 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len, align 4, !tbaa !5
  %call1 = call i32 @sputs(%struct.stream_s* %4, i8* %5, i32 %6, i32* %used) #6
  store i32 %call1, i32* %status, align 4, !tbaa !5
  %7 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load i32, i32* %used, align 4, !tbaa !5
  %9 = load i32, i32* %len, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %cond = select i1 %10, i32 0, i32 -1
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %cond
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @pprintd1(%struct.stream_s* %s, i8* %format, i32 %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  %fp = alloca i8*, align 8
  %str = alloca [25 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call = call i8* @pprintf_scan(%struct.stream_s* %1, i8* %2) #6
  store i8* %call, i8** %fp, align 8, !tbaa !1
  %3 = bitcast [25 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 25, i8* %3) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %str, i32 0, i32 0
  %4 = load i32, i32* %v.addr, align 4, !tbaa !5
  %call1 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %4) #6
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [25 x i8], [25 x i8]* %str, i32 0, i32 0
  call void @pputs_short(%struct.stream_s* %5, i8* %arraydecay2) #6
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %fp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  %call3 = call i8* @pprintf_scan(%struct.stream_s* %6, i8* %add.ptr) #6
  %8 = bitcast [25 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 25, i8* %8) #1
  %9 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i8* %call3
}

; Function Attrs: nounwind uwtable
define internal i8* @pprintf_scan(%struct.stream_s* %s, i8* %format) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %fp = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  store i8* %1, i8** %fp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %fp, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %fp, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 37
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %fp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 37
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %fp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %fp, align 8, !tbaa !1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 2
  %12 = load i8*, i8** %limit, align 8, !tbaa !10
  %cmp12 = icmp uge i8* %10, %12
  br i1 %cmp12, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.9
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %14 = load i8*, i8** %ptr16, align 8, !tbaa !8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr17, i8** %ptr16, align 8, !tbaa !8
  %15 = load i8*, i8** %fp, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %ptr20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 1
  %18 = load i8*, i8** %ptr20, align 8, !tbaa !8
  store i8 %16, i8* %18, align 1, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %fp, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %call = call i32 @spputc(%struct.stream_s* %19, i8 zeroext %21) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i8*, i8** %fp, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr21, i8** %fp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %23 = load i8*, i8** %fp, align 8, !tbaa !1
  %24 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %23
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @pputs_short(%struct.stream_s* %s, i8* %str) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !8
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !10
  %cmp = icmp uge i8* %5, %7
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %9 = load i8*, i8** %ptr5, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !8
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %13 = load i8*, i8** %ptr8, align 8, !tbaa !8
  store i8 %11, i8* %13, align 1, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %16) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pprintd2(%struct.stream_s* %s, i8* %format, i32 %v1, i32 %v2) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !5
  store i32 %v2, i32* %v2.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i32, i32* %v1.addr, align 4, !tbaa !5
  %call = call i8* @pprintd1(%struct.stream_s* %1, i8* %2, i32 %3) #6
  %4 = load i32, i32* %v2.addr, align 4, !tbaa !5
  %call1 = call i8* @pprintd1(%struct.stream_s* %0, i8* %call, i32 %4) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintd3(%struct.stream_s* %s, i8* %format, i32 %v1, i32 %v2, i32 %v3) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %v3.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !5
  store i32 %v2, i32* %v2.addr, align 4, !tbaa !5
  store i32 %v3, i32* %v3.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i32, i32* %v1.addr, align 4, !tbaa !5
  %call = call i8* @pprintd1(%struct.stream_s* %1, i8* %2, i32 %3) #6
  %4 = load i32, i32* %v2.addr, align 4, !tbaa !5
  %5 = load i32, i32* %v3.addr, align 4, !tbaa !5
  %call1 = call i8* @pprintd2(%struct.stream_s* %0, i8* %call, i32 %4, i32 %5) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintd4(%struct.stream_s* %s, i8* %format, i32 %v1, i32 %v2, i32 %v3, i32 %v4) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %v3.addr = alloca i32, align 4
  %v4.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !5
  store i32 %v2, i32* %v2.addr, align 4, !tbaa !5
  store i32 %v3, i32* %v3.addr, align 4, !tbaa !5
  store i32 %v4, i32* %v4.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i32, i32* %v1.addr, align 4, !tbaa !5
  %4 = load i32, i32* %v2.addr, align 4, !tbaa !5
  %call = call i8* @pprintd2(%struct.stream_s* %1, i8* %2, i32 %3, i32 %4) #6
  %5 = load i32, i32* %v3.addr, align 4, !tbaa !5
  %6 = load i32, i32* %v4.addr, align 4, !tbaa !5
  %call1 = call i8* @pprintd2(%struct.stream_s* %0, i8* %call, i32 %5, i32 %6) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintg1(%struct.stream_s* %s, i8* %format, double %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v.addr = alloca double, align 8
  %fp = alloca i8*, align 8
  %dot = alloca i8, align 1
  %str = alloca [150 x i8], align 16
  %pdot = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store double %v, double* %v.addr, align 8, !tbaa !11
  %0 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call = call i8* @pprintf_scan(%struct.stream_s* %1, i8* %2) #6
  store i8* %call, i8** %fp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %dot) #1
  %3 = bitcast [150 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 150, i8* %3) #1
  %arraydecay = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %call1 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), double 1.500000e+00) #6
  %arrayidx = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %4, i8* %dot, align 1, !tbaa !7
  %arraydecay2 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %5 = load double, double* %v.addr, align 8, !tbaa !11
  %call3 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), double %5) #6
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay4 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %call5 = call i8* @__rawmemchr(i8* %arraydecay4, i32 101) #6
  %tobool = icmp ne i8* %call5, null
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %arraydecay6 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %call7 = call i8* @strchr(i8* %arraydecay6, i32 101) #8
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %arraydecay9 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %6 = load double, double* %v.addr, align 8, !tbaa !11
  %call10 = call double @fabs(double %6) #9
  %cmp = fcmp ogt double %call10, 1.000000e+00
  %cond = select i1 %cmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)
  %7 = load double, double* %v.addr, align 8, !tbaa !11
  %call11 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay9, i8* %cond, double %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %8 = load i8, i8* %dot, align 1, !tbaa !7
  %conv = sext i8 %8 to i32
  %cmp12 = icmp ne i32 %conv, 46
  br i1 %cmp12, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end
  %9 = bitcast i8** %pdot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %arraydecay15 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  %10 = load i8, i8* %dot, align 1, !tbaa !7
  %conv16 = sext i8 %10 to i32
  %call17 = call i8* @strchr(i8* %arraydecay15, i32 %conv16) #8
  store i8* %call17, i8** %pdot, align 8, !tbaa !1
  %11 = load i8*, i8** %pdot, align 8, !tbaa !1
  %tobool18 = icmp ne i8* %11, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  %12 = load i8*, i8** %pdot, align 8, !tbaa !1
  store i8 46, i8* %12, align 1, !tbaa !7
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.14
  %13 = bitcast i8** %pdot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [150 x i8], [150 x i8]* %str, i32 0, i32 0
  call void @pputs_short(%struct.stream_s* %14, i8* %arraydecay22) #6
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %fp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 2
  %call23 = call i8* @pprintf_scan(%struct.stream_s* %15, i8* %add.ptr) #6
  %17 = bitcast [150 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 150, i8* %17) #1
  call void @llvm.lifetime.end(i64 1, i8* %dot) #1
  %18 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %call23
}

declare i8* @__rawmemchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i8* @pprintg2(%struct.stream_s* %s, i8* %format, double %v1, double %v2) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca double, align 8
  %v2.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store double %v1, double* %v1.addr, align 8, !tbaa !11
  store double %v2, double* %v2.addr, align 8, !tbaa !11
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load double, double* %v1.addr, align 8, !tbaa !11
  %call = call i8* @pprintg1(%struct.stream_s* %1, i8* %2, double %3) #6
  %4 = load double, double* %v2.addr, align 8, !tbaa !11
  %call1 = call i8* @pprintg1(%struct.stream_s* %0, i8* %call, double %4) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintg3(%struct.stream_s* %s, i8* %format, double %v1, double %v2, double %v3) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca double, align 8
  %v2.addr = alloca double, align 8
  %v3.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store double %v1, double* %v1.addr, align 8, !tbaa !11
  store double %v2, double* %v2.addr, align 8, !tbaa !11
  store double %v3, double* %v3.addr, align 8, !tbaa !11
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load double, double* %v1.addr, align 8, !tbaa !11
  %call = call i8* @pprintg1(%struct.stream_s* %1, i8* %2, double %3) #6
  %4 = load double, double* %v2.addr, align 8, !tbaa !11
  %5 = load double, double* %v3.addr, align 8, !tbaa !11
  %call1 = call i8* @pprintg2(%struct.stream_s* %0, i8* %call, double %4, double %5) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintg4(%struct.stream_s* %s, i8* %format, double %v1, double %v2, double %v3, double %v4) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca double, align 8
  %v2.addr = alloca double, align 8
  %v3.addr = alloca double, align 8
  %v4.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store double %v1, double* %v1.addr, align 8, !tbaa !11
  store double %v2, double* %v2.addr, align 8, !tbaa !11
  store double %v3, double* %v3.addr, align 8, !tbaa !11
  store double %v4, double* %v4.addr, align 8, !tbaa !11
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load double, double* %v1.addr, align 8, !tbaa !11
  %4 = load double, double* %v2.addr, align 8, !tbaa !11
  %call = call i8* @pprintg2(%struct.stream_s* %1, i8* %2, double %3, double %4) #6
  %5 = load double, double* %v3.addr, align 8, !tbaa !11
  %6 = load double, double* %v4.addr, align 8, !tbaa !11
  %call1 = call i8* @pprintg2(%struct.stream_s* %0, i8* %call, double %5, double %6) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintg6(%struct.stream_s* %s, i8* %format, double %v1, double %v2, double %v3, double %v4, double %v5, double %v6) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca double, align 8
  %v2.addr = alloca double, align 8
  %v3.addr = alloca double, align 8
  %v4.addr = alloca double, align 8
  %v5.addr = alloca double, align 8
  %v6.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store double %v1, double* %v1.addr, align 8, !tbaa !11
  store double %v2, double* %v2.addr, align 8, !tbaa !11
  store double %v3, double* %v3.addr, align 8, !tbaa !11
  store double %v4, double* %v4.addr, align 8, !tbaa !11
  store double %v5, double* %v5.addr, align 8, !tbaa !11
  store double %v6, double* %v6.addr, align 8, !tbaa !11
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load double, double* %v1.addr, align 8, !tbaa !11
  %4 = load double, double* %v2.addr, align 8, !tbaa !11
  %5 = load double, double* %v3.addr, align 8, !tbaa !11
  %call = call i8* @pprintg3(%struct.stream_s* %1, i8* %2, double %3, double %4, double %5) #6
  %6 = load double, double* %v4.addr, align 8, !tbaa !11
  %7 = load double, double* %v5.addr, align 8, !tbaa !11
  %8 = load double, double* %v6.addr, align 8, !tbaa !11
  %call1 = call i8* @pprintg3(%struct.stream_s* %0, i8* %call, double %6, double %7, double %8) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintld1(%struct.stream_s* %s, i8* %format, i64 %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v.addr = alloca i64, align 8
  %fp = alloca i8*, align 8
  %str = alloca [25 x i8], align 16
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i64 %v, i64* %v.addr, align 8, !tbaa !13
  %0 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call = call i8* @pprintf_scan(%struct.stream_s* %1, i8* %2) #6
  store i8* %call, i8** %fp, align 8, !tbaa !1
  %3 = bitcast [25 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 25, i8* %3) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %str, i32 0, i32 0
  %4 = load i64, i64* %v.addr, align 8, !tbaa !13
  %call1 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 %4) #6
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [25 x i8], [25 x i8]* %str, i32 0, i32 0
  call void @pputs_short(%struct.stream_s* %5, i8* %arraydecay2) #6
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %fp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 3
  %call3 = call i8* @pprintf_scan(%struct.stream_s* %6, i8* %add.ptr) #6
  %8 = bitcast [25 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 25, i8* %8) #1
  %9 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i8* %call3
}

; Function Attrs: nounwind uwtable
define i8* @pprintld2(%struct.stream_s* %s, i8* %format, i64 %v1, i64 %v2) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca i64, align 8
  %v2.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i64 %v1, i64* %v1.addr, align 8, !tbaa !13
  store i64 %v2, i64* %v2.addr, align 8, !tbaa !13
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i64, i64* %v1.addr, align 8, !tbaa !13
  %call = call i8* @pprintld1(%struct.stream_s* %1, i8* %2, i64 %3) #6
  %4 = load i64, i64* %v2.addr, align 8, !tbaa !13
  %call1 = call i8* @pprintld1(%struct.stream_s* %0, i8* %call, i64 %4) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprintld3(%struct.stream_s* %s, i8* %format, i64 %v1, i64 %v2, i64 %v3) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %v1.addr = alloca i64, align 8
  %v2.addr = alloca i64, align 8
  %v3.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i64 %v1, i64* %v1.addr, align 8, !tbaa !13
  store i64 %v2, i64* %v2.addr, align 8, !tbaa !13
  store i64 %v3, i64* %v3.addr, align 8, !tbaa !13
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i64, i64* %v1.addr, align 8, !tbaa !13
  %call = call i8* @pprintld1(%struct.stream_s* %1, i8* %2, i64 %3) #6
  %4 = load i64, i64* %v2.addr, align 8, !tbaa !13
  %5 = load i64, i64* %v3.addr, align 8, !tbaa !13
  %call1 = call i8* @pprintld2(%struct.stream_s* %0, i8* %call, i64 %4, i64 %5) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprints1(%struct.stream_s* %s, i8* %format, i8* %str) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %fp = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call = call i8* @pprintf_scan(%struct.stream_s* %1, i8* %2) #6
  store i8* %call, i8** %fp, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  call void @pputs_short(%struct.stream_s* %3, i8* %4) #6
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %fp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  %call1 = call i8* @pprintf_scan(%struct.stream_s* %5, i8* %add.ptr) #6
  %7 = bitcast i8** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprints2(%struct.stream_s* %s, i8* %format, i8* %str1, i8* %str2) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8* %str1, i8** %str1.addr, align 8, !tbaa !1
  store i8* %str2, i8** %str2.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str1.addr, align 8, !tbaa !1
  %call = call i8* @pprints1(%struct.stream_s* %1, i8* %2, i8* %3) #6
  %4 = load i8*, i8** %str2.addr, align 8, !tbaa !1
  %call1 = call i8* @pprints1(%struct.stream_s* %0, i8* %call, i8* %4) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @pprints3(%struct.stream_s* %s, i8* %format, i8* %str1, i8* %str2, i8* %str3) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %format.addr = alloca i8*, align 8
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %str3.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8* %str1, i8** %str1.addr, align 8, !tbaa !1
  store i8* %str2, i8** %str2.addr, align 8, !tbaa !1
  store i8* %str3, i8** %str3.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str1.addr, align 8, !tbaa !1
  %call = call i8* @pprints1(%struct.stream_s* %1, i8* %2, i8* %3) #6
  %4 = load i8*, i8** %str2.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %str3.addr, align 8, !tbaa !1
  %call1 = call i8* @pprints2(%struct.stream_s* %0, i8* %call, i8* %4, i8* %5) #6
  ret i8* %call1
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 8}
!9 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!9, !2, i64 16}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !3, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
