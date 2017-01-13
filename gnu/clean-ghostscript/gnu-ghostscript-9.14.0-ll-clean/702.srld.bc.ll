; ModuleID = './srld.bc'
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
%struct.stream_RLD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }

@st_RLD_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_RLD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_RLD_state, i32 (%struct.stream_state_s*)* @s_RLD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_RLD_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_RLD_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"RunLengthDecode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_RLD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_RLD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLD_state_s*
  store %struct.stream_RLD_state_s* %2, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %EndOfData, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %5, i32 0, i32 3
  store i32 %cond, i32* %min_left, align 4, !tbaa !8
  %6 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %6, i32 0, i32 6
  store i32 0, i32* %copy_left, align 4, !tbaa !9
  %7 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_RLD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_RLD_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %avail = alloca i32, align 4
  %copy_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %b = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLD_state_s*
  store %struct.stream_RLD_state_s* %2, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !11
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !13
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !15
  store i8* %11, i8** %rlimit, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !16
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %top

top:                                              ; preds = %cleanup.100, %entry
  %17 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %17, i32 0, i32 6
  %18 = load i32, i32* %copy_left, align 4, !tbaa !9
  store i32 %18, i32* %left, align 4, !tbaa !10
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %top
  %19 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %21 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %avail, align 4, !tbaa !10
  %22 = bitcast i32* %copy_status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 1, i32* %copy_status, align 4, !tbaa !10
  %23 = load i32, i32* %left, align 4, !tbaa !10
  %24 = load i32, i32* %avail, align 4, !tbaa !10
  %cmp3 = icmp ugt i32 %23, %24
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %25 = load i32, i32* %avail, align 4, !tbaa !10
  store i32 %25, i32* %left, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %26 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_data = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %26, i32 0, i32 7
  %27 = load i32, i32* %copy_data, align 4, !tbaa !17
  %cmp6 = icmp sge i32 %27, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_data9 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %29, i32 0, i32 7
  %30 = load i32, i32* %copy_data9, align 4, !tbaa !17
  %31 = load i32, i32* %left, align 4, !tbaa !10
  %conv10 = sext i32 %31 to i64
  %call = call i8* @memset(i8* %add.ptr, i32 %30, i64 %conv10) #4
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %32 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast11 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %33 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %conv14 = trunc i64 %sub.ptr.sub13 to i32
  store i32 %conv14, i32* %avail, align 4, !tbaa !10
  %34 = load i32, i32* %left, align 4, !tbaa !10
  %35 = load i32, i32* %avail, align 4, !tbaa !10
  %cmp15 = icmp uge i32 %34, %35
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 0, i32* %copy_status, align 4, !tbaa !10
  %36 = load i32, i32* %avail, align 4, !tbaa !10
  store i32 %36, i32* %left, align 4, !tbaa !10
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  %37 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i32, i32* %left, align 4, !tbaa !10
  %conv21 = sext i32 %39 to i64
  %call22 = call i8* @memcpy(i8* %add.ptr19, i8* %add.ptr20, i64 %conv21) #4
  %40 = load i32, i32* %left, align 4, !tbaa !10
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %40 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr23, i8** %p, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.18, %if.then.8
  %42 = load i32, i32* %left, align 4, !tbaa !10
  %43 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext25 = sext i32 %42 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %43, i64 %idx.ext25
  store i8* %add.ptr26, i8** %q, align 8, !tbaa !1
  %44 = load i32, i32* %left, align 4, !tbaa !10
  %45 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_left27 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %45, i32 0, i32 6
  %46 = load i32, i32* %copy_left27, align 4, !tbaa !9
  %sub = sub nsw i32 %46, %44
  store i32 %sub, i32* %copy_left27, align 4, !tbaa !9
  %cmp28 = icmp sgt i32 %sub, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  %47 = load i32, i32* %copy_status, align 4, !tbaa !10
  store i32 %47, i32* %status, align 4, !tbaa !10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.30, %if.end.31
  %48 = bitcast i32* %copy_status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.105 [
    i32 0, label %cleanup.cont
    i32 3, label %x
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %top
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.102, %if.end.33
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %51 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp34 = icmp ult i8* %50, %51
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %incdec.ptr, align 1, !tbaa !18
  %conv36 = zext i8 %54 to i32
  store i32 %conv36, i32* %b, align 4, !tbaa !10
  %55 = load i32, i32* %b, align 4, !tbaa !10
  %cmp37 = icmp slt i32 %55, 128
  br i1 %cmp37, label %if.then.39, label %if.else.64

if.then.39:                                       ; preds = %while.body
  %56 = load i32, i32* %b, align 4, !tbaa !10
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %b, align 4, !tbaa !10
  %conv40 = sext i32 %inc to i64
  %57 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast41 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast42 = ptrtoint i8* %58 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %cmp44 = icmp sgt i64 %conv40, %sub.ptr.sub43
  br i1 %cmp44, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.39
  %59 = load i32, i32* %b, align 4, !tbaa !10
  %conv46 = sext i32 %59 to i64
  %60 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %61 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast47 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %61 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %cmp50 = icmp sgt i64 %conv46, %sub.ptr.sub49
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %lor.lhs.false, %if.then.39
  %62 = load i32, i32* %b, align 4, !tbaa !10
  %63 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_left53 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %63, i32 0, i32 6
  store i32 %62, i32* %copy_left53, align 4, !tbaa !9
  %64 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_data54 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %64, i32 0, i32 7
  store i32 -1, i32* %copy_data54, align 4, !tbaa !17
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.55:                                        ; preds = %lor.lhs.false
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i32, i32* %b, align 4, !tbaa !10
  %conv58 = sext i32 %67 to i64
  %call59 = call i8* @memcpy(i8* %add.ptr56, i8* %add.ptr57, i64 %conv58) #4
  %68 = load i32, i32* %b, align 4, !tbaa !10
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext60 = sext i32 %68 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %69, i64 %idx.ext60
  store i8* %add.ptr61, i8** %p, align 8, !tbaa !1
  %70 = load i32, i32* %b, align 4, !tbaa !10
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext62 = sext i32 %70 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %71, i64 %idx.ext62
  store i8* %add.ptr63, i8** %q, align 8, !tbaa !1
  br label %if.end.99

if.else.64:                                       ; preds = %while.body
  %72 = load i32, i32* %b, align 4, !tbaa !10
  %cmp65 = icmp eq i32 %72, 128
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.64
  %73 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %73, i32 0, i32 5
  %74 = load i32, i32* %EndOfData, align 4, !tbaa !5
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.67
  store i32 -1, i32* %status, align 4, !tbaa !10
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.69:                                        ; preds = %if.then.67
  br label %if.end.98

if.else.70:                                       ; preds = %if.else.64
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %76 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp71 = icmp eq i8* %75, %76
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.70
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %incdec.ptr74, i8** %p, align 8, !tbaa !1
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.100

if.else.75:                                       ; preds = %if.else.70
  %78 = load i32, i32* %b, align 4, !tbaa !10
  %sub76 = sub nsw i32 257, %78
  store i32 %sub76, i32* %b, align 4, !tbaa !10
  %conv77 = sext i32 %sub76 to i64
  %79 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %80 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast78 = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast79 = ptrtoint i8* %80 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %cmp81 = icmp sgt i64 %conv77, %sub.ptr.sub80
  br i1 %cmp81, label %if.then.83, label %if.else.88

if.then.83:                                       ; preds = %if.else.75
  %81 = load i32, i32* %b, align 4, !tbaa !10
  %82 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_left84 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %82, i32 0, i32 6
  store i32 %81, i32* %copy_left84, align 4, !tbaa !9
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr85, i8** %p, align 8, !tbaa !1
  %84 = load i8, i8* %incdec.ptr85, align 1, !tbaa !18
  %conv86 = zext i8 %84 to i32
  %85 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %copy_data87 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %85, i32 0, i32 7
  store i32 %conv86, i32* %copy_data87, align 4, !tbaa !17
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.100

if.else.88:                                       ; preds = %if.else.75
  %86 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr90, i8** %p, align 8, !tbaa !1
  %88 = load i8, i8* %incdec.ptr90, align 1, !tbaa !18
  %conv91 = zext i8 %88 to i32
  %89 = load i32, i32* %b, align 4, !tbaa !10
  %conv92 = sext i32 %89 to i64
  %call93 = call i8* @memset(i8* %add.ptr89, i32 %conv91, i64 %conv92) #4
  %90 = load i32, i32* %b, align 4, !tbaa !10
  %91 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext94 = sext i32 %90 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %91, i64 %idx.ext94
  store i8* %add.ptr95, i8** %q, align 8, !tbaa !1
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.88
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.69
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.99, %if.then.83, %if.then.73, %if.then.68, %if.then.52
  %92 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %cleanup.dest.101 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.101, label %unreachable [
    i32 0, label %cleanup.cont.102
    i32 2, label %top
    i32 5, label %while.end
  ]

cleanup.cont.102:                                 ; preds = %cleanup.100
  br label %while.cond

while.end:                                        ; preds = %cleanup.100, %while.cond
  br label %x

x:                                                ; preds = %while.end, %cleanup
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %94 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr103 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %94, i32 0, i32 0
  store i8* %93, i8** %ptr103, align 8, !tbaa !11
  %95 = load i8*, i8** %q, align 8, !tbaa !1
  %96 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr104 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %96, i32 0, i32 1
  store i8* %95, i8** %ptr104, align 8, !tbaa !13
  %97 = load i32, i32* %status, align 4, !tbaa !10
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105

cleanup.105:                                      ; preds = %x, %cleanup
  %98 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  %101 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = load i32, i32* %retval
  ret i32 %105

unreachable:                                      ; preds = %cleanup.100
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_RLD_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_RLD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLD_state_s*
  store %struct.stream_RLD_state_s* %2, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %3, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !5
  %4 = bitcast %struct.stream_RLD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 108}
!6 = !{!"stream_RLD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 24}
!9 = !{!6, !7, i64 112}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!14, !2, i64 8}
!14 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!12, !2, i64 8}
!16 = !{!14, !2, i64 16}
!17 = !{!6, !7, i64 116}
!18 = !{!3, !3, i64 0}
