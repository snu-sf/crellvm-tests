; ModuleID = './sa85d.bc'
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
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }

@st_A85D_state = internal constant %struct.gs_memory_struct_type_s { i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_A85D_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_A85D_state, i32 (%struct.stream_state_s*)* @s_A85D_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_A85D_process, i32 2, i32 4, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ASCII85Decode state\00", align 1
@scan_char_array = external constant [260 x i8], align 16

; Function Attrs: nounwind uwtable
define internal i32 @s_A85D_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_A85D_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_A85D_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_A85D_state_s*
  store %struct.stream_A85D_state_s* %2, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %3, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !5
  %4 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %word = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %4, i32 0, i32 6
  store i64 0, i64* %word, align 8, !tbaa !9
  %5 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %5, i32 0, i32 5
  store i32 0, i32* %odd, align 4, !tbaa !10
  %6 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %require_eod = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %6, i32 0, i32 8
  store i32 0, i32* %require_eod, align 4, !tbaa !11
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = bitcast %struct.stream_A85D_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_A85D_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_A85D_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %r = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %ccount = alloca i32, align 4
  %word = alloca i64, align 8
  %status = alloca i32, align 4
  %ch = alloca i32, align 4
  %ccode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !12
  %0 = bitcast %struct.stream_A85D_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_A85D_state_s*
  store %struct.stream_A85D_state_s* %2, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !13
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !15
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !17
  %12 = load i32, i32* %last.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i32 0, i32 7
  %idx.ext = sext i32 %cond to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.neg
  store i8* %add.ptr, i8** %rlimit, align 8, !tbaa !1
  %13 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp = icmp ugt i8* %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i8*, i8** %rlimit, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ %16, %cond.true ], [ %17, %cond.false ]
  store i8* %cond2, i8** %r, align 8, !tbaa !1
  %18 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %19, i32 0, i32 2
  %20 = load i8*, i8** %limit3, align 8, !tbaa !18
  store i8* %20, i8** %wlimit, align 8, !tbaa !1
  %21 = bitcast i32* %ccount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %22, i32 0, i32 5
  %23 = load i32, i32* %odd, align 4, !tbaa !10
  store i32 %23, i32* %ccount, align 4, !tbaa !12
  %24 = bitcast i64* %word to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %word4 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %25, i32 0, i32 6
  %26 = load i64, i64* %word4, align 8, !tbaa !9
  store i64 %26, i64* %word, align 8, !tbaa !19
  %27 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  store i32 0, i32* %status, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %cond.end
  %28 = load i8*, i8** %r, align 8, !tbaa !1
  %29 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %limit5, align 8, !tbaa !17
  %cmp6 = icmp ult i8* %28, %30
  br i1 %cmp6, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  %31 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %32 = load i8, i8* %incdec.ptr, align 1, !tbaa !20
  %conv = zext i8 %32 to i32
  %cmp7 = icmp eq i32 %conv, 126
  br i1 %cmp7, label %if.then, label %if.end.20

if.then:                                          ; preds = %while.body
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end, %if.then
  %33 = load i8*, i8** %r, align 8, !tbaa !1
  %34 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %34, i32 0, i32 1
  %35 = load i8*, i8** %limit10, align 8, !tbaa !17
  %cmp11 = icmp ult i8* %33, %35
  br i1 %cmp11, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.9
  %36 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr14, i8** %r, align 8, !tbaa !1
  %37 = load i8, i8* %incdec.ptr14, align 1, !tbaa !20
  %conv15 = zext i8 %37 to i32
  %cmp16 = icmp eq i32 %conv15, 62
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %while.body.13
  %38 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit19 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %limit19, align 8, !tbaa !17
  store i8* %39, i8** %rlimit, align 8, !tbaa !1
  %40 = load i8*, i8** %rlimit, align 8, !tbaa !1
  store i8* %40, i8** %r, align 8, !tbaa !1
  br label %while.end

if.end:                                           ; preds = %while.body.13
  br label %while.cond.9

