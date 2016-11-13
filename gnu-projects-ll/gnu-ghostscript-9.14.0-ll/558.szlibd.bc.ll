; ModuleID = './szlibd.bc'
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
@s_zlibD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_zlib_state, i32 (%struct.stream_state_s*)* @s_zlibD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_zlibD_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_zlibD_release, void (%struct.stream_state_s*)* @s_zlib_set_defaults, i32 (%struct.stream_state_s*)* @s_zlibD_reset }, align 8
@.str = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@s_zlibD_process.jaws_empty = internal constant [10 x i8] c"X\85\01\00\00\00\00\00\01\0A", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"warning: ignoring zlib error: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_init(%struct.stream_state_s* %st) #0 {
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
  %call = call i32 @s_zlib_alloc_dynamic_state(%struct.stream_zlib_state_s* %4) #5
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
  %no_wrapper = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %8, i32 0, i32 6
  %9 = load i32, i32* %no_wrapper, align 4, !tbaa !9
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %windowBits = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %10, i32 0, i32 5
  %11 = load i32, i32* %windowBits, align 4, !tbaa !10
  %sub = sub nsw i32 0, %11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %windowBits1 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %12, i32 0, i32 5
  %13 = load i32, i32* %windowBits1, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %13, %cond.false ]
  %call2 = call i32 @inflateInit2_(%struct.z_stream_s* %zstate, i32 %cond, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 112) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %14 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  call void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s* %14) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %cond.end
  %15 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %15, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %ignore_last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %ignore_last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  %zs = alloca %struct.z_stream_s*, align 8
  %p = alloca i8*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s2 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %ignore_last, i32* %ignore_last.addr, align 4, !tbaa !5
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
  %8 = load i8*, i8** %ptr, align 8, !tbaa !13
  store i8* %8, i8** %p, align 8, !tbaa !1
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !15
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %limit, align 8, !tbaa !17
  %cmp = icmp eq i8* %11, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %ptr2, align 8, !tbaa !13
  %16 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %limit3, align 8, !tbaa !18
  %cmp4 = icmp eq i8* %15, %17
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 0
  store i8* %add.ptr, i8** %next_in, align 8, !tbaa !19
  %20 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %limit7, align 8, !tbaa !18
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1
  store i32 %conv, i32* %avail_in, align 4, !tbaa !22
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %ptr8, align 8, !tbaa !15
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 3
  store i8* %add.ptr9, i8** %next_out, align 8, !tbaa !23
  %27 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %27, i32 0, i32 2
  %28 = load i8*, i8** %limit10, align 8, !tbaa !17
  %29 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %ptr11, align 8, !tbaa !15
  %sub.ptr.lhs.cast12 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %30 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 4
  store i32 %conv15, i32* %avail_out, align 4, !tbaa !24
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %total_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 2
  %33 = load i64, i64* %total_in, align 8, !tbaa !25
  %cmp16 = icmp eq i64 %33, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.6
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %avail_in18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 1
  %35 = load i32, i32* %avail_in18, align 4, !tbaa !22
  %cmp19 = icmp uge i32 %35, 10
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_in22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 0
  %37 = load i8*, i8** %next_in22, align 8, !tbaa !19
  %call = call i32 @memcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @s_zlibD_process.jaws_empty, i32 0, i32 0), i64 10) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %38 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %38, i32 0, i32 0
  %39 = load i8*, i8** %ptr24, align 8, !tbaa !13
  %add.ptr25 = getelementptr inbounds i8, i8* %39, i64 10
  store i8* %add.ptr25, i8** %ptr24, align 8, !tbaa !13
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.21, %land.lhs.true, %if.end.6
  %40 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %call27 = call i32 @inflate(%struct.z_stream_s* %40, i32 1) #5
  store i32 %call27, i32* %status, align 4, !tbaa !5
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_in28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_in28, align 8, !tbaa !19
  %add.ptr29 = getelementptr inbounds i8, i8* %42, i64 -1
  %43 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %43, i32 0, i32 0
  store i8* %add.ptr29, i8** %ptr30, align 8, !tbaa !13
  %44 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %next_out31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 3
  %45 = load i8*, i8** %next_out31, align 8, !tbaa !23
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 -1
  %46 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %46, i32 0, i32 1
  store i8* %add.ptr32, i8** %ptr33, align 8, !tbaa !15
  %47 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %47, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end.26
  %48 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr34 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %ptr34, align 8, !tbaa !15
  %50 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %50, i32 0, i32 2
  %51 = load i8*, i8** %limit35, align 8, !tbaa !17
  %cmp36 = icmp eq i8* %49, %51
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %52 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr38 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %ptr38, align 8, !tbaa !13
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp39 = icmp ugt i8* %53, %54
  %cond = select i1 %cmp39, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.42:                                         ; preds = %if.end.26
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.26
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %msg = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 6
  %56 = load i8*, i8** %msg, align 8, !tbaa !26
  %tobool43 = icmp ne i8* %56, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.98

