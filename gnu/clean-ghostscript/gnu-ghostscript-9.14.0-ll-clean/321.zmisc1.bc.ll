; ModuleID = './zmisc1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
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
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.stream_exE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i16 }
%struct.stream_exD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i16, i32, i32, %struct.stream_PFBD_state_s*, i32, i32, i64, i32, i32 }
%struct.stream_PFBD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [15 x i8] c"3.type1encrypt\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"3.type1decrypt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"2eexecEncode\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2eexecDecode\00", align 1
@zmisc1_op_defs = constant [6 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype1encrypt }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype1decrypt }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexE }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexD }, %struct.op_def zeroinitializer], align 16
@s_exE_template = external constant %struct.stream_template_s, align 8
@s_exD_template = external constant %struct.stream_template_s, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"eexec\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"keep_spaces\00", align 1
@s_PFBD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define internal i32 @ztype1encrypt(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @type1crypt(%struct.gs_context_state_s* %0, i32 (i8*, i8*, i32, i16*)* @gs_type1_encrypt) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype1decrypt(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @type1crypt(%struct.gs_context_state_s* %0, i32 (i8*, i8*, i32, i16*)* @gs_type1_decrypt) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zexE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_exE_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_exE_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %cstate = getelementptr inbounds %struct.stream_exE_state_s, %struct.stream_exE_state_s* %state, i32 0, i32 5
  %call = call i32 @eexec_param(%struct.ref_s* %5, i16* %cstate) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %10 = bitcast %struct.stream_exE_state_s* %state to %struct.stream_state_s*
  %call1 = call i32 @filter_write(%struct.gs_context_state_s* %8, i32 %9, %struct.stream_template_s* @s_exE_template, %struct.stream_state_s* %10, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.stream_exE_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 112, i8* %12) #2
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zexD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_exD_state_s, align 8
  %code = alloca i32, align 4
  %cstate = alloca i32, align 4
  %is_eexec = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %pss = alloca %struct.stream_PFBD_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_exD_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 152, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_exD_template, i32 0, i32 6), align 8, !tbaa !20
  %6 = bitcast %struct.stream_exD_state_s* %state to %struct.stream_state_s*
  call void %5(%struct.stream_state_s* %6) #3
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %cstate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %is_eexec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %do.body

do.body:                                          ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %13, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %14 = load i16, i16* %type_attrs3, align 2, !tbaa !23
  %conv4 = zext i16 %14 to i32
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
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_uint_param(%struct.ref_s* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 65535, i32 65536, i32* %cstate) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 7
  %call8 = call i32 @dict_int_param(%struct.ref_s* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 2147483647, i32 4, i32* %lenIV) #3
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.19, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call12 = call i32 @dict_bool_param(%struct.ref_s* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* %is_eexec) #3
  store i32 %call12, i32* %code, align 4, !tbaa !19
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %keep_spaces = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 9
  %call16 = call i32 @dict_bool_param(%struct.ref_s* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* %keep_spaces) #3
  store i32 %call16, i32* %code, align 4, !tbaa !19
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false.15
  %20 = load i32, i32* %cstate, align 4, !tbaa !19
  %conv21 = trunc i32 %20 to i16
  %cstate22 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 5
  store i16 %conv21, i16* %cstate22, align 2, !tbaa !24
  %21 = load i32, i32* %is_eexec, align 4, !tbaa !19
  %tobool23 = icmp ne i32 %21, 0
  %cond = select i1 %tobool23, i32 -1, i32 1
  %binary = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 6
  store i32 %cond, i32* %binary, align 4, !tbaa !26
  store i32 1, i32* %code, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.5
  %22 = bitcast i32* %is_eexec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %cstate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.else:                                          ; preds = %entry
  %binary25 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 6
  store i32 1, i32* %binary25, align 4, !tbaa !26
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %cstate26 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 5
  %call27 = call i32 @eexec_param(%struct.ref_s* %24, i16* %cstate26) #3
  store i32 %call27, i32* %code, align 4, !tbaa !19
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %cleanup.cont
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %cmp29 = icmp slt i32 %25, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %26 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.32:                                        ; preds = %if.end.28
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %28 = bitcast i16* %type_attrs34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx35, align 1, !tbaa !22
  %conv36 = zext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br i1 %cmp37, label %if.then.39, label %if.end.76

if.then.39:                                       ; preds = %if.end.32
  %30 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 1
  %pfile = bitcast %union.v* %value41 to %struct.stream_s**
  %32 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %32, %struct.stream_s** %s, align 8, !tbaa !1
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 18
  %34 = load %struct.stream_state_s*, %struct.stream_state_s** %state42, align 8, !tbaa !27
  %cmp43 = icmp ne %struct.stream_state_s* %34, null
  br i1 %cmp43, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.39
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 18
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %state45, align 8, !tbaa !27
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %36, i32 0, i32 0
  %37 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !32
  %cmp46 = icmp eq %struct.stream_template_s* %37, @s_PFBD_template
  br i1 %cmp46, label %if.then.48, label %if.end.75

if.then.48:                                       ; preds = %land.lhs.true
  %38 = bitcast %struct.stream_PFBD_state_s** %pss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 18
  %40 = load %struct.stream_state_s*, %struct.stream_state_s** %state49, align 8, !tbaa !27
  %41 = bitcast %struct.stream_state_s* %40 to %struct.stream_PFBD_state_s*
  store %struct.stream_PFBD_state_s* %41, %struct.stream_PFBD_state_s** %pss, align 8, !tbaa !1
  %42 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %pss, align 8, !tbaa !1
  %pfb_state = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 8
  store %struct.stream_PFBD_state_s* %42, %struct.stream_PFBD_state_s** %pfb_state, align 8, !tbaa !34
  %43 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %pss, align 8, !tbaa !1
  %record_type = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %43, i32 0, i32 6
  %44 = load i32, i32* %record_type, align 4, !tbaa !35
  %cmp50 = icmp eq i32 %44, 2
  br i1 %cmp50, label %if.then.52, label %if.end.74

if.then.52:                                       ; preds = %if.then.48
  %45 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %pss, align 8, !tbaa !1
  %binary_to_hex = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %45, i32 0, i32 5
  %46 = load i32, i32* %binary_to_hex, align 4, !tbaa !37
  %tobool53 = icmp ne i32 %46, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.70

land.lhs.true.54:                                 ; preds = %if.then.52
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %48 = load i8*, i8** %limit, align 8, !tbaa !38
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor55 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 5
  %r56 = bitcast %union.stream_cursor_s* %cursor55 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r56, i32 0, i32 0
  %50 = load i8*, i8** %ptr, align 8, !tbaa !40
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp57 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp57, label %if.then.59, label %if.else.70

if.then.59:                                       ; preds = %land.lhs.true.54
  %binary60 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 6
  store i32 0, i32* %binary60, align 4, !tbaa !26
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor61 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %r62 = bitcast %union.stream_cursor_s* %cursor61 to %struct.stream_cursor_read_s*
  %limit63 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r62, i32 0, i32 1
  %52 = load i8*, i8** %limit63, align 8, !tbaa !38
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor64 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 5
  %r65 = bitcast %union.stream_cursor_s* %cursor64 to %struct.stream_cursor_read_s*
  %ptr66 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r65, i32 0, i32 0
  %54 = load i8*, i8** %ptr66, align 8, !tbaa !40
  %sub.ptr.lhs.cast67 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast68 = ptrtoint i8* %54 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %hex_left = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 11
  store i64 %sub.ptr.sub69, i64* %hex_left, align 8, !tbaa !41
  br label %if.end.72

if.else.70:                                       ; preds = %land.lhs.true.54, %if.then.52
  %binary71 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %state, i32 0, i32 6
  store i32 1, i32* %binary71, align 4, !tbaa !26
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.59
  %55 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %pss, align 8, !tbaa !1
  %binary_to_hex73 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %55, i32 0, i32 5
  store i32 0, i32* %binary_to_hex73, align 4, !tbaa !37
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %if.then.48
  %56 = bitcast %struct.stream_PFBD_state_s** %pss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true, %if.then.39
  %57 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.32
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %59 = load i32, i32* %code, align 4, !tbaa !19
  %60 = bitcast %struct.stream_exD_state_s* %state to %struct.stream_state_s*
  %call77 = call i32 @filter_read(%struct.gs_context_state_s* %58, i32 %59, %struct.stream_template_s* @s_exD_template, %struct.stream_state_s* %60, i32 0) #3
  store i32 %call77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.76, %if.then.31, %cleanup
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct.stream_exD_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 152, i8* %62) #2
  %63 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @type1crypt(%struct.gs_context_state_s* %i_ctx_p, i32 (i8*, i8*, i32, i16*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*, i32, i16*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %state = alloca i16, align 2
  %ssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32, i16*)* %proc, i32 (i8*, i8*, i32, i16*)** %proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !22
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !42
  %conv5 = trunc i64 %10 to i16
  store i16 %conv5, i16* %state, align 2, !tbaa !43
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %12 = load i64, i64* %intval8, align 8, !tbaa !42
  %13 = load i16, i16* %state, align 2, !tbaa !43
  %conv9 = zext i16 %13 to i64
  %cmp10 = icmp ne i64 %12, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %15 = load i16, i16* %type_attrs16, align 2, !tbaa !23
  %conv17 = zext i16 %15 to i32
  %and = and i32 %conv17, 16160
  %cmp18 = icmp eq i32 %and, 4640
  br i1 %cmp18, label %if.end.30, label %if.then.20

if.then.20:                                       ; preds = %if.end.13
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx21, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %17 = bitcast i16* %type_attrs23 to i8*
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx24, align 1, !tbaa !22
  %conv25 = zext i8 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 18
  br i1 %cmp26, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %call29 = call i32 @check_type_failed(%struct.ref_s* %arrayidx28) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call29, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.13
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %21 = load i16, i16* %type_attrs32, align 2, !tbaa !23
  %conv33 = zext i16 %21 to i32
  %and34 = and i32 %conv33, 16144
  %cmp35 = icmp eq i32 %and34, 4624
  br i1 %cmp35, label %if.end.49, label %if.then.37

if.then.37:                                       ; preds = %if.end.30
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %23 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx40, align 1, !tbaa !22
  %conv41 = zext i8 %24 to i32
  %cmp42 = icmp eq i32 %conv41, 18
  br i1 %cmp42, label %cond.false.46, label %cond.true.44

cond.true.44:                                     ; preds = %if.then.37
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call45 = call i32 @check_type_failed(%struct.ref_s* %25) #3
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.37
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.44
  %cond48 = phi i32 [ %call45, %cond.true.44 ], [ -7, %cond.false.46 ]
  store i32 %cond48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.30
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  %27 = load i32, i32* %rsize, align 4, !tbaa !44
  store i32 %27, i32* %ssize, align 4, !tbaa !19
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 2
  %29 = load i32, i32* %rsize52, align 4, !tbaa !44
  %30 = load i32, i32* %ssize, align 4, !tbaa !19
  %cmp53 = icmp ult i32 %29, %30
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.49
  %31 = load i32 (i8*, i8*, i32, i16*)*, i32 (i8*, i8*, i32, i16*)** %proc.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %bytes = bitcast %union.v* %value57 to i8**
  %33 = load i8*, i8** %bytes, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx58, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value59 to i8**
  %35 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %36 = load i32, i32* %ssize, align 4, !tbaa !19
  %call60 = call i32 %31(i8* %33, i8* %35, i32 %36, i16* %state) #3
  %37 = load i16, i16* %state, align 2, !tbaa !43
  %conv61 = zext i16 %37 to i64
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -2
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 1
  %intval64 = bitcast %union.v* %value63 to i64*
  store i64 %conv61, i64* %intval64, align 8, !tbaa !42
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %41 = bitcast %struct.ref_s* %arrayidx65 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !45
  %43 = load i32, i32* %ssize, align 4, !tbaa !19
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 0
  %rsize68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 2
  store i32 %43, i32* %rsize68, align 4, !tbaa !44
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack70 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack69, i32 0, i32 0
  %p71 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack70, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p71, align 8, !tbaa !5
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  store %struct.ref_s* %add.ptr72, %struct.ref_s** %p71, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %cond.end.47, %cond.end, %if.then.12, %if.then
  %47 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #2
  %49 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gs_type1_encrypt(i8*, i8*, i32, i16*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @check_type_failed(%struct.ref_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #1

; Function Attrs: nounwind uwtable
define internal i32 @eexec_param(%struct.ref_s* %op, i16* %pcstate) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pcstate.addr = alloca i16*, align 8
  %npop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i16* %pcstate, i16** %pcstate.addr, align 8, !tbaa !1
  %0 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %npop, align 4, !tbaa !19
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %npop, align 4, !tbaa !19
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %npop, align 4, !tbaa !19
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !22
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 11
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !42
  %conv10 = trunc i64 %11 to i16
  %12 = load i16*, i16** %pcstate.addr, align 8, !tbaa !1
  store i16 %conv10, i16* %12, align 2, !tbaa !43
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval12 = bitcast %union.v* %value11 to i64*
  %14 = load i64, i64* %intval12, align 8, !tbaa !42
  %15 = load i16*, i16** %pcstate.addr, align 8, !tbaa !1
  %16 = load i16, i16* %15, align 2, !tbaa !43
  %conv13 = zext i16 %16 to i64
  %cmp14 = icmp ne i64 %14, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.9
  %17 = load i32, i32* %npop, align 4, !tbaa !19
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.8
  %18 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @filter_write(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #1

declare i32 @dict_uint_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #1

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #1

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #1

declare i32 @filter_read(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #1

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
!19 = !{!9, !9, i64 0}
!20 = !{!21, !2, i64 40}
!21 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!22 = !{!3, !3, i64 0}
!23 = !{!10, !12, i64 0}
!24 = !{!25, !12, i64 108}
!25 = !{!"stream_exD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !12, i64 108, !9, i64 112, !9, i64 116, !2, i64 120, !9, i64 128, !9, i64 132, !13, i64 136, !9, i64 144, !9, i64 148}
!26 = !{!25, !9, i64 112}
!27 = !{!28, !2, i64 256}
!28 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !29, i64 160, !13, i64 176, !30, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !31, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!29 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!30 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!31 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!32 = !{!33, !2, i64 0}
!33 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28}
!34 = !{!25, !2, i64 120}
!35 = !{!36, !9, i64 112}
!36 = !{!"stream_PFBD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !9, i64 108, !9, i64 112, !13, i64 120}
!37 = !{!36, !9, i64 108}
!38 = !{!39, !2, i64 8}
!39 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!40 = !{!39, !2, i64 0}
!41 = !{!25, !13, i64 136}
!42 = !{!13, !13, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!10, !9, i64 4}
!45 = !{i64 0, i64 2, !43, i64 2, i64 2, !43, i64 4, i64 4, !19, i64 8, i64 8, !42, i64 8, i64 2, !43, i64 8, i64 4, !46, i64 8, i64 8, !42, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !42}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !3, i64 0}
