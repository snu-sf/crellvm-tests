; ModuleID = './spsdf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.param_printer_params_s = type { i8*, i8*, i8*, i8*, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.stream_AXE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.printer_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.stream_s*, %struct.param_printer_params_s, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"()\5C\0A\0D\09\08\0C\00", align 1
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@s_AXE_template = external constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"s_alloc_position_stream\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@param_printer_params_default = constant %struct.param_printer_params_s { i8* null, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 0 }, align 8
@printer_param_list_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @param_print_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* null, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* null, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* null, i32 (%struct.gs_param_list_s*, i8*)* @gs_param_request_default, i32 (%struct.gs_param_list_s*, i8*)* @gs_param_requested_default, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*, i32)* null, i32 (%struct.gs_param_list_s*)* null }, align 8
@st_printer_param_list = internal constant %struct.gs_memory_struct_type_s { i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @printer_plist_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"s_alloc_param_printer\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"s_free_param_printer\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" null\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" true\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" false\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %l\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"printer_param_list_t\00", align 1
@printer_plist_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @printer_plist_enum_ptrs, i32 0, i32 0) }, align 8
@printer_plist_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }], align 2

; Function Attrs: nounwind uwtable
define void @s_write_ps_string(%struct.stream_s* %s, i8* %str, i32 %size, i32 %print_ok) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %print_ok.addr = alloca i32, align 4
  %added = alloca i32, align 4
  %i = alloca i32, align 4
  %templat = alloca %struct.stream_template_s*, align 8
  %state = alloca %struct.stream_AXE_state_s, align 8
  %st = alloca %struct.stream_state_s*, align 8
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %ch12 = alloca i8, align 1
  %buf = alloca [100 x i8], align 16
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %print_ok, i32* %print_ok.addr, align 4, !tbaa !5
  %0 = bitcast i32* %added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %added, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.stream_AXE_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 120, i8* %3) #1
  %4 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.stream_state_s* null, %struct.stream_state_s** %st, align 8, !tbaa !1
  %5 = load i32, i32* %print_ok.addr, align 4, !tbaa !5
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %6, i8 zeroext 40) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %9 to i64
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %11, i8* %ch, align 1, !tbaa !7
  %12 = load i8, i8* %ch, align 1, !tbaa !7
  %conv = zext i8 %12 to i32
  switch i32 %conv, label %sw.epilog [
    i32 13, label %sw.bb
    i32 10, label %sw.bb.2
    i32 40, label %sw.bb.4
    i32 41, label %sw.bb.4
    i32 92, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %for.body
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %for.body, %for.body, %for.body
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @spputc(%struct.stream_s* %15, i8 zeroext 92) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %for.body
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load i8, i8* %ch, align 1, !tbaa !7
  %call6 = call i32 @spputc(%struct.stream_s* %16, i8 zeroext %17) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.2, %sw.bb
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @spputc(%struct.stream_s* %19, i8 zeroext 41) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.37, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %20, %21
  br i1 %cmp9, label %for.body.11, label %for.end.39

for.body.11:                                      ; preds = %for.cond.8
  call void @llvm.lifetime.start(i64 1, i8* %ch12) #1
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = zext i32 %22 to i64
  %23 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 %idxprom13
  %24 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  store i8 %24, i8* %ch12, align 1, !tbaa !7
  %25 = load i8, i8* %ch12, align 1, !tbaa !7
  %conv15 = zext i8 %25 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.11
  %26 = load i8, i8* %ch12, align 1, !tbaa !7
  %conv18 = zext i8 %26 to i32
  %cmp19 = icmp sge i32 %conv18, 127
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %for.body.11
  %27 = load i32, i32* %added, align 4, !tbaa !5
  %add = add i32 %27, 3
  store i32 %add, i32* %added, align 4, !tbaa !5
  br label %if.end.36

if.else:                                          ; preds = %lor.lhs.false
  %28 = load i8, i8* %ch12, align 1, !tbaa !7
  %conv22 = zext i8 %28 to i32
  %call23 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %conv22) #5
  %cmp24 = icmp ne i8* %call23, null
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else
  %29 = load i32, i32* %added, align 4, !tbaa !5
  %inc27 = add i32 %29, 1
  store i32 %inc27, i32* %added, align 4, !tbaa !5
  br label %if.end.35

