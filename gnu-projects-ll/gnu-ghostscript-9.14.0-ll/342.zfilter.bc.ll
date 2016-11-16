; ModuleID = './zfilter.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.stream_SFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i64, %struct.gs_const_string_s, i64, i32, i32, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.stream_PFBD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i64 }
%struct.stream_RLE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i64, i32 }
%struct.stream_RLD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }

@s_SFD_template = external constant %struct.stream_template_s, align 8
@.str = private unnamed_addr constant [9 x i8] c"EODCount\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"EODString\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"CloseSource\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"filter_read(string stream)\00", align 1
@file_default_buffer_size = external constant i32, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@s_filter_read_procs = external constant %struct.stream_procs, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"CloseTarget\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"filter_write(string)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@s_filter_write_procs = external constant %struct.stream_procs, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"1.psstringencode\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"2.subfiledecode\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"1ASCIIHexEncode\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"1ASCIIHexDecode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"1NullEncode\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"2PFBDecode\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"1PSStringEncode\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"2RunLengthEncode\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"1RunLengthDecode\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"3SubFileDecode\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"1.EOFDecode\00", align 1
@zfilter_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPSSE }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zSFD }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zAXE }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zAXD }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zNullE }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPFBD }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPSSE }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zRLE }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zRLD }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zSFD }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zEOFD }, %struct.op_def zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [18 x i8] c"filter_ensure_buf\00", align 1
@s_NullE_template = external constant %struct.stream_template_s, align 8
@s_Null1D_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Null1D_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@s_AXE_template = external constant %struct.stream_template_s, align 8
@s_AXD_template = external constant %struct.stream_template_s, align 8
@s_PFBD_template = external constant %struct.stream_template_s, align 8
@s_RLE_template = external constant %struct.stream_template_s, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"EndOfData\00", align 1
@s_RLD_template = external constant %struct.stream_template_s, align 8
@s_EOFD_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_EOFD_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8

; Function Attrs: nounwind uwtable
define i32 @zSFD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_SFD_state_s, align 8
  %sop = alloca %struct.ref_s*, align 8
  %npop = alloca i32, align 4
  %count = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_SFD_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 160, i8* %3) #1
  %4 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %sop, align 8, !tbaa !1
  %6 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_SFD_template, i32 0, i32 6), align 8, !tbaa !19
  %tobool = icmp ne void (%struct.stream_state_s*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_SFD_template, i32 0, i32 6), align 8, !tbaa !19
  %9 = bitcast %struct.stream_SFD_state_s* %state to %struct.stream_state_s*
  call void %8(%struct.stream_state_s* %9) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 2
  %11 = load i32, i32* %language_level, align 4, !tbaa !21
  %cmp = icmp sge i32 %11, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %14 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %15 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %18, i32 0, i32 0
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %19 = load i16, i16* %type_attrs5, align 2, !tbaa !23
  %conv6 = zext i16 %19 to i32
  %and = and i32 %conv6, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32* %count) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %21 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %do.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call14 = call i32 @dict_find_string(%struct.ref_s* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %sop) #3
  %cmp15 = icmp sle i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %23 = load i32, i32* %count, align 4, !tbaa !24
  %conv19 = sext i32 %23 to i64
  %count20 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %state, i32 0, i32 5
  store i64 %conv19, i64* %count20, align 8, !tbaa !25
  store i32 0, i32* %npop, align 4, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.12, %if.then.8
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true, %if.end
  %26 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %27 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx25, align 1, !tbaa !22
  %conv26 = zext i8 %28 to i32
  %cmp27 = icmp eq i32 %conv26, 11
  br i1 %cmp27, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.else
  %29 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %arrayidx30) #3
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.32:                                        ; preds = %if.else
  %30 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx33, i32 0, i32 1
  %intval = bitcast %union.v* %value34 to i64*
  %31 = load i64, i64* %intval, align 8, !tbaa !28
  %cmp35 = icmp slt i64 %31, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.38:                                        ; preds = %if.end.32
  %32 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx39, i32 0, i32 1
  %intval41 = bitcast %union.v* %value40 to i64*
  %33 = load i64, i64* %intval41, align 8, !tbaa !28
  %count42 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %state, i32 0, i32 5
  store i64 %33, i64* %count42, align 8, !tbaa !25
  store i32 2, i32* %npop, align 4, !tbaa !24
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.38, %cleanup.cont
  %34 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %35 = load i16, i16* %type_attrs45, align 2, !tbaa !23
  %conv46 = zext i16 %35 to i32
  %and47 = and i32 %conv46, 16160
  %cmp48 = icmp eq i32 %and47, 4640
  br i1 %cmp48, label %if.end.58, label %if.then.50

