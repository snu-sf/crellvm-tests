; ModuleID = './sarc4.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_arcfour_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, [256 x i8] }

@st_arcfour_state = internal constant %struct.gs_memory_struct_type_s { i32 376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_arcfour_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_arcfour_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_arcfour_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Arcfour filter state\00", align 1

; Function Attrs: nounwind uwtable
define i32 @s_arcfour_set_key(%struct.stream_arcfour_state_s* %state, i8* %key, i32 %keylength) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_arcfour_state_s*, align 8
  %key.addr = alloca i8*, align 8
  %keylength.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %s = alloca i8, align 1
  %S = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_arcfour_state_s* %state, %struct.stream_arcfour_state_s** %state.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %keylength, i32* %keylength.addr, align 4, !tbaa !5
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s) #1
  %2 = bitcast i8** %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state.addr, align 8, !tbaa !1
  %S1 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %3, i32 0, i32 7
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %S1, i32 0, i32 0
  store i8* %arraydecay, i8** %S, align 8, !tbaa !1
  %4 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %x, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %5, 256
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4, !tbaa !5
  %conv = trunc i32 %6 to i8
  %7 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add i32 %9, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %y, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.22, %for.end
  %10 = load i32, i32* %x, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %10, 256
  br i1 %cmp4, label %for.body.6, label %for.end.24

