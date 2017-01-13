; ModuleID = './zcontrol.bc'
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
%struct.stream_template_s = type opaque
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
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
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
%struct.ref_stack_enum_s = type { %struct.ref_stack_block_s*, %struct.ref_s*, i32 }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [7 x i8] c"1.cond\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"1.countexecstack\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0currentfile\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1.execn\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"1execstack\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"2.execstack\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"0.instopped\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"0.needinput\00", align 1
@zcontrol1_op_defs = constant [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcond }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcountexecstack }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcountexecstack1 }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentfile }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexec }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecn }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecstack }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecstack2 }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexit }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zif }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zifelse }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinstopped }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zneedinput }, %struct.op_def zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"2.quit\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"1.stop\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"2.stopped\00", align 1
@zcontrol2_op_defs = constant [9 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfor }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zloop }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zquit }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrepeat }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstop }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zzstop }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstopped }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zzstopped }, %struct.op_def zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [16 x i8] c"1%cond_continue\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"1%execstack_continue\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"2%execstack2_continue\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"0%for_pos_int_continue\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"0%for_neg_int_continue\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"0%for_real_continue\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"4%for_samples\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"0%for_samples_continue\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"0%loop_continue\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"0%repeat_continue\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"0%stopped_push\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"1superexec\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"0%end_superexec\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"2.runandhide\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"0%end_runandhide\00", align 1
@zcontrol3_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cond_continue }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @execstack_continue }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @execstack2_continue }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @for_pos_int_continue }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @for_neg_int_continue }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @for_real_continue }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfor_samples }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @for_samples_continue }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @loop_continue }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @repeat_continue }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @stopped_push }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsuperexec }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @end_superexec }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrunandhide }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @end_runandhide }, %struct.op_def zeroinitializer], align 16
@ref_type_properties = external constant [64 x i8], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"execstack\00", align 1
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zexec(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
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
  br label %cleanup.49

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_for_exec(%struct.ref_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.7:                                         ; preds = %if.end.5
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !22
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %cmp13 = icmp ugt %struct.ref_s* %13, %add.ptr12
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.7
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %call18 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack17, i32 1) #5
  store i32 %call18, i32* %es_code_, align 4, !tbaa !20
  %18 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp19 = icmp slt i32 %18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %if.end.7
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p26, align 8, !tbaa !22
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack28 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !22
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = bitcast %struct.ref_s* %24 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack31 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !29
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %30 = load i16, i16* %type_attrs34, align 2, !tbaa !21
  %conv35 = zext i16 %30 to i32
  %and36 = and i32 %conv35, 16256
  %cmp37 = icmp eq i32 %and36, 896
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %do.body
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !29
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 1
  store %struct.ref_s* %32, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !5
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %add.ptr48, %struct.ref_s** %p47, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %do.end, %cleanup, %if.then.6, %if.then.4, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_for_exec(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %3 = bitcast i16* %type_attrs2 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %idxprom = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx3, align 1, !tbaa !31
  %conv4 = zext i8 %5 to i32
  %and5 = and i32 %conv4, 1
  %cmp = icmp ne i32 %and5, 0
  br i1 %cmp, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %7 = load i16, i16* %type_attrs9, align 2, !tbaa !21
  %conv10 = zext i16 %7 to i32
  %and11 = and i32 %conv10, 128
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %9 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx15, align 1, !tbaa !31
  %conv16 = zext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 2
  br i1 %cmp17, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.7
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @zif(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %5) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !31
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call10 = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #5
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.11:                                        ; preds = %do.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %11 = load i16, i16* %boolval, align 2, !tbaa !25
  %tobool = icmp ne i16 %11, 0
  br i1 %tobool, label %if.then.13, label %if.end.53

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !22
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %cmp18 = icmp ugt %struct.ref_s* %13, %add.ptr
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.then.13
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %call23 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack22, i32 1) #5
  store i32 %call23, i32* %es_code_, align 4, !tbaa !20
  %18 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp24 = icmp slt i32 %18, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.then.13
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p31, align 8, !tbaa !22
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !22
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = bitcast %struct.ref_s* %24 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.28
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p38, align 8, !tbaa !29
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %30 = load i16, i16* %type_attrs40, align 2, !tbaa !21
  %conv41 = zext i16 %30 to i32
  %and42 = and i32 %conv41, 16256
  %cmp43 = icmp eq i32 %and42, 896
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %do.body.35
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !29
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 1
  store %struct.ref_s* %32, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %do.body.35
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %if.end.11
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p56, align 8, !tbaa !5
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -2
  store %struct.ref_s* %add.ptr57, %struct.ref_s** %p56, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.53, %cleanup, %if.then.8, %if.then
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zifelse(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %5) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %7 = load i16, i16* %type_attrs4, align 2, !tbaa !21
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 15552
  %cmp7 = icmp eq i32 %and6, 1216
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %do.body.2
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call11 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx10) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.12:                                        ; preds = %do.body.2
  br label %do.cond.13

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %10 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx18, align 1, !tbaa !31
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %do.end.14
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #5
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.25:                                        ; preds = %do.end.14
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !22
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 2
  %16 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %cmp30 = icmp ugt %struct.ref_s* %14, %add.ptr
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.25
  %17 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %call35 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack34, i32 1) #5
  store i32 %call35, i32* %es_code_, align 4, !tbaa !20
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp36 = icmp slt i32 %19, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.32
  %20 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38
  %21 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont, %if.end.25
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p43, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p43, align 8, !tbaa !22
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx44, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %25 = load i16, i16* %boolval, align 2, !tbaa !25
  %tobool = icmp ne i16 %25, 0
  br i1 %tobool, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.40
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !22
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %add.ptr49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %if.end.53