if.then.50:                                       ; preds = %if.end.43
  %36 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %37 = bitcast i16* %type_attrs52 to i8*
  %arrayidx53 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx53, align 1, !tbaa !22
  %conv54 = zext i8 %38 to i32
  %cmp55 = icmp eq i32 %conv54, 18
  br i1 %cmp55, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.50
  %39 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call57 = call i32 @check_type_failed(%struct.ref_s* %39) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call57, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.58:                                        ; preds = %if.end.43
  %40 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value59 to i8**
  %41 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %eod = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %state, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod, i32 0, i32 0
  store i8* %41, i8** %data, align 8, !tbaa !29
  %42 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 2
  %43 = load i32, i32* %rsize, align 4, !tbaa !30
  %eod61 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %state, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod61, i32 0, i32 1
  store i32 %43, i32* %size, align 4, !tbaa !31
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %45 = load i32, i32* %npop, align 4, !tbaa !24
  %46 = bitcast %struct.stream_SFD_state_s* %state to %struct.stream_state_s*
  %47 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %48 = load i16, i16* %type_attrs63, align 2, !tbaa !23
  %conv64 = zext i16 %48 to i32
  %and65 = and i32 %conv64, 12
  %call66 = call i32 @filter_read(%struct.gs_context_state_s* %44, i32 %45, %struct.stream_template_s* @s_SFD_template, %struct.stream_state_s* %46, i32 %and65) #3
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.58, %cond.end, %if.then.37, %if.then.29, %cleanup
  %49 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.stream_SFD_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 160, i8* %51) #1
  %52 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @filter_read(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, %struct.stream_template_s* %templat, %struct.stream_state_s* %st, i32 %space) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %space.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %min_size = alloca i32, align 4
  %save_space = alloca i32, align 4
  %use_space = alloca i32, align 4
  %sop = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %sstrm = alloca %struct.stream_s*, align 8
  %close = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !24
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !24
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %4, i32 0, i32 4
  %5 = load i32, i32* %min_out_size, align 4, !tbaa !32
  %add = add i32 %5, 1
  store i32 %add, i32* %min_size, align 4, !tbaa !24
  %6 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %8 = load i32, i32* %current_space, align 4, !tbaa !33
  store i32 %8, i32* %save_space, align 4, !tbaa !24
  %9 = bitcast i32* %use_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %space.addr, align 4, !tbaa !24
  %cmp = icmp ugt i32 %10, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %space.addr, align 4, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 4, %cond.false ]
  store i32 %cond, i32* %use_space, align 4, !tbaa !24
  %12 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load i32, i32* %npop.addr, align 4, !tbaa !24
  %idx.ext = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %sop, align 8, !tbaa !1
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %close to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %close, align 4, !tbaa !24
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %21 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then
  %22 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %23 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %23, i32 0, i32 0
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %24 = load i16, i16* %type_attrs4, align 2, !tbaa !23
  %conv5 = zext i16 %24 to i32
  %and = and i32 %conv5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call = call i32 @dict_bool_param(%struct.ref_s* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* %close) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %26 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.10:                                        ; preds = %do.end
  %27 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %sop, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %cond.end
  %28 = load i32, i32* %use_space, align 4, !tbaa !24
  %29 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %30 = load i16, i16* %type_attrs13, align 2, !tbaa !23
  %conv14 = zext i16 %30 to i32
  %and15 = and i32 %conv14, 12
  %cmp16 = icmp ugt i32 %28, %and15
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.end.11
  %31 = load i32, i32* %use_space, align 4, !tbaa !24
  br label %cond.end.24

cond.false.19:                                    ; preds = %if.end.11
  %32 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %33 = load i16, i16* %type_attrs21, align 2, !tbaa !23
  %conv22 = zext i16 %33 to i32
  %and23 = and i32 %conv22, 12
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.19, %cond.true.18
  %cond25 = phi i32 [ %31, %cond.true.18 ], [ %and23, %cond.false.19 ]
  store i32 %cond25, i32* %use_space, align 4, !tbaa !24
  %34 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %35 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx28, align 1, !tbaa !22
  %conv29 = zext i8 %36 to i32
  switch i32 %conv29, label %sw.default [
    i32 18, label %sw.bb
    i32 3, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %cond.end.24
  br label %do.body.30

do.body.30:                                       ; preds = %sw.bb
  %37 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %38 = load i16, i16* %type_attrs32, align 2, !tbaa !23
  %conv33 = zext i16 %38 to i32
  %and34 = and i32 %conv33, 32
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %do.body.30
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.37:                                        ; preds = %do.body.30
  br label %do.cond.38

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %40 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory40, i32 %40) #3
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory41, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !34
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %call42 = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  store %struct.stream_s* %call42, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %44 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %cmp43 = icmp eq %struct.stream_s* %44, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.39
  store i32 -25, i32* %code, align 4, !tbaa !24
  br label %out

if.end.46:                                        ; preds = %do.end.39
  %45 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %bytes = bitcast %union.v* %value47 to i8**
  %47 = load i8*, i8** %bytes, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 2
  %49 = load i32, i32* %rsize, align 4, !tbaa !30
  call void @sread_string(%struct.stream_s* %45, i8* %47, i32 %49) #3
  %50 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 16
  store i32 1, i32* %is_temp, align 4, !tbaa !35
  br label %sw.epilog