land.lhs.true.44:                                 ; preds = %sw.default
  %57 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %58 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([21 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.45, label %cond.false.89

land.lhs.true.45:                                 ; preds = %land.lhs.true.44
  %call46 = call i64 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #6
  store i64 %call46, i64* %__s1_len, align 8, !tbaa !27
  %59 = load i64, i64* %__s1_len, align 8, !tbaa !27
  %cmp47 = icmp ult i64 %59, 4
  br i1 %cmp47, label %cond.true.49, label %cond.false.89

cond.true.49:                                     ; preds = %land.lhs.true.45
  %60 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %msg51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 6
  %62 = load i8*, i8** %msg51, align 8, !tbaa !26
  store i8* %62, i8** %__s2, align 8, !tbaa !1
  %63 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !28
  %conv53 = zext i8 %64 to i32
  %65 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv54 = zext i8 %66 to i32
  %sub = sub nsw i32 %conv53, %conv54
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %67 = load i64, i64* %__s1_len, align 8, !tbaa !27
  %cmp55 = icmp ugt i64 %67, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.87

land.lhs.true.57:                                 ; preds = %cond.true.49
  %68 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %68, 0
  br i1 %cmp58, label %if.then.60, label %if.end.87

if.then.60:                                       ; preds = %land.lhs.true.57
  %69 = load i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !28
  %conv61 = zext i8 %69 to i32
  %70 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx62, align 1, !tbaa !28
  %conv63 = zext i8 %71 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  store i32 %sub64, i32* %__result, align 4, !tbaa !5
  %72 = load i64, i64* %__s1_len, align 8, !tbaa !27
  %cmp65 = icmp ugt i64 %72, 1
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.86

land.lhs.true.67:                                 ; preds = %if.then.60
  %73 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %73, 0
  br i1 %cmp68, label %if.then.70, label %if.end.86

if.then.70:                                       ; preds = %land.lhs.true.67
  %74 = load i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !28
  %conv71 = zext i8 %74 to i32
  %75 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx72, align 1, !tbaa !28
  %conv73 = zext i8 %76 to i32
  %sub74 = sub nsw i32 %conv71, %conv73
  store i32 %sub74, i32* %__result, align 4, !tbaa !5
  %77 = load i64, i64* %__s1_len, align 8, !tbaa !27
  %cmp75 = icmp ugt i64 %77, 2
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.85

land.lhs.true.77:                                 ; preds = %if.then.70
  %78 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %78, 0
  br i1 %cmp78, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %land.lhs.true.77
  %79 = load i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !28
  %conv81 = zext i8 %79 to i32
  %80 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx82, align 1, !tbaa !28
  %conv83 = zext i8 %81 to i32
  %sub84 = sub nsw i32 %conv81, %conv83
  store i32 %sub84, i32* %__result, align 4, !tbaa !5
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.then.70
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.67, %if.then.60
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.57, %cond.true.49
  %82 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %82, i32* %tmp88, !tbaa !5
  %83 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = load i32, i32* %tmp88, !tbaa !5
  br label %cond.end.92

cond.false.89:                                    ; preds = %land.lhs.true.45, %land.lhs.true.44
  %86 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %msg90 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %86, i32 0, i32 6
  %87 = load i8*, i8** %msg90, align 8, !tbaa !26
  %call91 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %87) #7
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %if.end.87
  %cond93 = phi i32 [ %85, %if.end.87 ], [ %call91, %cond.false.89 ]
  store i32 %cond93, i32* %tmp, !tbaa !5
  %88 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = load i32, i32* %tmp, !tbaa !5
  %tobool94 = icmp ne i32 %90, 0
  br i1 %tobool94, label %if.end.98, label %if.then.95

if.then.95:                                       ; preds = %cond.end.92
  %91 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %91, i32 0, i32 1
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %zs, align 8, !tbaa !1
  %msg96 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %93, i32 0, i32 6
  %94 = load i8*, i8** %msg96, align 8, !tbaa !26
  %call97 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* %94) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %cond.end.92, %sw.default
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.98, %if.then.95, %sw.bb.42, %cond.end, %if.then.23, %if.then.5, %if.then
  %95 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast %struct.z_stream_s** %zs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal void @s_zlibD_release(%struct.stream_state_s* %st) #0 {
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
  %cmp = icmp ne %struct.zlib_dynamic_state_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic1 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %5, i32 0, i32 11
  %6 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic1, align 8, !tbaa !7
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %6, i32 0, i32 2
  %call = call i32 @inflateEnd(%struct.z_stream_s* %zstate) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  call void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s* %7) #5
  %8 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret void
}

declare void @s_zlib_set_defaults(%struct.stream_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_reset(%struct.stream_state_s* %st) #0 {
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
  %call = call i32 @inflateReset(%struct.z_stream_s* %zstate) #5
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

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #1

declare void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @inflate(%struct.z_stream_s*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

declare i32 @inflateEnd(%struct.z_stream_s*) #1

declare i32 @inflateReset(%struct.z_stream_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

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
!9 = !{!8, !6, i64 112}
!10 = !{!8, !6, i64 108}
!11 = !{!12, !6, i64 24}
!12 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!13 = !{!14, !2, i64 0}
!14 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!16, !2, i64 8}
!16 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!16, !2, i64 16}
!18 = !{!14, !2, i64 8}
!19 = !{!20, !2, i64 0}
!20 = !{!"z_stream_s", !2, i64 0, !6, i64 8, !21, i64 16, !2, i64 24, !6, i64 32, !21, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !6, i64 88, !21, i64 96, !21, i64 104}
!21 = !{!"long", !3, i64 0}
!22 = !{!20, !6, i64 8}
!23 = !{!20, !2, i64 24}
!24 = !{!20, !6, i64 32}
!25 = !{!20, !21, i64 16}
!26 = !{!20, !2, i64 48}
!27 = !{!21, !21, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!12, !2, i64 8}