while.end:                                        ; preds = %if.then.18, %while.cond.9
  br label %if.end.20

if.end.20:                                        ; preds = %while.end, %while.body
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  br label %while.cond.22

while.cond.22:                                    ; preds = %cleanup.cont, %while.end.21
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp23 = icmp ult i8* %41, %42
  br i1 %cmp23, label %while.body.25, label %while.end.184

while.body.25:                                    ; preds = %while.cond.22
  %43 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8, !tbaa !1
  %45 = load i8, i8* %incdec.ptr26, align 1, !tbaa !20
  %conv27 = zext i8 %45 to i32
  store i32 %conv27, i32* %ch, align 4, !tbaa !12
  %46 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load i32, i32* %ch, align 4, !tbaa !12
  %sub = sub nsw i32 %47, 33
  store i32 %sub, i32* %ccode, align 4, !tbaa !12
  %48 = load i32, i32* %ccode, align 4, !tbaa !12
  %cmp28 = icmp ult i32 %48, 85
  br i1 %cmp28, label %if.then.30, label %if.else.61

if.then.30:                                       ; preds = %while.body.25
  %49 = load i32, i32* %ccount, align 4, !tbaa !12
  %cmp31 = icmp eq i32 %49, 4
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.30
  %50 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %51 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp34 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.33
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !12
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.38:                                        ; preds = %if.then.33
  %53 = load i64, i64* %word, align 8, !tbaa !19
  %cmp39 = icmp uge i64 %53, 50529027
  br i1 %cmp39, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.38
  %54 = load i32, i32* %ccode, align 4, !tbaa !12
  %cmp41 = icmp ugt i32 %54, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  store i32 -2, i32* %status, align 4, !tbaa !12
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.44:                                        ; preds = %land.lhs.true, %if.end.38
  %55 = load i64, i64* %word, align 8, !tbaa !19
  %mul = mul i64 %55, 85
  %56 = load i32, i32* %ccode, align 4, !tbaa !12
  %conv45 = zext i32 %56 to i64
  %add = add i64 %mul, %conv45
  store i64 %add, i64* %word, align 8, !tbaa !19
  %57 = load i64, i64* %word, align 8, !tbaa !19
  %shr = lshr i64 %57, 24
  %conv46 = trunc i64 %shr to i8
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %conv46, i8* %arrayidx, align 1, !tbaa !20
  %59 = load i64, i64* %word, align 8, !tbaa !19
  %shr47 = lshr i64 %59, 16
  %conv48 = trunc i64 %shr47 to i8
  %60 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %60, i64 2
  store i8 %conv48, i8* %arrayidx49, align 1, !tbaa !20
  %61 = load i64, i64* %word, align 8, !tbaa !19
  %conv50 = trunc i64 %61 to i32
  %shr51 = lshr i32 %conv50, 8
  %conv52 = trunc i32 %shr51 to i8
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %62, i64 3
  store i8 %conv52, i8* %arrayidx53, align 1, !tbaa !20
  %63 = load i64, i64* %word, align 8, !tbaa !19
  %conv54 = trunc i64 %63 to i8
  %64 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %64, i64 4
  store i8 %conv54, i8* %arrayidx55, align 1, !tbaa !20
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr56, i8** %q, align 8, !tbaa !1
  store i64 0, i64* %word, align 8, !tbaa !19
  store i32 0, i32* %ccount, align 4, !tbaa !12
  br label %if.end.60

if.else:                                          ; preds = %if.then.30
  %66 = load i64, i64* %word, align 8, !tbaa !19
  %mul57 = mul i64 %66, 85
  %67 = load i32, i32* %ccode, align 4, !tbaa !12
  %conv58 = zext i32 %67 to i64
  %add59 = add i64 %mul57, %conv58
  store i64 %add59, i64* %word, align 8, !tbaa !19
  %68 = load i32, i32* %ccount, align 4, !tbaa !12
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %ccount, align 4, !tbaa !12
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.44
  br label %if.end.181