sw.bb.49:                                         ; preds = %cond.end.24
  br label %do.body.50

do.body.50:                                       ; preds = %sw.bb.49
  %51 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %pfile = bitcast %union.v* %value51 to %struct.stream_s**
  %52 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %52, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %53 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 19
  %54 = load i16, i16* %read_id, align 2, !tbaa !39
  %conv52 = zext i16 %54 to i32
  %55 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  %56 = load i32, i32* %rsize54, align 4, !tbaa !30
  %cmp55 = icmp ne i32 %conv52, %56
  br i1 %cmp55, label %if.then.57, label %if.end.77

if.then.57:                                       ; preds = %do.body.50
  %57 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %read_id58 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 19
  %58 = load i16, i16* %read_id58, align 2, !tbaa !39
  %conv59 = zext i16 %58 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.57
  %59 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 20
  %60 = load i16, i16* %write_id, align 2, !tbaa !40
  %conv62 = zext i16 %60 to i32
  %61 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %rsize64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 2
  %62 = load i32, i32* %rsize64, align 4, !tbaa !30
  %cmp65 = icmp eq i32 %conv62, %62
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %land.lhs.true
  %63 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call68 = call i32 @file_switch_to_read(%struct.ref_s* %64) #3
  store i32 %call68, i32* %fcode, align 4, !tbaa !24
  %65 = load i32, i32* %fcode, align 4, !tbaa !24
  %cmp69 = icmp slt i32 %65, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.67
  %66 = load i32, i32* %fcode, align 4, !tbaa !24
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.then.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then.71
  %67 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.131 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true, %if.then.57
  br label %do.body.73

do.body.73:                                       ; preds = %if.else
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %cleanup.cont
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.body.50
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %69 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory80, i32 %69) #3
  br label %ens

sw.default:                                       ; preds = %cond.end.24
  br label %do.body.81

do.body.81:                                       ; preds = %sw.default
  %70 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 0
  %71 = load i16, i16* %type_attrs83, align 2, !tbaa !23
  %conv84 = zext i16 %71 to i32
  %and85 = and i32 %conv84, 15552
  %cmp86 = icmp eq i32 %and85, 1216
  br i1 %cmp86, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %do.body.81
  %72 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call89 = call i32 @check_proc_failed(%struct.ref_s* %72) #3
  store i32 %call89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.90:                                        ; preds = %do.body.81
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 1
  %74 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory93, i32 %74) #3
  %75 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 1
  %current95 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory94, i32 0, i32 0
  %77 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current95, align 8, !tbaa !34
  %call96 = call i32 @sread_proc(%struct.ref_s* %75, %struct.stream_s** %sstrm, %struct.gs_ref_memory_s* %77) #3
  store i32 %call96, i32* %code, align 4, !tbaa !24
  %78 = load i32, i32* %code, align 4, !tbaa !24
  %cmp97 = icmp slt i32 %78, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %do.end.92
  br label %out

if.end.100:                                       ; preds = %do.end.92
  %79 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %is_temp101 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 16
  store i32 2, i32* %is_temp101, align 4, !tbaa !35
  br label %ens

ens:                                              ; preds = %if.end.100, %do.end.79
  %80 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %80, i32 0, i32 3
  %81 = load i32, i32* %min_in_size, align 4, !tbaa !41
  %82 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 18
  %83 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !42
  %templat102 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %83, i32 0, i32 0
  %84 = load %struct.stream_template_s*, %struct.stream_template_s** %templat102, align 8, !tbaa !43
  %min_out_size103 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %84, i32 0, i32 4
  %85 = load i32, i32* %min_out_size103, align 4, !tbaa !32
  %add104 = add i32 %81, %85
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current106 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory105, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current106, align 8, !tbaa !34
  %88 = load i32, i32* %close, align 4, !tbaa !24
  %call107 = call i32 @filter_ensure_buf(%struct.stream_s** %sstrm, i32 %add104, %struct.gs_ref_memory_s* %87, i32 0, i32 %88) #3
  store i32 %call107, i32* %code, align 4, !tbaa !24
  %89 = load i32, i32* %code, align 4, !tbaa !24
  %cmp108 = icmp slt i32 %89, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %ens
  br label %out

if.end.111:                                       ; preds = %ens
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.111, %if.end.46
  %90 = load i32, i32* %min_size, align 4, !tbaa !24
  %cmp112 = icmp ult i32 %90, 128
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %sw.epilog
  %91 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !24
  store i32 %91, i32* %min_size, align 4, !tbaa !24
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %sw.epilog
  %92 = load i32, i32* %min_size, align 4, !tbaa !24
  %93 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %94 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %95 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current117 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory116, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current117, align 8, !tbaa !34
  %98 = bitcast %struct.gs_ref_memory_s* %97 to %struct.gs_memory_s*
  %call118 = call i32 @filter_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 %92, %struct.ref_s* %93, %struct.stream_procs* @s_filter_read_procs, %struct.stream_template_s* %94, %struct.stream_state_s* %95, %struct.gs_memory_s* %98) #3
  store i32 %call118, i32* %code, align 4, !tbaa !24
  %99 = load i32, i32* %code, align 4, !tbaa !24
  %cmp119 = icmp slt i32 %99, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  br label %out