for.body.6:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom7 = zext i32 %12 to i64
  %13 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom7
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %14 to i32
  %add = add i32 %11, %conv9
  %15 = load i32, i32* %x, align 4, !tbaa !5
  %16 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %rem = urem i32 %15, %16
  %idxprom10 = zext i32 %rem to i64
  %17 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  %18 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %18 to i32
  %add13 = add i32 %add, %conv12
  %and = and i32 %add13, 255
  store i32 %and, i32* %y, align 4, !tbaa !5
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom14 = zext i32 %19 to i64
  %20 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom14
  %21 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  store i8 %21, i8* %s, align 1, !tbaa !7
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom16 = zext i32 %22 to i64
  %23 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 %idxprom16
  %24 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom18 = zext i32 %25 to i64
  %26 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom18
  store i8 %24, i8* %arrayidx19, align 1, !tbaa !7
  %27 = load i8, i8* %s, align 1, !tbaa !7
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom20 = zext i32 %28 to i64
  %29 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %29, i64 %idxprom20
  store i8 %27, i8* %arrayidx21, align 1, !tbaa !7
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.6
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %inc23 = add i32 %30, 1
  store i32 %inc23, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.end.24:                                       ; preds = %for.cond.3
  %31 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state.addr, align 8, !tbaa !1
  %x25 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %31, i32 0, i32 5
  store i32 0, i32* %x25, align 4, !tbaa !8
  %32 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state.addr, align 8, !tbaa !1
  %y26 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %32, i32 0, i32 6
  store i32 0, i32* %y26, align 4, !tbaa !10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.24, %if.then
  %33 = bitcast i8** %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  call void @llvm.lifetime.end(i64 1, i8* %s) #1
  %34 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_arcfour_process(%struct.stream_state_s* %ss, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %state = alloca %struct.stream_arcfour_state_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %s = alloca i8, align 1
  %S = alloca i8*, align 8
  %z = alloca i8, align 1
  %limit = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_arcfour_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_arcfour_state_s*
  store %struct.stream_arcfour_state_s* %2, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %3 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %4, i32 0, i32 5
  %5 = load i32, i32* %x1, align 4, !tbaa !8
  store i32 %5, i32* %x, align 4, !tbaa !5
  %6 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %7, i32 0, i32 6
  %8 = load i32, i32* %y2, align 4, !tbaa !10
  store i32 %8, i32* %y, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %s) #1
  %9 = bitcast i8** %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %S3 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %10, i32 0, i32 7
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %S3, i32 0, i32 0
  store i8* %arraydecay, i8** %S, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %z) #1
  %11 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit4 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %limit4, align 8, !tbaa !11
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr, align 8, !tbaa !13
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %limit5, align 8, !tbaa !14
  %19 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %19, i32 0, i32 1
  %20 = load i8*, i8** %ptr6, align 8, !tbaa !16
  %sub.ptr.lhs.cast7 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %20 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %cmp = icmp sgt i64 %sub.ptr.sub, %sub.ptr.sub9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %ptr10, align 8, !tbaa !13
  %23 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %23, i32 0, i32 2
  %24 = load i8*, i8** %limit11, align 8, !tbaa !14
  %25 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %ptr12, align 8, !tbaa !16
  %sub.ptr.lhs.cast13 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %26 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %sub.ptr.sub15
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit16 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %27, i32 0, i32 1
  %28 = load i8*, i8** %limit16, align 8, !tbaa !11
  store i8* %28, i8** %limit, align 8, !tbaa !1
  %29 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %29, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr17, align 8, !tbaa !13
  %32 = load i8*, i8** %limit, align 8, !tbaa !1
  %cmp18 = icmp ult i8* %31, %32
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %add = add i32 %33, 1
  %and = and i32 %add, 255
  store i32 %and, i32* %x, align 4, !tbaa !5
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %35 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom = zext i32 %35 to i64
  %36 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %37 to i32
  %add19 = add i32 %34, %conv
  %and20 = and i32 %add19, 255
  store i32 %and20, i32* %y, align 4, !tbaa !5
  %38 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom21 = zext i32 %38 to i64
  %39 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %39, i64 %idxprom21
  %40 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  store i8 %40, i8* %s, align 1, !tbaa !7
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom23 = zext i32 %41 to i64
  %42 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %42, i64 %idxprom23
  %43 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %44 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom25 = zext i32 %44 to i64
  %45 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %45, i64 %idxprom25
  store i8 %43, i8* %arrayidx26, align 1, !tbaa !7
  %46 = load i8, i8* %s, align 1, !tbaa !7
  %47 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom27 = zext i32 %47 to i64
  %48 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %48, i64 %idxprom27
  store i8 %46, i8* %arrayidx28, align 1, !tbaa !7
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom29 = zext i32 %49 to i64
  %50 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %50, i64 %idxprom29
  %51 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %51 to i32
  %52 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom32 = zext i32 %52 to i64
  %53 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %53, i64 %idxprom32
  %54 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %54 to i32
  %add35 = add nsw i32 %conv31, %conv34
  %and36 = and i32 %add35, 255
  %idxprom37 = sext i32 %and36 to i64
  %55 = load i8*, i8** %S, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %55, i64 %idxprom37
  %56 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  store i8 %56, i8* %z, align 1, !tbaa !7
  %57 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %57, i32 0, i32 0
  %58 = load i8*, i8** %ptr39, align 8, !tbaa !13
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %ptr39, align 8, !tbaa !13
  %59 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %conv40 = zext i8 %59 to i32
  %60 = load i8, i8* %z, align 1, !tbaa !7
  %conv41 = zext i8 %60 to i32
  %xor = xor i32 %conv40, %conv41
  %conv42 = trunc i32 %xor to i8
  %61 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %61, i32 0, i32 1
  %62 = load i8*, i8** %ptr43, align 8, !tbaa !16
  %incdec.ptr44 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr44, i8** %ptr43, align 8, !tbaa !16
  store i8 %conv42, i8* %incdec.ptr44, align 1, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load i32, i32* %x, align 4, !tbaa !5
  %64 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %x45 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %64, i32 0, i32 5
  store i32 %63, i32* %x45, align 4, !tbaa !8
  %65 = load i32, i32* %y, align 4, !tbaa !5
  %66 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %state, align 8, !tbaa !1
  %y46 = getelementptr inbounds %struct.stream_arcfour_state_s, %struct.stream_arcfour_state_s* %66, i32 0, i32 6
  store i32 %65, i32* %y46, align 4, !tbaa !10
  %67 = load i32, i32* %status, align 4, !tbaa !5
  %68 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  call void @llvm.lifetime.end(i64 1, i8* %z) #1
  %70 = bitcast i8** %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  call void @llvm.lifetime.end(i64 1, i8* %s) #1
  %71 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.stream_arcfour_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @s_arcfour_process_buffer(%struct.stream_arcfour_state_s* %ss, i8* %buf, i32 %buf_size) #0 {
entry:
  %ss.addr = alloca %struct.stream_arcfour_state_s*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %unused = alloca i32, align 4
  store %struct.stream_arcfour_state_s* %ss, %struct.stream_arcfour_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_size, i32* %buf_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %unused to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %unused, align 4, !tbaa !5
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !16
  %ptr1 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr1, align 8, !tbaa !13
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 -1
  %5 = load i32, i32* %buf_size.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr3, i8** %limit, align 8, !tbaa !14
  %limit4 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr3, i8** %limit4, align 8, !tbaa !11
  %6 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %ss.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_arcfour_state_s* %6 to %struct.stream_state_s*
  %call = call i32 @s_arcfour_process(%struct.stream_state_s* %7, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 0) #3
  %8 = bitcast i32* %unused to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  %10 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  ret i32 %call
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 108}
!9 = !{!"stream_arcfour_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !3, i64 116}
!10 = !{!9, !6, i64 112}
!11 = !{!12, !2, i64 8}
!12 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!12, !2, i64 0}
!14 = !{!15, !2, i64 16}
!15 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!15, !2, i64 8}