if.else.61:                                       ; preds = %while.body.25
  %69 = load i32, i32* %ch, align 4, !tbaa !12
  %cmp62 = icmp eq i32 %69, 122
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.81

land.lhs.true.64:                                 ; preds = %if.else.61
  %70 = load i32, i32* %ccount, align 4, !tbaa !12
  %cmp65 = icmp eq i32 %70, 0
  br i1 %cmp65, label %if.then.67, label %if.else.81

if.then.67:                                       ; preds = %land.lhs.true.64
  %71 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %72 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast68 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %72 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %cmp71 = icmp slt i64 %sub.ptr.sub70, 4
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.67
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr74, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !12
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.75:                                        ; preds = %if.then.67
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %74, i64 4
  store i8 0, i8* %arrayidx76, align 1, !tbaa !20
  %75 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %75, i64 3
  store i8 0, i8* %arrayidx77, align 1, !tbaa !20
  %76 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 0, i8* %arrayidx78, align 1, !tbaa !20
  %77 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 0, i8* %arrayidx79, align 1, !tbaa !20
  %78 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %add.ptr80, i8** %q, align 8, !tbaa !1
  br label %if.end.180

if.else.81:                                       ; preds = %land.lhs.true.64, %if.else.61
  %79 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom = sext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i8, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i64 %idxprom
  %80 = load i8, i8* %arrayidx82, align 1, !tbaa !20
  %conv83 = zext i8 %80 to i32
  %cmp84 = icmp eq i32 %conv83, 102
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.81
  br label %do.body

do.body:                                          ; preds = %if.then.86
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.179

if.else.87:                                       ; preds = %if.else.81
  %81 = load i32, i32* %ch, align 4, !tbaa !12
  %cmp88 = icmp eq i32 %81, 126
  br i1 %cmp88, label %if.then.90, label %if.else.178

if.then.90:                                       ; preds = %if.else.87
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  store i32 1, i32* %i, align 4, !tbaa !12
  %83 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit91 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %83, i32 0, i32 1
  %84 = load i8*, i8** %limit91, align 8, !tbaa !17
  store i8* %84, i8** %rlimit, align 8, !tbaa !1
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %86 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp92 = icmp eq i8* %85, %86
  br i1 %cmp92, label %if.then.94, label %if.end.104

if.then.94:                                       ; preds = %if.then.90
  %87 = load i32, i32* %last.addr, align 4, !tbaa !12
  %tobool95 = icmp ne i32 %87, 0
  br i1 %tobool95, label %if.else.98, label %if.then.96

if.then.96:                                       ; preds = %if.then.94
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr97, i8** %p, align 8, !tbaa !1
  br label %if.end.103

if.else.98:                                       ; preds = %if.then.94
  %89 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %pdf_rules = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %89, i32 0, i32 7
  %90 = load i32, i32* %pdf_rules, align 4, !tbaa !21
  %tobool99 = icmp ne i32 %90, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.else.98
  br label %finish

if.else.101:                                      ; preds = %if.else.98
  store i32 -2, i32* %status, align 4, !tbaa !12
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.96
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %if.then.90
  %91 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %92 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast105 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %92 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %conv108 = trunc i64 %sub.ptr.sub107 to i32
  %93 = load i32, i32* %ccount, align 4, !tbaa !12
  %sub109 = sub nsw i32 %93, 1
  %cmp110 = icmp slt i32 %conv108, %sub109
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.104
  store i32 1, i32* %status, align 4, !tbaa !12
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %incdec.ptr113, i8** %p, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %if.end.104
  br label %while.cond.115