if.end.122:                                       ; preds = %if.end.115
  %100 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 1
  %pfile124 = bitcast %union.v* %value123 to %struct.stream_s**
  %101 = load %struct.stream_s*, %struct.stream_s** %pfile124, align 8, !tbaa !1
  store %struct.stream_s* %101, %struct.stream_s** %s, align 8, !tbaa !1
  %102 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %103 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %103, i32 0, i32 15
  store %struct.stream_s* %102, %struct.stream_s** %strm, align 8, !tbaa !45
  %104 = load i32, i32* %close, align 4, !tbaa !24
  %105 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %105, i32 0, i32 23
  store i32 %104, i32* %close_strm, align 4, !tbaa !46
  %106 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %107 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %106 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack125 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 26
  %stack126 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack125, i32 0, i32 0
  %p127 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack126, i32 0, i32 0
  %109 = load %struct.ref_s*, %struct.ref_s** %p127, align 8, !tbaa !5
  %idx.neg128 = sub i64 0, %sub.ptr.div
  %add.ptr129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 %idx.neg128
  store %struct.ref_s* %add.ptr129, %struct.ref_s** %p127, align 8, !tbaa !5
  br label %out

out:                                              ; preds = %if.end.122, %if.then.121, %if.then.110, %if.then.99, %if.then.45
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 1
  %111 = load i32, i32* %save_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory130, i32 %111) #3
  %112 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

cleanup.131:                                      ; preds = %out, %if.then.88, %cleanup, %if.then.36, %if.then.9, %if.then.6
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %close to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %use_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #2

declare void @sread_string(%struct.stream_s*, i8*, i32) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @sread_proc(%struct.ref_s*, %struct.stream_s**, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @filter_ensure_buf(%struct.stream_s** %ps, i32 %min_buf_size, %struct.gs_ref_memory_s* %imem, i32 %writing, i32 %close) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.stream_s**, align 8
  %min_buf_size.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %writing.addr = alloca i32, align 4
  %close.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %min_size = alloca i32, align 4
  %bs = alloca %struct.stream_s*, align 8
  %bsop = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %len = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store i32 %min_buf_size, i32* %min_buf_size.addr, align 4, !tbaa !24
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !24
  store i32 %close, i32* %close.addr, align 4, !tbaa !24
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %1, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %min_buf_size.addr, align 4, !tbaa !24
  %add = add i32 %4, 1
  store i32 %add, i32* %min_size, align 4, !tbaa !24
  %5 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.ref_s* %bsop to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 11
  %9 = load i8, i8* %modes, align 1, !tbaa !47
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %11 = load i32, i32* %bsize, align 4, !tbaa !48
  %12 = load i32, i32* %min_size, align 4, !tbaa !24
  %cmp2 = icmp uge i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 6
  %14 = load i8*, i8** %cbuf, align 8, !tbaa !49
  %cmp4 = icmp eq i8* %14, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %15 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %min_size, align 4, !tbaa !24
  %cmp7 = icmp ugt i32 %16, 128
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %17 = load i32, i32* %min_size, align 4, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 128, %cond.false ]
  store i32 %cond, i32* %len, align 4, !tbaa !24
  %18 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %21 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !50
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %24 = load i32, i32* %len, align 4, !tbaa !24
  %call = call i8* %21(%struct.gs_memory_s* %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #3
  store i8* %call, i8** %buf, align 8, !tbaa !1
  %25 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %25, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %cond.end
  %26 = load i8*, i8** %buf, align 8, !tbaa !1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 6
  store i8* %26, i8** %cbuf13, align 8, !tbaa !49
  %28 = load i8*, i8** %buf, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 -1
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !53
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !55
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %r16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_read_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r16, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr17, align 8, !tbaa !57
  %32 = load i8*, i8** %buf, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %32, i64 -1
  %33 = load i32, i32* %len, align 4, !tbaa !24
  %idx.ext = zext i32 %33 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %limit22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 2
  store i8* %add.ptr19, i8** %limit22, align 8, !tbaa !58
  %35 = load i32, i32* %len, align 4, !tbaa !24
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 8
  store i32 %35, i32* %cbsize, align 4, !tbaa !59
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %bsize23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 7
  store i32 %35, i32* %bsize23, align 4, !tbaa !48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %38 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %cleanup.34

if.else:                                          ; preds = %if.end
  %40 = load i32, i32* %writing.addr, align 4, !tbaa !24
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else
  %41 = load i32, i32* %min_size, align 4, !tbaa !24
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %call26 = call i32 @filter_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 %41, %struct.ref_s* %bsop, %struct.stream_procs* @s_filter_write_procs, %struct.stream_template_s* @s_NullE_template, %struct.stream_state_s* null, %struct.gs_memory_s* %43) #3
  store i32 %call26, i32* %code, align 4, !tbaa !24
  br label %if.end.29

