; ModuleID = './sjbig2.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct._Jbig2Ctx = type opaque
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2GlobalCtx = type opaque
%struct.stream_jbig2decode_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.s_jbig2_global_data_s*, %struct._Jbig2GlobalCtx*, %struct._Jbig2Ctx*, %struct._Jbig2Image*, i64, i32 }
%struct.s_jbig2_global_data_s = type { i8* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }

@st_jbig2decode_state = internal constant %struct.gs_memory_struct_type_s { i32 160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @jbig2decode_state_reloc_ptrs to i8*) }, align 8
@s_jbig2decode_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_jbig2decode_state, i32 (%struct.stream_state_s*)* @s_jbig2decode_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_jbig2decode_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_jbig2decode_release, void (%struct.stream_state_s*)* @s_jbig2decode_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"FATAL ERROR decoding image:\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unknown message:\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"(segment 0x%02x)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./base/sjbig2.c\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"jbig2dec %s %s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"jbig2decode filter state\00", align 1
@jbig2decode_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @jbig2decode_state_enum_ptrs, i32 0, i32 0) }, align 8
@jbig2decode_state_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }], align 2

; Function Attrs: nounwind uwtable
define i32 @s_jbig2decode_make_global_data(i8* %data, i32 %length, i8** %result) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %result.addr = alloca i8**, align 8
  %ctx = alloca %struct._Jbig2Ctx*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i8** %result, i8*** %result.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Ctx** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._Jbig2Ctx* null, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %length.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load i8**, i8*** %result.addr, align 8, !tbaa !1
  store i8* null, i8** %3, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call %struct._Jbig2Ctx* @jbig2_ctx_new(%struct._Jbig2Allocator* null, i32 1, %struct._Jbig2GlobalCtx* null, i32 (i8*, i8*, i32, i32)* @s_jbig2decode_error, i8* null) #4
  store %struct._Jbig2Ctx* %call, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !1
  %4 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._Jbig2Ctx* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  %call4 = call i32 @jbig2_data_in(%struct._Jbig2Ctx* %5, i8* %6, i64 %conv) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %9 = load i8**, i8*** %result.addr, align 8, !tbaa !1
  store i8* null, i8** %9, align 8, !tbaa !1
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !1
  %call7 = call %struct._Jbig2GlobalCtx* @jbig2_make_global_ctx(%struct._Jbig2Ctx* %11) #4
  %12 = bitcast %struct._Jbig2GlobalCtx* %call7 to i8*
  %13 = load i8**, i8*** %result.addr, align 8, !tbaa !1
  store i8* %12, i8** %13, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.2, %do.end
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct._Jbig2Ctx** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._Jbig2Ctx* @jbig2_ctx_new(%struct._Jbig2Allocator*, i32, %struct._Jbig2GlobalCtx*, i32 (i8*, i8*, i32, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_jbig2decode_error(i8* %error_callback_data, i8* %msg, i32 %severity, i32 %seg_idx) #0 {
entry:
  %error_callback_data.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  %severity.addr = alloca i32, align 4
  %seg_idx.addr = alloca i32, align 4
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  %type = alloca i8*, align 8
  %segment = alloca [22 x i8], align 16
  %code = alloca i32, align 4
  store i8* %error_callback_data, i8** %error_callback_data.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i32 %severity, i32* %severity.addr, align 4, !tbaa !7
  store i32 %seg_idx, i32* %seg_idx.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %error_callback_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = bitcast i8** %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [22 x i8]* %segment to i8*
  call void @llvm.lifetime.start(i64 22, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %severity.addr, align 4, !tbaa !7
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  store i32 -12, i32* %code, align 4, !tbaa !5
  %7 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %cmp = icmp ne %struct.stream_jbig2decode_state_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %9, i32 0, i32 10
  store i32 %8, i32* %error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.2, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %seg_idx.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %sw.epilog
  %arrayidx = getelementptr inbounds [22 x i8], [22 x i8]* %segment, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  br label %if.end.6

if.else:                                          ; preds = %sw.epilog
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %segment, i32 0, i32 0
  %11 = load i32, i32* %seg_idx.addr, align 4, !tbaa !5
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %11) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %12 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %tobool = icmp ne %struct.stream_jbig2decode_state_s* %12, null
  br i1 %tobool, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.end.6
  %13 = load i32, i32* %severity.addr, align 4, !tbaa !7
  %cmp8 = icmp eq i32 %13, 3
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.then.7
  %14 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 73) #4
  %16 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !11
  %18 = load i8*, i8** %type, align 8, !tbaa !1
  %19 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arraydecay11 = getelementptr inbounds [22 x i8], [22 x i8]* %segment, i32 0, i32 0
  %call12 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* %18, i8* %19, i8* %arraydecay11) #4
  br label %if.end.14

