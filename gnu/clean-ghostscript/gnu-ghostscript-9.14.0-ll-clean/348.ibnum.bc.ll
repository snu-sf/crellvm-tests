; ModuleID = './ibnum.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

@enc_num_bytes = constant [17 x i8] c"\04\04\02\04\00\00\00\00\04\04\02\04\00\00\00\00\10", align 16
@binary_scale = internal constant [32 x double] [double 1.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.250000e-01, double 6.250000e-02, double 3.125000e-02, double 1.562500e-02, double 7.812500e-03, double 3.906250e-03, double 1.953125e-03, double 9.765625e-04, double 0x3F40000000000000, double 0x3F30000000000000, double 0x3F20000000000000, double 0x3F10000000000000, double 0x3F00000000000000, double 0x3EF0000000000000, double 0x3EE0000000000000, double 0x3ED0000000000000, double 0x3EC0000000000000, double 0x3EB0000000000000, double 0x3EA0000000000000, double 0x3E90000000000000, double 0x3E80000000000000, double 0x3E70000000000000, double 0x3E60000000000000, double 0x3E50000000000000, double 0x3E40000000000000, double 0x3E30000000000000, double 0x3E20000000000000, double 0x3E10000000000000, double 0x3E00000000000000], align 16

; Function Attrs: nounwind uwtable
define i32 @num_array_format(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %format = alloca i32, align 4
  %bp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.20
    i32 6, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %4 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %6, i8** %bp, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !6
  %cmp = icmp ult i32 %8, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx3, align 1, !tbaa !5
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp ne i32 %conv4, 149
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx7, align 1, !tbaa !5
  %conv8 = zext i8 %12 to i32
  store i32 %conv8, i32* %format, align 4, !tbaa !11
  %13 = load i32, i32* %format, align 4, !tbaa !11
  %and = and i32 %13, 127
  %cmp9 = icmp sle i32 %and, 49
  br i1 %cmp9, label %lor.lhs.false.11, label %if.then.18

lor.lhs.false.11:                                 ; preds = %if.end
  %14 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i32, i32* %format, align 4, !tbaa !11
  %call = call i32 @sdecodeshort(i8* %add.ptr, i32 %15) #4
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  %17 = load i32, i32* %rsize13, align 4, !tbaa !6
  %sub = sub i32 %17, 4
  %18 = load i32, i32* %format, align 4, !tbaa !11
  %shr = ashr i32 %18, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx14 = getelementptr inbounds [17 x i8], [17 x i8]* @enc_num_bytes, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx14, align 1, !tbaa !5
  %conv15 = zext i8 %19 to i32
  %div = udiv i32 %sub, %conv15
  %cmp16 = icmp ne i32 %call, %div
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.11, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %20 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry, %entry, %entry
  store i32 256, i32* %format, align 4, !tbaa !11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

sw.epilog:                                        ; preds = %sw.bb.20, %cleanup.cont
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %22 = load i16, i16* %type_attrs22, align 2, !tbaa !12
  %conv23 = zext i16 %22 to i32
  %and24 = and i32 %conv23, 32
  %tobool = icmp ne i32 %and24, 0
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

if.end.26:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %format, align 4, !tbaa !11
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %do.end, %if.then.25, %sw.default, %cleanup
  %24 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @sdecodeshort(i8* %p, i32 %format) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %2 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call = call i32 @sdecodeushort(i8* %1, i32 %2) #4
  store i32 %call, i32* %v, align 4, !tbaa !11
  %3 = load i32, i32* %v, align 4, !tbaa !11
  %and = and i32 %3, 32767
  %4 = load i32, i32* %v, align 4, !tbaa !11
  %and1 = and i32 %4, 32768
  %sub = sub nsw i32 %and, %and1
  %5 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %sub
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @num_array_size(%struct.ref_s* %op, i32 %format) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %format.addr = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  %0 = load i32, i32* %format.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, 256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %rsize2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %4 = load i32, i32* %rsize2, align 4, !tbaa !6
  %sub = sub i32 %4, 4
  %5 = load i32, i32* %format.addr, align 4, !tbaa !11
  %shr = ashr i32 %5, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @enc_num_bytes, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %div = udiv i32 %sub, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %div, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @num_array_get(%struct.gs_memory_s* %mem, %struct.ref_s* %op, i32 %format, i32 %index, %struct.ref_s* %np) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %format.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %np.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nbytes = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  store i32 %index, i32* %index.addr, align 4, !tbaa !11
  store %struct.ref_s* %np, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %0 = load i32, i32* %format.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load i32, i32* %index.addr, align 4, !tbaa !11
  %conv = zext i32 %4 to i64
  %5 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %call = call i32 @array_get(%struct.gs_memory_s* %2, %struct.ref_s* %3, i64 %conv, %struct.ref_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv4 = zext i8 %9 to i32
  switch i32 %conv4, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  store i32 11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %if.end
  store i32 16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.5, %sw.bb, %if.then.3
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %return

if.else:                                          ; preds = %entry
  %11 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %format.addr, align 4, !tbaa !11
  %shr = ashr i32 %12, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx6 = getelementptr inbounds [17 x i8], [17 x i8]* @enc_num_bytes, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !5
  %conv7 = zext i8 %13 to i32
  store i32 %conv7, i32* %nbytes, align 4, !tbaa !11
  %14 = load i32, i32* %index.addr, align 4, !tbaa !11
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !6
  %sub = sub i32 %16, 4
  %17 = load i32, i32* %nbytes, align 4, !tbaa !11
  %div = udiv i32 %sub, %17
  %cmp9 = icmp uge i32 %14, %div
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

if.end.12:                                        ; preds = %if.else
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %19 = load i8*, i8** %bytes, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 4
  %20 = load i32, i32* %index.addr, align 4, !tbaa !11
  %21 = load i32, i32* %nbytes, align 4, !tbaa !11
  %mul = mul i32 %20, %21
  %idx.ext = zext i32 %mul to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %22 = load i32, i32* %format.addr, align 4, !tbaa !11
  %23 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %call14 = call i32 @sdecode_number(i8* %add.ptr13, i32 %22, %struct.ref_s* %23) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %if.end.12, %if.then.11
  %24 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %return

return:                                           ; preds = %cleanup.15, %cleanup
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @sdecode_number(i8* %str, i32 %format, %struct.ref_s* %np) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %np.addr = alloca %struct.ref_s*, align 8
  %fval = alloca float, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  store %struct.ref_s* %np, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %0 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and = and i32 %0, 368
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb
    i32 32, label %sw.bb.7
    i32 48, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and1 = and i32 %1, 31
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %3 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call = call i32 @sdecodeint32(i8* %2, i32 %3) #4
  %conv = sext i32 %call to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !13
  store i32 11, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call2 = call i32 @sdecodeint32(i8* %5, i32 %6) #4
  %conv3 = sitofp i32 %call2 to double
  %7 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and4 = and i32 %7, 31
  %idxprom = sext i32 %and4 to i64
  %arrayidx = getelementptr inbounds [32 x double], [32 x double]* @binary_scale, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8, !tbaa !15
  %mul = fmul double %conv3, %8
  %conv5 = fptrunc double %mul to float
  %9 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval = bitcast %union.v* %value6 to float*
  store float %conv5, float* %realval, align 4, !tbaa !17
  store i32 16, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %10 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and8 = and i32 %10, 15
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %sw.bb.7
  %11 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %12 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call12 = call i32 @sdecodeshort(i8* %11, i32 %12) #4
  %conv13 = sext i32 %call12 to i64
  %13 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  store i64 %conv13, i64* %intval15, align 8, !tbaa !13
  store i32 11, i32* %retval
  br label %return

if.else.16:                                       ; preds = %sw.bb.7
  %14 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %15 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call17 = call i32 @sdecodeshort(i8* %14, i32 %15) #4
  %conv18 = sitofp i32 %call17 to double
  %16 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and19 = and i32 %16, 15
  %idxprom20 = sext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [32 x double], [32 x double]* @binary_scale, i32 0, i64 %idxprom20
  %17 = load double, double* %arrayidx21, align 8, !tbaa !15
  %mul22 = fmul double %conv18, %17
  %conv23 = fptrunc double %mul22 to float
  %18 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %realval25 = bitcast %union.v* %value24 to float*
  store float %conv23, float* %realval25, align 4, !tbaa !17
  store i32 16, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  %19 = bitcast float* %fval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %22 = load i32, i32* %format.addr, align 4, !tbaa !11
  %call27 = call i32 @sdecode_float(i8* %21, i32 %22, float* %fval) #4
  store i32 %call27, i32* %code, align 4, !tbaa !11
  %23 = load i32, i32* %code, align 4, !tbaa !11
  %cmp28 = icmp slt i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %sw.bb.26
  %24 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.26
  %25 = load float, float* %fval, align 4, !tbaa !17
  %26 = load %struct.ref_s*, %struct.ref_s** %np.addr, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %realval32 = bitcast %union.v* %value31 to float*
  store float %25, float* %realval32, align 4, !tbaa !17
  store i32 16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.30
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast float* %fval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -18, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %cleanup, %if.else.16, %if.then.11, %if.else, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @sdecodeint32(i8* %p, i32 %format) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %v = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %a, align 4, !tbaa !11
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %b, align 4, !tbaa !11
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !5
  %conv4 = zext i8 %8 to i32
  store i32 %conv4, i32* %c, align 4, !tbaa !11
  %9 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !5
  %conv6 = zext i8 %11 to i32
  store i32 %conv6, i32* %d, align 4, !tbaa !11
  %12 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %format.addr, align 4, !tbaa !11
  %cmp = icmp sge i32 %13, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %d, align 4, !tbaa !11
  %shl = shl i32 %14, 24
  %15 = load i32, i32* %c, align 4, !tbaa !11
  %shl8 = shl i32 %15, 16
  %add = add nsw i32 %shl, %shl8
  %16 = load i32, i32* %b, align 4, !tbaa !11
  %shl9 = shl i32 %16, 8
  %add10 = add nsw i32 %add, %shl9
  %17 = load i32, i32* %a, align 4, !tbaa !11
  %add11 = add nsw i32 %add10, %17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* %a, align 4, !tbaa !11
  %shl12 = shl i32 %18, 24
  %19 = load i32, i32* %b, align 4, !tbaa !11
  %shl13 = shl i32 %19, 16
  %add14 = add nsw i32 %shl12, %shl13
  %20 = load i32, i32* %c, align 4, !tbaa !11
  %shl15 = shl i32 %20, 8
  %add16 = add nsw i32 %add14, %shl15
  %21 = load i32, i32* %d, align 4, !tbaa !11
  %add17 = add nsw i32 %add16, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add11, %cond.true ], [ %add17, %cond.false ]
  store i32 %cond, i32* %v, align 4, !tbaa !11
  %22 = load i32, i32* %v, align 4, !tbaa !11
  %23 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @sdecode_float(i8* %p, i32 %format, float* %pfnum) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %pfnum.addr = alloca float*, align 8
  %lnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  store float* %pfnum, float** %pfnum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %format.addr, align 4, !tbaa !11
  %and = and i32 %1, -129
  %cmp = icmp eq i32 %and, 49
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float*, float** %pfnum.addr, align 8, !tbaa !1
  %3 = bitcast float* %2 to i8*
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 4) #5
  %5 = load float*, float** %pfnum.addr, align 8, !tbaa !1
  %6 = bitcast float* %5 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !11
  store i32 %7, i32* %lnum, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %9 = load i32, i32* %format.addr, align 4, !tbaa !11
  call void @sdecodebits32(i8* %8, i32 %9, i32* %lnum) #4
  %10 = bitcast i32* %lnum to float*
  %11 = load float, float* %10, align 4, !tbaa !17
  %12 = load float*, float** %pfnum.addr, align 8, !tbaa !1
  store float %11, float* %12, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %lnum, align 4, !tbaa !11
  %neg = xor i32 %13, -1
  %and1 = and i32 %neg, 2139095040
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %14 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @sdecodeushort(i8* %p, i32 %format) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %a, align 4, !tbaa !11
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %b, align 4, !tbaa !11
  %6 = load i32, i32* %format.addr, align 4, !tbaa !11
  %cmp = icmp sge i32 %6, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %b, align 4, !tbaa !11
  %shl = shl i32 %7, 8
  %8 = load i32, i32* %a, align 4, !tbaa !11
  %add = add nsw i32 %shl, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %a, align 4, !tbaa !11
  %shl4 = shl i32 %9, 8
  %10 = load i32, i32* %b, align 4, !tbaa !11
  %add5 = add nsw i32 %shl4, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add5, %cond.false ]
  %11 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %cond
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @sdecodebits32(i8* %p, i32 %format, i32* %v) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !11
  store i32* %v, i32** %v.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %a, align 4, !tbaa !11
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %b, align 4, !tbaa !11
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !5
  %conv4 = zext i8 %8 to i32
  store i32 %conv4, i32* %c, align 4, !tbaa !11
  %9 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !5
  %conv6 = zext i8 %11 to i32
  store i32 %conv6, i32* %d, align 4, !tbaa !11
  %12 = load i32, i32* %format.addr, align 4, !tbaa !11
  %cmp = icmp sge i32 %12, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load i32, i32* %d, align 4, !tbaa !11
  %conv8 = sext i32 %13 to i64
  %shl = shl i64 %conv8, 24
  %14 = load i32, i32* %c, align 4, !tbaa !11
  %conv9 = sext i32 %14 to i64
  %shl10 = shl i64 %conv9, 16
  %add = add nsw i64 %shl, %shl10
  %15 = load i32, i32* %b, align 4, !tbaa !11
  %shl11 = shl i32 %15, 8
  %conv12 = sext i32 %shl11 to i64
  %add13 = add nsw i64 %add, %conv12
  %16 = load i32, i32* %a, align 4, !tbaa !11
  %conv14 = sext i32 %16 to i64
  %add15 = add nsw i64 %add13, %conv14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %a, align 4, !tbaa !11
  %conv16 = sext i32 %17 to i64
  %shl17 = shl i64 %conv16, 24
  %18 = load i32, i32* %b, align 4, !tbaa !11
  %conv18 = sext i32 %18 to i64
  %shl19 = shl i64 %conv18, 16
  %add20 = add nsw i64 %shl17, %shl19
  %19 = load i32, i32* %c, align 4, !tbaa !11
  %shl21 = shl i32 %19, 8
  %conv22 = sext i32 %shl21 to i64
  %add23 = add nsw i64 %add20, %conv22
  %20 = load i32, i32* %d, align 4, !tbaa !11
  %conv24 = sext i32 %20 to i64
  %add25 = add nsw i64 %add23, %conv24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add15, %cond.true ], [ %add25, %cond.false ]
  %conv26 = trunc i64 %cond to i32
  %21 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %conv26, i32* %21, align 4, !tbaa !11
  %22 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !10, i64 4}
!7 = !{!"ref_s", !8, i64 0, !3, i64 8}
!8 = !{!"tas_s", !9, i64 0, !9, i64 2, !10, i64 4}
!9 = !{!"short", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !3, i64 0}