if.else.27:                                       ; preds = %if.else
  %44 = load i32, i32* %min_size, align 4, !tbaa !24
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %call28 = call i32 @filter_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 %44, %struct.ref_s* %bsop, %struct.stream_procs* @s_filter_read_procs, %struct.stream_template_s* @s_Null1D_template, %struct.stream_state_s* null, %struct.gs_memory_s* %46) #3
  store i32 %call28, i32* %code, align 4, !tbaa !24
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.25
  %47 = load i32, i32* %code, align 4, !tbaa !24
  %cmp30 = icmp slt i32 %47, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %48 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.33:                                        ; preds = %if.end.29
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bsop, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %49 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %49, %struct.stream_s** %bs, align 8, !tbaa !1
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %51 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 15
  store %struct.stream_s* %50, %struct.stream_s** %strm, align 8, !tbaa !45
  %52 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 16
  store i32 2, i32* %is_temp, align 4, !tbaa !35
  %53 = load i32, i32* %close.addr, align 4, !tbaa !24
  %54 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 23
  store i32 %53, i32* %close_strm, align 4, !tbaa !46
  %55 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %56 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %55, %struct.stream_s** %56, align 8, !tbaa !1
  %57 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %if.then.32, %cleanup, %if.then
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.ref_s* %bsop to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare i32 @filter_open(i8*, i32, %struct.ref_s*, %struct.stream_procs*, %struct.stream_template_s*, %struct.stream_state_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @filter_read_simple(%struct.gs_context_state_s* %i_ctx_p, %struct.stream_template_s* %templat) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %call = call i32 @filter_read(%struct.gs_context_state_s* %0, i32 0, %struct.stream_template_s* %1, %struct.stream_state_s* null, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @filter_write(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, %struct.stream_template_s* %templat, %struct.stream_state_s* %st, i32 %space) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %space.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %min_size = alloca i32, align 4
  %save_space = alloca i32, align 4
  %use_space = alloca i32, align 4
  %sop = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %sstrm = alloca %struct.stream_s*, align 8
  %close = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !24
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !24
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %4, i32 0, i32 3
  %5 = load i32, i32* %min_in_size, align 4, !tbaa !41
  %add = add i32 %5, 1
  store i32 %add, i32* %min_size, align 4, !tbaa !24
  %6 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %8 = load i32, i32* %current_space, align 4, !tbaa !33
  store i32 %8, i32* %save_space, align 4, !tbaa !24
  %9 = bitcast i32* %use_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %space.addr, align 4, !tbaa !24
  %cmp = icmp ugt i32 %10, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %space.addr, align 4, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 4, %cond.false ]
  store i32 %cond, i32* %use_space, align 4, !tbaa !24
  %12 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load i32, i32* %npop.addr, align 4, !tbaa !24
  %idx.ext = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %sop, align 8, !tbaa !1
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %close to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %close, align 4, !tbaa !24
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %21 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then
  %22 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %23 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %23, i32 0, i32 0
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %24 = load i16, i16* %type_attrs4, align 2, !tbaa !23
  %conv5 = zext i16 %24 to i32
  %and = and i32 %conv5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call = call i32 @dict_bool_param(%struct.ref_s* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* %close) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %26 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.10:                                        ; preds = %do.end
  %27 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %sop, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %cond.end
  %28 = load i32, i32* %use_space, align 4, !tbaa !24
  %29 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %30 = load i16, i16* %type_attrs13, align 2, !tbaa !23
  %conv14 = zext i16 %30 to i32
  %and15 = and i32 %conv14, 12
  %cmp16 = icmp ugt i32 %28, %and15
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.end.11
  %31 = load i32, i32* %use_space, align 4, !tbaa !24
  br label %cond.end.24

cond.false.19:                                    ; preds = %if.end.11
  %32 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %33 = load i16, i16* %type_attrs21, align 2, !tbaa !23
  %conv22 = zext i16 %33 to i32
  %and23 = and i32 %conv22, 12
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.19, %cond.true.18
  %cond25 = phi i32 [ %31, %cond.true.18 ], [ %and23, %cond.false.19 ]
  store i32 %cond25, i32* %use_space, align 4, !tbaa !24
  %34 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %35 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx28, align 1, !tbaa !22
  %conv29 = zext i8 %36 to i32
  switch i32 %conv29, label %sw.default [
    i32 18, label %sw.bb
    i32 3, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %cond.end.24
  br label %do.body.30

do.body.30:                                       ; preds = %sw.bb
  %37 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %38 = load i16, i16* %type_attrs32, align 2, !tbaa !23
  %conv33 = zext i16 %38 to i32
  %and34 = and i32 %conv33, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %do.body.30
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.37:                                        ; preds = %do.body.30
  br label %do.cond.38

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %40 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory40, i32 %40) #3
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory41, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !34
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %call42 = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #3
  store %struct.stream_s* %call42, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %44 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %cmp43 = icmp eq %struct.stream_s* %44, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.39
  store i32 -25, i32* %code, align 4, !tbaa !24
  br label %out

if.end.46:                                        ; preds = %do.end.39
  %45 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %bytes = bitcast %union.v* %value47 to i8**
  %47 = load i8*, i8** %bytes, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 2
  %49 = load i32, i32* %rsize, align 4, !tbaa !30
  call void @swrite_string(%struct.stream_s* %45, i8* %47, i32 %49) #3
  %50 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 16
  store i32 1, i32* %is_temp, align 4, !tbaa !35
  br label %sw.epilog

sw.bb.49:                                         ; preds = %cond.end.24
  br label %do.body.50

do.body.50:                                       ; preds = %sw.bb.49
  %51 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %pfile = bitcast %union.v* %value51 to %struct.stream_s**
  %52 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %52, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %53 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 20
  %54 = load i16, i16* %write_id, align 2, !tbaa !40
  %conv52 = zext i16 %54 to i32
  %55 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  %56 = load i32, i32* %rsize54, align 4, !tbaa !30
  %cmp55 = icmp ne i32 %conv52, %56
  br i1 %cmp55, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %do.body.50
  %57 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call58 = call i32 @file_switch_to_write(%struct.ref_s* %58) #3
  store i32 %call58, i32* %fcode, align 4, !tbaa !24
  %59 = load i32, i32* %fcode, align 4, !tbaa !24
  %cmp59 = icmp slt i32 %59, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.57
  %60 = load i32, i32* %fcode, align 4, !tbaa !24
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.then.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.61
  %61 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.117 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont, %do.body.50
  br label %do.cond.64

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 1
  %63 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory66, i32 %63) #3
  br label %ens

