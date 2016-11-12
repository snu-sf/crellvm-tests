; ModuleID = './szlibe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, {}* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_zlib_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, %struct.zlib_dynamic_state_s* }
%struct.zlib_dynamic_state_s = type { %struct.gs_memory_s*, %struct.zlib_block_s*, %struct.z_stream_s }
%struct.zlib_block_s = type { i8*, %struct.zlib_block_s*, %struct.zlib_block_s* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@st_zlib_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_zlibE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_zlib_state, i32 (%struct.stream_state_s*)* @s_zlibE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_zlibE_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_zlibE_release, void (%struct.stream_state_s*)* @s_zlib_set_defaults, i32 (%struct.stream_state_s*)* @s_zlibE_reset }, align 8
@.str = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  store %struct.stream_zlib_state_s* %2, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %call = call i32 @s_zlib_alloc_dynamic_state(%struct.stream_zlib_state_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %6, i32 0, i32 11
  %7 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !7
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %7, i32 0, i32 2
  %8 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %8, i32 0, i32 7
  %9 = load i32, i32* %level, align 4, !tbaa !9
  %10 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %method = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %10, i32 0, i32 8
  %11 = load i32, i32* %method, align 4, !tbaa !10
  %12 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %no_wrapper = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %12, i32 0, i32 6
  %13 = load i32, i32* %no_wrapper, align 4, !tbaa !11
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %windowBits = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %14, i32 0, i32 5
  %15 = load i32, i32* %windowBits, align 4, !tbaa !12
  %sub = sub nsw i32 0, %15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %windowBits1 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %16, i32 0, i32 5
  %17 = load i32, i32* %windowBits1, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %17, %cond.false ]
  %18 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %memLevel = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %18, i32 0, i32 9
  %19 = load i32, i32* %memLevel, align 4, !tbaa !13
  %20 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %strategy = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %20, i32 0, i32 10
  %21 = load i32, i32* %strategy, align 4, !tbaa !14
  %call2 = call i32 @deflateInit2_(%struct.z_stream_s* %zstate, i32 %9, i32 %11, i32 %cond, i32 %19, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 112) #3
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  %zs = alloca %struct.z_stream_s*, align 8
  %p = alloca i8*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  store %struct.stream_zlib_state_s* %2, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.z_stream_s** %zs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %4, i32 0, i32 11
  %5 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !7
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %5, i32 0, i32 2
  store %struct.z_stream_s* %zstate, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !15
  store i8* %8, i8** %p, align 8, !tbaa !1
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %limit, align 8, !tbaa !19
  %cmp = icmp eq i8* %11, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 1
  %16 = load i8*, i8** %limit2, align 8, !tbaa !20
  %cmp3 = icmp eq i8* %14, %16
  br i1 %cmp3, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 0
  store i8* %add.ptr, i8** %next_in, align 8, !tbaa !21
  %20 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit6 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %limit6, align 8, !tbaa !20
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1
  store i32 %conv, i32* %avail_in, align 4, !tbaa !24
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %ptr7, align 8, !tbaa !17
  %add.ptr8 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 3
  store i8* %add.ptr8, i8** %next_out, align 8, !tbaa !25
  %27 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %27, i32 0, i32 2
  %28 = load i8*, i8** %limit9, align 8, !tbaa !19
  %29 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %ptr10, align 8, !tbaa !17
  %sub.ptr.lhs.cast11 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %30 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %conv14 = trunc i64 %sub.ptr.sub13 to i32
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 4
  store i32 %conv14, i32* %avail_out, align 4, !tbaa !26
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %33 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %33, 0
  %cond = select i1 %tobool15, i32 4, i32 0
  %call = call i32 @deflate(%struct.z_stream_s* %32, i32 %cond) #3
  store i32 %call, i32* %status, align 4, !tbaa !5
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_in16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 0
  %35 = load i8*, i8** %next_in16, align 8, !tbaa !21
  %add.ptr17 = getelementptr inbounds i8, i8* %35, i64 -1
  %36 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %36, i32 0, i32 0
  store i8* %add.ptr17, i8** %ptr18, align 8, !tbaa !15
  %37 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_out19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %37, i32 0, i32 3
  %38 = load i8*, i8** %next_out19, align 8, !tbaa !25
  %add.ptr20 = getelementptr inbounds i8, i8* %38, i64 -1
  %39 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %39, i32 0, i32 1
  store i8* %add.ptr20, i8** %ptr21, align 8, !tbaa !17
  %40 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.end.5
  %41 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %41, i32 0, i32 1
  %42 = load i8*, i8** %ptr22, align 8, !tbaa !17
  %43 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %43, i32 0, i32 2
  %44 = load i8*, i8** %limit23, align 8, !tbaa !19
  %cmp24 = icmp eq i8* %42, %44
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %45 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %45, i32 0, i32 0
  %46 = load i8*, i8** %ptr26, align 8, !tbaa !15
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp27 = icmp ugt i8* %46, %47
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false
  %48 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %48, 0
  %lnot = xor i1 %tobool29, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %49 = phi i1 [ false, %cond.false ], [ %lnot, %land.rhs ]
  %cond30 = select i1 %49, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.true
  %cond31 = phi i32 [ 1, %cond.true ], [ %cond30, %land.end ]
  store i32 %cond31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %if.end.5
  %50 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %50, 0
  br i1 %tobool33, label %land.rhs.34, label %land.end.39