if.else:                                          ; preds = %if.end.40
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !22
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %32 to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.45
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !29
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  %38 = load i16, i16* %type_attrs59, align 2, !tbaa !21
  %conv60 = zext i16 %38 to i32
  %and61 = and i32 %conv60, 16256
  %cmp62 = icmp eq i32 %and61, 896
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %do.body.54
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack66 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack65, i32 0, i32 0
  %p67 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack66, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p67, align 8, !tbaa !29
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack68, i32 0, i32 1
  store %struct.ref_s* %40, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %do.body.54
  br label %do.cond.70

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 26
  %stack73 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack72, i32 0, i32 0
  %p74 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack73, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p74, align 8, !tbaa !5
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -3
  store %struct.ref_s* %add.ptr75, %struct.ref_s** %p74, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %do.end.71, %cleanup, %if.then.22, %if.then.9, %if.then
  %44 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @zfor(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %params = alloca [3 x float], align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [3 x float]* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i32 0
  %call = call i32 @float_params(%struct.ref_s* %add.ptr, i32 3, float* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !27
  %conv = fpext float %8 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !27
  %conv4 = fpext float %9 to double
  %cmp5 = fcmp oeq double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -4
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %p10, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !22
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -7
  %cmp18 = icmp ugt %struct.ref_s* %13, %add.ptr17
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.12
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %call23 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack22, i32 7) #5
  store i32 %call23, i32* %es_code_, align 4, !tbaa !20
  %18 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp24 = icmp slt i32 %18, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.160 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.end.12
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !22
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 6
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %24 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv33 = zext i16 %24 to i32
  %and = and i32 %conv33, 15552
  %cmp34 = icmp eq i32 %and, 1216
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %do.body
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call37 = call i32 @check_proc_failed(%struct.ref_s* %25) #5
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.38:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.38
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -3
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr39, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  %27 = bitcast i16* %type_attrs41 to i8*
  %arrayidx42 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx42, align 1, !tbaa !31
  %conv43 = zext i8 %28 to i32
  %cmp44 = icmp eq i32 %conv43, 11
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.114

land.lhs.true.46:                                 ; preds = %do.end
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  %30 = bitcast i16* %type_attrs49 to i8*
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx50, align 1, !tbaa !31
  %conv51 = zext i8 %31 to i32
  %cmp52 = icmp eq i32 %conv51, 11
  br i1 %cmp52, label %if.then.54, label %if.else.114

if.then.54:                                       ; preds = %land.lhs.true.46
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx55, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %33 = load i64, i64* %intval, align 8, !tbaa !26
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -4
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  store i64 %33, i64* %intval58, align 8, !tbaa !26
  %35 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -4
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 2816, i16* %type_attrs61, align 2, !tbaa !21
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 1
  %intval64 = bitcast %union.v* %value63 to i64*
  %37 = load i64, i64* %intval64, align 8, !tbaa !26
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr65, i32 0, i32 1
  %intval67 = bitcast %union.v* %value66 to i64*
  store i64 %37, i64* %intval67, align 8, !tbaa !26
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -3
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr68, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  store i16 2816, i16* %type_attrs70, align 2, !tbaa !21
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  %41 = bitcast i16* %type_attrs73 to i8*
  %arrayidx74 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx74, align 1, !tbaa !31
  %conv75 = zext i8 %42 to i32
  switch i32 %conv75, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.then.54
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %value77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx76, i32 0, i32 1
  %intval78 = bitcast %union.v* %value77 to i64*
  %44 = load i64, i64* %intval78, align 8, !tbaa !26
  %45 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -2
  %value80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr79, i32 0, i32 1
  %intval81 = bitcast %union.v* %value80 to i64*
  store i64 %44, i64* %intval81, align 8, !tbaa !26
  %46 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -2
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr82, i32 0, i32 0
  %type_attrs84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 0
  store i16 2816, i16* %type_attrs84, align 2, !tbaa !21
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.then.54
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %value87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx86, i32 0, i32 1
  %realval = bitcast %union.v* %value87 to float*
  %48 = load float, float* %realval, align 4, !tbaa !27
  %conv88 = fptosi float %48 to i64
  %49 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  %value90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr89, i32 0, i32 1
  %intval91 = bitcast %union.v* %value90 to i64*
  store i64 %conv88, i64* %intval91, align 8, !tbaa !26
  %50 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -2
  %tas93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr92, i32 0, i32 0
  %type_attrs94 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas93, i32 0, i32 0
  store i16 2816, i16* %type_attrs94, align 2, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.54
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  %call96 = call i32 @check_type_failed(%struct.ref_s* %add.ptr95) #5
  store i32 %call96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

sw.epilog:                                        ; preds = %sw.bb.85, %sw.bb
  %52 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -3
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx97, i32 0, i32 1
  %intval99 = bitcast %union.v* %value98 to i64*
  %53 = load i64, i64* %intval99, align 8, !tbaa !26
  %cmp100 = icmp sge i64 %53, 0
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %sw.epilog
  %54 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %opproc = bitcast %union.v* %value103 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @for_pos_int_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %55 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  store i16 3968, i16* %type_attrs105, align 2, !tbaa !21
  %56 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  br label %if.end.113

if.else:                                          ; preds = %sw.epilog
  %57 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %opproc108 = bitcast %union.v* %value107 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @for_neg_int_continue, i32 (%struct.gs_context_state_s*)** %opproc108, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs110 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas109, i32 0, i32 0
  store i16 3968, i16* %type_attrs110, align 2, !tbaa !21
  %59 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %rsize112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 2
  store i32 0, i32* %rsize112, align 4, !tbaa !32
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %if.then.102
  br label %if.end.142

if.else.114:                                      ; preds = %land.lhs.true.46, %do.end
  %arrayidx115 = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i64 0
  %60 = load float, float* %arrayidx115, align 4, !tbaa !27
  %61 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -4
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr116, i32 0, i32 1
  %realval118 = bitcast %union.v* %value117 to float*
  store float %60, float* %realval118, align 4, !tbaa !27
  %62 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -4
  %tas120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr119, i32 0, i32 0
  %type_attrs121 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas120, i32 0, i32 0
  store i16 4096, i16* %type_attrs121, align 2, !tbaa !21
  %arrayidx122 = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i64 1
  %63 = load float, float* %arrayidx122, align 4, !tbaa !27
  %64 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -3
  %value124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr123, i32 0, i32 1
  %realval125 = bitcast %union.v* %value124 to float*
  store float %63, float* %realval125, align 4, !tbaa !27
  %65 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -3
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr126, i32 0, i32 0
  %type_attrs128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 0
  store i16 4096, i16* %type_attrs128, align 2, !tbaa !21
  %arrayidx129 = getelementptr inbounds [3 x float], [3 x float]* %params, i32 0, i64 2
  %66 = load float, float* %arrayidx129, align 4, !tbaa !27
  %67 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %value131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr130, i32 0, i32 1
  %realval132 = bitcast %union.v* %value131 to float*
  store float %66, float* %realval132, align 4, !tbaa !27
  %68 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -2
  %tas134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr133, i32 0, i32 0
  %type_attrs135 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas134, i32 0, i32 0
  store i16 4096, i16* %type_attrs135, align 2, !tbaa !21
  %69 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 1
  %opproc137 = bitcast %union.v* %value136 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @for_real_continue, i32 (%struct.gs_context_state_s*)** %opproc137, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs139 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas138, i32 0, i32 0
  store i16 3968, i16* %type_attrs139, align 2, !tbaa !21
  %71 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %rsize141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 2
  store i32 0, i32* %rsize141, align 4, !tbaa !32
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.114, %if.end.113
  %72 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -5
  %value144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr143, i32 0, i32 1
  %opproc145 = bitcast %union.v* %value144 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc145, align 8, !tbaa !1
  %73 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -5
  %tas147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr146, i32 0, i32 0
  %type_attrs148 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas147, i32 0, i32 0
  store i16 3712, i16* %type_attrs148, align 2, !tbaa !21
  %74 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -5
  %tas150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr149, i32 0, i32 0
  %rsize151 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas150, i32 0, i32 2
  store i32 2, i32* %rsize151, align 4, !tbaa !32
  %75 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -1
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %77 = bitcast %struct.ref_s* %add.ptr152 to i8*
  %78 = bitcast %struct.ref_s* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 16, i32 8, i1 false), !tbaa.struct !24
  %79 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack153 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 25
  %stack154 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack153, i32 0, i32 0
  %p155 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack154, i32 0, i32 0
  store %struct.ref_s* %79, %struct.ref_s** %p155, align 8, !tbaa !22
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 26
  %stack157 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack156, i32 0, i32 0
  %p158 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack157, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p158, align 8, !tbaa !5
  %add.ptr159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -4
  store %struct.ref_s* %add.ptr159, %struct.ref_s** %p158, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.142, %sw.default, %if.then.36, %cleanup, %if.then.7, %if.then
  %83 = bitcast [3 x float]* %params to i8*
  call void @llvm.lifetime.end(i64 12, i8* %83) #1
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare i32 @float_params(%struct.ref_s*, i32, float*) #2

; Function Attrs: nounwind uwtable
define internal i32 @for_pos_int_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %var = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast i32* %var to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !26
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %var, align 4, !tbaa !20
  %9 = load i32, i32* %var, align 4, !tbaa !20
  %conv3 = sext i32 %9 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval6 = bitcast %union.v* %value5 to i64*
  %11 = load i64, i64* %intval6, align 8, !tbaa !26
  %cmp = icmp sgt i64 %conv3, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 2
  %16 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp14 = icmp ugt %struct.ref_s* %add.ptr11, %16
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  store %struct.ref_s* %18, %struct.ref_s** %p21, align 8, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %var, align 4, !tbaa !20
  %conv23 = sext i32 %20 to i64
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  store i64 %conv23, i64* %intval25, align 8, !tbaa !26
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  %23 = load i32, i32* %var, align 4, !tbaa !20
  %conv26 = sext i32 %23 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %25 = load i64, i64* %intval29, align 8, !tbaa !26
  %add = add nsw i64 %conv26, %25
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -3
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx30, i32 0, i32 1
  %intval32 = bitcast %union.v* %value31 to i64*
  store i64 %add, i64* %intval32, align 8, !tbaa !26
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %add.ptr33 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !24
  %31 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 2
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %add.ptr34, %struct.ref_s** %p37, align 8, !tbaa !22
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.16, %if.then
  %33 = bitcast i32* %var to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @for_neg_int_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %var = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast i32* %var to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !26
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %var, align 4, !tbaa !20
  %9 = load i32, i32* %var, align 4, !tbaa !20
  %conv3 = sext i32 %9 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval6 = bitcast %union.v* %value5 to i64*
  %11 = load i64, i64* %intval6, align 8, !tbaa !26
  %cmp = icmp slt i64 %conv3, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 2
  %16 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp14 = icmp ugt %struct.ref_s* %add.ptr11, %16
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  store %struct.ref_s* %18, %struct.ref_s** %p21, align 8, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %var, align 4, !tbaa !20
  %conv23 = sext i32 %20 to i64
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  store i64 %conv23, i64* %intval25, align 8, !tbaa !26
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  %23 = load i32, i32* %var, align 4, !tbaa !20
  %conv26 = sext i32 %23 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %25 = load i64, i64* %intval29, align 8, !tbaa !26
  %add = add nsw i64 %conv26, %25
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -3
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx30, i32 0, i32 1
  %intval32 = bitcast %union.v* %value31 to i64*
  store i64 %add, i64* %intval32, align 8, !tbaa !26
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %add.ptr33 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !24
  %31 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 2
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %add.ptr34, %struct.ref_s** %p37, align 8, !tbaa !22
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.16, %if.then
  %33 = bitcast i32* %var to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @for_real_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %var = alloca float, align 4
  %incr = alloca float, align 4
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast float* %var to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !27
  store float %8, float* %var, align 4, !tbaa !27
  %9 = bitcast float* %incr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  %11 = load float, float* %realval5, align 4, !tbaa !27
  store float %11, float* %incr, align 4, !tbaa !27
  %12 = load float, float* %incr, align 4, !tbaa !27
  %cmp = fcmp oge float %12, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load float, float* %var, align 4, !tbaa !27
  %14 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %realval8 = bitcast %union.v* %value7 to float*
  %15 = load float, float* %realval8, align 4, !tbaa !27
  %cmp9 = fcmp ogt float %13, %15
  br i1 %cmp9, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %16 = load float, float* %var, align 4, !tbaa !27
  %17 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 1
  %realval12 = bitcast %union.v* %value11 to float*
  %18 = load float, float* %realval12, align 4, !tbaa !27
  %cmp13 = fcmp olt float %16, %18
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p16, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  store %struct.ref_s* %add.ptr17, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 2
  %23 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp20 = icmp ugt %struct.ref_s* %add.ptr17, %23
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  store %struct.ref_s* %25, %struct.ref_s** %p26, align 8, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -3
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %add.ptr28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !24
  %31 = load float, float* %var, align 4, !tbaa !27
  %32 = load float, float* %incr, align 4, !tbaa !27
  %add = fadd float %31, %32
  %33 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -3
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx29, i32 0, i32 1
  %realval31 = bitcast %union.v* %value30 to float*
  store float %add, float* %realval31, align 4, !tbaa !27
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 2
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %p35, align 8, !tbaa !22
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 2
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %38 = bitcast %struct.ref_s* %add.ptr36 to i8*
  %39 = bitcast %struct.ref_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.21, %if.then
  %40 = bitcast float* %incr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast float* %var to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @no_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @zfor_samples(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %9 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !31
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  %call13 = call i32 @check_type_failed(%struct.ref_s* %arrayidx12) #5
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.14:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %13 = bitcast i16* %type_attrs17 to i8*
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx18, align 1, !tbaa !31
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 16
  br i1 %cmp20, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.14
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %call24 = call i32 @check_type_failed(%struct.ref_s* %arrayidx23) #5
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.25:                                        ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %17 = load i16, i16* %type_attrs27, align 2, !tbaa !21
  %conv28 = zext i16 %17 to i32
  %and = and i32 %conv28, 15552
  %cmp29 = icmp eq i32 %and, 1216
  br i1 %cmp29, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %do.body
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call32 = call i32 @check_proc_failed(%struct.ref_s* %18) #5
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.33:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !22
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 2
  %22 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -8
  %cmp38 = icmp ugt %struct.ref_s* %20, %add.ptr
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %do.end
  %23 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %call43 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack42, i32 8) #5
  store i32 %call43, i32* %es_code_, align 4, !tbaa !20
  %25 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp44 = icmp slt i32 %25, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.40
  %26 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.then.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.46
  %27 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.48