while.cond.115:                                   ; preds = %while.body.130, %if.end.114
  %95 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom116 = sext i32 %95 to i64
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %96, i64 %idxprom116
  %97 = load i8, i8* %arrayidx117, align 1, !tbaa !20
  %conv118 = zext i8 %97 to i32
  %cmp119 = icmp eq i32 %conv118, 13
  br i1 %cmp119, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.115
  %98 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom121 = sext i32 %98 to i64
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %99, i64 %idxprom121
  %100 = load i8, i8* %arrayidx122, align 1, !tbaa !20
  %conv123 = zext i8 %100 to i32
  %cmp124 = icmp eq i32 %conv123, 10
  br i1 %cmp124, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond.115
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %102 = load i32, i32* %i, align 4, !tbaa !12
  %idx.ext126 = sext i32 %102 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %101, i64 %idx.ext126
  %103 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp128 = icmp ule i8* %add.ptr127, %103
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %104 = phi i1 [ false, %lor.lhs.false ], [ %cmp128, %land.rhs ]
  br i1 %104, label %while.body.130, label %while.end.132

while.body.130:                                   ; preds = %land.end
  %105 = load i32, i32* %i, align 4, !tbaa !12
  %inc131 = add nsw i32 %105, 1
  store i32 %inc131, i32* %i, align 4, !tbaa !12
  br label %while.cond.115

while.end.132:                                    ; preds = %land.end
  %106 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom133 = sext i32 %106 to i64
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %107, i64 %idxprom133
  %108 = load i8, i8* %arrayidx134, align 1, !tbaa !20
  %conv135 = zext i8 %108 to i32
  %cmp136 = icmp ne i32 %conv135, 62
  br i1 %cmp136, label %if.then.138, label %if.end.173

if.then.138:                                      ; preds = %while.end.132
  %109 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %pdf_rules139 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %109, i32 0, i32 7
  %110 = load i32, i32* %pdf_rules139, align 4, !tbaa !21
  %tobool140 = icmp ne i32 %110, 0
  br i1 %tobool140, label %if.then.141, label %if.else.160

if.then.141:                                      ; preds = %if.then.138
  %111 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom142 = sext i32 %111 to i64
  %112 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %112, i64 %idxprom142
  %113 = load i8, i8* %arrayidx143, align 1, !tbaa !20
  %conv144 = zext i8 %113 to i32
  %cmp145 = icmp eq i32 %conv144, 13
  br i1 %cmp145, label %if.then.153, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %if.then.141
  %114 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom148 = sext i32 %114 to i64
  %115 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i8, i8* %115, i64 %idxprom148
  %116 = load i8, i8* %arrayidx149, align 1, !tbaa !20
  %conv150 = zext i8 %116 to i32
  %cmp151 = icmp eq i32 %conv150, 10
  br i1 %cmp151, label %if.then.153, label %if.else.157

if.then.153:                                      ; preds = %lor.lhs.false.147, %if.then.141
  %117 = load i32, i32* %last.addr, align 4, !tbaa !12
  %tobool154 = icmp ne i32 %117, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.then.153
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %if.then.153
  br label %if.end.159

if.else.157:                                      ; preds = %lor.lhs.false.147
  %118 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %incdec.ptr158, i8** %p, align 8, !tbaa !1
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.157, %if.end.156
  br label %if.end.172

if.else.160:                                      ; preds = %if.then.138
  %119 = load i8*, i8** %p, align 8, !tbaa !1
  %120 = load i32, i32* %i, align 4, !tbaa !12
  %idx.ext161 = sext i32 %120 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %119, i64 %idx.ext161
  %121 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp163 = icmp eq i8* %add.ptr162, %121
  br i1 %cmp163, label %if.then.165, label %if.end.171

if.then.165:                                      ; preds = %if.else.160
  %122 = load i32, i32* %last.addr, align 4, !tbaa !12
  %tobool166 = icmp ne i32 %122, 0
  br i1 %tobool166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.then.165
  store i32 -2, i32* %status, align 4, !tbaa !12
  br label %if.end.170

if.else.168:                                      ; preds = %if.then.165
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr169, i8** %p, align 8, !tbaa !1
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.167
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.else.160
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.172:                                       ; preds = %if.end.159
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %while.end.132
  br label %finish

