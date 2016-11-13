; ModuleID = './sfxstdio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }

@sread_file.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_file_available, i32 (%struct.stream_s*, i64)* @s_file_read_seek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_file_read_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_file_read_process, i32 (%struct.stream_s*, i32)* @s_file_switch }, align 8
@swrite_file.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_file_write_seek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_file_write_flush, i32 (%struct.stream_s*)* @s_file_write_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_file_write_process, i32 (%struct.stream_s*, i32)* @s_file_switch }, align 8
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @sread_file(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %had_error = alloca i32, align 4
  %curpos = alloca i64, align 8
  %seekable = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %had_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @ferror(%struct._IO_FILE* %1) #4
  store i32 %call, i32* %had_error, align 4, !tbaa !5
  %2 = bitcast i64* %curpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call1 = call i64 @gp_ftell_64(%struct._IO_FILE* %3) #5
  store i64 %call1, i64* %curpos, align 8, !tbaa !7
  %4 = bitcast i32* %seekable to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i64, i64* %curpos, align 8, !tbaa !7
  %cmp = icmp ne i64 %5, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %7 = load i64, i64* %curpos, align 8, !tbaa !7
  %call2 = call i32 @gp_fseek_64(%struct._IO_FILE* %6, i64 %7, i32 0) #5
  %cmp3 = icmp eq i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %seekable, align 4, !tbaa !5
  %9 = load i32, i32* %had_error, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @clearerr(%struct._IO_FILE* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %13 = load i32, i32* %len.addr, align 4, !tbaa !5
  %14 = load i32, i32* %seekable, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %14, 0
  %cond = select i1 %tobool4, i32 5, i32 1
  call void @s_std_init(%struct.stream_s* %11, i8* %12, i32 %13, %struct.stream_procs* @sread_file.p, i32 %cond) #5
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 26
  store %struct._IO_FILE* %15, %struct._IO_FILE** %file5, align 8, !tbaa !9
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 11
  %18 = load i8, i8* %modes, align 1, !tbaa !15
  %conv = zext i8 %18 to i32
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !16
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !17
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !18
  %22 = bitcast i32* %seekable to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i64* %curpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast i32* %had_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_available(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  %max_avail = alloca i64, align 8
  %buf_avail = alloca i64, align 8
  %pos = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = bitcast i64* %max_avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 30
  %2 = load i64, i64* %file_limit, align 8, !tbaa !18
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %3) #5
  %sub = sub nsw i64 %2, %call
  store i64 %sub, i64* %max_avail, align 8, !tbaa !7
  %4 = bitcast i64* %buf_avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %6 = load i8*, i8** %limit, align 8, !tbaa !19
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %buf_avail, align 8, !tbaa !7
  %9 = load i64, i64* %max_avail, align 8, !tbaa !7
  %10 = load i64, i64* %buf_avail, align 8, !tbaa !7
  %cmp = icmp slt i64 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %max_avail, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* %buf_avail, align 8, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ]
  %13 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %cond, i64* %13, align 8, !tbaa !7
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 11
  %15 = load i8, i8* %modes, align 1, !tbaa !15
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 4
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %16 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 26
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %call5 = call i64 @gp_ftell_64(%struct._IO_FILE* %19) #5
  store i64 %call5, i64* %pos, align 8, !tbaa !7
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file6, align 8, !tbaa !9
  %call7 = call i32 @gp_fseek_64(%struct._IO_FILE* %21, i64 0, i32 2) #5
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 26
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file9, align 8, !tbaa !9
  %call10 = call i64 @gp_ftell_64(%struct._IO_FILE* %23) #5
  store i64 %call10, i64* %end, align 8, !tbaa !7
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 26
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file11, align 8, !tbaa !9
  %26 = load i64, i64* %pos, align 8, !tbaa !7
  %call12 = call i32 @gp_fseek_64(%struct._IO_FILE* %25, i64 %26, i32 0) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %27 = load i64, i64* %end, align 8, !tbaa !7
  %28 = load i64, i64* %pos, align 8, !tbaa !7
  %sub16 = sub nsw i64 %27, %28
  %29 = load i64, i64* %buf_avail, align 8, !tbaa !7
  %add = add nsw i64 %29, %sub16
  store i64 %add, i64* %buf_avail, align 8, !tbaa !7
  %30 = load i64, i64* %max_avail, align 8, !tbaa !7
  %31 = load i64, i64* %buf_avail, align 8, !tbaa !7
  %cmp17 = icmp slt i64 %30, %31
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.end.15
  %32 = load i64, i64* %max_avail, align 8, !tbaa !7
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.end.15
  %33 = load i64, i64* %buf_avail, align 8, !tbaa !7
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i64 [ %32, %cond.true.19 ], [ %33, %cond.false.20 ]
  %34 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %cond22, i64* %34, align 8, !tbaa !7
  %35 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %36 = load i64, i64* %35, align 8, !tbaa !7
  %cmp23 = icmp eq i64 %36, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %cond.end.21
  %37 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %37, align 8, !tbaa !7
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %cond.end.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.14, %if.then.8
  %38 = bitcast i64* %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.else:                                          ; preds = %cond.end
  %40 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %41 = load i64, i64* %40, align 8, !tbaa !7
  %cmp28 = icmp eq i64 %41, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.else
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 26
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file30, align 8, !tbaa !9
  %call31 = call i32 @feof(%struct._IO_FILE* %43) #4
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  %44 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %44, align 8, !tbaa !7
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %cleanup
  %45 = bitcast i64* %buf_avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast i64* %max_avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_read_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %end = alloca i64, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !7
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !19
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 6
  %4 = load i8*, i8** %cbuf, align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  store i64 %add, i64* %end, align 8, !tbaa !7
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 13
  %8 = load i64, i64* %position, align 8, !tbaa !23
  %sub = sub nsw i64 %6, %8
  store i64 %sub, i64* %offset, align 8, !tbaa !7
  %9 = load i64, i64* %offset, align 8, !tbaa !7
  %cmp = icmp sge i64 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %offset, align 8, !tbaa !7
  %11 = load i64, i64* %end, align 8, !tbaa !7
  %cmp1 = icmp sle i64 %10, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  %13 = load i8*, i8** %cbuf2, align 8, !tbaa !22
  %14 = load i64, i64* %offset, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %r5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r5, i32 0, i32 0
  store i8* %add.ptr3, i8** %ptr, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %cmp6 = icmp slt i64 %16, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 30
  %19 = load i64, i64* %file_limit, align 8, !tbaa !18
  %cmp7 = icmp sgt i64 %17, %19
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 29
  %23 = load i64, i64* %file_offset, align 8, !tbaa !17
  %24 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %add9 = add nsw i64 %23, %24
  %call = call i32 @gp_fseek_64(%struct._IO_FILE* %21, i64 %add9, i32 0) #5
  %cmp10 = icmp ne i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false.8
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 6
  %26 = load i8*, i8** %cbuf13, align 8, !tbaa !22
  %add.ptr14 = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %r16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_read_s*
  %limit17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r16, i32 0, i32 1
  store i8* %add.ptr14, i8** %limit17, align 8, !tbaa !19
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %r19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_read_s*
  %ptr20 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r19, i32 0, i32 0
  store i8* %add.ptr14, i8** %ptr20, align 8, !tbaa !21
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !24
  %30 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 13
  store i64 %30, i64* %position21, align 8, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %32 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i64* %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @s_std_read_reset(%struct.stream_s*) #1

declare i32 @s_std_read_flush(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_file_read_close(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !9
  store %struct._IO_FILE* %2, %struct._IO_FILE** %file, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %cmp = icmp ne %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file2, align 8, !tbaa !9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i32 @fclose(%struct._IO_FILE* %5) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -2, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %max_count = alloca i64, align 8
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %limit_count = alloca i64, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_s*
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 26
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !9
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file, align 8, !tbaa !1
  %6 = bitcast i64* %max_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %limit, align 8, !tbaa !25
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !27
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %max_count, align 8, !tbaa !7
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 1, i32* %status, align 4, !tbaa !5
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 30
  %14 = load i64, i64* %file_limit, align 8, !tbaa !18
  %cmp = icmp slt i64 %14, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %15 = bitcast i64* %limit_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 29
  %17 = load i64, i64* %file_offset, align 8, !tbaa !17
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 30
  %19 = load i64, i64* %file_limit2, align 8, !tbaa !18
  %add = add nsw i64 %17, %19
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i64 @gp_ftell_64(%struct._IO_FILE* %20) #5
  %sub = sub nsw i64 %add, %call
  store i64 %sub, i64* %limit_count, align 8, !tbaa !7
  %21 = load i64, i64* %max_count, align 8, !tbaa !7
  %22 = load i64, i64* %limit_count, align 8, !tbaa !7
  %cmp3 = icmp sgt i64 %21, %22
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %23 = load i64, i64* %limit_count, align 8, !tbaa !7
  store i64 %23, i64* %max_count, align 8, !tbaa !7
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %24 = bitcast i64* %limit_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %25 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %ptr6, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i64, i64* %max_count, align 8, !tbaa !7
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call7 = call i64 @fread(i8* %add.ptr, i64 1, i64 %27, %struct._IO_FILE* %28) #5
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %29 = load i32, i32* %count, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %29, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.5
  %30 = load i32, i32* %count, align 4, !tbaa !5
  %31 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %ptr12, align 8, !tbaa !27
  %idx.ext = sext i32 %30 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr13, i8** %ptr12, align 8, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call14 = call i32 @ferror(%struct._IO_FILE* %33) #4
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.19

cond.false:                                       ; preds = %do.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call15 = call i32 @feof(%struct._IO_FILE* %34) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %35 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i32 [ -1, %cond.true.17 ], [ %35, %cond.false.18 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ -2, %cond.true ], [ %cond, %cond.end ]
  %36 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i64* %max_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  ret i32 %cond20
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_switch(%struct.stream_s* %s, i32 %writing) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %writing.addr = alloca i32, align 4
  %modes = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !5
  %0 = bitcast i32* %modes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 28
  %2 = load i32, i32* %file_modes, align 4, !tbaa !16
  store i32 %2, i32* %modes, align 4, !tbaa !5
  %3 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 26
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !9
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file, align 8, !tbaa !1
  %6 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %writing.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 28
  %9 = load i32, i32* %file_modes2, align 4, !tbaa !16
  %and = and i32 %9, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %10) #5
  store i64 %call, i64* %pos, align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %12 = load i64, i64* %pos, align 8, !tbaa !7
  %call5 = call i32 @gp_fseek_64(%struct._IO_FILE* %11, i64 %12, i32 0) #5
  %13 = load i32, i32* %modes, align 4, !tbaa !5
  %and6 = and i32 %13, 8
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 6
  %17 = load i8*, i8** %cbuf, align 8, !tbaa !22
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 8
  %19 = load i32, i32* %cbsize, align 4, !tbaa !28
  call void @sappend_file(%struct.stream_s* %14, %struct._IO_FILE* %15, i8* %17, i32 %19) #5
  br label %if.end.11

if.else:                                          ; preds = %do.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 6
  %23 = load i8*, i8** %cbuf9, align 8, !tbaa !22
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 8
  %25 = load i32, i32* %cbsize10, align 4, !tbaa !28
  call void @swrite_file(%struct.stream_s* %20, %struct._IO_FILE* %21, i8* %23, i32 %25) #5
  %26 = load i64, i64* %pos, align 8, !tbaa !7
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 13
  store i64 %26, i64* %position, align 8, !tbaa !23
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %28 = load i32, i32* %modes, align 4, !tbaa !5
  %conv = trunc i32 %28 to i8
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 11
  store i8 %conv, i8* %modes12, align 1, !tbaa !15
  br label %if.end.35

if.else.13:                                       ; preds = %entry
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 28
  %31 = load i32, i32* %file_modes14, align 4, !tbaa !16
  %and15 = and i32 %31, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.else.13
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else.13
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call19 = call i64 @stell(%struct.stream_s* %32) #5
  store i64 %call19, i64* %pos, align 8, !tbaa !7
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.18
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %34 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !29
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call23 = call i32 %34(%struct.stream_s* %35) #5
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %do.end.22
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call27 = call i32 @gp_fseek_64(%struct._IO_FILE* %36, i64 0, i32 1) #5
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 6
  %40 = load i8*, i8** %cbuf28, align 8, !tbaa !22
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 8
  %42 = load i32, i32* %cbsize29, align 4, !tbaa !28
  call void @sread_file(%struct.stream_s* %37, %struct._IO_FILE* %38, i8* %40, i32 %42) #5
  %43 = load i32, i32* %modes, align 4, !tbaa !5
  %and30 = and i32 %43, 8
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 11
  %45 = load i8, i8* %modes31, align 1, !tbaa !15
  %conv32 = zext i8 %45 to i32
  %or = or i32 %conv32, %and30
  %conv33 = trunc i32 %or to i8
  store i8 %conv33, i8* %modes31, align 1, !tbaa !15
  %46 = load i64, i64* %pos, align 8, !tbaa !7
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 13
  store i64 %46, i64* %position34, align 8, !tbaa !23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.26, %if.end.11
  %48 = load i32, i32* %modes, align 4, !tbaa !5
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 28
  store i32 %48, i32* %file_modes36, align 4, !tbaa !16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.25, %if.then.17, %if.then.4
  %50 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i32* %modes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i64 @gp_ftell_64(%struct._IO_FILE*) #1

declare i32 @gp_fseek_64(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #3

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @sread_subfile(%struct.stream_s* %s, i64 %start, i64 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !7
  store i64 %length, i64* %length.addr, align 8, !tbaa !7
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 26
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 11
  %3 = load i8, i8* %modes, align 1, !tbaa !15
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 5
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 29
  %5 = load i64, i64* %file_offset, align 8, !tbaa !17
  %cmp4 = icmp ne i64 %5, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 30
  %7 = load i64, i64* %file_limit, align 8, !tbaa !18
  %cmp7 = icmp ne i64 %7, 9223372036854775807
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 13
  %9 = load i64, i64* %position, align 8, !tbaa !23
  %10 = load i64, i64* %start.addr, align 8, !tbaa !7
  %cmp10 = icmp slt i64 %9, %10
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 13
  %12 = load i64, i64* %position13, align 8, !tbaa !23
  %13 = load i64, i64* %start.addr, align 8, !tbaa !7
  %14 = load i64, i64* %length.addr, align 8, !tbaa !7
  %add = add nsw i64 %13, %14
  %cmp14 = icmp sgt i64 %12, %add
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.12, %lor.lhs.false.9
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load i64, i64* %start.addr, align 8, !tbaa !7
  %call = call i32 @spseek(%struct.stream_s* %15, i64 %16) #5
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.12
  %17 = load i64, i64* %start.addr, align 8, !tbaa !7
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 13
  %19 = load i64, i64* %position18, align 8, !tbaa !23
  %sub = sub nsw i64 %19, %17
  store i64 %sub, i64* %position18, align 8, !tbaa !23
  %20 = load i64, i64* %start.addr, align 8, !tbaa !7
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 29
  store i64 %20, i64* %file_offset19, align 8, !tbaa !17
  %22 = load i64, i64* %length.addr, align 8, !tbaa !7
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 30
  store i64 %22, i64* %file_limit20, align 8, !tbaa !18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @spseek(%struct.stream_s*, i64) #1

; Function Attrs: nounwind uwtable
define void @swrite_file(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %3, %4
  %cond = select i1 %cmp, i32 2, i32 6
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @swrite_file.p, i32 %cond) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 26
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file1, align 8, !tbaa !9
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 11
  %8 = load i8, i8* %modes, align 1, !tbaa !15
  %conv = zext i8 %8 to i32
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !16
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !17
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !18
  ret void
}

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %2 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !29
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.stream_s* %3) #5
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
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 26
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %8 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %call1 = call i32 @gp_fseek_64(%struct._IO_FILE* %7, i64 %8, i32 0) #5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %9 = load i64, i64* %pos.addr, align 8, !tbaa !7
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 13
  store i64 %9, i64* %position, align 8, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @s_std_write_reset(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %result = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %1, i32 0) #5
  store i32 %call, i32* %result, align 4, !tbaa !5
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 26
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %call1 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %4 = load i32, i32* %result, align 4, !tbaa !5
  %5 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %0, i32 1) #5
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @s_file_read_close(%struct.stream_s* %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !19
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %8 = bitcast %struct.stream_state_s* %7 to %struct.stream_s*
  %file2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 26
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file2, align 8, !tbaa !9
  store %struct._IO_FILE* %9, %struct._IO_FILE** %file, align 8, !tbaa !1
  %10 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %ptr3, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i32, i32* %count, align 4, !tbaa !5
  %conv4 = zext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %add.ptr, i64 1, i64 %conv4, %struct._IO_FILE* %14) #5
  %conv5 = trunc i64 %call to i32
  store i32 %conv5, i32* %written, align 4, !tbaa !5
  %15 = load i32, i32* %written, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %written, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %16 = load i32, i32* %written, align 4, !tbaa !5
  %17 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %ptr9, align 8, !tbaa !21
  %idx.ext = sext i32 %16 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr10, i8** %ptr9, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call11 = call i32 @ferror(%struct._IO_FILE* %19) #4
  %tobool = icmp ne i32 %call11, 0
  %cond = select i1 %tobool, i32 -2, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %20 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  br label %do.body.12

do.body.12:                                       ; preds = %if.else
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.14, %do.end
  %22 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @sappend_file(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @swrite_file(%struct.stream_s* %0, %struct._IO_FILE* %1, i8* %2, i32 %3) #5
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 11
  store i8 10, i8* %modes, align 1, !tbaa !15
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 11
  %6 = load i8, i8* %modes1, align 1, !tbaa !15
  %conv = zext i8 %6 to i32
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !16
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @gp_fseek_64(%struct._IO_FILE* %8, i64 0, i32 2) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i64 @gp_ftell_64(%struct._IO_FILE* %9) #5
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 13
  store i64 %call2, i64* %position, align 8, !tbaa !23
  ret void
}

declare i64 @stell(%struct.stream_s*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @s_process_write_buf(%struct.stream_s*, i32) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 304}
!10 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !3, i64 154, !3, i64 155, !12, i64 160, !8, i64 176, !13, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !11, i64 264, !11, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !14, i64 312, !6, i64 328, !8, i64 336, !8, i64 344}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!13 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!14 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!15 = !{!10, !3, i64 155}
!16 = !{!10, !6, i64 328}
!17 = !{!10, !8, i64 336}
!18 = !{!10, !8, i64 344}
!19 = !{!20, !2, i64 8}
!20 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!20, !2, i64 0}
!22 = !{!10, !2, i64 136}
!23 = !{!10, !8, i64 176}
!24 = !{!10, !11, i64 152}
!25 = !{!26, !2, i64 16}
!26 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!26, !2, i64 8}
!28 = !{!10, !6, i64 148}
!29 = !{!10, !2, i64 208}