if.end.48:                                        ; preds = %cleanup.cont, %do.end
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !22
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 7
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %ep, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr53, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -6
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr54, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  store i16 3712, i16* %type_attrs56, align 2, !tbaa !21
  %32 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -6
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr57, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  store i32 2, i32* %rsize, align 4, !tbaa !32
  %33 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -5
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 1
  %intval = bitcast %union.v* %value60 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !26
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -5
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  store i16 2816, i16* %type_attrs63, align 2, !tbaa !21
  %35 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -4
  %36 = bitcast %struct.ref_s* %add.ptr64 to i8*
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -3
  %38 = bitcast %struct.ref_s* %add.ptr65 to i8*
  %call66 = call i8* @memcpy(i8* %36, i8* %38, i64 48) #6
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %41 = bitcast %struct.ref_s* %add.ptr67 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !24
  %43 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %opproc69 = bitcast %union.v* %value68 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @for_samples_continue, i32 (%struct.gs_context_state_s*)** %opproc69, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 3968, i16* %type_attrs71, align 2, !tbaa !21
  %45 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %rsize73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 2
  store i32 0, i32* %rsize73, align 4, !tbaa !32
  %46 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack75 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  store %struct.ref_s* %46, %struct.ref_s** %p76, align 8, !tbaa !22
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 26
  %stack78 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack77, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack78, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p79, align 8, !tbaa !5
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -4
  store %struct.ref_s* %add.ptr80, %struct.ref_s** %p79, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %if.end.48, %cleanup, %if.then.31, %if.then.22, %if.then.11, %if.then
  %50 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @for_samples_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %var = alloca i32, align 4
  %a = alloca float, align 4
  %n = alloca i32, align 4
  %b = alloca float, align 4
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
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast i32* %var to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !26
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %var, align 4, !tbaa !20
  %9 = bitcast float* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 1
  %realval = bitcast %union.v* %value4 to float*
  %11 = load float, float* %realval, align 4, !tbaa !27
  store float %11, float* %a, align 4, !tbaa !27
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %14 = load i64, i64* %intval7, align 8, !tbaa !26
  %conv8 = trunc i64 %14 to i32
  store i32 %conv8, i32* %n, align 4, !tbaa !20
  %15 = bitcast float* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %realval11 = bitcast %union.v* %value10 to float*
  %17 = load float, float* %realval11, align 4, !tbaa !27
  store float %17, float* %b, align 4, !tbaa !27
  %18 = load i32, i32* %var, align 4, !tbaa !20
  %19 = load i32, i32* %n, align 4, !tbaa !20
  %cmp = icmp sgt i32 %18, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p15, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 1
  store %struct.ref_s* %add.ptr16, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %24 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp19 = icmp ugt %struct.ref_s* %add.ptr16, %24
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  store %struct.ref_s* %26, %struct.ref_s** %p26, align 8, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i32, i32* %n, align 4, !tbaa !20
  %29 = load i32, i32* %var, align 4, !tbaa !20
  %sub = sub nsw i32 %28, %29
  %conv28 = sitofp i32 %sub to float
  %30 = load float, float* %a, align 4, !tbaa !27
  %mul = fmul float %conv28, %30
  %31 = load i32, i32* %var, align 4, !tbaa !20
  %conv29 = sitofp i32 %31 to float
  %32 = load float, float* %b, align 4, !tbaa !27
  %mul30 = fmul float %conv29, %32
  %add = fadd float %mul, %mul30
  %33 = load i32, i32* %n, align 4, !tbaa !20
  %conv31 = sitofp i32 %33 to float
  %div = fdiv float %add, %conv31
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %realval33 = bitcast %union.v* %value32 to float*
  store float %div, float* %realval33, align 4, !tbaa !27
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !21
  %36 = load i32, i32* %var, align 4, !tbaa !20
  %add34 = add nsw i32 %36, 1
  %conv35 = sext i32 %add34 to i64
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -4
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx36, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  store i64 %conv35, i64* %intval38, align 8, !tbaa !26
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 2
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %40 = bitcast %struct.ref_s* %add.ptr39 to i8*
  %41 = bitcast %struct.ref_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !24
  %42 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 2
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  store %struct.ref_s* %add.ptr40, %struct.ref_s** %p43, align 8, !tbaa !22
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.21, %if.then
  %44 = bitcast float* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast float* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %var to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @zrepeat(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %5) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !31
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 11
  br i1 %cmp6, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call10 = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #5
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.11:                                        ; preds = %do.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !26
  %cmp13 = icmp slt i64 %11, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.16:                                        ; preds = %if.end.11
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !22
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -5
  %cmp21 = icmp ugt %struct.ref_s* %13, %add.ptr
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.16
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %call26 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack25, i32 5) #5
  store i32 %call26, i32* %es_code_, align 4, !tbaa !20
  %18 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp27 = icmp slt i32 %18, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.16
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p34, align 8, !tbaa !22
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !22
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %opproc = bitcast %union.v* %value38 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !22
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  store i16 3712, i16* %type_attrs43, align 2, !tbaa !21
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack45 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p46, align 8, !tbaa !22
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 2
  store i32 2, i32* %rsize, align 4, !tbaa !32
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !22
  %incdec.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr51, %struct.ref_s** %p50, align 8, !tbaa !22
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %32 = bitcast %struct.ref_s* %incdec.ptr51 to i8*
  %33 = bitcast %struct.ref_s* %arrayidx52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !24
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !22
  %incdec.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 1
  store %struct.ref_s* %incdec.ptr56, %struct.ref_s** %p55, align 8, !tbaa !22
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %37 = bitcast %struct.ref_s* %incdec.ptr56 to i8*
  %38 = bitcast %struct.ref_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !24
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack58 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !22
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 1
  %opproc62 = bitcast %union.v* %value61 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @repeat_continue, i32 (%struct.gs_context_state_s*)** %opproc62, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack64 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack63, i32 0, i32 0
  %p65 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack64, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p65, align 8, !tbaa !22
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 3968, i16* %type_attrs68, align 2, !tbaa !21
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack70 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack69, i32 0, i32 0
  %p71 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack70, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p71, align 8, !tbaa !22
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 1
  %tas73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 0
  %rsize74 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas73, i32 0, i32 2
  store i32 0, i32* %rsize74, align 4, !tbaa !32
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack76 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack75, i32 0, i32 0
  %p77 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack76, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p77, align 8, !tbaa !5
  %add.ptr78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -2
  store %struct.ref_s* %add.ptr78, %struct.ref_s** %p77, align 8, !tbaa !5
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call79 = call i32 @repeat_continue(%struct.gs_context_state_s* %47) #5
  store i32 %call79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %if.end.31, %cleanup, %if.then.15, %if.then.8, %if.then
  %48 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @repeat_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  store %struct.ref_s* %2, %struct.ref_s** %ep, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8, !tbaa !26
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %intval, align 8, !tbaa !26
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !22
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !22
  %9 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %8 to i8*
  %11 = bitcast %struct.ref_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !22
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %p9, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %14 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zcond(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %10 = load i16, i16* %type_attrs5, align 2, !tbaa !21
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, 64
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.9:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !32
  %and11 = and i32 %12, 1
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.15:                                        ; preds = %do.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %14 = load i32, i32* %rsize17, align 4, !tbaa !32
  %cmp18 = icmp eq i32 %14, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.15
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call21 = call i32 @zpop(%struct.gs_context_state_s* %15) #5
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.22:                                        ; preds = %if.end.15
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !22
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 2
  %19 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -3
  %cmp28 = icmp ugt %struct.ref_s* %17, %add.ptr
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.22
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack32 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack31, i32 0, i32 0
  %call33 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack32, i32 3) #5
  store i32 %call33, i32* %es_code_, align 4, !tbaa !20
  %22 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp34 = icmp slt i32 %22, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.30
  %23 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.36
  %24 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.74 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.end.22
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 3
  store %struct.ref_s* %add.ptr39, %struct.ref_s** %ep, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  store %struct.ref_s* %add.ptr39, %struct.ref_s** %p42, align 8, !tbaa !22
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %add.ptr43 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !24
  %31 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cond_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 3968, i16* %type_attrs47, align 2, !tbaa !21
  %33 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr48, i32 0, i32 0
  %rsize50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 2
  store i32 0, i32* %rsize50, align 4, !tbaa !32
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !35
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %call51 = call i32 @array_get(%struct.gs_memory_s* %36, %struct.ref_s* %37, i64 0, %struct.ref_s* %38) #5
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.38
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !29
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %41 = load i16, i16* %type_attrs57, align 2, !tbaa !21
  %conv58 = zext i16 %41 to i32
  %and59 = and i32 %conv58, 16256
  %cmp60 = icmp eq i32 %and59, 896
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %do.body.52
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack64 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack63, i32 0, i32 0
  %p65 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack64, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p65, align 8, !tbaa !29
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 1
  store %struct.ref_s* %43, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %do.body.52
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %p72 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p72, align 8, !tbaa !5
  %add.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  store %struct.ref_s* %add.ptr73, %struct.ref_s** %p72, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %do.end.69, %cleanup, %if.then.20, %if.then.14, %if.then.8, %if.then
  %47 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @zcountexecstack(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @count_exec_stack(%struct.gs_context_state_s* %9, i32 0) #5
  %conv = zext i32 %call to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !26
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zcountexecstack1(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %9 = load i16, i16* %boolval, align 2, !tbaa !25
  %conv2 = zext i16 %9 to i32
  %call3 = call i32 @count_exec_stack(%struct.gs_context_state_s* %7, i32 %conv2) #5
  %conv4 = zext i32 %call3 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value5 to i64*
  store i64 %conv4, i64* %intval, align 8, !tbaa !26
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 2816, i16* %type_attrs7, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %6 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %8, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 1
  %11 = load %struct.ref_s*, %struct.ref_s** %current_file, align 8, !tbaa !36
  %cmp8 = icmp ne %struct.ref_s* %11, null
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %do.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %current_file11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 1
  %14 = load %struct.ref_s*, %struct.ref_s** %current_file11, align 8, !tbaa !36
  %15 = bitcast %struct.ref_s* %12 to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %if.end.19

if.else.12:                                       ; preds = %do.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.ref_s* @zget_current_file(%struct.gs_context_state_s* %17) #5
  store %struct.ref_s* %call, %struct.ref_s** %fp, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.ref_s* %call, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @make_invalid_file(%struct.gs_context_state_s* %18, %struct.ref_s* %19) #5
  br label %if.end.18

if.else.15:                                       ; preds = %if.else.12
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s* %20 to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !24
  %24 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %current_file17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 1
  store %struct.ref_s* %24, %struct.ref_s** %current_file17, align 8, !tbaa !30
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.9
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %27 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %27 to i32
  %and = and i32 %conv, -129
  %conv20 = trunc i32 %and to i16
  store i16 %conv20, i16* %type_attrs, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then
  %28 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecn(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %esp_orig = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  %rp = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s** %esp_orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end:                                           ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !26
  %cmp2 = icmp ugt i64 %11, 4294967294
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.5:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %13 = load i64, i64* %intval7, align 8, !tbaa !26
  %conv8 = trunc i64 %13 to i32
  store i32 %conv8, i32* %n, align 4, !tbaa !20
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 1
  %16 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %17 = load i32, i32* %n, align 4, !tbaa !20
  %add = add i32 %17, 1
  %sub = sub i32 %add, 1
  %idx.ext = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext
  %cmp11 = icmp ult %struct.ref_s* %14, %add.ptr
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.14:                                        ; preds = %do.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !22
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %22 = load i32, i32* %n, align 4, !tbaa !20
  %idx.ext19 = zext i32 %22 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idx.neg
  %cmp21 = icmp ugt %struct.ref_s* %19, %add.ptr20
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.14
  %23 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %25 = load i32, i32* %n, align 4, !tbaa !20
  %call26 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack25, i32 %25) #5
  store i32 %call26, i32* %es_code_, align 4, !tbaa !20
  %26 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp27 = icmp slt i32 %26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  %27 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %28 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.14
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !22
  store %struct.ref_s* %30, %struct.ref_s** %esp_orig, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %31 = load i32, i32* %i, align 4, !tbaa !20
  %32 = load i32, i32* %n, align 4, !tbaa !20
  %cmp35 = icmp ult i32 %31, %32
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %35 = load i32, i32* %i, align 4, !tbaa !20
  %add39 = add i32 %35, 1
  %conv40 = zext i32 %add39 to i64
  %call41 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack38, i64 %conv40) #5
  store %struct.ref_s* %call41, %struct.ref_s** %rp, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %37 = bitcast i16* %type_attrs43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx44, align 1, !tbaa !31
  %idxprom = zext i8 %38 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], [64 x i8]* @ref_type_properties, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx45, align 1, !tbaa !31
  %conv46 = zext i8 %39 to i32
  %and = and i32 %conv46, 1
  %cmp47 = icmp ne i32 %and, 0
  br i1 %cmp47, label %if.then.49, label %if.end.64