finish:                                           ; preds = %if.end.173, %if.then.100
  %124 = load i32, i32* %i, align 4, !tbaa !12
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext174 = sext i32 %124 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %125, i64 %idx.ext174
  store i8* %add.ptr175, i8** %p, align 8, !tbaa !1
  %126 = load i8*, i8** %q, align 8, !tbaa !1
  %127 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr176 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %127, i32 0, i32 1
  store i8* %126, i8** %ptr176, align 8, !tbaa !15
  %128 = load i32, i32* %ccount, align 4, !tbaa !12
  %129 = load i64, i64* %word, align 8, !tbaa !19
  %130 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call = call i32 @a85d_finish(i32 %128, i64 %129, %struct.stream_cursor_write_s* %130) #3
  store i32 %call, i32* %status, align 4, !tbaa !12
  %131 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr177 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %ptr177, align 8, !tbaa !15
  store i8* %132, i8** %q, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %finish, %if.end.171, %if.then.155, %if.then.112, %if.end.103
  %133 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  br label %cleanup.182

if.else.178:                                      ; preds = %if.else.87
  store i32 -2, i32* %status, align 4, !tbaa !12
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.179:                                       ; preds = %do.end
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.75
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.182

cleanup.182:                                      ; preds = %if.end.181, %if.else.178, %cleanup, %if.then.73, %if.then.43, %if.then.36
  %134 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %while.end.184
  ]

cleanup.cont:                                     ; preds = %cleanup.182
  br label %while.cond.22

while.end.184:                                    ; preds = %cleanup.182, %while.cond.22
  %136 = load i8*, i8** %q, align 8, !tbaa !1
  %137 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr185 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %137, i32 0, i32 1
  store i8* %136, i8** %ptr185, align 8, !tbaa !15
  %138 = load i32, i32* %status, align 4, !tbaa !12
  %cmp186 = icmp eq i32 %138, 0
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.206

land.lhs.true.188:                                ; preds = %while.end.184
  %139 = load i32, i32* %last.addr, align 4, !tbaa !12
  %tobool189 = icmp ne i32 %139, 0
  br i1 %tobool189, label %if.then.190, label %if.end.206

if.then.190:                                      ; preds = %land.lhs.true.188
  %140 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %141 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast191 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast192 = ptrtoint i8* %141 to i64
  %sub.ptr.sub193 = sub i64 %sub.ptr.lhs.cast191, %sub.ptr.rhs.cast192
  %conv194 = trunc i64 %sub.ptr.sub193 to i32
  %142 = load i32, i32* %ccount, align 4, !tbaa !12
  %sub195 = sub nsw i32 %142, 1
  %cmp196 = icmp slt i32 %conv194, %sub195
  br i1 %cmp196, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %if.then.190
  store i32 1, i32* %status, align 4, !tbaa !12
  br label %if.end.205

if.else.199:                                      ; preds = %if.then.190
  %143 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %require_eod = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %143, i32 0, i32 8
  %144 = load i32, i32* %require_eod, align 4, !tbaa !11
  %tobool200 = icmp ne i32 %144, 0
  br i1 %tobool200, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %if.else.199
  store i32 -2, i32* %status, align 4, !tbaa !12
  br label %if.end.204

if.else.202:                                      ; preds = %if.else.199
  %145 = load i32, i32* %ccount, align 4, !tbaa !12
  %146 = load i64, i64* %word, align 8, !tbaa !19
  %147 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call203 = call i32 @a85d_finish(i32 %145, i64 %146, %struct.stream_cursor_write_s* %147) #3
  store i32 %call203, i32* %status, align 4, !tbaa !12
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.202, %if.then.201
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.198
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %land.lhs.true.188, %while.end.184
  %148 = load i8*, i8** %p, align 8, !tbaa !1
  %149 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr207 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %149, i32 0, i32 0
  store i8* %148, i8** %ptr207, align 8, !tbaa !13
  %150 = load i32, i32* %ccount, align 4, !tbaa !12
  %151 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %odd208 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %151, i32 0, i32 5
  store i32 %150, i32* %odd208, align 4, !tbaa !10
  %152 = load i64, i64* %word, align 8, !tbaa !19
  %153 = load %struct.stream_A85D_state_s*, %struct.stream_A85D_state_s** %ss, align 8, !tbaa !1
  %word209 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %153, i32 0, i32 6
  store i64 %152, i64* %word209, align 8, !tbaa !9
  %154 = load i32, i32* %status, align 4, !tbaa !12
  store i32 1, i32* %cleanup.dest.slot
  %155 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i64* %word to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i32* %ccount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast %struct.stream_A85D_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  ret i32 %154