land.rhs.34:                                      ; preds = %sw.bb.32
  %51 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %51, i32 0, i32 0
  %52 = load i8*, i8** %ptr35, align 8, !tbaa !15
  %53 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit36 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %53, i32 0, i32 1
  %54 = load i8*, i8** %limit36, align 8, !tbaa !20
  %cmp37 = icmp eq i8* %52, %54
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.34, %sw.bb.32
  %55 = phi i1 [ false, %sw.bb.32 ], [ %cmp37, %land.rhs.34 ]
  %cond40 = select i1 %55, i32 0, i32 -2
  store i32 %cond40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %land.end.39, %cond.end, %if.then.4, %if.then
  %56 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.z_stream_s** %zs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal void @s_zlibE_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  store %struct.stream_zlib_state_s* %2, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %3, i32 0, i32 11
  %4 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !7
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %4, i32 0, i32 2
  %call = call i32 @deflateEnd(%struct.z_stream_s* %zstate) #3
  %5 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  call void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s* %5) #3
  %6 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret void
}

declare void @s_zlib_set_defaults(%struct.stream_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_reset(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  store %struct.stream_zlib_state_s* %2, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %3, i32 0, i32 11
  %4 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !7
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %4, i32 0, i32 2
  %call = call i32 @deflateReset(%struct.z_stream_s* %zstate) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @s_zlib_alloc_dynamic_state(%struct.stream_zlib_state_s*) #1

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @deflate(%struct.z_stream_s*, i32) #1

declare i32 @deflateEnd(%struct.z_stream_s*) #1

declare void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s*) #1

declare i32 @deflateReset(%struct.z_stream_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 136}
!8 = !{!"stream_zlib_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !2, i64 136}
!9 = !{!8, !6, i64 116}
!10 = !{!8, !6, i64 120}
!11 = !{!8, !6, i64 112}
!12 = !{!8, !6, i64 108}
!13 = !{!8, !6, i64 124}
!14 = !{!8, !6, i64 128}
!15 = !{!16, !2, i64 0}
!16 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!18, !2, i64 8}
!18 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!18, !2, i64 16}
!20 = !{!16, !2, i64 8}
!21 = !{!22, !2, i64 0}
!22 = !{!"z_stream_s", !2, i64 0, !6, i64 8, !23, i64 16, !2, i64 24, !6, i64 32, !23, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !6, i64 88, !23, i64 96, !23, i64 104}
!23 = !{!"long", !3, i64 0}
!24 = !{!22, !6, i64 8}
!25 = !{!22, !2, i64 24}
!26 = !{!22, !6, i64 32}