if.then.49:                                       ; preds = %for.body
  %40 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %41 = load i16, i16* %type_attrs51, align 2, !tbaa !21
  %conv52 = zext i16 %41 to i32
  %and53 = and i32 %conv52, 64
  %tobool = icmp ne i32 %and53, 0
  br i1 %tobool, label %if.end.63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.49
  %42 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 0
  %43 = load i16, i16* %type_attrs55, align 2, !tbaa !21
  %conv56 = zext i16 %43 to i32
  %and57 = and i32 %conv56, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %land.lhs.true
  %44 = load %struct.ref_s*, %struct.ref_s** %esp_orig, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack61 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack60, i32 0, i32 0
  %p62 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack61, i32 0, i32 0
  store %struct.ref_s* %44, %struct.ref_s** %p62, align 8, !tbaa !22
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.63:                                        ; preds = %land.lhs.true, %if.then.49
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %for.body
  %46 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 0
  %47 = load i16, i16* %type_attrs66, align 2, !tbaa !21
  %conv67 = zext i16 %47 to i32
  %and68 = and i32 %conv67, 16256
  %cmp69 = icmp eq i32 %and68, 3712
  br i1 %cmp69, label %if.end.78, label %if.then.71

if.then.71:                                       ; preds = %if.end.64
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack73 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack72, i32 0, i32 0
  %p74 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack73, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p74, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p74, align 8, !tbaa !22
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack76 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack75, i32 0, i32 0
  %p77 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack76, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p77, align 8, !tbaa !22
  %52 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %53 = bitcast %struct.ref_s* %51 to i8*
  %54 = bitcast %struct.ref_s* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.78, %if.then.59
  %55 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.107 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.79
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.81
  %56 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.82

