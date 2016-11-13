; ModuleID = './ztype.bc'
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
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str = private unnamed_addr constant [5 x i8] c"1cvi\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1cvlit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1cvn\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1cvr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"3cvrs\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2cvs\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1cvx\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"1executeonly\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"1noaccess\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1rcheck\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1readonly\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"2.type\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"0.typenames\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"1wcheck\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"1xcheck\00", align 1
@ztype_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvi }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvlit }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvn }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvr }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvrs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcvx }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecuteonly }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znoaccess }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrcheck }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadonly }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztypenames }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwcheck }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zxcheck }, %struct.op_def zeroinitializer], align 16
@ztypenames.tnames = internal constant [21 x i8*] [i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"booleantype\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"dicttype\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"filetype\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"arraytype\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"packedarraytype\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"fonttype\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"integertype\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"marktype\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"nametype\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"nulltype\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"operatortype\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"realtype\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"savetype\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"stringtype\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"devicetype\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"access_check(modify)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcvx(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
  %opidx = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %7 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 0
  %cmp = icmp ult %struct.ref_s* %5, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 15
  br i1 %cmp3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !21
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call zeroext i16 @op_find_index(%struct.ref_s* %13) #5
  %conv8 = zext i16 %call to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %15 = load i32, i32* %rsize10, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %opidx, align 4, !tbaa !22
  %cmp11 = icmp eq i32 %cond, 0
  br i1 %cmp11, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load i32, i32* %opidx, align 4, !tbaa !22
  %and = and i32 %16, 15
  %idxprom = zext i32 %and to i64
  %17 = load i32, i32* %opidx, align 4, !tbaa !22
  %shr = lshr i32 %17, 4
  %idxprom13 = zext i32 %shr to i64
  %arrayidx14 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom13
  %18 = load %struct.op_def*, %struct.op_def** %arrayidx14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.op_def, %struct.op_def* %18, i64 %idxprom
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx15, i32 0, i32 0
  %19 = load i8*, i8** %oname, align 8, !tbaa !23
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx16, align 1, !tbaa !20
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 37
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false, %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %22 = bitcast i16* %type_attrs23 to i8*
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx24, align 1, !tbaa !20
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.21
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %25 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %25, i32 0, i32 0
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.end.21
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi %struct.ref_s* [ %values, %cond.true.28 ], [ %26, %cond.false.29 ]
  store %struct.ref_s* %cond31, %struct.ref_s** %aop, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %28 = load i16, i16* %type_attrs33, align 2, !tbaa !25
  %conv34 = zext i16 %28 to i32
  %or = or i32 %conv34, 128
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, i16* %type_attrs33, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.30, %if.then.20, %if.then
  %29 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare zeroext i16 @op_find_index(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zreadonly(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @access_check(%struct.gs_context_state_s* %0, i32 96, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @access_check(%struct.gs_context_state_s* %i_ctx_p, i32 %access, i32 %modify) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %access.addr = alloca i32, align 4
  %modify.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %access, i32* %access.addr, align 4, !tbaa !22
  store i32 %modify, i32* %modify.addr, align 4, !tbaa !22
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 18, label %sw.bb.22
    i32 5, label %sw.bb.22
    i32 6, label %sw.bb.22
    i32 9, label %sw.bb.22
    i32 19, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %8 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %8, i32 0, i32 0
  store %struct.ref_s* %values, %struct.ref_s** %aop, align 8, !tbaa !1
  %9 = load i32, i32* %modify.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %11 = load i16, i16* %type_attrs2, align 2, !tbaa !25
  %conv3 = zext i16 %11 to i32
  %neg = xor i32 %conv3, -1
  %12 = load i32, i32* %access.addr, align 4, !tbaa !22
  %and = and i32 %neg, %12
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %14 = load i16, i16* %type_attrs7, align 2, !tbaa !25
  %conv8 = zext i16 %14 to i32
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %16 = load i32, i32* %test_mask, align 4, !tbaa !26
  %and9 = and i32 %conv8, %16
  %cmp = icmp eq i32 %and9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %20 = bitcast %struct.ref_s* %19 to i16*
  %call = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory11, %struct.ref_s* %18, i16* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %21 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %22 = load i16, i16* %type_attrs13, align 2, !tbaa !25
  %conv14 = zext i16 %22 to i32
  %and15 = and i32 %conv14, -113
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %type_attrs13, align 2, !tbaa !25
  %23 = load i32, i32* %access.addr, align 4, !tbaa !22
  %24 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %25 = load i16, i16* %type_attrs18, align 2, !tbaa !25
  %conv19 = zext i16 %25 to i32
  %or = or i32 %conv19, %23
  %conv20 = trunc i32 %or to i16
  store i16 %conv20, i16* %type_attrs18, align 2, !tbaa !25
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 24
  call void @dstack_set_top(%struct.dict_stack_s* %dict_stack) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %27 = load i32, i32* %modify.addr, align 4, !tbaa !22
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %sw.bb.22
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %29 = load i16, i16* %type_attrs26, align 2, !tbaa !25
  %conv27 = zext i16 %29 to i32
  %neg28 = xor i32 %conv27, -1
  %30 = load i32, i32* %access.addr, align 4, !tbaa !22
  %and29 = and i32 %neg28, %30
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.24
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.24
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %32 = load i16, i16* %type_attrs34, align 2, !tbaa !25
  %conv35 = zext i16 %32 to i32
  %and36 = and i32 %conv35, -113
  %conv37 = trunc i32 %and36 to i16
  store i16 %conv37, i16* %type_attrs34, align 2, !tbaa !25
  %33 = load i32, i32* %access.addr, align 4, !tbaa !22
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %35 = load i16, i16* %type_attrs39, align 2, !tbaa !25
  %conv40 = zext i16 %35 to i32
  %or41 = or i32 %conv40, %33
  %conv42 = trunc i32 %or41 to i16
  store i16 %conv42, i16* %type_attrs39, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %sw.bb.22
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %36, %struct.ref_s** %aop, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call44 = call i32 @check_type_failed(%struct.ref_s* %37) #5
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.43, %if.end.21
  %38 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %39 = load i16, i16* %type_attrs46, align 2, !tbaa !25
  %conv47 = zext i16 %39 to i32
  %neg48 = xor i32 %conv47, -1
  %40 = load i32, i32* %access.addr, align 4, !tbaa !22
  %and49 = and i32 %neg48, %40
  %tobool50 = icmp ne i32 %and49, 0
  %lnot = xor i1 %tobool50, true
  %cond51 = select i1 %lnot, i32 1, i32 0
  store i32 %cond51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.32, %if.then.31, %cond.end, %if.then.5
  %41 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @zcvi(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %fval = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  %str = alloca %struct.ref_s, align 8
  %token = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast float* %fval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.1
    i32 18, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !27
  store float %8, float* %fval, align 4, !tbaa !27
  br label %sw.epilog.20

sw.default:                                       ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

sw.bb.2:                                          ; preds = %entry
  %10 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s* %str to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !29
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_scan_string_token_options(%struct.gs_context_state_s* %16, %struct.ref_s* %str, %struct.ref_s* %token, i32 0) #5
  store i32 %call3, i32* %code, align 4, !tbaa !22
  %17 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store i32 -18, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %18 = load i32, i32* %code, align 4, !tbaa !22
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %20 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx11, align 1, !tbaa !20
  %conv12 = zext i8 %21 to i32
  switch i32 %conv12, label %sw.default.17 [
    i32 11, label %sw.bb.13
    i32 16, label %sw.bb.14
  ]

sw.bb.13:                                         ; preds = %if.end.8
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %22 to i8*
  %24 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %if.end.8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 1
  %realval16 = bitcast %union.v* %value15 to float*
  %25 = load float, float* %realval16, align 4, !tbaa !27
  store float %25, float* %fval, align 4, !tbaa !27
  br label %sw.epilog

sw.default.17:                                    ; preds = %if.end.8
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.17, %sw.bb.13, %if.then.7
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog.20

sw.epilog.20:                                     ; preds = %cleanup.cont, %sw.bb.1
  %29 = load float, float* %fval, align 4, !tbaa !27
  %conv21 = fpext float %29 to double
  %cmp22 = fcmp ogt double %conv21, 0xC3E0000000000000
  br i1 %cmp22, label %land.lhs.true, label %if.then.27

land.lhs.true:                                    ; preds = %sw.epilog.20
  %30 = load float, float* %fval, align 4, !tbaa !27
  %conv24 = fpext float %30 to double
  %cmp25 = fcmp olt double %conv24, 0x43E0000000000000
  br i1 %cmp25, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true, %sw.epilog.20
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.28:                                        ; preds = %land.lhs.true
  %31 = load float, float* %fval, align 4, !tbaa !27
  %conv29 = fptosi float %31 to i64
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval = bitcast %union.v* %value30 to i64*
  store i64 %conv29, i64* %intval, align 8, !tbaa !31
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 2816, i16* %type_attrs32, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.28, %if.then.27, %cleanup, %sw.default, %sw.bb
  %34 = bitcast float* %fval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_scan_string_token_options(%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @zcvr(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %str = alloca %struct.ref_s, align 8
  %token = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.5
    i32 18, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %7 = load i64, i64* %intval, align 8, !tbaa !31
  %conv1 = sitofp i64 %7 to float
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %realval = bitcast %union.v* %value2 to float*
  store float %conv1, float* %realval, align 4, !tbaa !27
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  store i16 4096, i16* %type_attrs4, align 2, !tbaa !25
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

sw.default:                                       ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

sw.bb.6:                                          ; preds = %entry
  %11 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s* %str to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !29
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_scan_string_token_options(%struct.gs_context_state_s* %17, %struct.ref_s* %str, %struct.ref_s* %token, i32 0) #5
  store i32 %call7, i32* %code, align 4, !tbaa !22
  %18 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  store i32 -18, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.6
  %19 = load i32, i32* %code, align 4, !tbaa !22
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %21 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx15, align 1, !tbaa !20
  %conv16 = zext i8 %22 to i32
  switch i32 %conv16, label %sw.default.26 [
    i32 11, label %sw.bb.17
    i32 16, label %sw.bb.25
  ]

sw.bb.17:                                         ; preds = %if.end.12
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %token, i32 0, i32 1
  %intval19 = bitcast %union.v* %value18 to i64*
  %23 = load i64, i64* %intval19, align 8, !tbaa !31
  %conv20 = sitofp i64 %23 to float
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %realval22 = bitcast %union.v* %value21 to float*
  store float %conv20, float* %realval22, align 4, !tbaa !27
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  store i16 4096, i16* %type_attrs24, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %if.end.12
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %26 to i8*
  %28 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.26:                                    ; preds = %if.end.12
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.26, %sw.bb.25, %sw.bb.17, %if.then.11
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #1
  %31 = bitcast %struct.ref_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  br label %cleanup.29

cleanup.29:                                       ; preds = %cleanup, %sw.default, %sw.bb.5
  %32 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvlit(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 0
  %cmp = icmp ult %struct.ref_s* %4, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %values, %cond.true ], [ %12, %cond.false ]
  store %struct.ref_s* %cond, %struct.ref_s** %aop, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %14 = load i16, i16* %type_attrs6, align 2, !tbaa !25
  %conv7 = zext i16 %14 to i32
  %and = and i32 %conv7, -129
  %conv8 = trunc i32 %and to i16
  store i16 %conv8, i16* %type_attrs6, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %15 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvn(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !25
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !33
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !36
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @names_from_string(%struct.name_table_s* %13, %struct.ref_s* %14, %struct.ref_s* %15) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvrs(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %radix = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %ival = alloca i32, align 4
  %digits = alloca [64 x i8], align 16
  %endp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %fval = alloca float, align 4
  %dit = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %radix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !31
  %cmp5 = icmp slt i64 %9, 2
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 1
  %intval9 = bitcast %union.v* %value8 to i64*
  %11 = load i64, i64* %intval9, align 8, !tbaa !31
  %cmp10 = icmp sgt i64 %11, 36
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.13:                                        ; preds = %lor.lhs.false
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx14, i32 0, i32 1
  %intval16 = bitcast %union.v* %value15 to i64*
  %13 = load i64, i64* %intval16, align 8, !tbaa !31
  %conv17 = trunc i64 %13 to i32
  store i32 %conv17, i32* %radix, align 4, !tbaa !22
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %15 = load i16, i16* %type_attrs19, align 2, !tbaa !25
  %conv20 = zext i16 %15 to i32
  %and = and i32 %conv20, 16144
  %cmp21 = icmp eq i32 %and, 4624
  br i1 %cmp21, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %if.end.13
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %17 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx26, align 1, !tbaa !20
  %conv27 = zext i8 %18 to i32
  %cmp28 = icmp eq i32 %conv27, 18
  br i1 %cmp28, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.23
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call30 = call i32 @check_type_failed(%struct.ref_s* %19) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call30, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.31:                                        ; preds = %if.end.13
  %20 = load i32, i32* %radix, align 4, !tbaa !22
  %cmp32 = icmp eq i32 %20, 10
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.31
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %22 = bitcast i16* %type_attrs36 to i8*
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx37, align 1, !tbaa !20
  %conv38 = zext i8 %23 to i32
  switch i32 %conv38, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb
    i32 0, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.then.34, %if.then.34
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -2
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call40 = call i32 @convert_to_string(%struct.gs_memory_s* %27, %struct.ref_s* %add.ptr39, %struct.ref_s* %29) #5
  store i32 %call40, i32* %code, align 4, !tbaa !22
  %30 = load i32, i32* %code, align 4, !tbaa !22
  %cmp41 = icmp slt i32 %30, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb
  %31 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %sw.bb
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !5
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  store %struct.ref_s* %add.ptr48, %struct.ref_s** %p47, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %cleanup.112

sw.bb.49:                                         ; preds = %if.then.34
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

sw.default:                                       ; preds = %if.then.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.else:                                          ; preds = %if.end.31
  %35 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast [64 x i8]* %digits to i8*
  call void @llvm.lifetime.start(i64 64, i8* %36) #1
  %37 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %arrayidx50 = getelementptr inbounds [64 x i8], [64 x i8]* %digits, i32 0, i64 64
  store i8* %arrayidx50, i8** %endp, align 8, !tbaa !1
  %38 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %39, i8** %dp, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -2
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  %41 = bitcast i16* %type_attrs53 to i8*
  %arrayidx54 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx54, align 1, !tbaa !20
  %conv55 = zext i8 %42 to i32
  switch i32 %conv55, label %sw.default.76 [
    i32 11, label %sw.bb.56
    i32 16, label %sw.bb.61
    i32 0, label %sw.bb.75
  ]

sw.bb.56:                                         ; preds = %if.else
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx57, i32 0, i32 1
  %intval59 = bitcast %union.v* %value58 to i64*
  %44 = load i64, i64* %intval59, align 8, !tbaa !31
  %conv60 = trunc i64 %44 to i32
  store i32 %conv60, i32* %ival, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.else
  %45 = bitcast float* %fval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -2
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 1
  %realval = bitcast %union.v* %value63 to float*
  %47 = load float, float* %realval, align 4, !tbaa !27
  store float %47, float* %fval, align 4, !tbaa !27
  %48 = load float, float* %fval, align 4, !tbaa !27
  %conv64 = fpext float %48 to double
  %cmp65 = fcmp ogt double %conv64, 0xC3E0000000000000
  br i1 %cmp65, label %land.lhs.true, label %if.then.70

land.lhs.true:                                    ; preds = %sw.bb.61
  %49 = load float, float* %fval, align 4, !tbaa !27
  %conv67 = fpext float %49 to double
  %cmp68 = fcmp olt double %conv67, 0x43E0000000000000
  br i1 %cmp68, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true, %sw.bb.61
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.71:                                        ; preds = %land.lhs.true
  %50 = load float, float* %fval, align 4, !tbaa !27
  %conv72 = fptosi float %50 to i64
  %conv73 = trunc i64 %conv72 to i32
  store i32 %conv73, i32* %ival, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %if.end.71, %if.then.70
  %51 = bitcast float* %fval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.74
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.else
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

sw.default.76:                                    ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

sw.epilog:                                        ; preds = %cleanup.cont, %sw.bb.56
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.epilog
  %52 = bitcast i32* %dit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %ival, align 4, !tbaa !22
  %54 = load i32, i32* %radix, align 4, !tbaa !22
  %rem = urem i32 %53, %54
  store i32 %rem, i32* %dit, align 4, !tbaa !22
  %55 = load i32, i32* %dit, align 4, !tbaa !22
  %56 = load i32, i32* %dit, align 4, !tbaa !22
  %cmp77 = icmp slt i32 %56, 10
  %cond79 = select i1 %cmp77, i32 48, i32 55
  %add = add nsw i32 %55, %cond79
  %conv80 = trunc i32 %add to i8
  %57 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  store i8 %conv80, i8* %incdec.ptr, align 1, !tbaa !20
  %58 = load i32, i32* %radix, align 4, !tbaa !22
  %59 = load i32, i32* %ival, align 4, !tbaa !22
  %div = udiv i32 %59, %58
  store i32 %div, i32* %ival, align 4, !tbaa !22
  %60 = bitcast i32* %dit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %61 = load i32, i32* %ival, align 4, !tbaa !22
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %62 = load i8*, i8** %endp, align 8, !tbaa !1
  %63 = load i8*, i8** %dp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  %65 = load i32, i32* %rsize, align 4, !tbaa !21
  %conv82 = zext i32 %65 to i64
  %cmp83 = icmp sgt i64 %sub.ptr.sub, %conv82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.86:                                        ; preds = %do.end
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %bytes = bitcast %union.v* %value87 to i8**
  %67 = load i8*, i8** %bytes, align 8, !tbaa !1
  %68 = load i8*, i8** %dp, align 8, !tbaa !1
  %69 = load i8*, i8** %endp, align 8, !tbaa !1
  %70 = load i8*, i8** %dp, align 8, !tbaa !1
  %sub.ptr.lhs.cast88 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast89 = ptrtoint i8* %70 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %conv91 = trunc i64 %sub.ptr.sub90 to i32
  %conv92 = zext i32 %conv91 to i64
  %call93 = call i8* @memcpy(i8* %67, i8* %68, i64 %conv92) #6
  %71 = load i8*, i8** %endp, align 8, !tbaa !1
  %72 = load i8*, i8** %dp, align 8, !tbaa !1
  %sub.ptr.lhs.cast94 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %72 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %conv97 = trunc i64 %sub.ptr.sub96 to i32
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %rsize99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 2
  store i32 %conv97, i32* %rsize99, align 4, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.86, %if.then.85, %sw.default.76, %sw.bb.75, %cleanup.74
  %74 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast [64 x i8]* %digits to i8*
  call void @llvm.lifetime.end(i64 64, i8* %76) #1
  %77 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %cleanup.dest.104 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.104, label %cleanup.112 [
    i32 0, label %cleanup.cont.105
  ]

cleanup.cont.105:                                 ; preds = %cleanup.100
  br label %if.end.106

if.end.106:                                       ; preds = %cleanup.cont.105
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -2
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %80 = bitcast %struct.ref_s* %arrayidx107 to i8*
  %81 = bitcast %struct.ref_s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false), !tbaa.struct !29
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 26
  %stack109 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack108, i32 0, i32 0
  %p110 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack109, i32 0, i32 0
  %83 = load %struct.ref_s*, %struct.ref_s** %p110, align 8, !tbaa !5
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 -2
  store %struct.ref_s* %add.ptr111, %struct.ref_s** %p110, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %if.end.106, %cleanup.100, %sw.default, %sw.bb.49, %cleanup, %cond.end, %if.then.12, %if.then
  %84 = bitcast i32* %radix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvs(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !25
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4624
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 1
  %12 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  %cmp9 = icmp ult %struct.ref_s* %10, %add.ptr
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call14 = call i32 @convert_to_string(%struct.gs_memory_s* %15, %struct.ref_s* %add.ptr13, %struct.ref_s* %17) #5
  store i32 %call14, i32* %code, align 4, !tbaa !22
  %18 = load i32, i32* %code, align 4, !tbaa !22
  %cmp15 = icmp sge i32 %18, 0
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.12
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !5
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr21, %struct.ref_s** %p20, align 8, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.12
  %21 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.11, %cond.end
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecuteonly(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %cmp = icmp ult %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @access_check(%struct.gs_context_state_s* %9, i32 64, i32 1) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @znoaccess(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %aop = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %cmp = icmp ult %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.then.5, label %if.end.28

if.then.5:                                        ; preds = %if.end
  %9 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  store %struct.ref_s* %values, %struct.ref_s** %aop, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %13 = load i16, i16* %type_attrs7, align 2, !tbaa !25
  %conv8 = zext i16 %13 to i32
  %neg = xor i32 %conv8, -1
  %and = and i32 %neg, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.end.24

if.then.9:                                        ; preds = %if.then.5
  %14 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %15 = load i16, i16* %type_attrs11, align 2, !tbaa !25
  %conv12 = zext i16 %15 to i32
  %neg13 = xor i32 %conv12, -1
  %and14 = and i32 %neg13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.then.9
  %16 = load %struct.ref_s*, %struct.ref_s** %aop, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %17 = load i16, i16* %type_attrs17, align 2, !tbaa !25
  %conv18 = zext i16 %17 to i32
  %neg19 = xor i32 %conv18, -1
  %and20 = and i32 %neg19, 64
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %land.lhs.true, %if.then.9
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 24
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dstack_dict_is_permanent(%struct.dict_stack_s* %dict_stack, %struct.ref_s* %19) #5
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.end.23, %if.then.22
  %20 = bitcast %struct.ref_s** %aop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.end
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call29 = call i32 @access_check(%struct.gs_context_state_s* %21, i32 0, i32 1) #5
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.28, %cleanup, %if.then
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zrcheck(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @access_check(%struct.gs_context_state_s* %4, i32 32, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %5 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !22
  %conv = trunc i32 %6 to i16
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !30
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !25
  store i32 0, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %tnref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sname = alloca i8*, align 8
  %code30 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %tnref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !25
  %conv = zext i16 %10 to i32
  %cmp = icmp sge i32 %conv, 5376
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %12 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv5 = zext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv5, %cond.false ]
  %conv6 = sext i32 %cond to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %8, i64 %conv6, %struct.ref_s* %tnref) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %14 = load i32, i32* %code, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %15 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %cond.end
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %tnref, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %16 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !20
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 1
  %20 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 1
  %cmp19 = icmp ult %struct.ref_s* %18, %add.ptr18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.22:                                        ; preds = %if.then.15
  %21 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current24 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory23, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current24, align 8, !tbaa !32
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %25 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !38
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !32
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %31 = bitcast %struct.obj_header_s* %30 to i8*
  %call28 = call %struct.gs_memory_struct_type_s* %25(%struct.gs_memory_s* %28, i8* %31) #5
  %call29 = call i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s* %call28) #5
  store i8* %call29, i8** %sname, align 8, !tbaa !1
  %32 = bitcast i32* %code30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !32
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 2
  %36 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !33
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %36, i32 0, i32 16
  %37 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !36
  %38 = load i8*, i8** %sname, align 8, !tbaa !1
  %39 = load i8*, i8** %sname, align 8, !tbaa !1
  %call33 = call i64 @strlen(i8* %39) #7
  %conv34 = trunc i64 %call33 to i32
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %call36 = call i32 @names_ref(%struct.name_table_s* %37, i8* %38, i32 %conv34, %struct.ref_s* %add.ptr35, i32 0) #5
  store i32 %call36, i32* %code30, align 4, !tbaa !22
  %41 = load i32, i32* %code30, align 4, !tbaa !22
  %cmp37 = icmp slt i32 %41, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.22
  %42 = load i32, i32* %code30, align 4, !tbaa !22
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.39
  %43 = bitcast i32* %code30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr42, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  %46 = load i16, i16* %type_attrs44, align 2, !tbaa !25
  %conv45 = zext i16 %46 to i32
  %or = or i32 %conv45, 128
  %conv46 = trunc i32 %or to i16
  store i16 %conv46, i16* %type_attrs44, align 2, !tbaa !25
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %48 = bitcast %struct.ref_s* %add.ptr47 to i8*
  %49 = bitcast %struct.ref_s* %tnref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false), !tbaa.struct !29
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %cleanup.cont
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack50 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !5
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %p51, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.48, %cleanup, %if.then.21, %if.then
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.ref_s* %tnref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @ztypenames(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rtnp = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !39
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 7
  store i32 21, i32* %requested, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %9, 21
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct.ref_s** %rtnp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %idx.ext = sext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.ext
  store %struct.ref_s* %add.ptr9, %struct.ref_s** %rtnp, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !22
  %conv = sext i32 %13 to i64
  %cmp10 = icmp uge i64 %conv, 21
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [21 x i8*], [21 x i8*]* @ztypenames.tnames, i32 0, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %15, null
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %16 = load %struct.ref_s*, %struct.ref_s** %rtnp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !25
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 2
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !33
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %21, i32 0, i32 16
  %22 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !36
  %23 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [21 x i8*], [21 x i8*]* @ztypenames.tnames, i32 0, i64 %idxprom15
  %24 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %rtnp, align 8, !tbaa !1
  %call = call i32 @names_enter_string(%struct.name_table_s* %22, i8* %24, %struct.ref_s* %25) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %26 = load i32, i32* %code, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %26, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %27 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.else
  %28 = load %struct.ref_s*, %struct.ref_s** %rtnp, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %29 = load i16, i16* %type_attrs22, align 2, !tbaa !25
  %conv23 = zext i16 %29 to i32
  %or = or i32 %conv23, 128
  %conv24 = trunc i32 %or to i16
  store i16 %conv24, i16* %type_attrs22, align 2, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %if.then.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.25, %cleanup
  %31 = bitcast %struct.ref_s** %rtnp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest.27 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.27, label %cleanup.33 [
    i32 0, label %cleanup.cont.28
  ]

cleanup.cont.28:                                  ; preds = %cleanup.26
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.28
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack30 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !5
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 21
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %p31, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %for.end, %cleanup.26, %if.then
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zwcheck(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @access_check(%struct.gs_context_state_s* %4, i32 16, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %5 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !22
  %conv = trunc i32 %6 to i16
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !30
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !25
  store i32 0, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @zxcheck(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %cmp = icmp ult %struct.ref_s* %3, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %values, %cond.true ], [ %11, %cond.false ]
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cond, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %12 = load i16, i16* %type_attrs6, align 2, !tbaa !25
  %conv7 = zext i16 %12 to i32
  %and = and i32 %conv7, 128
  %tobool = icmp ne i32 %and, 0
  %cond8 = select i1 %tobool, i32 1, i32 0
  %conv9 = trunc i32 %cond8 to i16
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %boolval = bitcast %union.v* %value10 to i16*
  store i16 %conv9, i16* %boolval, align 2, !tbaa !30
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 256, i16* %type_attrs12, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @names_from_string(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @convert_to_string(%struct.gs_memory_s* %mem, %struct.ref_s* %op1, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op1.addr = alloca %struct.ref_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %len = alloca i32, align 4
  %pstr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op1, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %pstr, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %bytes, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !21
  %call = call i32 @obj_cvs(%struct.gs_memory_s* %3, %struct.ref_s* %4, i8* %6, i32 %8, i32* %len, i8** %pstr) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !22
  %cmp1 = icmp eq i32 %10, -15
  br i1 %cmp1, label %if.then.2, label %if.end.21

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %12 = load i16, i16* %type_attrs, align 2, !tbaa !25
  %conv = zext i16 %12 to i32
  %cmp4 = icmp sge i32 %conv, 5376
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %13 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %14 = bitcast i16* %type_attrs7 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv8 = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv8, %cond.false ]
  switch i32 %cond, label %sw.epilog.20 [
    i32 20, label %sw.bb
    i32 15, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %16 = load i8*, i8** %pstr, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %sw.bb
  %17 = load i8*, i8** %pstr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !20
  %conv12 = zext i8 %18 to i32
  switch i32 %conv12, label %sw.epilog [
    i32 37, label %sw.bb.13
    i32 46, label %sw.bb.13
    i32 64, label %sw.bb.13
  ]

sw.bb.13:                                         ; preds = %if.then.11, %if.then.11, %if.then.11
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %rsize15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  %20 = load i32, i32* %rsize15, align 4, !tbaa !21
  store i32 %20, i32* %len, align 4, !tbaa !22
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %bytes17 = bitcast %union.v* %value16 to i8**
  %22 = load i8*, i8** %bytes17, align 8, !tbaa !1
  %23 = load i8*, i8** %pstr, align 8, !tbaa !1
  %24 = load i32, i32* %len, align 4, !tbaa !22
  %conv18 = zext i32 %24 to i64
  %call19 = call i8* @memcpy(i8* %22, i8* %23, i64 %conv18) #6
  br label %ok

sw.epilog:                                        ; preds = %if.then.11
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %sw.bb
  br label %sw.epilog.20

sw.epilog.20:                                     ; preds = %if.end, %cond.end
  br label %if.end.21

if.end.21:                                        ; preds = %sw.epilog.20, %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %entry
  br label %ok

ok:                                               ; preds = %if.end.22, %sw.bb.13
  %26 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !29
  %30 = load i32, i32* %len, align 4, !tbaa !22
  %31 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  store i32 %30, i32* %rsize24, align 4, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %ok, %if.end.21
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @obj_cvs(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*, i8**) #2

declare i32 @dstack_dict_is_permanent(%struct.dict_stack_s*, %struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s*) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

declare void @dstack_set_top(%struct.dict_stack_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

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
!19 = !{!6, !2, i64 632}
!20 = !{!3, !3, i64 0}
!21 = !{!10, !9, i64 4}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !2, i64 0}
!24 = !{!"", !2, i64 0, !2, i64 8}
!25 = !{!10, !12, i64 0}
!26 = !{!7, !9, i64 64}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{i64 0, i64 2, !30, i64 2, i64 2, !30, i64 4, i64 4, !22, i64 8, i64 8, !31, i64 8, i64 2, !30, i64 8, i64 4, !27, i64 8, i64 8, !31, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !31}
!30 = !{!12, !12, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!6, !2, i64 8}
!33 = !{!34, !2, i64 192}
!34 = !{!"gs_memory_s", !2, i64 0, !35, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!36 = !{!37, !2, i64 120}
!37 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!34, !2, i64 128}
!39 = !{!6, !2, i64 640}
!40 = !{!6, !9, i64 688}