if.else.13:                                       ; preds = %if.then.7
  br label %do.body

do.body:                                          ; preds = %if.else.13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.then.9
  br label %if.end.25

if.else.15:                                       ; preds = %if.end.6
  %20 = load i32, i32* %severity.addr, align 4, !tbaa !7
  %cmp16 = icmp eq i32 %20, 3
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else.15
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 85) #4
  %21 = load i8*, i8** %type, align 8, !tbaa !1
  %22 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [22 x i8], [22 x i8]* %segment, i32 0, i32 0
  %call19 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* %21, i8* %22, i8* %arraydecay18) #4
  br label %if.end.24

if.else.20:                                       ; preds = %if.else.15
  br label %do.body.21

do.body.21:                                       ; preds = %if.else.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.14
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast [22 x i8]* %segment to i8*
  call void @llvm.lifetime.end(i64 22, i8* %25) #1
  %26 = bitcast i8** %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 %23
}

declare i32 @jbig2_data_in(%struct._Jbig2Ctx*, i8*, i64) #2

declare %struct._Jbig2GlobalCtx* @jbig2_make_global_ctx(%struct._Jbig2Ctx*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @s_jbig2decode_free_global_data(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %global_ctx = alloca %struct._Jbig2GlobalCtx*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2GlobalCtx** %global_ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._Jbig2GlobalCtx*
  store %struct._Jbig2GlobalCtx* %2, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !1
  %3 = load %struct._Jbig2GlobalCtx*, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !1
  call void @jbig2_global_ctx_free(%struct._Jbig2GlobalCtx* %3) #4
  %4 = bitcast %struct._Jbig2GlobalCtx** %global_ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

declare void @jbig2_global_ctx_free(%struct._Jbig2GlobalCtx*) #2

; Function Attrs: nounwind uwtable
define i32 @s_jbig2decode_set_global_data(%struct.stream_state_s* %ss, %struct.s_jbig2_global_data_s* %gd) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %gd.addr = alloca %struct.s_jbig2_global_data_s*, align 8
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.s_jbig2_global_data_s* %gd, %struct.s_jbig2_global_data_s** %gd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %gd.addr, align 8, !tbaa !1
  %4 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %global_struct = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %4, i32 0, i32 5
  store %struct.s_jbig2_global_data_s* %3, %struct.s_jbig2_global_data_s** %global_struct, align 8, !tbaa !12
  %5 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %gd.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.s_jbig2_global_data_s* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.s_jbig2_global_data_s*, %struct.s_jbig2_global_data_s** %gd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.s_jbig2_global_data_s, %struct.s_jbig2_global_data_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ null, %cond.false ]
  %8 = bitcast i8* %cond to %struct._Jbig2GlobalCtx*
  %9 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %global_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %9, i32 0, i32 6
  store %struct._Jbig2GlobalCtx* %8, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !15
  %10 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_jbig2decode_init(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  %global_ctx = alloca %struct._Jbig2GlobalCtx*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = bitcast %struct._Jbig2GlobalCtx** %global_ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %global_ctx1 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %4, i32 0, i32 6
  %5 = load %struct._Jbig2GlobalCtx*, %struct._Jbig2GlobalCtx** %global_ctx1, align 8, !tbaa !15
  store %struct._Jbig2GlobalCtx* %5, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !1
  %6 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %6, i32 0, i32 10
  store i32 0, i32* %error, align 4, !tbaa !8
  %7 = load %struct._Jbig2GlobalCtx*, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !1
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_state_s* %8 to i8*
  %call = call %struct._Jbig2Ctx* @jbig2_ctx_new(%struct._Jbig2Allocator* null, i32 1, %struct._Jbig2GlobalCtx* %7, i32 (i8*, i8*, i32, i32)* @s_jbig2decode_error, i8* %9) #4
  %10 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %10, i32 0, i32 7
  store %struct._Jbig2Ctx* %call, %struct._Jbig2Ctx** %decode_ctx, align 8, !tbaa !16
  %11 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %11, i32 0, i32 8
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !17
  %12 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error2 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %12, i32 0, i32 10
  %13 = load i32, i32* %error2, align 4, !tbaa !8
  %14 = bitcast %struct._Jbig2GlobalCtx** %global_ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @s_jbig2decode_process(%struct.stream_state_s* %ss, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  %image = alloca %struct._Jbig2Image*, align 8
  %in_size = alloca i64, align 8
  %out_size = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %image_size = alloca i64, align 8
  %usable = alloca i64, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image1 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %4, i32 0, i32 8
  %5 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image1, align 8, !tbaa !17
  store %struct._Jbig2Image* %5, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %6 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !18
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %ptr, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %in_size, align 8, !tbaa !21
  %11 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %limit2, align 8, !tbaa !22
  %14 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %ptr3, align 8, !tbaa !24
  %sub.ptr.lhs.cast4 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %15 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %out_size, align 8, !tbaa !21
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %17 = load i64, i64* %in_size, align 8, !tbaa !21
  %cmp = icmp sgt i64 %17, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %18 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %18, i32 0, i32 7
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx, align 8, !tbaa !16
  %20 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %ptr7, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i64, i64* %in_size, align 8, !tbaa !21
  %call = call i32 @jbig2_data_in(%struct._Jbig2Ctx* %19, i8* %add.ptr, i64 %22) #4
  %23 = load i64, i64* %in_size, align 8, !tbaa !21
  %24 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %ptr8, align 8, !tbaa !20
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 %23
  store i8* %add.ptr9, i8** %ptr8, align 8, !tbaa !20
  %26 = load i32, i32* %last.addr, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %26, 1
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %27 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx12 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %27, i32 0, i32 7
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx12, align 8, !tbaa !16
  %call13 = call i32 @jbig2_complete_page(%struct._Jbig2Ctx* %28) #4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %29 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %29, i32 0, i32 10
  %30 = load i32, i32* %error, align 4, !tbaa !8
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %31 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error15 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %31, i32 0, i32 10
  %32 = load i32, i32* %error15, align 4, !tbaa !8
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %33 = load i64, i64* %out_size, align 8, !tbaa !21
  %cmp18 = icmp sgt i64 %33, 0
  br i1 %cmp18, label %if.then.19, label %if.end.52

if.then.19:                                       ; preds = %if.end.17
  %34 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp20 = icmp eq %struct._Jbig2Image* %34, null
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.then.19
  %35 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx22 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %35, i32 0, i32 7
  %36 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx22, align 8, !tbaa !16
  %call23 = call %struct._Jbig2Image* @jbig2_page_out(%struct._Jbig2Ctx* %36) #4
  store %struct._Jbig2Image* %call23, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %37 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp24 = icmp ne %struct._Jbig2Image* %37, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %38 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %39 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image26 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %39, i32 0, i32 8
  store %struct._Jbig2Image* %38, %struct._Jbig2Image** %image26, align 8, !tbaa !17
  %40 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %40, i32 0, i32 9
  store i64 0, i64* %offset, align 8, !tbaa !25
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.19
  %41 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp29 = icmp ne %struct._Jbig2Image* %41, null
  br i1 %cmp29, label %if.then.30, label %if.end.51

if.then.30:                                       ; preds = %if.end.28
  %42 = bitcast i64* %image_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %43, i32 0, i32 1
  %44 = load i32, i32* %height, align 4, !tbaa !26
  %45 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %45, i32 0, i32 2
  %46 = load i32, i32* %stride, align 4, !tbaa !28
  %mul = mul nsw i32 %44, %46
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %image_size, align 8, !tbaa !21
  %47 = bitcast i64* %usable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i64, i64* %image_size, align 8, !tbaa !21
  %49 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset31 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %49, i32 0, i32 9
  %50 = load i64, i64* %offset31, align 8, !tbaa !25
  %sub = sub nsw i64 %48, %50
  %51 = load i64, i64* %out_size, align 8, !tbaa !21
  %cmp32 = icmp slt i64 %sub, %51
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %52 = load i64, i64* %image_size, align 8, !tbaa !21
  %53 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset34 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %53, i32 0, i32 9
  %54 = load i64, i64* %offset34, align 8, !tbaa !25
  %sub35 = sub nsw i64 %52, %54
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %55 = load i64, i64* %out_size, align 8, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub35, %cond.true ], [ %55, %cond.false ]
  store i64 %cond, i64* %usable, align 8, !tbaa !21
  %56 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr36 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %56, i32 0, i32 1
  %57 = load i8*, i8** %ptr36, align 8, !tbaa !24
  %add.ptr37 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %58, i32 0, i32 3
  %59 = load i8*, i8** %data, align 8, !tbaa !29
  %60 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset38 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %60, i32 0, i32 9
  %61 = load i64, i64* %offset38, align 8, !tbaa !25
  %add.ptr39 = getelementptr inbounds i8, i8* %59, i64 %61
  %62 = load i64, i64* %usable, align 8, !tbaa !21
  %call40 = call i8* @memcpy(i8* %add.ptr37, i8* %add.ptr39, i64 %62) #5
  %63 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %63, i32 0, i32 1
  %64 = load i8*, i8** %ptr41, align 8, !tbaa !24
  %add.ptr42 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i64, i64* %usable, align 8, !tbaa !21
  %conv43 = trunc i64 %65 to i32
  call void @s_jbig2decode_invert_buffer(i8* %add.ptr42, i32 %conv43) #4
  %66 = load i64, i64* %usable, align 8, !tbaa !21
  %67 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset44 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %67, i32 0, i32 9
  %68 = load i64, i64* %offset44, align 8, !tbaa !25
  %add = add nsw i64 %68, %66
  store i64 %add, i64* %offset44, align 8, !tbaa !25
  %69 = load i64, i64* %usable, align 8, !tbaa !21
  %70 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %70, i32 0, i32 1
  %71 = load i8*, i8** %ptr45, align 8, !tbaa !24
  %add.ptr46 = getelementptr inbounds i8, i8* %71, i64 %69
  store i8* %add.ptr46, i8** %ptr45, align 8, !tbaa !24
  %72 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset47 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %72, i32 0, i32 9
  %73 = load i64, i64* %offset47, align 8, !tbaa !25
  %74 = load i64, i64* %image_size, align 8, !tbaa !21
  %cmp48 = icmp slt i64 %73, %74
  %cond50 = select i1 %cmp48, i32 1, i32 0
  store i32 %cond50, i32* %status, align 4, !tbaa !5
  %75 = bitcast i64* %usable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i64* %image_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end, %if.end.28
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.17
  %77 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.14
  %78 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal void @s_jbig2decode_release(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %3, i32 0, i32 7
  %4 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx, align 8, !tbaa !16
  %tobool = icmp ne %struct._Jbig2Ctx* %4, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %5, i32 0, i32 8
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !17
  %tobool1 = icmp ne %struct._Jbig2Image* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx3 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %7, i32 0, i32 7
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx3, align 8, !tbaa !16
  %9 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image4 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %9, i32 0, i32 8
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image4, align 8, !tbaa !17
  %call = call i32 @jbig2_release_page(%struct._Jbig2Ctx* %8, %struct._Jbig2Image* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx5 = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %11, i32 0, i32 7
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %decode_ctx5, align 8, !tbaa !16
  call void @jbig2_ctx_free(%struct._Jbig2Ctx* %12) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %13 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_jbig2decode_set_defaults(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jbig2decode_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jbig2decode_state_s*
  store %struct.stream_jbig2decode_state_s* %2, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %global_struct = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %3, i32 0, i32 5
  store %struct.s_jbig2_global_data_s* null, %struct.s_jbig2_global_data_s** %global_struct, align 8, !tbaa !12
  %4 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %global_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %4, i32 0, i32 6
  store %struct._Jbig2GlobalCtx* null, %struct._Jbig2GlobalCtx** %global_ctx, align 8, !tbaa !15
  %5 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %decode_ctx = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %5, i32 0, i32 7
  store %struct._Jbig2Ctx* null, %struct._Jbig2Ctx** %decode_ctx, align 8, !tbaa !16
  %6 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %6, i32 0, i32 8
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !17
  %7 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %7, i32 0, i32 9
  store i64 0, i64* %offset, align 8, !tbaa !25
  %8 = load %struct.stream_jbig2decode_state_s*, %struct.stream_jbig2decode_state_s** %state, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.stream_jbig2decode_state_s, %struct.stream_jbig2decode_state_s* %8, i32 0, i32 10
  store i32 0, i32* %error, align 4, !tbaa !8
  %9 = bitcast %struct.stream_jbig2decode_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare void @dprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @jbig2_complete_page(%struct._Jbig2Ctx*) #2

declare %struct._Jbig2Image* @jbig2_page_out(%struct._Jbig2Ctx*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @s_jbig2decode_invert_buffer(i8* %buf, i32 %length) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %length.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %xor = xor i32 %conv, 255
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, i8* %3, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret void
}

declare i32 @jbig2_release_page(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

declare void @jbig2_ctx_free(%struct._Jbig2Ctx*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 152}
!9 = !{!"stream_jbig2decode_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !10, i64 144, !6, i64 152}
!10 = !{!"long", !3, i64 0}
!11 = !{!9, !2, i64 8}
!12 = !{!9, !2, i64 112}
!13 = !{!14, !2, i64 0}
!14 = !{!"s_jbig2_global_data_s", !2, i64 0}
!15 = !{!9, !2, i64 120}
!16 = !{!9, !2, i64 128}
!17 = !{!9, !2, i64 136}
!18 = !{!19, !2, i64 8}
!19 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!19, !2, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!23, !2, i64 16}
!23 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!24 = !{!23, !2, i64 8}
!25 = !{!9, !10, i64 144}
!26 = !{!27, !6, i64 4}
!27 = !{!"_Jbig2Image", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24}
!28 = !{!27, !6, i64 8}
!29 = !{!27, !2, i64 16}