sw.default:                                       ; preds = %cond.end.24
  br label %do.body.67

do.body.67:                                       ; preds = %sw.default
  %64 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  %65 = load i16, i16* %type_attrs69, align 2, !tbaa !23
  %conv70 = zext i16 %65 to i32
  %and71 = and i32 %conv70, 15552
  %cmp72 = icmp eq i32 %and71, 1216
  br i1 %cmp72, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %do.body.67
  %66 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call75 = call i32 @check_proc_failed(%struct.ref_s* %66) #3
  store i32 %call75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.76:                                        ; preds = %do.body.67
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %68 = load i32, i32* %use_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory79, i32 %68) #3
  %69 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 1
  %current81 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory80, i32 0, i32 0
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current81, align 8, !tbaa !34
  %call82 = call i32 @swrite_proc(%struct.ref_s* %69, %struct.stream_s** %sstrm, %struct.gs_ref_memory_s* %71) #3
  store i32 %call82, i32* %code, align 4, !tbaa !24
  %72 = load i32, i32* %code, align 4, !tbaa !24
  %cmp83 = icmp slt i32 %72, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %do.end.78
  br label %out

if.end.86:                                        ; preds = %do.end.78
  %73 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %is_temp87 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %73, i32 0, i32 16
  store i32 2, i32* %is_temp87, align 4, !tbaa !35
  br label %ens

ens:                                              ; preds = %if.end.86, %do.end.65
  %74 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %74, i32 0, i32 4
  %75 = load i32, i32* %min_out_size, align 4, !tbaa !32
  %76 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 18
  %77 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !42
  %templat88 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %77, i32 0, i32 0
  %78 = load %struct.stream_template_s*, %struct.stream_template_s** %templat88, align 8, !tbaa !43
  %min_in_size89 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %78, i32 0, i32 3
  %79 = load i32, i32* %min_in_size89, align 4, !tbaa !41
  %add90 = add i32 %75, %79
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 1
  %current92 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory91, i32 0, i32 0
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current92, align 8, !tbaa !34
  %82 = load i32, i32* %close, align 4, !tbaa !24
  %call93 = call i32 @filter_ensure_buf(%struct.stream_s** %sstrm, i32 %add90, %struct.gs_ref_memory_s* %81, i32 1, i32 %82) #3
  store i32 %call93, i32* %code, align 4, !tbaa !24
  %83 = load i32, i32* %code, align 4, !tbaa !24
  %cmp94 = icmp slt i32 %83, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %ens
  br label %out

if.end.97:                                        ; preds = %ens
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.97, %if.end.46
  %84 = load i32, i32* %min_size, align 4, !tbaa !24
  %cmp98 = icmp ult i32 %84, 128
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %sw.epilog
  %85 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !24
  store i32 %85, i32* %min_size, align 4, !tbaa !24
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %sw.epilog
  %86 = load i32, i32* %min_size, align 4, !tbaa !24
  %87 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %88 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %89 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %current103 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory102, i32 0, i32 0
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current103, align 8, !tbaa !34
  %92 = bitcast %struct.gs_ref_memory_s* %91 to %struct.gs_memory_s*
  %call104 = call i32 @filter_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 %86, %struct.ref_s* %87, %struct.stream_procs* @s_filter_write_procs, %struct.stream_template_s* %88, %struct.stream_state_s* %89, %struct.gs_memory_s* %92) #3
  store i32 %call104, i32* %code, align 4, !tbaa !24
  %93 = load i32, i32* %code, align 4, !tbaa !24
  %cmp105 = icmp slt i32 %93, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.101
  br label %out