do.body.82:                                       ; preds = %for.end
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 25
  %stack84 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack83, i32 0, i32 0
  %p85 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack84, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p85, align 8, !tbaa !29
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  %59 = load i16, i16* %type_attrs87, align 2, !tbaa !21
  %conv88 = zext i16 %59 to i32
  %and89 = and i32 %conv88, 16256
  %cmp90 = icmp eq i32 %and89, 896
  br i1 %cmp90, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %do.body.82
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack94 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack93, i32 0, i32 0
  %p95 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack94, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p95, align 8, !tbaa !29
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack96 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack96, i32 0, i32 1
  store %struct.ref_s* %61, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %do.body.82
  br label %do.cond.98

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %63 = load i32, i32* %n, align 4, !tbaa !20
  %add100 = add i32 %63, 1
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack102 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack101, i32 0, i32 0
  %p103 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack102, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p103, align 8, !tbaa !5
  %idx.ext104 = zext i32 %add100 to i64
  %idx.neg105 = sub i64 0, %idx.ext104
  %add.ptr106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 %idx.neg105
  store %struct.ref_s* %add.ptr106, %struct.ref_s** %p103, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %do.end.99, %cleanup.79, %cleanup, %if.then.13, %if.then.4, %if.then
  %66 = bitcast %struct.ref_s** %esp_orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecstack(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @push_execstack(%struct.gs_context_state_s* %3, %struct.ref_s* %4, i32 0, i32 (%struct.gs_context_state_s*)* @execstack_continue) #5
  %5 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecstack2(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %10 = load i16, i16* %boolval, align 2, !tbaa !25
  %conv2 = zext i16 %10 to i32
  %call3 = call i32 @push_execstack(%struct.gs_context_state_s* %7, %struct.ref_s* %add.ptr, i32 %conv2, i32 (%struct.gs_context_state_s*)* @execstack2_continue) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zexit(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %scanned = alloca i32, align 4
  %used = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
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
  %3 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %scanned, align 4, !tbaa !20
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %stack1) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %7 = load i32, i32* %size, align 4, !tbaa !37
  store i32 %7, i32* %used, align 4, !tbaa !20
  %8 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !39
  %10 = load i32, i32* %used, align 4, !tbaa !20
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** %ep, align 8, !tbaa !1
  %11 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %used, align 4, !tbaa !20
  store i32 %12, i32* %count, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %13 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 16256
  %cmp = icmp eq i32 %and, 3712
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !32
  switch i32 %17, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load i32, i32* %scanned, align 4, !tbaa !20
  %20 = load i32, i32* %used, align 4, !tbaa !20
  %21 = load i32, i32* %count, align 4, !tbaa !20
  %sub = sub i32 %20, %21
  %add = add i32 %sub, 1
  %add5 = add i32 %19, %add
  call void @pop_estack(%struct.gs_context_state_s* %18, i32 %add5) #5
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %if.then
  store i32 -8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %count, align 4, !tbaa !20
  %dec = add i32 %22, -1
  store i32 %dec, i32* %count, align 4, !tbaa !20
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %used, align 4, !tbaa !20
  %25 = load i32, i32* %scanned, align 4, !tbaa !20
  %add7 = add i32 %25, %24
  store i32 %add7, i32* %scanned, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb.6, %sw.bb
  %26 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %call = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #5
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 2
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 2
  %31 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp15 = icmp ugt %struct.ref_s* %add.ptr12, %31
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.11
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

if.else:                                          ; preds = %do.body.11
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack21 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  store %struct.ref_s* %33, %struct.ref_s** %p22, align 8, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.else
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call26 = call i32 @unmatched_exit(%struct.ref_s* %35, i32 (%struct.gs_context_state_s*)* @zexit) #5
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %do.end.25, %if.then.17, %cleanup
  %36 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #1
  %38 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zinstopped(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
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
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !26
  %call2 = call i32 @count_to_stopped(%struct.gs_context_state_s* %8, i64 %10) #5
  store i32 %call2, i32* %count, align 4, !tbaa !20
  %11 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.3, label %if.else.22

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %14 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp6 = icmp ugt %struct.ref_s* %add.ptr, %14
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  store %struct.ref_s* %16, %struct.ref_s** %p13, align 8, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %20 = load i32, i32* %count, align 4, !tbaa !20
  %sub = sub i32 %20, 2
  %conv17 = zext i32 %sub to i64
  %call18 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack16, i64 %conv17) #5
  %21 = bitcast %struct.ref_s* %arrayidx15 to i8*
  %22 = bitcast %struct.ref_s* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !24
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %boolval = bitcast %union.v* %value19 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !25
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  store i16 256, i16* %type_attrs21, align 2, !tbaa !21
  br label %if.end.27

if.else.22:                                       ; preds = %if.end
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %boolval24 = bitcast %union.v* %value23 to i16*
  store i16 0, i16* %boolval24, align 2, !tbaa !25
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 256, i16* %type_attrs26, align 2, !tbaa !21
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.8, %if.then
  %27 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zneedinput(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 -106
}

; Function Attrs: nounwind uwtable
define internal i32 @zloop(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %5) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !22
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %9 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -4
  %cmp6 = icmp ugt %struct.ref_s* %7, %add.ptr
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %do.end
  %10 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %call11 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack10, i32 4) #5
  store i32 %call11, i32* %es_code_, align 4, !tbaa !20
  %12 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.8
  %13 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %do.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p19, align 8, !tbaa !22
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !22
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !22
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 3712, i16* %type_attrs27, align 2, !tbaa !21
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !22
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  store i32 2, i32* %rsize, align 4, !tbaa !32
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !22
  %incdec.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr35, %struct.ref_s** %p34, align 8, !tbaa !22
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = bitcast %struct.ref_s* %incdec.ptr35 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !24
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p38, align 8, !tbaa !22
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr39, i32 0, i32 1
  %opproc41 = bitcast %union.v* %value40 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @loop_continue, i32 (%struct.gs_context_state_s*)** %opproc41, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !22
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 3968, i16* %type_attrs47, align 2, !tbaa !21
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !22
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i32 0, i32 0
  %rsize53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 2
  store i32 0, i32* %rsize53, align 4, !tbaa !32
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p56, align 8, !tbaa !5
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %add.ptr57, %struct.ref_s** %p56, align 8, !tbaa !5
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call58 = call i32 @loop_continue(%struct.gs_context_state_s* %36) #5
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.16, %cleanup, %if.then
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zquit(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
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
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 11
  br i1 %cmp3, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  store i32 -101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zstop(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
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
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @count_to_stopped(%struct.gs_context_state_s* %4, i64 1) #5
  store i32 %call, i32* %count, align 4, !tbaa !20
  %5 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load i32, i32* %count, align 4, !tbaa !20
  call void @pop_estack(%struct.gs_context_state_s* %11, i32 %12) #5
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !5
  store %struct.ref_s* %14, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %top14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top14, align 8, !tbaa !33
  %cmp15 = icmp ugt %struct.ref_s* %add.ptr, %17
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %requested19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 7
  store i32 1, i32* %requested19, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack21 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  store %struct.ref_s* %19, %struct.ref_s** %p22, align 8, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !25
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !21
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %entry
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %top29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 2
  %25 = load %struct.ref_s*, %struct.ref_s** %top29, align 8, !tbaa !33
  %cmp30 = icmp ugt %struct.ref_s* %add.ptr26, %25
  br i1 %cmp30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %do.body.25
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %requested34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 7
  store i32 2, i32* %requested34, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.35:                                       ; preds = %do.body.25
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack37 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  store %struct.ref_s* %27, %struct.ref_s** %p38, align 8, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.35
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call42 = call i32 @unmatched_exit(%struct.ref_s* %29, i32 (%struct.gs_context_state_s*)* @zstop) #5
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.41, %if.then.31, %do.end, %if.then.16, %if.then.6
  %30 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zzstop(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %save_result = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !26
  %call2 = call i32 @count_to_stopped(%struct.gs_context_state_s* %8, i64 %10) #5
  store i32 %call2, i32* %count, align 4, !tbaa !20
  %11 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.3, label %if.end.30

if.then.3:                                        ; preds = %if.end
  %12 = bitcast %struct.ref_s* %save_result to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 1
  %15 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  %cmp6 = icmp ult %struct.ref_s* %13, %add.ptr
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.3
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %17 = bitcast %struct.ref_s* %save_result to i8*
  %18 = bitcast %struct.ref_s* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false), !tbaa.struct !24
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !5
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr14, %struct.ref_s** %p13, align 8, !tbaa !5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = load i32, i32* %count, align 4, !tbaa !20
  call void @pop_estack(%struct.gs_context_state_s* %21, i32 %22) #5
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !5
  store %struct.ref_s* %24, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 1
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 2
  %27 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp21 = icmp ugt %struct.ref_s* %add.ptr18, %27
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  store %struct.ref_s* %29, %struct.ref_s** %p28, align 8, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %32 = bitcast %struct.ref_s* %31 to i8*
  %33 = bitcast %struct.ref_s* %save_result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !24
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.23, %if.then.8
  %34 = bitcast %struct.ref_s* %save_result to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  br label %cleanup.32

if.end.30:                                        ; preds = %if.end
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @unmatched_exit(%struct.ref_s* %35, i32 (%struct.gs_context_state_s*)* @zzstop) #5
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %if.end.30, %cleanup, %if.then
  %36 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zstopped(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
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
  br label %cleanup.93

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !22
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 2
  %9 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -5
  %cmp8 = icmp ugt %struct.ref_s* %7, %add.ptr7
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %10 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack11, i32 5) #5
  store i32 %call, i32* %es_code_, align 4, !tbaa !20
  %12 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %13 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p18, align 8, !tbaa !22
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !22
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !22
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3712, i16* %type_attrs, align 2, !tbaa !21
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !22
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  store i32 3, i32* %rsize, align 4, !tbaa !32
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack30 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p31, align 8, !tbaa !22
  %incdec.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr32, %struct.ref_s** %p31, align 8, !tbaa !22
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !22
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %boolval = bitcast %union.v* %value36 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !25
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !22
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  store i16 256, i16* %type_attrs41, align 2, !tbaa !21
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !22
  %incdec.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr45, %struct.ref_s** %p44, align 8, !tbaa !22
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !22
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval = bitcast %union.v* %value49 to i64*
  store i64 1, i64* %intval, align 8, !tbaa !26
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !22
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 2816, i16* %type_attrs54, align 2, !tbaa !21
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !22
  %incdec.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %incdec.ptr58, %struct.ref_s** %p57, align 8, !tbaa !22
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !22
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %opproc63 = bitcast %union.v* %value62 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @stopped_push, i32 (%struct.gs_context_state_s*)** %opproc63, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack65 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack64, i32 0, i32 0
  %p66 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack65, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p66, align 8, !tbaa !22
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 3968, i16* %type_attrs68, align 2, !tbaa !21
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack70 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack69, i32 0, i32 0
  %p71 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack70, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p71, align 8, !tbaa !22
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %rsize73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 2
  store i32 0, i32* %rsize73, align 4, !tbaa !32
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack75 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p76, align 8, !tbaa !22
  %incdec.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 1
  store %struct.ref_s* %incdec.ptr77, %struct.ref_s** %p76, align 8, !tbaa !22
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack79 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack78, i32 0, i32 0
  %p80 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack79, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p80, align 8, !tbaa !22
  %value81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %opproc82 = bitcast %union.v* %value81 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zexec, i32 (%struct.gs_context_state_s*)** %opproc82, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack84 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack83, i32 0, i32 0
  %p85 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack84, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p85, align 8, !tbaa !22
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  store i16 3968, i16* %type_attrs87, align 2, !tbaa !21
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !22
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %rsize92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 2
  store i32 0, i32* %rsize92, align 4, !tbaa !32
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.15, %cleanup, %if.then
  %51 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @zzstopped(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
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
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 2
  %cmp4 = icmp ult %struct.ref_s* %7, %add.ptr
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !22
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 2
  %13 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -5
  %cmp13 = icmp ugt %struct.ref_s* %11, %add.ptr12
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.7
  %14 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %call18 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack17, i32 5) #5
  store i32 %call18, i32* %es_code_, align 4, !tbaa !20
  %16 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp19 = icmp slt i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  %17 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %18 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %if.end.7
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p26, align 8, !tbaa !22
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack28 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !22
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @no_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack31 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !22
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  store i16 3712, i16* %type_attrs34, align 2, !tbaa !21
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !22
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 2
  store i32 3, i32* %rsize, align 4, !tbaa !32
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !22
  %incdec.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 1
  store %struct.ref_s* %incdec.ptr42, %struct.ref_s** %p41, align 8, !tbaa !22
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %30 = bitcast %struct.ref_s* %incdec.ptr42 to i8*
  %31 = bitcast %struct.ref_s* %arrayidx43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !24
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack45 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p46, align 8, !tbaa !22
  %incdec.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 1
  store %struct.ref_s* %incdec.ptr47, %struct.ref_s** %p46, align 8, !tbaa !22
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = bitcast %struct.ref_s* %incdec.ptr47 to i8*
  %36 = bitcast %struct.ref_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !24
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !22
  %incdec.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %incdec.ptr51, %struct.ref_s** %p50, align 8, !tbaa !22
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack53 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 0
  %p54 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack53, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p54, align 8, !tbaa !22
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %opproc56 = bitcast %union.v* %value55 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @stopped_push, i32 (%struct.gs_context_state_s*)** %opproc56, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack58 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !22
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 3968, i16* %type_attrs61, align 2, !tbaa !21
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack63 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !22
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 2
  store i32 0, i32* %rsize66, align 4, !tbaa !32
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack68 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack67, i32 0, i32 0
  %p69 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack68, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p69, align 8, !tbaa !22
  %incdec.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 1
  store %struct.ref_s* %incdec.ptr70, %struct.ref_s** %p69, align 8, !tbaa !22
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack72 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack71, i32 0, i32 0
  %p73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p73, align 8, !tbaa !22
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %opproc75 = bitcast %union.v* %value74 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zexec, i32 (%struct.gs_context_state_s*)** %opproc75, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack77 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !22
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %type_attrs80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 0
  store i16 3968, i16* %type_attrs80, align 2, !tbaa !21
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack82 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack81, i32 0, i32 0
  %p83 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack82, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p83, align 8, !tbaa !22
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %rsize85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 2
  store i32 0, i32* %rsize85, align 4, !tbaa !32
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 26
  %stack87 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack86, i32 0, i32 0
  %p88 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack87, i32 0, i32 0
  %54 = load %struct.ref_s*, %struct.ref_s** %p88, align 8, !tbaa !5
  %add.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -2
  store %struct.ref_s* %add.ptr89, %struct.ref_s** %p88, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.23, %cleanup, %if.then.6, %if.then
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @cond_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %elts = alloca i16*, align 8
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !22
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %12 = load i16, i16* %boolval, align 2, !tbaa !25
  %tobool = icmp ne i16 %12, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !35
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %call5 = call i32 @array_get(%struct.gs_memory_s* %15, %struct.ref_s* %16, i64 1, %struct.ref_s* %17) #5
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !29
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %20 = load i16, i16* %type_attrs10, align 2, !tbaa !21
  %conv11 = zext i16 %20 to i32
  %and = and i32 %conv11, 16256
  %cmp12 = icmp eq i32 %and, 896
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.body
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !29
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 1
  store %struct.ref_s* %22, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 14, i32* %code, align 4, !tbaa !20
  br label %if.end.103

if.else:                                          ; preds = %if.end
  %24 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  %25 = load i32, i32* %rsize, align 4, !tbaa !32
  %cmp21 = icmp ugt i32 %25, 2
  br i1 %cmp21, label %if.then.23, label %if.else.97

if.then.23:                                       ; preds = %if.else
  %26 = bitcast i16** %elts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %packed = bitcast %union.v* %value24 to i16**
  %28 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %28, i16** %elts, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !22
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 2
  %32 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -2
  %cmp30 = icmp ugt %struct.ref_s* %30, %add.ptr
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.then.23
  %33 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %call35 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack34, i32 2) #5
  store i32 %call35, i32* %es_code_, align 4, !tbaa !20
  %35 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp36 = icmp slt i32 %35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.32
  %36 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38
  %37 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont, %if.then.23
  %38 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %rsize42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 2
  %39 = load i32, i32* %rsize42, align 4, !tbaa !32
  %sub = sub i32 %39, 2
  store i32 %sub, i32* %rsize42, align 4, !tbaa !32
  %40 = load i16*, i16** %elts, align 8, !tbaa !1
  %41 = load i16, i16* %40, align 2, !tbaa !25
  %conv43 = zext i16 %41 to i32
  %cmp44 = icmp sge i32 %conv43, 16384
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %42 = load i16*, i16** %elts, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds i16, i16* %42, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %43 = load i16*, i16** %elts, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i16, i16* %43, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr46, %cond.true ], [ %add.ptr47, %cond.false ]
  store i16* %cond, i16** %elts, align 8, !tbaa !1
  %44 = load i16*, i16** %elts, align 8, !tbaa !1
  %45 = load i16, i16* %44, align 2, !tbaa !25
  %conv48 = zext i16 %45 to i32
  %cmp49 = icmp sge i32 %conv48, 16384
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end
  %46 = load i16*, i16** %elts, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i16, i16* %46, i64 1
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.end
  %47 = load i16*, i16** %elts, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i16, i16* %47, i64 8
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.51
  %cond56 = phi i16* [ %add.ptr52, %cond.true.51 ], [ %add.ptr54, %cond.false.53 ]
  store i16* %cond56, i16** %elts, align 8, !tbaa !1
  %48 = load i16*, i16** %elts, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %packed58 = bitcast %union.v* %value57 to i16**
  store i16* %48, i16** %packed58, align 8, !tbaa !1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current60 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory59, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current60, align 8, !tbaa !35
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %53 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %54 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 2
  %call62 = call i32 @array_get(%struct.gs_memory_s* %52, %struct.ref_s* %53, i64 0, %struct.ref_s* %add.ptr61) #5
  %55 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 1
  %value64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr63, i32 0, i32 1
  %opproc = bitcast %union.v* %value64 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cond_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %56 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr65, i32 0, i32 0
  %type_attrs67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 0
  store i16 3968, i16* %type_attrs67, align 2, !tbaa !21
  %57 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 1
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr68, i32 0, i32 0
  %rsize70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 2
  store i32 0, i32* %rsize70, align 4, !tbaa !32
  %58 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 2
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack73 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack72, i32 0, i32 0
  %p74 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack73, i32 0, i32 0
  store %struct.ref_s* %add.ptr71, %struct.ref_s** %p74, align 8, !tbaa !22
  br label %do.body.75

do.body.75:                                       ; preds = %cond.end.55
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack77 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !29
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 0
  %62 = load i16, i16* %type_attrs80, align 2, !tbaa !21
  %conv81 = zext i16 %62 to i32
  %and82 = and i32 %conv81, 16256
  %cmp83 = icmp eq i32 %and82, 896
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %do.body.75
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack87 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack86, i32 0, i32 0
  %p88 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack87, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p88, align 8, !tbaa !29
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 25
  %current_file90 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack89, i32 0, i32 1
  store %struct.ref_s* %64, %struct.ref_s** %current_file90, align 8, !tbaa !30
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %do.body.75
  br label %do.cond.92

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  store i32 5, i32* %code, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %do.end.93, %cleanup
  %66 = bitcast i16** %elts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest.95 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.95, label %cleanup.108 [
    i32 0, label %cleanup.cont.96
  ]

cleanup.cont.96:                                  ; preds = %cleanup.94
  br label %if.end.102

if.else.97:                                       ; preds = %if.else
  %67 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 25
  %stack100 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack99, i32 0, i32 0
  %p101 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack100, i32 0, i32 0
  store %struct.ref_s* %add.ptr98, %struct.ref_s** %p101, align 8, !tbaa !22
  store i32 14, i32* %code, align 4, !tbaa !20
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.97, %cleanup.cont.96
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %do.end
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 26
  %stack105 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack104, i32 0, i32 0
  %p106 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack105, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p106, align 8, !tbaa !5
  %add.ptr107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  store %struct.ref_s* %add.ptr107, %struct.ref_s** %p106, align 8, !tbaa !5
  %71 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.103, %cleanup.94, %if.then
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @execstack_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @do_execstack(%struct.gs_context_state_s* %3, i32 0, %struct.ref_s* %4) #5
  %5 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @execstack2_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %5 = load i16, i16* %boolval, align 2, !tbaa !25
  %conv = zext i16 %5 to i32
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %call = call i32 @do_execstack(%struct.gs_context_state_s* %3, i32 %conv, %struct.ref_s* %add.ptr) #5
  %7 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @loop_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  store %struct.ref_s* %2, %struct.ref_s** %ep, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s* %add.ptr to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false), !tbaa.struct !24
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 2
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %p4, align 8, !tbaa !22
  %9 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 5
}