unreachable:                                      ; preds = %cleanup.182
  unreachable
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @a85d_finish(i32 %ccount, i64 %word, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %ccount.addr = alloca i32, align 4
  %word.addr = alloca i64, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %q = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %ccount, i32* %ccount.addr, align 4, !tbaa !12
  store i64 %word, i64* %word.addr, align 8, !tbaa !19
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %ptr, align 8, !tbaa !15
  store i8* %2, i8** %q, align 8, !tbaa !1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 -1, i32* %status, align 4, !tbaa !12
  %4 = load i32, i32* %ccount.addr, align 4, !tbaa !12
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, i32* %status, align 4, !tbaa !12
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load i64, i64* %word.addr, align 8, !tbaa !19
  %mul = mul i64 %5, 614125
  %add = add i64 %mul, 614125
  %sub = sub i64 %add, 1
  store i64 %sub, i64* %word.addr, align 8, !tbaa !19
  br label %o1

sw.bb.2:                                          ; preds = %entry
  %6 = load i64, i64* %word.addr, align 8, !tbaa !19
  %mul3 = mul i64 %6, 7225
  %add4 = add i64 %mul3, 7225
  %sub5 = sub i64 %add4, 1
  store i64 %sub5, i64* %word.addr, align 8, !tbaa !19
  br label %o2

sw.bb.6:                                          ; preds = %entry
  %7 = load i64, i64* %word.addr, align 8, !tbaa !19
  %mul7 = mul i64 %7, 85
  %add8 = add i64 %mul7, 84
  store i64 %add8, i64* %word.addr, align 8, !tbaa !19
  %8 = load i64, i64* %word.addr, align 8, !tbaa !19
  %shr = lshr i64 %8, 8
  %conv = trunc i64 %shr to i8
  %9 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 3
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !20
  br label %o2

o2:                                               ; preds = %sw.bb.6, %sw.bb.2
  %10 = load i64, i64* %word.addr, align 8, !tbaa !19
  %shr9 = lshr i64 %10, 16
  %conv10 = trunc i64 %shr9 to i8
  %11 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !20
  br label %o1

o1:                                               ; preds = %o2, %sw.bb.1
  %12 = load i64, i64* %word.addr, align 8, !tbaa !19
  %shr12 = lshr i64 %12, 24
  %conv13 = trunc i64 %shr12 to i8
  %13 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv13, i8* %arrayidx14, align 1, !tbaa !20
  %14 = load i32, i32* %ccount.addr, align 4, !tbaa !12
  %sub15 = sub nsw i32 %14, 1
  %15 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext = sext i32 %sub15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %16 = load i8*, i8** %q, align 8, !tbaa !1
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 1
  store i8* %16, i8** %ptr16, align 8, !tbaa !15
  br label %sw.epilog

sw.epilog:                                        ; preds = %o1, %entry, %sw.bb, %entry
  %18 = load i32, i32* %status, align 4, !tbaa !12
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %18
}

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
!5 = !{!6, !7, i64 24}
!6 = !{!"stream_A85D_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !8, i64 112, !7, i64 120, !7, i64 124}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!6, !8, i64 112}
!10 = !{!6, !7, i64 108}
!11 = !{!6, !7, i64 124}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !2, i64 0}
!14 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!16, !2, i64 8}
!16 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!14, !2, i64 8}
!18 = !{!16, !2, i64 16}
!19 = !{!8, !8, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{!6, !7, i64 120}