if.else.28:                                       ; preds = %if.else
  %30 = load i8, i8* %ch12, align 1, !tbaa !7
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp slt i32 %conv29, 32
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.28
  %31 = load i32, i32* %added, align 4, !tbaa !5
  %add33 = add i32 %31, 3
  store i32 %add33, i32* %added, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.21
  call void @llvm.lifetime.end(i64 1, i8* %ch12) #1
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add i32 %32, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.end.39:                                       ; preds = %for.cond.8
  %33 = load i32, i32* %added, align 4, !tbaa !5
  %34 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp40 = icmp ult i32 %33, %34
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %for.end.39
  %35 = load i32, i32* %print_ok.addr, align 4, !tbaa !5
  %and43 = and i32 %35, 4
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %lor.lhs.false.42, %for.end.39
  store %struct.stream_template_s* @s_PSSE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call46 = call i32 @spputc(%struct.stream_s* %36, i8 zeroext 40) #4
  br label %if.end.49

if.else.47:                                       ; preds = %lor.lhs.false.42
  store %struct.stream_template_s* @s_AXE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %37 = bitcast %struct.stream_AXE_state_s* %state to %struct.stream_state_s*
  store %struct.stream_state_s* %37, %struct.stream_state_s** %st, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %state, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !8
  %count = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %state, i32 0, i32 6
  store i32 0, i32* %count, align 4, !tbaa !10
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call48 = call i32 @spputc(%struct.stream_s* %38, i8 zeroext 60) #4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.45
  %39 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %39) #1
  %40 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %40) #1
  %41 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %41) #1
  %42 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !11
  %ptr50 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %44 = load i8*, i8** %ptr50, align 8, !tbaa !11
  %45 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %45 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr51, i8** %limit, align 8, !tbaa !13
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %add.ptr52 = getelementptr inbounds i8, i8* %arraydecay, i64 100
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 -1
  %limit54 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr53, i8** %limit54, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.49
  %arraydecay55 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %arraydecay55, i8** %ptr56, align 8, !tbaa !16
  %ptr57 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %46 = load i8*, i8** %ptr57, align 8, !tbaa !16
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr, i8** %ptr57, align 8, !tbaa !16
  %47 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %47, i32 0, i32 2
  %48 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !17
  %49 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call58 = call i32 %48(%struct.stream_state_s* %49, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #4
  store i32 %call58, i32* %status, align 4, !tbaa !5
  %50 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %ptr60 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %51 = load i8*, i8** %ptr60, align 8, !tbaa !16
  %add.ptr61 = getelementptr inbounds i8, i8* %51, i64 1
  %arraydecay62 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr61 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay62 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv63 = trunc i64 %sub.ptr.sub to i32
  %call64 = call i32 @stream_write(%struct.stream_s* %50, i8* %arraydecay59, i32 %conv63) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %52 = load i32, i32* %status, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %52, 1
  br i1 %cmp65, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %53 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %54) #1
  %55 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  %56 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %56) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %do.end, %for.end
  %57 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.stream_AXE_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 120, i8* %58) #1
  %59 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %cleanup.dest.72 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.72, label %unreachable [
    i32 0, label %cleanup.cont.73
    i32 1, label %cleanup.cont.73
  ]

cleanup.cont.73:                                  ; preds = %cleanup.67, %cleanup.67
  ret void

unreachable:                                      ; preds = %cleanup.67, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @s_alloc_position_stream(%struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #4
  %2 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %call, %struct.stream_s** %2, align 8, !tbaa !1
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @swrite_position_only(%struct.stream_s* %4) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #2

declare void @swrite_position_only(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define i32 @s_init_param_printer(%struct.printer_param_list_s* %prlist, %struct.param_printer_params_s* %ppp, %struct.stream_s* %s) #0 {
entry:
  %prlist.addr = alloca %struct.printer_param_list_s*, align 8
  %ppp.addr = alloca %struct.param_printer_params_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.printer_param_list_s* %prlist, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  store %struct.param_printer_params_s* %ppp, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %1 = bitcast %struct.printer_param_list_s* %0 to %struct.gs_param_list_s*
  call void @gs_param_list_init(%struct.gs_param_list_s* %1, %struct.gs_param_list_procs_s* @printer_param_list_procs, %struct.gs_memory_s* null) #4
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %3, i32 0, i32 3
  store %struct.stream_s* %2, %struct.stream_s** %strm, align 8, !tbaa !19
  %4 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %4, i32 0, i32 4
  %5 = load %struct.param_printer_params_s*, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  %6 = bitcast %struct.param_printer_params_s* %params to i8*
  %7 = bitcast %struct.param_printer_params_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false), !tbaa.struct !22
  %8 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %any = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %8, i32 0, i32 5
  store i32 0, i32* %any, align 4, !tbaa !23
  ret i32 0
}