; Function Attrs: nounwind uwtable
define internal i32 @stopped_push(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = bitcast %struct.ref_s* %9 to i8*
  %13 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !24
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !22
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  store %struct.ref_s* %add.ptr13, %struct.ref_s** %p12, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsuperexec(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
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
  br label %cleanup.58

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !22
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %cmp10 = icmp ugt %struct.ref_s* %10, %add.ptr9
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end.4
  %13 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack14, i32 2) #5
  store i32 %call, i32* %es_code_, align 4, !tbaa !20
  %15 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp15 = icmp slt i32 %15, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %16 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %17 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.end.4
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !22
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3
  store %struct.ref_s* %add.ptr23, %struct.ref_s** %p22, align 8, !tbaa !22
  store %struct.ref_s* %add.ptr23, %struct.ref_s** %ep, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @end_superexec, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 3712, i16* %type_attrs27, align 2, !tbaa !21
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 1
  %opproc32 = bitcast %union.v* %value31 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @end_superexec, i32 (%struct.gs_context_state_s*)** %opproc32, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  store i16 3968, i16* %type_attrs35, align 2, !tbaa !21
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 0
  %rsize38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  store i32 0, i32* %rsize38, align 4, !tbaa !32
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !24
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !29
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %32 = load i16, i16* %type_attrs43, align 2, !tbaa !21
  %conv44 = zext i16 %32 to i32
  %and45 = and i32 %conv44, 16256
  %cmp46 = icmp eq i32 %and45, 896
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %do.body
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !29
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 1
  store %struct.ref_s* %34, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.53
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p56, align 8, !tbaa !5
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr57, %struct.ref_s** %p56, align 8, !tbaa !5
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %in_superexec = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 9
  %39 = load i32, i32* %in_superexec, align 4, !tbaa !40
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %in_superexec, align 4, !tbaa !40
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %do.end, %cleanup, %if.then.3, %if.then
  %40 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @end_superexec(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %in_superexec = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 9
  %1 = load i32, i32* %in_superexec, align 4, !tbaa !40
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %in_superexec, align 4, !tbaa !40
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zrunandhide(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  %cmp = icmp ult %struct.ref_s* %4, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 15360
  %cmp4 = icmp eq i32 %and, 1024
  br i1 %cmp4, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %11 = load i16, i16* %type_attrs9, align 2, !tbaa !21
  %conv10 = zext i16 %11 to i32
  %and11 = and i32 %conv10, 128
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.13:                                        ; preds = %if.end.7
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !22
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -5
  %cmp19 = icmp ugt %struct.ref_s* %13, %add.ptr18
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.13
  %16 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %call24 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack23, i32 5) #5
  store i32 %call24, i32* %es_code_, align 4, !tbaa !20
  %18 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp25 = icmp slt i32 %18, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  %19 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.13
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack31 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !22
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 5
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %p32, align 8, !tbaa !22
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %ep, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @err_end_runandhide, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -4
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  store i16 3712, i16* %type_attrs37, align 2, !tbaa !21
  %25 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -4
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %26 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 1
  %opproc42 = bitcast %union.v* %value41 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @end_runandhide, i32 (%struct.gs_context_state_s*)** %opproc42, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr43, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  store i16 3968, i16* %type_attrs45, align 2, !tbaa !21
  %28 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %rsize48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 2
  store i32 0, i32* %rsize48, align 4, !tbaa !32
  %29 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = bitcast %struct.ref_s* %29 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !24
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %34 = load i16, i16* %type_attrs50, align 2, !tbaa !21
  %conv51 = zext i16 %34 to i32
  %conv52 = sext i32 %conv51 to i64
  %35 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -3
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr53, i32 0, i32 1
  %intval = bitcast %union.v* %value54 to i64*
  store i64 %conv52, i64* %intval, align 8, !tbaa !26
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr55, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  store i16 2816, i16* %type_attrs57, align 2, !tbaa !21
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -2
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %39 = bitcast %struct.ref_s* %add.ptr58 to i8*
  %40 = bitcast %struct.ref_s* %add.ptr59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !24
  %41 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -2
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %42 = load i16, i16* %type_attrs62, align 2, !tbaa !21
  %conv63 = zext i16 %42 to i32
  %and64 = and i32 %conv63, -113
  %conv65 = trunc i32 %and64 to i16
  store i16 %conv65, i16* %type_attrs62, align 2, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %p68 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack67, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p68, align 8, !tbaa !29
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  %45 = load i16, i16* %type_attrs70, align 2, !tbaa !21
  %conv71 = zext i16 %45 to i32
  %and72 = and i32 %conv71, 16256
  %cmp73 = icmp eq i32 %and72, 896
  br i1 %cmp73, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %do.body
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack77 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !29
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack79, i32 0, i32 1
  store %struct.ref_s* %47, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.80
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 26
  %stack82 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack81, i32 0, i32 0
  %p83 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack82, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p83, align 8, !tbaa !5
  %add.ptr84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -2
  store %struct.ref_s* %add.ptr84, %struct.ref_s** %p83, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %do.end, %cleanup, %if.then.12, %if.then.6, %if.then
  %51 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @end_runandhide(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @runandhide_restore_hidden(%struct.gs_context_state_s* %1, %struct.ref_s* %3, %struct.ref_s* %add.ptr) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !22
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  store %struct.ref_s* %add.ptr7, %struct.ref_s** %p6, align 8, !tbaa !22
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @pop_estack(%struct.gs_context_state_s* %i_ctx_p, i32 %count) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %count.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %popped = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !20
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %idx, align 4, !tbaa !20
  %1 = bitcast i32* %popped to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %popped, align 4, !tbaa !20
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %current_file = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 1
  store %struct.ref_s* null, %struct.ref_s** %current_file, align 8, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %idx, align 4, !tbaa !20
  %4 = load i32, i32* %count.addr, align 4, !tbaa !20
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %7 = load i32, i32* %idx, align 4, !tbaa !20
  %8 = load i32, i32* %popped, align 4, !tbaa !20
  %sub = sub i32 %7, %8
  %conv = zext i32 %sub to i64
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %conv) #5
  store %struct.ref_s* %call, %struct.ref_s** %ep, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv2 = zext i16 %10 to i32
  %and = and i32 %conv2, 16256
  %cmp3 = icmp eq i32 %and, 3712
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %12 = load i32, i32* %idx, align 4, !tbaa !20
  %add = add i32 %12, 1
  %13 = load i32, i32* %popped, align 4, !tbaa !20
  %sub7 = sub i32 %add, %13
  call void @ref_stack_pop(%struct.ref_stack_s* %stack6, i32 %sub7) #5
  %14 = load i32, i32* %idx, align 4, !tbaa !20
  %add8 = add i32 %14, 1
  store i32 %add8, i32* %popped, align 4, !tbaa !20
  %15 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %16 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call9 = call i32 %16(%struct.gs_context_state_s* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %idx, align 4, !tbaa !20
  %inc = add i32 %19, 1
  store i32 %inc, i32* %idx, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %21 = load i32, i32* %count.addr, align 4, !tbaa !20
  %22 = load i32, i32* %popped, align 4, !tbaa !20
  %sub12 = sub i32 %21, %22
  call void @ref_stack_pop(%struct.ref_stack_s* %stack11, i32 %sub12) #5
  %23 = bitcast i32* %popped to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare i32 @zpop(%struct.gs_context_state_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @count_exec_stack(%struct.gs_context_state_s* %i_ctx_p, i32 %include_marks) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %include_marks.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %include_marks, i32* %include_marks.addr, align 4, !tbaa !20
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack) #5
  store i32 %call, i32* %count, align 4, !tbaa !20
  %2 = load i32, i32* %include_marks.addr, align 4, !tbaa !20
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %count, align 4, !tbaa !20
  store i32 %4, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add i32 %5, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %7 = load i32, i32* %i, align 4, !tbaa !20
  %conv = zext i32 %7 to i64
  %call4 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack3, i64 %conv) #5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv5 = zext i16 %8 to i32
  %and = and i32 %conv5, 16256
  %cmp = icmp eq i32 %and, 3712
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %9 = load i32, i32* %count, align 4, !tbaa !20
  %dec8 = add i32 %9, -1
  store i32 %dec8, i32* %count, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  %11 = load i32, i32* %count, align 4, !tbaa !20
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %11
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.ref_s* @zget_current_file(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %count = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %stack) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %3 = load i32, i32* %size, align 4, !tbaa !37
  store i32 %3, i32* %count, align 4, !tbaa !20
  %4 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %5 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !39
  %6 = load i32, i32* %count, align 4, !tbaa !20
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %7 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16256
  %cmp = icmp eq i32 %and, 896
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  store %struct.ref_s* %10, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %count, align 4, !tbaa !20
  %dec = add i32 %11, -1
  store i32 %dec, i32* %count, align 4, !tbaa !20
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %call = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #5
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5

cleanup.5:                                        ; preds = %do.end, %cleanup
  %15 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %16
}

declare void @make_invalid_file(%struct.gs_context_state_s*, %struct.ref_s*) #2

declare void @ref_stack_enum_begin(%struct.ref_stack_enum_s*, %struct.ref_stack_s*) #2

declare i32 @ref_stack_enum_next(%struct.ref_stack_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @push_execstack(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op1, i32 %include_marks, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op1.addr = alloca %struct.ref_s*, align 8
  %include_marks.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %size = alloca i32, align 4
  %depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op1, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  store i32 %include_marks, i32* %include_marks.addr, align 4, !tbaa !20
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 15360
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %4) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !32
  store i32 %6, i32* %size, align 4, !tbaa !20
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load i32, i32* %include_marks.addr, align 4, !tbaa !20
  %call3 = call i32 @count_exec_stack(%struct.gs_context_state_s* %7, i32 %8) #5
  store i32 %call3, i32* %depth, align 4, !tbaa !20
  %9 = load i32, i32* %depth, align 4, !tbaa !20
  %10 = load i32, i32* %size, align 4, !tbaa !20
  %cmp4 = icmp ugt i32 %9, %10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %12 = load i16, i16* %type_attrs9, align 2, !tbaa !21
  %conv10 = zext i16 %12 to i32
  %and11 = and i32 %conv10, 16
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.13:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size, align 4, !tbaa !20
  %call14 = call i32 @ref_stack_store_check(%struct.ref_stack_s* %stack, %struct.ref_s* %15, i32 %16, i32 0) #5
  store i32 %call14, i32* %code, align 4, !tbaa !20
  %17 = load i32, i32* %code, align 4, !tbaa !20
  %cmp15 = icmp slt i32 %17, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  %18 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 2
  %23 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %cmp23 = icmp ugt %struct.ref_s* %21, %add.ptr
  br i1 %cmp23, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %cleanup.cont
  %24 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %call28 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack27, i32 1) #5
  store i32 %call28, i32* %es_code_, align 4, !tbaa !20
  %26 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.25
  %27 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.32:                                        ; preds = %if.then.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.32, %if.then.31
  %28 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.34, label %cleanup.55 [
    i32 0, label %cleanup.cont.35
  ]

cleanup.cont.35:                                  ; preds = %cleanup.33
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont.35, %cleanup.cont
  %29 = load i32, i32* %depth, align 4, !tbaa !20
  %30 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %rsize38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  store i32 %29, i32* %rsize38, align 4, !tbaa !32
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p41, align 8, !tbaa !22
  %33 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !22
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %33, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !22
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  store i16 3968, i16* %type_attrs49, align 2, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !22
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  store i32 0, i32* %rsize54, align 4, !tbaa !32
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %if.end.36, %cleanup.33, %cleanup, %if.then.12, %if.then.6, %if.then
  %40 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @ref_stack_store_check(%struct.ref_stack_s*, %struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @unmatched_exit(%struct.ref_s* %op, i32 (%struct.gs_context_state_s*)* %opproc) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %opproc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %opproc, i32 (%struct.gs_context_state_s*)** %opproc.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %opproc1 = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %0, i32 (%struct.gs_context_state_s*)** %opproc1, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !21
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %intval = bitcast %union.v* %value5 to i64*
  store i64 -8, i64* %intval, align 8, !tbaa !26
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 2816, i16* %type_attrs7, align 2, !tbaa !21
  ret i32 -101
}

; Function Attrs: nounwind uwtable
define internal i32 @count_to_stopped(%struct.gs_context_state_s* %i_ctx_p, i64 %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mask.addr = alloca i64, align 8
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %scanned = alloca i32, align 4
  %used = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %mask, i64* %mask.addr, align 8, !tbaa !26
  %0 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %scanned, align 4, !tbaa !20
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %stack) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %size = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %4 = load i32, i32* %size, align 4, !tbaa !37
  store i32 %4, i32* %used, align 4, !tbaa !20
  %5 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %6 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !39
  %7 = load i32, i32* %used, align 4, !tbaa !20
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %ep, align 8, !tbaa !1
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %used, align 4, !tbaa !20
  store i32 %9, i32* %count, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %10 = load i32, i32* %count, align 4, !tbaa !20
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 16256
  %cmp = icmp eq i32 %and, 3712
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %13 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !32
  %cmp4 = icmp eq i32 %14, 3
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !26
  %17 = load i64, i64* %mask.addr, align 8, !tbaa !26
  %and6 = and i64 %16, %17
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %scanned, align 4, !tbaa !20
  %19 = load i32, i32* %used, align 4, !tbaa !20
  %20 = load i32, i32* %count, align 4, !tbaa !20
  %sub = sub i32 %19, %20
  %add = add i32 %sub, 1
  %add10 = add i32 %18, %add
  store i32 %add10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i32, i32* %count, align 4, !tbaa !20
  %dec = add i32 %21, -1
  store i32 %dec, i32* %count, align 4, !tbaa !20
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %used, align 4, !tbaa !20
  %24 = load i32, i32* %scanned, align 4, !tbaa !20
  %add12 = add i32 %24, %23
  store i32 %add12, i32* %scanned, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9
  %25 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %call = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #5
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %do.end, %cleanup
  %28 = bitcast i32* %scanned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @do_execstack(%struct.gs_context_state_s* %i_ctx_p, i32 %include_marks, %struct.ref_s* %op1) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %include_marks.addr = alloca i32, align 4
  %op1.addr = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %arefs = alloca %struct.ref_s*, align 8
  %asize = alloca i32, align 4
  %i = alloca i32, align 4
  %rq = alloca %struct.ref_s*, align 8
  %rp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %opidx = alloca i32, align 4
  %tname = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %include_marks, i32* %include_marks.addr, align 4, !tbaa !20
  store %struct.ref_s* %op1, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %arefs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %arefs, align 8, !tbaa !1
  %6 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !32
  store i32 %8, i32* %asize, align 4, !tbaa !20
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.ref_s** %rq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  %11 = load %struct.ref_s*, %struct.ref_s** %arefs, align 8, !tbaa !1
  %12 = load i32, i32* %asize, align 4, !tbaa !20
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %rq, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %arefs, align 8, !tbaa !1
  %cmp = icmp ne %struct.ref_s* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %17 = load i32, i32* %i, align 4, !tbaa !20
  %conv = zext i32 %17 to i64
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack1, i64 %conv) #5
  store %struct.ref_s* %call, %struct.ref_s** %rp, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %19 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv3 = zext i16 %19 to i32
  %and = and i32 %conv3, 16256
  %cmp4 = icmp eq i32 %and, 3712
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %20 = load i32, i32* %include_marks.addr, align 4, !tbaa !20
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  %21 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %rq, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %23 = load i16, i16* %type_attrs7, align 2, !tbaa !21
  %conv8 = zext i16 %23 to i32
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %25 = load i32, i32* %test_mask, align 4, !tbaa !41
  %and9 = and i32 %conv8, %25
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %27 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %28 to i16*
  %call13 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory12, %struct.ref_s* %27, i16* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call13, %cond.true ], [ 0, %cond.false ]
  %30 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %32 = bitcast %struct.ref_s* %30 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !24
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 5
  %35 = load i32, i32* %new_mask, align 4, !tbaa !42
  %36 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %37 = load i16, i16* %type_attrs16, align 2, !tbaa !21
  %conv17 = zext i16 %37 to i32
  %or = or i32 %conv17, %35
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, i16* %type_attrs16, align 2, !tbaa !21
  %38 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %39 = bitcast i16* %type_attrs20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv21 = zext i8 %40 to i32
  switch i32 %conv21, label %sw.default [
    i32 15, label %sw.bb
    i32 8, label %sw.bb.51
    i32 9, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %cond.end
  %41 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %43 = load i32, i32* %rsize23, align 4, !tbaa !32
  %cmp24 = icmp eq i32 %43, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %sw.bb
  %44 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %call27 = call zeroext i16 @op_find_index(%struct.ref_s* %44) #5
  %conv28 = zext i16 %call27 to i32
  br label %cond.end.32

cond.false.29:                                    ; preds = %sw.bb
  %45 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %rsize31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 2
  %46 = load i32, i32* %rsize31, align 4, !tbaa !32
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.26
  %cond33 = phi i32 [ %conv28, %cond.true.26 ], [ %46, %cond.false.29 ]
  store i32 %cond33, i32* %opidx, align 4, !tbaa !20
  %47 = load i32, i32* %opidx, align 4, !tbaa !20
  %cmp34 = icmp eq i32 %47, 0
  br i1 %cmp34, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.32
  %48 = load i32, i32* %opidx, align 4, !tbaa !20
  %and36 = and i32 %48, 15
  %idxprom = zext i32 %and36 to i64
  %49 = load i32, i32* %opidx, align 4, !tbaa !20
  %shr = lshr i32 %49, 4
  %idxprom37 = zext i32 %shr to i64
  %arrayidx38 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom37
  %50 = load %struct.op_def*, %struct.op_def** %arrayidx38, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.op_def, %struct.op_def* %50, i64 %idxprom
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx39, i32 0, i32 0
  %51 = load i8*, i8** %oname, align 8, !tbaa !43
  %arrayidx40 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx40, align 1, !tbaa !31
  %conv41 = sext i8 %52 to i32
  %cmp42 = icmp eq i32 %conv41, 37
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %lor.lhs.false, %cond.end.32
  %53 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %54 = load i16, i16* %type_attrs46, align 2, !tbaa !21
  %conv47 = zext i16 %54 to i32
  %and48 = and i32 %conv47, -129
  %conv49 = trunc i32 %and48 to i16
  store i16 %conv49, i16* %type_attrs46, align 2, !tbaa !21
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %lor.lhs.false
  store i32 5, i32* %cleanup.dest.slot
  %55 = bitcast i32* %opidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %sw.epilog

sw.bb.51:                                         ; preds = %cond.end, %cond.end
  %56 = bitcast i8** %tname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %pstruct = bitcast %union.v* %value52 to %struct.obj_header_s**
  %58 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %tobool53 = icmp ne %struct.obj_header_s* %58, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.62

cond.true.54:                                     ; preds = %sw.bb.51
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory55, i32 0, i32 0
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !35
  %61 = bitcast %struct.gs_ref_memory_s* %60 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %62 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !45
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !35
  %65 = bitcast %struct.gs_ref_memory_s* %64 to %struct.gs_memory_s*
  %66 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %pstruct59 = bitcast %union.v* %value58 to %struct.obj_header_s**
  %67 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct59, align 8, !tbaa !1
  %68 = bitcast %struct.obj_header_s* %67 to i8*
  %call60 = call %struct.gs_memory_struct_type_s* %62(%struct.gs_memory_s* %65, i8* %68) #5
  %call61 = call i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s* %call60) #5
  br label %cond.end.63