if.end.108:                                       ; preds = %if.end.101
  %94 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %pfile110 = bitcast %union.v* %value109 to %struct.stream_s**
  %95 = load %struct.stream_s*, %struct.stream_s** %pfile110, align 8, !tbaa !1
  store %struct.stream_s* %95, %struct.stream_s** %s, align 8, !tbaa !1
  %96 = load %struct.stream_s*, %struct.stream_s** %sstrm, align 8, !tbaa !1
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %97, i32 0, i32 15
  store %struct.stream_s* %96, %struct.stream_s** %strm, align 8, !tbaa !45
  %98 = load i32, i32* %close, align 4, !tbaa !24
  %99 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %99, i32 0, i32 23
  store i32 %98, i32* %close_strm, align 4, !tbaa !46
  %100 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %101 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %100 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %101 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack111 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 26
  %stack112 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack111, i32 0, i32 0
  %p113 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack112, i32 0, i32 0
  %103 = load %struct.ref_s*, %struct.ref_s** %p113, align 8, !tbaa !5
  %idx.neg114 = sub i64 0, %sub.ptr.div
  %add.ptr115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i64 %idx.neg114
  store %struct.ref_s* %add.ptr115, %struct.ref_s** %p113, align 8, !tbaa !5
  br label %out

out:                                              ; preds = %if.end.108, %if.then.107, %if.then.96, %if.then.85, %if.then.45
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %104, i32 0, i32 1
  %105 = load i32, i32* %save_space, align 4, !tbaa !24
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory116, i32 %105) #3
  %106 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %out, %if.then.74, %cleanup, %if.then.36, %if.then.9, %if.then.6
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %close to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast %struct.stream_s** %sstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %use_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %min_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare void @swrite_string(%struct.stream_s*, i8*, i32) #2

declare i32 @file_switch_to_write(%struct.ref_s*) #2