declare void @gs_param_list_init(%struct.gs_param_list_s*, %struct.gs_param_list_procs_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @s_alloc_param_printer(%struct.gs_param_list_s** %pplist, %struct.param_printer_params_s* %ppp, %struct.stream_s* %s, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pplist.addr = alloca %struct.gs_param_list_s**, align 8
  %ppp.addr = alloca %struct.param_printer_params_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %prlist = alloca %struct.printer_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s** %pplist, %struct.gs_param_list_s*** %pplist.addr, align 8, !tbaa !1
  store %struct.param_printer_params_s* %ppp, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !24
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_printer_param_list, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.printer_param_list_s*
  store %struct.printer_param_list_s* %4, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %7 = bitcast %struct.printer_param_list_s* %6 to %struct.gs_param_list_s*
  %8 = load %struct.gs_param_list_s**, %struct.gs_param_list_s*** %pplist.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %7, %struct.gs_param_list_s** %8, align 8, !tbaa !1
  %9 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %cmp = icmp eq %struct.printer_param_list_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %11 = load %struct.param_printer_params_s*, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @s_init_param_printer(%struct.printer_param_list_s* %10, %struct.param_printer_params_s* %11, %struct.stream_s* %12) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %14, i32 0, i32 1
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @s_release_param_printer(%struct.printer_param_list_s* %prlist) #0 {
entry:
  %prlist.addr = alloca %struct.printer_param_list_s*, align 8
  store %struct.printer_param_list_s* %prlist, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %0 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.printer_param_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %any = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %1, i32 0, i32 5
  %2 = load i32, i32* %any, align 4, !tbaa !23
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %3, i32 0, i32 4
  %suffix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params, i32 0, i32 1
  %4 = load i8*, i8** %suffix, align 8, !tbaa !28
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %5, i32 0, i32 3
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !19
  %7 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %7, i32 0, i32 4
  %suffix5 = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params4, i32 0, i32 1
  %8 = load i8*, i8** %suffix5, align 8, !tbaa !28
  %call = call i32 @stream_puts(%struct.stream_s* %6, i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @s_free_param_printer(%struct.gs_param_list_s* %plist) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %prlist = alloca %struct.printer_param_list_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_param_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_list_s* %2 to %struct.printer_param_list_s*
  store %struct.printer_param_list_s* %3, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %4 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  call void @s_release_param_printer(%struct.printer_param_list_s* %4) #4
  %5 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %8 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !27
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_param_list_s* %10 to i8*
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  %12 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @param_print_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %prlist = alloca %struct.printer_param_list_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %i43 = alloca i32, align 4
  %sepr = alloca i8, align 1
  %i62 = alloca i32, align 4
  %sepr63 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.printer_param_list_s*
  store %struct.printer_param_list_s* %2, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %4, i32 0, i32 3
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !19
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %any = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %6, i32 0, i32 5
  %7 = load i32, i32* %any, align 4, !tbaa !23
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %8, i32 0, i32 4
  %prefix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params, i32 0, i32 0
  %9 = load i8*, i8** %prefix, align 8, !tbaa !30
  %tobool1 = icmp ne i8* %9, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %11, i32 0, i32 4
  %prefix4 = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params3, i32 0, i32 0
  %12 = load i8*, i8** %prefix4, align 8, !tbaa !30
  %call = call i32 @stream_puts(%struct.stream_s* %10, i8* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %13 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %any5 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %13, i32 0, i32 5
  store i32 1, i32* %any5, align 4, !tbaa !23
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %14 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %14, i32 0, i32 4
  %item_prefix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params7, i32 0, i32 2
  %15 = load i8*, i8** %item_prefix, align 8, !tbaa !31
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %17, i32 0, i32 4
  %item_prefix11 = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params10, i32 0, i32 2
  %18 = load i8*, i8** %item_prefix11, align 8, !tbaa !31
  %call12 = call i32 @stream_puts(%struct.stream_s* %16, i8* %18) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call14 = call i8* @pprints1(%struct.stream_s* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %20) #4
  %21 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %21, i32 0, i32 1
  %22 = load i32, i32* %type, align 4, !tbaa !32
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.25
    i32 5, label %sw.bb.28
    i32 6, label %sw.bb.34
    i32 7, label %sw.bb.42
    i32 8, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.end.13
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call15 = call i32 @stream_puts(%struct.stream_s* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.13
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %25, i32 0, i32 0
  %b = bitcast %union.gs_param_value_s* %value to i32*
  %26 = load i32, i32* %b, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %26, 0
  %cond = select i1 %tobool17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)
  %call18 = call i32 @stream_puts(%struct.stream_s* %24, i8* %cond) #4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.13
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %28 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %28, i32 0, i32 0
  %i = bitcast %union.gs_param_value_s* %value20 to i32*
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %call21 = call i8* @pprintd1(%struct.stream_s* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %29) #4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.13
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %31 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %31, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value23 to i64*
  %32 = load i64, i64* %l, align 8, !tbaa !34
  %call24 = call i8* @pprintld1(%struct.stream_s* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 %32) #4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.13
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %34 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %34, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value26 to float*
  %35 = load float, float* %f, align 4, !tbaa !36
  %conv = fpext float %35 to double
  %call27 = call i8* @pprintg1(%struct.stream_s* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), double %conv) #4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.13
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %37 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %37, i32 0, i32 0
  %s30 = bitcast %union.gs_param_value_s* %value29 to %struct.gs_param_string_s*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s30, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !38
  %39 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %39, i32 0, i32 0
  %s32 = bitcast %union.gs_param_value_s* %value31 to %struct.gs_param_string_s*
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s32, i32 0, i32 1
  %40 = load i32, i32* %size, align 4, !tbaa !40
  %41 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %41, i32 0, i32 4
  %print_ok = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params33, i32 0, i32 4
  %42 = load i32, i32* %print_ok, align 4, !tbaa !41
  call void @s_write_ps_string(%struct.stream_s* %36, i8* %38, i32 %40, i32 %42) #4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.13
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call35 = call i32 @spputc(%struct.stream_s* %43, i8 zeroext 47) #4
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %45 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value36 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %45, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value36 to %struct.gs_param_string_s*
  %data37 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %n, i32 0, i32 0
  %46 = load i8*, i8** %data37, align 8, !tbaa !38
  %47 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %47, i32 0, i32 0
  %n39 = bitcast %union.gs_param_value_s* %value38 to %struct.gs_param_string_s*
  %size40 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %n39, i32 0, i32 1
  %48 = load i32, i32* %size40, align 4, !tbaa !40
  %call41 = call i32 @stream_write(%struct.stream_s* %44, i8* %46, i32 %48) #4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.13
  %49 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  call void @llvm.lifetime.start(i64 1, i8* %sepr) #1
  %50 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %50, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value44 to %struct.gs_param_int_array_s*
  %size45 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  %51 = load i32, i32* %size45, align 4, !tbaa !42
  %cmp = icmp ule i32 %51, 10
  %cond47 = select i1 %cmp, i32 32, i32 10
  %conv48 = trunc i32 %cond47 to i8
  store i8 %conv48, i8* %sepr, align 1, !tbaa !7
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call49 = call i32 @spputc(%struct.stream_s* %52, i8 zeroext 91) #4
  store i32 0, i32* %i43, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.42
  %53 = load i32, i32* %i43, align 4, !tbaa !5
  %54 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %54, i32 0, i32 0
  %ia51 = bitcast %union.gs_param_value_s* %value50 to %struct.gs_param_int_array_s*
  %size52 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia51, i32 0, i32 1
  %55 = load i32, i32* %size52, align 4, !tbaa !42
  %cmp53 = icmp ult i32 %53, %55
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load i32, i32* %i43, align 4, !tbaa !5
  %idxprom = zext i32 %57 to i64
  %58 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %58, i32 0, i32 0
  %ia56 = bitcast %union.gs_param_value_s* %value55 to %struct.gs_param_int_array_s*
  %data57 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia56, i32 0, i32 0
  %59 = load i32*, i32** %data57, align 8, !tbaa !44
  %arrayidx = getelementptr inbounds i32, i32* %59, i64 %idxprom
  %60 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call58 = call i8* @pprintd1(%struct.stream_s* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %60) #4
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %62 = load i8, i8* %sepr, align 1, !tbaa !7
  %call59 = call i32 @spputc(%struct.stream_s* %61, i8 zeroext %62) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i43, align 4, !tbaa !5
  %inc = add i32 %63, 1
  store i32 %inc, i32* %i43, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @spputc(%struct.stream_s* %64, i8 zeroext 93) #4
  call void @llvm.lifetime.end(i64 1, i8* %sepr) #1
  %65 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.13
  %66 = bitcast i32* %i62 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  call void @llvm.lifetime.start(i64 1, i8* %sepr63) #1
  %67 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value64 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %67, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value64 to %struct.gs_param_float_array_s*
  %size65 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  %68 = load i32, i32* %size65, align 4, !tbaa !45
  %cmp66 = icmp ule i32 %68, 10
  %cond68 = select i1 %cmp66, i32 32, i32 10
  %conv69 = trunc i32 %cond68 to i8
  store i8 %conv69, i8* %sepr63, align 1, !tbaa !7
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call70 = call i32 @spputc(%struct.stream_s* %69, i8 zeroext 91) #4
  store i32 0, i32* %i62, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.86, %sw.bb.61
  %70 = load i32, i32* %i62, align 4, !tbaa !5
  %71 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value72 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %71, i32 0, i32 0
  %fa73 = bitcast %union.gs_param_value_s* %value72 to %struct.gs_param_float_array_s*
  %size74 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa73, i32 0, i32 1
  %72 = load i32, i32* %size74, align 4, !tbaa !45
  %cmp75 = icmp ult i32 %70, %72
  br i1 %cmp75, label %for.body.77, label %for.end.88

for.body.77:                                      ; preds = %for.cond.71
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %74 = load i32, i32* %i62, align 4, !tbaa !5
  %idxprom78 = zext i32 %74 to i64
  %75 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value79 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %75, i32 0, i32 0
  %fa80 = bitcast %union.gs_param_value_s* %value79 to %struct.gs_param_float_array_s*
  %data81 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa80, i32 0, i32 0
  %76 = load float*, float** %data81, align 8, !tbaa !47
  %arrayidx82 = getelementptr inbounds float, float* %76, i64 %idxprom78
  %77 = load float, float* %arrayidx82, align 4, !tbaa !36
  %conv83 = fpext float %77 to double
  %call84 = call i8* @pprintg1(%struct.stream_s* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), double %conv83) #4
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %79 = load i8, i8* %sepr63, align 1, !tbaa !7
  %call85 = call i32 @spputc(%struct.stream_s* %78, i8 zeroext %79) #4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.77
  %80 = load i32, i32* %i62, align 4, !tbaa !5
  %inc87 = add i32 %80, 1
  store i32 %inc87, i32* %i62, align 4, !tbaa !5
  br label %for.cond.71

for.end.88:                                       ; preds = %for.cond.71
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call89 = call i32 @spputc(%struct.stream_s* %81, i8 zeroext 93) #4
  call void @llvm.lifetime.end(i64 1, i8* %sepr63) #1
  %82 = bitcast i32* %i62 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.end.88, %for.end, %sw.bb.34, %sw.bb.28, %sw.bb.25, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb
  %83 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params90 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %83, i32 0, i32 4
  %item_suffix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params90, i32 0, i32 3
  %84 = load i8*, i8** %item_suffix, align 8, !tbaa !48
  %tobool91 = icmp ne i8* %84, null
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %sw.epilog
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %86 = load %struct.printer_param_list_s*, %struct.printer_param_list_s** %prlist, align 8, !tbaa !1
  %params93 = getelementptr inbounds %struct.printer_param_list_s, %struct.printer_param_list_s* %86, i32 0, i32 4
  %item_suffix94 = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %params93, i32 0, i32 3
  %87 = load i8*, i8** %item_suffix94, align 8, !tbaa !48
  %call95 = call i32 @stream_puts(%struct.stream_s* %85, i8* %87) #4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %sw.default
  %88 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.printer_param_list_s** %prlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare i32 @gs_param_request_default(%struct.gs_param_list_s*, i8*) #2

declare i32 @gs_param_requested_default(%struct.gs_param_list_s*, i8*) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

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
!8 = !{!9, !6, i64 108}
!9 = !{!"stream_AXE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112}
!10 = !{!9, !6, i64 112}
!11 = !{!12, !2, i64 0}
!12 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!12, !2, i64 8}
!14 = !{!15, !2, i64 16}
!15 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!15, !2, i64 8}
!17 = !{!18, !2, i64 16}
!18 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!19 = !{!20, !2, i64 24}
!20 = !{!"printer_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !21, i64 32, !6, i64 72}
!21 = !{!"param_printer_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32}
!22 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !5}
!23 = !{!20, !6, i64 72}
!24 = !{!25, !2, i64 72}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!20, !2, i64 8}
!28 = !{!20, !2, i64 40}
!29 = !{!25, !2, i64 24}
!30 = !{!20, !2, i64 32}
!31 = !{!20, !2, i64 48}
!32 = !{!33, !3, i64 16}
!33 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !3, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !3, i64 0}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!39, !6, i64 8}
!41 = !{!20, !6, i64 64}
!42 = !{!43, !6, i64 8}
!43 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!43, !2, i64 0}
!45 = !{!46, !6, i64 8}
!46 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!46, !2, i64 0}
!48 = !{!20, !2, i64 56}