cond.false.62:                                    ; preds = %sw.bb.51
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.54
  %cond64 = phi i8* [ %call61, %cond.true.54 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %cond.false.62 ]
  store i8* %cond64, i8** %tname, align 8, !tbaa !1
  %69 = load i8*, i8** %tname, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %value65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value65 to i8**
  store i8* %69, i8** %const_bytes, align 8, !tbaa !1
  %71 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %type_attrs67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 0
  store i16 4704, i16* %type_attrs67, align 2, !tbaa !21
  %72 = load i8*, i8** %tname, align 8, !tbaa !1
  %call68 = call i64 @strlen(i8* %72) #7
  %conv69 = trunc i64 %call68 to i32
  %73 = load %struct.ref_s*, %struct.ref_s** %rq, align 8, !tbaa !1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %rsize71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 2
  store i32 %conv69, i32* %rsize71, align 4, !tbaa !32
  store i32 5, i32* %cleanup.dest.slot
  %74 = bitcast i8** %tname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.63, %if.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %75 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %76 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add i32 %76, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %78 = load %struct.ref_s*, %struct.ref_s** %op1.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %78 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 26
  %stack73 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack72, i32 0, i32 0
  %p74 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack73, i32 0, i32 0
  %80 = load %struct.ref_s*, %struct.ref_s** %p74, align 8, !tbaa !5
  %idx.neg = sub i64 0, %sub.ptr.div
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 %idx.neg
  store %struct.ref_s* %add.ptr75, %struct.ref_s** %p74, align 8, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %81 = bitcast %struct.ref_s** %rq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.ref_s** %arefs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