declare i32 @swrite_proc(%struct.ref_s*, %struct.stream_s**, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @filter_write_simple(%struct.gs_context_state_s* %i_ctx_p, %struct.stream_template_s* %templat) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %call = call i32 @filter_write(%struct.gs_context_state_s* %0, i32 0, %struct.stream_template_s* %1, %struct.stream_state_s* null, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @filter_mark_temp(%struct.ref_s* %fop, i32 %is_temp) #0 {
entry:
  %fop.addr = alloca %struct.ref_s*, align 8
  %is_temp.addr = alloca i32, align 4
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store i32 %is_temp, i32* %is_temp.addr, align 4, !tbaa !24
  %0 = load i32, i32* %is_temp.addr, align 4, !tbaa !24
  %1 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %is_temp1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 16
  store i32 %0, i32* %is_temp1, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define void @filter_mark_strm_temp(%struct.ref_s* %fop, i32 %is_temp) #0 {
entry:
  %fop.addr = alloca %struct.ref_s*, align 8
  %is_temp.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %strm = alloca %struct.stream_s*, align 8
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store i32 %is_temp, i32* %is_temp.addr, align 4, !tbaa !24
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 15
  %5 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !45
  store %struct.stream_s* %5, %struct.stream_s** %strm, align 8, !tbaa !1
  %6 = load i32, i32* %is_temp.addr, align 4, !tbaa !24
  %7 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %is_temp2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 16
  store i32 %6, i32* %is_temp2, align 4, !tbaa !35
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 23
  %9 = load i32, i32* %close_strm, align 4, !tbaa !46
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_strm3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 23
  store i32 %9, i32* %close_strm3, align 4, !tbaa !46
  %11 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zPSSE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_write_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_PSSE_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zAXE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_write_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_AXE_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zAXD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_read_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_AXD_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zNullE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_write_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_NullE_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zPFBD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %sop = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_PFBD_state_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %sop, align 8, !tbaa !1
  %3 = bitcast %struct.stream_PFBD_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %9 = load i16, i16* %boolval, align 2, !tbaa !60
  %conv2 = zext i16 %9 to i32
  %binary_to_hex = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %state, i32 0, i32 5
  store i32 %conv2, i32* %binary_to_hex, align 4, !tbaa !61
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = bitcast %struct.stream_PFBD_state_s* %state to %struct.stream_state_s*
  %call3 = call i32 @filter_read(%struct.gs_context_state_s* %10, i32 1, %struct.stream_template_s* @s_PFBD_template, %struct.stream_state_s* %11, i32 0) #3
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.stream_PFBD_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 128, i8* %12) #1
  %13 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zRLE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_RLE_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_RLE_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 136, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %7 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !63
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  %cmp = icmp ult %struct.ref_s* %5, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %EndOfData = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %state, i32 0, i32 5
  %call = call i32 @rl_setup(%struct.ref_s* %add.ptr3, i32* %EndOfData) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %9 = load i32, i32* %code, align 4, !tbaa !24
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, 11
  br i1 %cmp7, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @check_type_failed(%struct.ref_s* %14) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.body
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !28
  %cmp12 = icmp ugt i64 %16, 4294967295
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval17 = bitcast %union.v* %value16 to i64*
  %18 = load i64, i64* %intval17, align 8, !tbaa !28
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %state, i32 0, i32 6
  store i64 %18, i64* %record_size, align 8, !tbaa !64
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %20 = bitcast %struct.stream_RLE_state_s* %state to %struct.stream_state_s*
  %call18 = call i32 @filter_write(%struct.gs_context_state_s* %19, i32 1, %struct.stream_template_s* @s_RLE_template, %struct.stream_state_s* %20, i32 0) #3
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.14, %if.then.9, %if.then.5, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.stream_RLE_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 136, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zRLD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_RLD_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_RLD_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 120, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %state, i32 0, i32 5
  %call = call i32 @rl_setup(%struct.ref_s* %5, i32* %EndOfData) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %6 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_RLD_state_s* %state to %struct.stream_state_s*
  %call1 = call i32 @filter_read(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_RLD_template, %struct.stream_state_s* %9, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_RLD_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 120, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zEOFD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_read_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_EOFD_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Null1D_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !24
  %0 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !57
  %2 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %limit, align 8, !tbaa !55
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %ptr1, align 8, !tbaa !53
  %6 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %limit2, align 8, !tbaa !58
  %cmp3 = icmp uge i8* %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %ptr6, align 8, !tbaa !57
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr6, align 8, !tbaa !57
  %10 = load i8, i8* %incdec.ptr, align 1, !tbaa !22
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr7, align 8, !tbaa !53
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %ptr7, align 8, !tbaa !53
  store i8 %10, i8* %incdec.ptr8, align 1, !tbaa !22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @rl_setup(%struct.ref_s* %dop, i32* %eod) #0 {
entry:
  %retval = alloca i32, align 4
  %dop.addr = alloca %struct.ref_s*, align 8
  %eod.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %dop, %struct.ref_s** %dop.addr, align 8, !tbaa !1
  store i32* %eod, i32** %eod.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %dop.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.ref_s*, %struct.ref_s** %dop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = load i16, i16* %type_attrs3, align 2, !tbaa !23
  %conv4 = zext i16 %6 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.ref_s*, %struct.ref_s** %dop.addr, align 8, !tbaa !1
  %8 = load i32*, i32** %eod.addr, align 8, !tbaa !1
  %call = call i32 @dict_bool_param(%struct.ref_s* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %9 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.5
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i32*, i32** %eod.addr, align 8, !tbaa !1
  store i32 1, i32* %11, align 4, !tbaa !24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %cleanup
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @s_EOFD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !24
  ret i32 -1
}

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
!5 = !{!6, !2, i64 624}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!20, !2, i64 40}
!20 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!21 = !{!6, !9, i64 80}
!22 = !{!3, !3, i64 0}
!23 = !{!10, !12, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!26, !13, i64 112}
!26 = !{!"stream_SFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !13, i64 112, !27, i64 120, !13, i64 136, !9, i64 144, !9, i64 148, !9, i64 152}
!27 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!28 = !{!13, !13, i64 0}
!29 = !{!26, !2, i64 120}
!30 = !{!10, !9, i64 4}
!31 = !{!26, !9, i64 128}
!32 = !{!20, !9, i64 28}
!33 = !{!7, !9, i64 48}
!34 = !{!6, !2, i64 8}
!35 = !{!36, !9, i64 248}
!36 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !37, i64 160, !13, i64 176, !38, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !27, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!37 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!38 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!39 = !{!36, !12, i64 264}
!40 = !{!36, !12, i64 266}
!41 = !{!20, !9, i64 24}
!42 = !{!36, !2, i64 256}
!43 = !{!44, !2, i64 0}
!44 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28}
!45 = !{!36, !2, i64 240}
!46 = !{!36, !9, i64 288}
!47 = !{!36, !3, i64 155}
!48 = !{!36, !9, i64 144}
!49 = !{!36, !2, i64 136}
!50 = !{!51, !2, i64 64}
!51 = !{!"gs_memory_s", !2, i64 0, !52, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!52 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!53 = !{!54, !2, i64 8}
!54 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!55 = !{!56, !2, i64 8}
!56 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!56, !2, i64 0}
!58 = !{!54, !2, i64 16}
!59 = !{!36, !9, i64 148}
!60 = !{!12, !12, i64 0}
!61 = !{!62, !9, i64 108}
!62 = !{!"stream_PFBD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !9, i64 108, !9, i64 112, !13, i64 120}
!63 = !{!6, !2, i64 632}
!64 = !{!65, !13, i64 112}
!65 = !{!"stream_RLE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !9, i64 108, !13, i64 112, !13, i64 120, !9, i64 128}