declare zeroext i16 @op_find_index(%struct.ref_s*) #2

declare i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @err_end_runandhide(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 3
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !22
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 2
  %call = call i32 @runandhide_restore_hidden(%struct.gs_context_state_s* %1, %struct.ref_s* %add.ptr, %struct.ref_s* %add.ptr4) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @runandhide_restore_hidden(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %obj, %struct.ref_s* %attrs) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %obj.addr = alloca %struct.ref_s*, align 8
  %attrs.addr = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %obj, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  store %struct.ref_s* %attrs, %struct.ref_s** %attrs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s* %9 to i8*
  %12 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !24
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !21
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, -113
  %conv8 = trunc i32 %and to i16
  store i16 %conv8, i16* %type_attrs, align 2, !tbaa !21
  %15 = load %struct.ref_s*, %struct.ref_s** %attrs.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !26
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %18 = load i16, i16* %type_attrs10, align 2, !tbaa !21
  %conv11 = zext i16 %18 to i64
  %or = or i64 %conv11, %16
  %conv12 = trunc i64 %or to i16
  store i16 %conv12, i16* %type_attrs10, align 2, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

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
!20 = !{!9, !9, i64 0}
!21 = !{!10, !12, i64 0}
!22 = !{!6, !2, i64 520}
!23 = !{!6, !2, i64 536}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 4, i64 4, !20, i64 8, i64 8, !26, i64 8, i64 2, !25, i64 8, i64 4, !27, i64 8, i64 8, !26, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !26}
!25 = !{!12, !12, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!17, !2, i64 0}
!30 = !{!17, !2, i64 96}
!31 = !{!3, !3, i64 0}
!32 = !{!10, !9, i64 4}
!33 = !{!6, !2, i64 640}
!34 = !{!6, !9, i64 688}
!35 = !{!6, !2, i64 8}
!36 = !{!6, !2, i64 616}
!37 = !{!38, !9, i64 16}
!38 = !{!"ref_stack_enum_s", !2, i64 0, !2, i64 8, !9, i64 16}
!39 = !{!38, !2, i64 8}
!40 = !{!6, !9, i64 148}
!41 = !{!7, !9, i64 64}
!42 = !{!7, !9, i64 68}
!43 = !{!44, !2, i64 0}
!44 = !{!"", !2, i64 0, !2, i64 8}
!45 = !{!46, !2, i64 128}
!46 = !{!"gs_memory_s", !2, i64 0, !47, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!47 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
