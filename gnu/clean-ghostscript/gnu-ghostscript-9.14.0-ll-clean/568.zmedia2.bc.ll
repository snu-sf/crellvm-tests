; ModuleID = './zmedia2.bc'
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
%struct.match_record_s = type { %struct.ref_s, %struct.ref_s, i32, i32 }
%struct.mkd_ = type { %struct.ref_s, %struct.ref_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }

@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"4.matchmedia\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"6.matchpagesize\00", align 1
@zmedia2_l2_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmatchmedia }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmatchpagesize }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"MediaPosition\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RollFedMedia\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PolicyNotFound\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"MatchAll\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zmatchmedia(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %preq = alloca %struct.ref_s*, align 8
  %pattr = alloca %struct.ref_s*, align 8
  %ppol = alloca %struct.ref_s*, align 8
  %pkeys = alloca %struct.ref_s*, align 8
  %policy_default = alloca i32, align 4
  %best_mismatch = alloca float, align 4
  %mepos_penalty = alloca float, align 4
  %mbest = alloca float, align 4
  %match = alloca %struct.match_record_s, align 8
  %no_priority = alloca %struct.ref_s, align 8
  %ppriority = alloca %struct.ref_s*, align 8
  %mepos = alloca i32, align 4
  %orient = alloca i32, align 4
  %roll = alloca i32, align 4
  %code = alloca i32, align 4
  %ai = alloca i32, align 4
  %aelt = alloca %struct.mkd_, align 8
  %cleanup.dest.slot = alloca i32
  %match_all = alloca i32, align 4
  %ki = alloca i32, align 4
  %pi = alloca i32, align 4
  %key190 = alloca %struct.ref_s, align 8
  %kstr = alloca %struct.ref_s, align 8
  %prvalue = alloca %struct.ref_s*, align 8
  %pmvalue = alloca %struct.ref_s*, align 8
  %ppvalue = alloca %struct.ref_s*, align 8
  %policy = alloca i32, align 4
  %ignore_mat = alloca %struct.gs_matrix_s, align 4
  %ignore_msize = alloca %struct.gs_point_s, align 8
  %pri = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %preq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %preq, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %pattr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %pattr, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s** %ppol to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** %ppol, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s** %pkeys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %10, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %11 = bitcast i32* %policy_default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast float* %best_mismatch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store float 0x43E0000000000000, float* %best_mismatch, align 4, !tbaa !19
  %13 = bitcast float* %mepos_penalty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast float* %mbest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load float, float* %best_mismatch, align 4, !tbaa !19
  store float %15, float* %mbest, align 4, !tbaa !19
  %16 = bitcast %struct.match_record_s* %match to i8*
  call void @llvm.lifetime.start(i64 40, i8* %16) #1
  %17 = bitcast %struct.ref_s* %no_priority to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast %struct.ref_s** %ppriority to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %mepos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %ai to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast %struct.mkd_* %aelt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %26 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %27 to i32
  %cmp = icmp eq i32 %conv, 14
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 1
  %30 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !22
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 3
  %cmp7 = icmp ult %struct.ref_s* %28, %add.ptr6
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end:                                           ; preds = %if.then
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 3584, i16* %type_attrs12, align 2, !tbaa !23
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !24
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 256, i16* %type_attrs16, align 2, !tbaa !23
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !5
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -2
  store %struct.ref_s* %add.ptr20, %struct.ref_s** %p19, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.21:                                        ; preds = %entry
  %36 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %37 = bitcast i16* %type_attrs23 to i8*
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx24, align 1, !tbaa !21
  %conv25 = zext i8 %38 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.21
  %39 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %39) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.29:                                        ; preds = %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %40 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %pdict = bitcast %union.v* %value30 to %struct.dict_s**
  %41 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %41, i32 0, i32 0
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %42 = load i16, i16* %type_attrs32, align 2, !tbaa !23
  %conv33 = zext i16 %42 to i32
  %and = and i32 %conv33, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.35:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %44 = bitcast i16* %type_attrs37 to i8*
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx38, align 1, !tbaa !21
  %conv39 = zext i8 %45 to i32
  %cmp40 = icmp eq i32 %conv39, 2
  br i1 %cmp40, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %do.end
  %46 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %call43 = call i32 @check_type_failed(%struct.ref_s* %46) #5
  store i32 %call43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.44:                                        ; preds = %do.end
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.44
  %47 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %pdict47 = bitcast %union.v* %value46 to %struct.dict_s**
  %48 = load %struct.dict_s*, %struct.dict_s** %pdict47, align 8, !tbaa !1
  %values48 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %48, i32 0, i32 0
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values48, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %49 = load i16, i16* %type_attrs50, align 2, !tbaa !23
  %conv51 = zext i16 %49 to i32
  %and52 = and i32 %conv51, 32
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.body.45
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.55:                                        ; preds = %do.body.45
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %50 = load %struct.ref_s*, %struct.ref_s** %ppol, align 8, !tbaa !1
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  %51 = bitcast i16* %type_attrs59 to i8*
  %arrayidx60 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx60, align 1, !tbaa !21
  %conv61 = zext i8 %52 to i32
  %cmp62 = icmp eq i32 %conv61, 2
  br i1 %cmp62, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %do.end.57
  %53 = load %struct.ref_s*, %struct.ref_s** %ppol, align 8, !tbaa !1
  %call65 = call i32 @check_type_failed(%struct.ref_s* %53) #5
  store i32 %call65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.66:                                        ; preds = %do.end.57
  br label %do.body.67

do.body.67:                                       ; preds = %if.end.66
  %54 = load %struct.ref_s*, %struct.ref_s** %ppol, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %pdict69 = bitcast %union.v* %value68 to %struct.dict_s**
  %55 = load %struct.dict_s*, %struct.dict_s** %pdict69, align 8, !tbaa !1
  %values70 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %55, i32 0, i32 0
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values70, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %56 = load i16, i16* %type_attrs72, align 2, !tbaa !23
  %conv73 = zext i16 %56 to i32
  %and74 = and i32 %conv73, 32
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %do.body.67
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.77:                                        ; preds = %do.body.67
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %57 = load %struct.ref_s*, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  %58 = bitcast i16* %type_attrs82 to i8*
  %arrayidx83 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx83, align 1, !tbaa !21
  %conv84 = zext i8 %59 to i32
  %cmp85 = icmp eq i32 %conv84, 4
  br i1 %cmp85, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %do.body.80
  %60 = load %struct.ref_s*, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %call88 = call i32 @check_type_failed(%struct.ref_s* %60) #5
  store i32 %call88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.89:                                        ; preds = %do.body.80
  br label %do.cond.90

do.cond.90:                                       ; preds = %if.end.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %61 = load %struct.ref_s*, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %tas93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs94 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas93, i32 0, i32 0
  %62 = load i16, i16* %type_attrs94, align 2, !tbaa !23
  %conv95 = zext i16 %62 to i32
  %and96 = and i32 %conv95, 32
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %do.body.92
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.99:                                        ; preds = %do.body.92
  br label %do.cond.100

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101

do.end.101:                                       ; preds = %do.cond.100
  %63 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %call102 = call i32 @dict_int_null_param(%struct.ref_s* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 32767, i32 0, i32* %mepos) #5
  store i32 %call102, i32* %code, align 4, !tbaa !25
  switch i32 %call102, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb.103
  ]

sw.default:                                       ; preds = %do.end.101
  %64 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

sw.bb:                                            ; preds = %do.end.101, %do.end.101
  store i32 -1, i32* %mepos, align 4, !tbaa !25
  br label %sw.bb.103

sw.bb.103:                                        ; preds = %do.end.101, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.103
  %65 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %call104 = call i32 @dict_int_null_param(%struct.ref_s* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 3, i32 0, i32* %orient) #5
  store i32 %call104, i32* %code, align 4, !tbaa !25
  switch i32 %call104, label %sw.default.105 [
    i32 2, label %sw.bb.106
    i32 1, label %sw.bb.106
    i32 0, label %sw.bb.107
  ]

sw.default.105:                                   ; preds = %sw.epilog
  %66 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

sw.bb.106:                                        ; preds = %sw.epilog, %sw.epilog
  store i32 -1, i32* %orient, align 4, !tbaa !25
  br label %sw.bb.107

sw.bb.107:                                        ; preds = %sw.epilog, %sw.bb.106
  br label %sw.epilog.108

sw.epilog.108:                                    ; preds = %sw.bb.107
  %67 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %call109 = call i32 @dict_bool_param(%struct.ref_s* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* %roll) #5
  store i32 %call109, i32* %code, align 4, !tbaa !25
  %68 = load i32, i32* %code, align 4, !tbaa !25
  %cmp110 = icmp slt i32 %68, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %sw.epilog.108
  %69 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.113:                                       ; preds = %sw.epilog.108
  %70 = load %struct.ref_s*, %struct.ref_s** %ppol, align 8, !tbaa !1
  %call114 = call i32 @dict_int_param(%struct.ref_s* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 7, i32 0, i32* %policy_default) #5
  store i32 %call114, i32* %code, align 4, !tbaa !25
  %71 = load i32, i32* %code, align 4, !tbaa !25
  %cmp115 = icmp slt i32 %71, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.113
  %72 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.118:                                       ; preds = %if.end.113
  %73 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %call119 = call i32 @dict_find_string(%struct.ref_s* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %ppriority) #5
  %cmp120 = icmp sgt i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %if.end.118
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %74 = load %struct.ref_s*, %struct.ref_s** %ppriority, align 8, !tbaa !1
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 0
  %75 = bitcast i16* %type_attrs125 to i8*
  %arrayidx126 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx126, align 1, !tbaa !21
  %conv127 = zext i8 %76 to i32
  %cmp128 = icmp eq i32 %conv127, 4
  br i1 %cmp128, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %do.body.123
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.131:                                       ; preds = %do.body.123
  br label %do.cond.132

do.cond.132:                                      ; preds = %if.end.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %77 = load %struct.ref_s*, %struct.ref_s** %ppriority, align 8, !tbaa !1
  %tas135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %type_attrs136 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas135, i32 0, i32 0
  %78 = load i16, i16* %type_attrs136, align 2, !tbaa !23
  %conv137 = zext i16 %78 to i32
  %and138 = and i32 %conv137, 32
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %do.body.134
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.141:                                       ; preds = %do.body.134
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  br label %if.end.148

if.else:                                          ; preds = %if.end.118
  %value144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_priority, i32 0, i32 1
  %refs = bitcast %union.v* %value144 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %tas145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_priority, i32 0, i32 0
  %type_attrs146 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas145, i32 0, i32 0
  store i16 1120, i16* %type_attrs146, align 2, !tbaa !23
  %tas147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_priority, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas147, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !26
  store %struct.ref_s* %no_priority, %struct.ref_s** %ppriority, align 8, !tbaa !1
  br label %if.end.148

if.end.148:                                       ; preds = %if.else, %do.end.143
  %79 = load %struct.ref_s*, %struct.ref_s** %ppriority, align 8, !tbaa !1
  %tas149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %rsize150 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas149, i32 0, i32 2
  %80 = load i32, i32* %rsize150, align 4, !tbaa !26
  %no_match_priority = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 3
  store i32 %80, i32* %no_match_priority, align 4, !tbaa !27
  call void @reset_match(%struct.match_record_s* %match) #5
  %81 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %call151 = call i32 @dict_first(%struct.ref_s* %81) #5
  store i32 %call151, i32* %ai, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %if.end.347, %if.end.148
  %82 = load %struct.ref_s*, %struct.ref_s** %pattr, align 8, !tbaa !1
  %83 = load i32, i32* %ai, align 4, !tbaa !25
  %84 = bitcast %struct.mkd_* %aelt to %struct.ref_s*
  %call152 = call i32 @dict_next(%struct.ref_s* %82, i32 %83, %struct.ref_s* %84) #5
  store i32 %call152, i32* %ai, align 4, !tbaa !25
  %cmp153 = icmp sge i32 %call152, 0
  br i1 %cmp153, label %for.body, label %for.end.348

for.body:                                         ; preds = %for.cond
  %dict = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 1
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict, i32 0, i32 0
  %type_attrs156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 0
  %85 = bitcast i16* %type_attrs156 to i8*
  %arrayidx157 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx157, align 1, !tbaa !21
  %conv158 = zext i8 %86 to i32
  %cmp159 = icmp eq i32 %conv158, 2
  br i1 %cmp159, label %land.lhs.true, label %if.end.347

land.lhs.true:                                    ; preds = %for.body
  %dict161 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 1
  %value162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict161, i32 0, i32 1
  %pdict163 = bitcast %union.v* %value162 to %struct.dict_s**
  %87 = load %struct.dict_s*, %struct.dict_s** %pdict163, align 8, !tbaa !1
  %values164 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %87, i32 0, i32 0
  %tas165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values164, i32 0, i32 0
  %type_attrs166 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas165, i32 0, i32 0
  %88 = load i16, i16* %type_attrs166, align 2, !tbaa !23
  %conv167 = zext i16 %88 to i32
  %and168 = and i32 %conv167, 32
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %land.lhs.true.170, label %if.end.347

land.lhs.true.170:                                ; preds = %land.lhs.true
  %key = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %tas171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 0
  %type_attrs172 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas171, i32 0, i32 0
  %89 = bitcast i16* %type_attrs172 to i8*
  %arrayidx173 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx173, align 1, !tbaa !21
  %conv174 = zext i8 %90 to i32
  %cmp175 = icmp eq i32 %conv174, 11
  br i1 %cmp175, label %if.then.177, label %if.end.347

if.then.177:                                      ; preds = %land.lhs.true.170
  %91 = bitcast i32* %match_all to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = bitcast i32* %ki to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %dict178 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 1
  %call179 = call i32 @dict_bool_param(%struct.ref_s* %dict178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* %match_all) #5
  store i32 %call179, i32* %code, align 4, !tbaa !25
  %94 = load i32, i32* %code, align 4, !tbaa !25
  %cmp180 = icmp slt i32 %94, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.177
  %95 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.end.183:                                       ; preds = %if.then.177
  store i32 0, i32* %ki, align 4, !tbaa !25
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc, %if.end.183
  %96 = load i32, i32* %ki, align 4, !tbaa !25
  %97 = load %struct.ref_s*, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %tas185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %rsize186 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas185, i32 0, i32 2
  %98 = load i32, i32* %rsize186, align 4, !tbaa !26
  %cmp187 = icmp ult i32 %96, %98
  br i1 %cmp187, label %for.body.189, label %for.end

for.body.189:                                     ; preds = %for.cond.184
  %99 = bitcast %struct.ref_s* %key190 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %99) #1
  %100 = bitcast %struct.ref_s* %kstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %100) #1
  %101 = bitcast %struct.ref_s** %prvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  %102 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = bitcast %struct.ref_s** %ppvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  %104 = bitcast i32* %policy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %107 = bitcast %struct.gs_ref_memory_s* %106 to %struct.gs_memory_s*
  %108 = load %struct.ref_s*, %struct.ref_s** %pkeys, align 8, !tbaa !1
  %109 = load i32, i32* %ki, align 4, !tbaa !25
  %conv191 = zext i32 %109 to i64
  %call192 = call i32 @array_get(%struct.gs_memory_s* %107, %struct.ref_s* %108, i64 %conv191, %struct.ref_s* %key190) #5
  %dict193 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 1
  %call194 = call i32 @dict_find(%struct.ref_s* %dict193, %struct.ref_s* %key190, %struct.ref_s** %pmvalue) #5
  %cmp195 = icmp sle i32 %call194, 0
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %for.body.189
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.198:                                       ; preds = %for.body.189
  %110 = load %struct.ref_s*, %struct.ref_s** %preq, align 8, !tbaa !1
  %call199 = call i32 @dict_find(%struct.ref_s* %110, %struct.ref_s* %key190, %struct.ref_s** %prvalue) #5
  %cmp200 = icmp sle i32 %call199, 0
  br i1 %cmp200, label %if.then.208, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.198
  %111 = load %struct.ref_s*, %struct.ref_s** %prvalue, align 8, !tbaa !1
  %tas202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 0
  %type_attrs203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas202, i32 0, i32 0
  %112 = bitcast i16* %type_attrs203 to i8*
  %arrayidx204 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx204, align 1, !tbaa !21
  %conv205 = zext i8 %113 to i32
  %cmp206 = icmp eq i32 %conv205, 14
  br i1 %cmp206, label %if.then.208, label %if.end.212

if.then.208:                                      ; preds = %lor.lhs.false, %if.end.198
  %114 = load i32, i32* %match_all, align 4, !tbaa !25
  %tobool209 = icmp ne i32 %114, 0
  br i1 %tobool209, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %if.then.208
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.265

if.else.211:                                      ; preds = %if.then.208
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.212:                                       ; preds = %lor.lhs.false
  %115 = load %struct.ref_s*, %struct.ref_s** %ppol, align 8, !tbaa !1
  %call213 = call i32 @dict_find(%struct.ref_s* %115, %struct.ref_s* %key190, %struct.ref_s** %ppvalue) #5
  %cmp214 = icmp sgt i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.230

if.then.216:                                      ; preds = %if.end.212
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %116 = load %struct.ref_s*, %struct.ref_s** %ppvalue, align 8, !tbaa !1
  %tas218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %type_attrs219 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas218, i32 0, i32 0
  %117 = bitcast i16* %type_attrs219 to i8*
  %arrayidx220 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx220, align 1, !tbaa !21
  %conv221 = zext i8 %118 to i32
  %cmp222 = icmp eq i32 %conv221, 11
  br i1 %cmp222, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %do.body.217
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.225:                                       ; preds = %do.body.217
  br label %do.cond.226

do.cond.226:                                      ; preds = %if.end.225
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %119 = load %struct.ref_s*, %struct.ref_s** %ppvalue, align 8, !tbaa !1
  %value228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i32 0, i32 1
  %intval = bitcast %union.v* %value228 to i64*
  %120 = load i64, i64* %intval, align 8, !tbaa !30
  %conv229 = trunc i64 %120 to i32
  store i32 %conv229, i32* %policy, align 4, !tbaa !25
  br label %if.end.231

if.else.230:                                      ; preds = %if.end.212
  %121 = load i32, i32* %policy_default, align 4, !tbaa !25
  store i32 %121, i32* %policy, align 4, !tbaa !25
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %do.end.227
  %tas232 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key190, i32 0, i32 0
  %type_attrs233 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas232, i32 0, i32 0
  %122 = bitcast i16* %type_attrs233 to i8*
  %arrayidx234 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx234, align 1, !tbaa !21
  %conv235 = zext i8 %123 to i32
  %cmp236 = icmp eq i32 %conv235, 13
  br i1 %cmp236, label %land.lhs.true.238, label %if.else.257

land.lhs.true.238:                                ; preds = %if.end.231
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory239 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 1
  %current240 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory239, i32 0, i32 0
  %125 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current240, align 8, !tbaa !29
  %126 = bitcast %struct.gs_ref_memory_s* %125 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 2
  %127 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %127, i32 0, i32 16
  %128 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !34
  call void @names_string_ref(%struct.name_table_s* %128, %struct.ref_s* %key190, %struct.ref_s* %kstr) #5
  %tas241 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %kstr, i32 0, i32 0
  %rsize242 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas241, i32 0, i32 2
  %129 = load i32, i32* %rsize242, align 4, !tbaa !26
  %cmp243 = icmp eq i32 %129, 8
  br i1 %cmp243, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.238
  %value245 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %kstr, i32 0, i32 1
  %bytes = bitcast %union.v* %value245 to i8**
  %130 = load i8*, i8** %bytes, align 8, !tbaa !1
  %call246 = call i32 @memcmp(i8* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 8) #6
  %tobool247 = icmp ne i32 %call246, 0
  %lnot = xor i1 %tobool247, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.238
  %131 = phi i1 [ false, %land.lhs.true.238 ], [ %lnot, %land.rhs ]
  br i1 %131, label %if.then.248, label %if.else.257

if.then.248:                                      ; preds = %land.end
  %132 = bitcast %struct.gs_matrix_s* %ignore_mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %132) #1
  %133 = bitcast %struct.gs_point_s* %ignore_msize to i8*
  call void @llvm.lifetime.start(i64 16, i8* %133) #1
  %134 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory249 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %134, i32 0, i32 1
  %current250 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory249, i32 0, i32 0
  %135 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current250, align 8, !tbaa !29
  %136 = bitcast %struct.gs_ref_memory_s* %135 to %struct.gs_memory_s*
  %137 = load %struct.ref_s*, %struct.ref_s** %prvalue, align 8, !tbaa !1
  %138 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %139 = load i32, i32* %policy, align 4, !tbaa !25
  %140 = load i32, i32* %orient, align 4, !tbaa !25
  %141 = load i32, i32* %roll, align 4, !tbaa !25
  %call251 = call i32 @zmatch_page_size(%struct.gs_memory_s* %136, %struct.ref_s* %137, %struct.ref_s* %138, i32 %139, i32 %140, i32 %141, float* %best_mismatch, %struct.gs_matrix_s* %ignore_mat, %struct.gs_point_s* %ignore_msize) #5
  %cmp252 = icmp sle i32 %call251, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.then.248
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup

if.end.255:                                       ; preds = %if.then.248
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.254, %if.end.255
  %142 = bitcast %struct.gs_point_s* %ignore_msize to i8*
  call void @llvm.lifetime.end(i64 16, i8* %142) #1
  %143 = bitcast %struct.gs_matrix_s* %ignore_mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %143) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.265 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.264

if.else.257:                                      ; preds = %land.end, %if.end.231
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory258 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 1
  %current259 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory258, i32 0, i32 0
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current259, align 8, !tbaa !29
  %146 = bitcast %struct.gs_ref_memory_s* %145 to %struct.gs_memory_s*
  %147 = load %struct.ref_s*, %struct.ref_s** %prvalue, align 8, !tbaa !1
  %148 = load %struct.ref_s*, %struct.ref_s** %pmvalue, align 8, !tbaa !1
  %call260 = call i32 @obj_eq(%struct.gs_memory_s* %146, %struct.ref_s* %147, %struct.ref_s* %148) #5
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %if.end.263, label %if.then.262

if.then.262:                                      ; preds = %if.else.257
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.263:                                       ; preds = %if.else.257
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.265

cleanup.265:                                      ; preds = %if.then.262, %if.then.210, %if.end.264, %cleanup, %if.then.224, %if.else.211, %if.then.197
  %149 = bitcast i32* %policy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast %struct.ref_s** %ppvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast %struct.ref_s** %pmvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.ref_s** %prvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.ref_s* %kstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %153) #1
  %154 = bitcast %struct.ref_s* %key190 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %154) #1
  %cleanup.dest.271 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.271, label %cleanup.342 [
    i32 0, label %cleanup.cont.272
    i32 22, label %for.inc
    i32 23, label %no
  ]

cleanup.cont.272:                                 ; preds = %cleanup.265
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.272, %cleanup.265
  %155 = load i32, i32* %ki, align 4, !tbaa !25
  %inc = add i32 %155, 1
  store i32 %inc, i32* %ki, align 4, !tbaa !25
  br label %for.cond.184

for.end:                                          ; preds = %for.cond.184
  %156 = load i32, i32* %mepos, align 4, !tbaa !25
  %cmp273 = icmp slt i32 %156, 0
  br i1 %cmp273, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %key275 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %value276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key275, i32 0, i32 1
  %intval277 = bitcast %union.v* %value276 to i64*
  %157 = load i64, i64* %intval277, align 8, !tbaa !30
  %158 = load i32, i32* %mepos, align 4, !tbaa !25
  %conv278 = sext i32 %158 to i64
  %cmp279 = icmp eq i64 %157, %conv278
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %159 = phi i1 [ true, %for.end ], [ %cmp279, %lor.rhs ]
  %cond = select i1 %159, double 0.000000e+00, double 1.000000e-03
  %conv281 = fptrunc double %cond to float
  store float %conv281, float* %mepos_penalty, align 4, !tbaa !19
  %match_key = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %tas282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %match_key, i32 0, i32 0
  %type_attrs283 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas282, i32 0, i32 0
  %160 = bitcast i16* %type_attrs283 to i8*
  %arrayidx284 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8, i8* %arrayidx284, align 1, !tbaa !21
  %conv285 = zext i8 %161 to i32
  %cmp286 = icmp eq i32 %conv285, 14
  br i1 %cmp286, label %if.then.288, label %if.end.291

if.then.288:                                      ; preds = %lor.end
  %match_key289 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %key290 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %162 = bitcast %struct.ref_s* %match_key289 to i8*
  %163 = bitcast %struct.ref_s* %key290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 16, i32 8, i1 false), !tbaa.struct !36
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.288, %lor.end
  %164 = load float, float* %best_mismatch, align 4, !tbaa !19
  %165 = load float, float* %mepos_penalty, align 4, !tbaa !19
  %add = fadd float %164, %165
  %166 = load float, float* %mbest, align 4, !tbaa !19
  %cmp292 = fcmp ole float %add, %166
  br i1 %cmp292, label %if.then.294, label %if.end.320

if.then.294:                                      ; preds = %if.end.291
  %167 = load float, float* %best_mismatch, align 4, !tbaa !19
  %168 = load float, float* %mepos_penalty, align 4, !tbaa !19
  %add295 = fadd float %167, %168
  %169 = load float, float* %mbest, align 4, !tbaa !19
  %cmp296 = fcmp olt float %add295, %169
  br i1 %cmp296, label %if.then.315, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %if.then.294
  %match_key299 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %tas300 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %match_key299, i32 0, i32 0
  %type_attrs301 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas300, i32 0, i32 0
  %170 = bitcast i16* %type_attrs301 to i8*
  %arrayidx302 = getelementptr inbounds i8, i8* %170, i64 1
  %171 = load i8, i8* %arrayidx302, align 1, !tbaa !21
  %conv303 = zext i8 %171 to i32
  %cmp304 = icmp eq i32 %conv303, 11
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.319

land.lhs.true.306:                                ; preds = %lor.lhs.false.298
  %match_key307 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %value308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %match_key307, i32 0, i32 1
  %intval309 = bitcast %union.v* %value308 to i64*
  %172 = load i64, i64* %intval309, align 8, !tbaa !30
  %key310 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %value311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key310, i32 0, i32 1
  %intval312 = bitcast %union.v* %value311 to i64*
  %173 = load i64, i64* %intval312, align 8, !tbaa !30
  %cmp313 = icmp sgt i64 %172, %173
  br i1 %cmp313, label %if.then.315, label %if.end.319

if.then.315:                                      ; preds = %land.lhs.true.306, %if.then.294
  call void @reset_match(%struct.match_record_s* %match) #5
  %match_key316 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %key317 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %174 = bitcast %struct.ref_s* %match_key316 to i8*
  %175 = bitcast %struct.ref_s* %key317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 16, i32 8, i1 false), !tbaa.struct !36
  %176 = load float, float* %best_mismatch, align 4, !tbaa !19
  %177 = load float, float* %mepos_penalty, align 4, !tbaa !19
  %add318 = fadd float %176, %177
  store float %add318, float* %mbest, align 4, !tbaa !19
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.315, %land.lhs.true.306, %lor.lhs.false.298
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.291
  %priority = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 2
  %178 = load i32, i32* %priority, align 4, !tbaa !37
  store i32 %178, i32* %pi, align 4, !tbaa !25
  br label %for.cond.321

for.cond.321:                                     ; preds = %cleanup.cont.340, %if.end.320
  %179 = load i32, i32* %pi, align 4, !tbaa !25
  %cmp322 = icmp ugt i32 %179, 0
  br i1 %cmp322, label %for.body.324, label %for.end.341

for.body.324:                                     ; preds = %for.cond.321
  %180 = bitcast %struct.ref_s* %pri to i8*
  call void @llvm.lifetime.start(i64 16, i8* %180) #1
  %181 = load i32, i32* %pi, align 4, !tbaa !25
  %dec = add i32 %181, -1
  store i32 %dec, i32* %pi, align 4, !tbaa !25
  %182 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory325 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %182, i32 0, i32 1
  %current326 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory325, i32 0, i32 0
  %183 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current326, align 8, !tbaa !29
  %184 = bitcast %struct.gs_ref_memory_s* %183 to %struct.gs_memory_s*
  %185 = load %struct.ref_s*, %struct.ref_s** %ppriority, align 8, !tbaa !1
  %186 = load i32, i32* %pi, align 4, !tbaa !25
  %conv327 = zext i32 %186 to i64
  %call328 = call i32 @array_get(%struct.gs_memory_s* %184, %struct.ref_s* %185, i64 %conv327, %struct.ref_s* %pri) #5
  %187 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory329 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %187, i32 0, i32 1
  %current330 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory329, i32 0, i32 0
  %188 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current330, align 8, !tbaa !29
  %189 = bitcast %struct.gs_ref_memory_s* %188 to %struct.gs_memory_s*
  %key331 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %call332 = call i32 @obj_eq(%struct.gs_memory_s* %189, %struct.ref_s* %key331, %struct.ref_s* %pri) #5
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.334, label %if.end.337

if.then.334:                                      ; preds = %for.body.324
  %best_key = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 0
  %key335 = getelementptr inbounds %struct.mkd_, %struct.mkd_* %aelt, i32 0, i32 0
  %190 = bitcast %struct.ref_s* %best_key to i8*
  %191 = bitcast %struct.ref_s* %key335 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 16, i32 8, i1 false), !tbaa.struct !36
  %192 = load i32, i32* %pi, align 4, !tbaa !25
  %priority336 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 2
  store i32 %192, i32* %priority336, align 4, !tbaa !37
  store i32 26, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.337:                                       ; preds = %for.body.324
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.338

cleanup.338:                                      ; preds = %if.end.337, %if.then.334
  %193 = bitcast %struct.ref_s* %pri to i8*
  call void @llvm.lifetime.end(i64 16, i8* %193) #1
  %cleanup.dest.339 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.339, label %unreachable [
    i32 0, label %cleanup.cont.340
    i32 26, label %for.end.341
  ]

cleanup.cont.340:                                 ; preds = %cleanup.338
  br label %for.cond.321

for.end.341:                                      ; preds = %cleanup.338, %for.cond.321
  br label %no

no:                                               ; preds = %for.end.341, %cleanup.265
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.342

cleanup.342:                                      ; preds = %no, %cleanup.265, %if.then.182
  %194 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %ki to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %match_all to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %cleanup.dest.345 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.345, label %cleanup.393 [
    i32 0, label %cleanup.cont.346
  ]

cleanup.cont.346:                                 ; preds = %cleanup.342
  br label %if.end.347

if.end.347:                                       ; preds = %cleanup.cont.346, %land.lhs.true.170, %land.lhs.true, %for.body
  br label %for.cond

for.end.348:                                      ; preds = %for.cond
  %match_key349 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %tas350 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %match_key349, i32 0, i32 0
  %type_attrs351 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas350, i32 0, i32 0
  %197 = bitcast i16* %type_attrs351 to i8*
  %arrayidx352 = getelementptr inbounds i8, i8* %197, i64 1
  %198 = load i8, i8* %arrayidx352, align 1, !tbaa !21
  %conv353 = zext i8 %198 to i32
  %cmp354 = icmp eq i32 %conv353, 14
  br i1 %cmp354, label %if.then.356, label %if.else.367

if.then.356:                                      ; preds = %for.end.348
  %199 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr357 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %199, i64 -3
  %value358 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr357, i32 0, i32 1
  %boolval359 = bitcast %union.v* %value358 to i16*
  store i16 0, i16* %boolval359, align 2, !tbaa !24
  %200 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr360 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %200, i64 -3
  %tas361 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr360, i32 0, i32 0
  %type_attrs362 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas361, i32 0, i32 0
  store i16 256, i16* %type_attrs362, align 2, !tbaa !23
  %201 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack363 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %201, i32 0, i32 26
  %stack364 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack363, i32 0, i32 0
  %p365 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack364, i32 0, i32 0
  %202 = load %struct.ref_s*, %struct.ref_s** %p365, align 8, !tbaa !5
  %add.ptr366 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %202, i64 -3
  store %struct.ref_s* %add.ptr366, %struct.ref_s** %p365, align 8, !tbaa !5
  br label %if.end.392

if.else.367:                                      ; preds = %for.end.348
  %best_key368 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 0
  %tas369 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %best_key368, i32 0, i32 0
  %type_attrs370 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas369, i32 0, i32 0
  %203 = bitcast i16* %type_attrs370 to i8*
  %arrayidx371 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx371, align 1, !tbaa !21
  %conv372 = zext i8 %204 to i32
  %cmp373 = icmp eq i32 %conv372, 14
  br i1 %cmp373, label %if.then.375, label %if.else.378

if.then.375:                                      ; preds = %if.else.367
  %205 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %205, i64 -3
  %match_key377 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 1
  %206 = bitcast %struct.ref_s* %arrayidx376 to i8*
  %207 = bitcast %struct.ref_s* %match_key377 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 16, i32 8, i1 false), !tbaa.struct !36
  br label %if.end.381

if.else.378:                                      ; preds = %if.else.367
  %208 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx379 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %208, i64 -3
  %best_key380 = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %match, i32 0, i32 0
  %209 = bitcast %struct.ref_s* %arrayidx379 to i8*
  %210 = bitcast %struct.ref_s* %best_key380 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %210, i64 16, i32 8, i1 false), !tbaa.struct !36
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.378, %if.then.375
  %211 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr382 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %211, i64 -2
  %value383 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr382, i32 0, i32 1
  %boolval384 = bitcast %union.v* %value383 to i16*
  store i16 1, i16* %boolval384, align 2, !tbaa !24
  %212 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr385 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %212, i64 -2
  %tas386 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr385, i32 0, i32 0
  %type_attrs387 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas386, i32 0, i32 0
  store i16 256, i16* %type_attrs387, align 2, !tbaa !23
  %213 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack388 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %213, i32 0, i32 26
  %stack389 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack388, i32 0, i32 0
  %p390 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack389, i32 0, i32 0
  %214 = load %struct.ref_s*, %struct.ref_s** %p390, align 8, !tbaa !5
  %add.ptr391 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %214, i64 -2
  store %struct.ref_s* %add.ptr391, %struct.ref_s** %p390, align 8, !tbaa !5
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.381, %if.then.356
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

cleanup.393:                                      ; preds = %if.end.392, %cleanup.342, %if.then.140, %if.then.130, %if.then.117, %if.then.112, %sw.default.105, %sw.default, %if.then.98, %if.then.87, %if.then.76, %if.then.64, %if.then.54, %if.then.42, %if.then.34, %if.then.28, %if.end, %if.then.9
  %215 = bitcast %struct.mkd_* %aelt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %215) #1
  %216 = bitcast i32* %ai to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %mepos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast %struct.ref_s** %ppriority to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %struct.ref_s* %no_priority to i8*
  call void @llvm.lifetime.end(i64 16, i8* %222) #1
  %223 = bitcast %struct.match_record_s* %match to i8*
  call void @llvm.lifetime.end(i64 40, i8* %223) #1
  %224 = bitcast float* %mbest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast float* %mepos_penalty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast float* %best_mismatch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %policy_default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast %struct.ref_s** %pkeys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast %struct.ref_s** %ppol to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast %struct.ref_s** %pattr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast %struct.ref_s** %preq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = load i32, i32* %retval
  ret i32 %233

unreachable:                                      ; preds = %cleanup.338
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @zmatchpagesize(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %ignore_mismatch = alloca float, align 4
  %media_size = alloca %struct.gs_point_s, align 8
  %orient = alloca i32, align 4
  %roll = alloca i32, align 4
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
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast float* %ignore_mismatch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store float 0x43E0000000000000, float* %ignore_mismatch, align 4, !tbaa !19
  %5 = bitcast %struct.gs_point_s* %media_size to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx1, align 1, !tbaa !21
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %14 = bitcast i16* %type_attrs5 to i8*
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !21
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp eq i32 %conv7, 14
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %orient, align 4, !tbaa !25
  br label %if.end.31

if.else:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx11, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %17 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx14, align 1, !tbaa !21
  %conv15 = zext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv15, 11
  br i1 %cmp16, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %do.body
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  %call20 = call i32 @check_type_failed(%struct.ref_s* %arrayidx19) #5
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %21 = load i64, i64* %intval, align 8, !tbaa !30
  %cmp23 = icmp ugt i64 %21, 3
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %23 = load i64, i64* %intval29, align 8, !tbaa !30
  %conv30 = trunc i64 %23 to i32
  store i32 %conv30, i32* %orient, align 4, !tbaa !25
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %if.then.10
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %25 = bitcast i16* %type_attrs34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx35, align 1, !tbaa !21
  %conv36 = zext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.31
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %call41 = call i32 @check_type_failed(%struct.ref_s* %arrayidx40) #5
  store i32 %call41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.31
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 1
  %boolval = bitcast %union.v* %value44 to i16*
  %29 = load i16, i16* %boolval, align 2, !tbaa !24
  %conv45 = zext i16 %29 to i32
  store i32 %conv45, i32* %roll, align 4, !tbaa !25
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -5
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -4
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -3
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %36 = load i64, i64* %intval50, align 8, !tbaa !30
  %conv51 = trunc i64 %36 to i32
  %37 = load i32, i32* %orient, align 4, !tbaa !25
  %38 = load i32, i32* %roll, align 4, !tbaa !25
  %call52 = call i32 @zmatch_page_size(%struct.gs_memory_s* %32, %struct.ref_s* %add.ptr46, %struct.ref_s* %add.ptr47, i32 %conv51, i32 %37, i32 %38, float* %ignore_mismatch, %struct.gs_matrix_s* %mat, %struct.gs_point_s* %media_size) #5
  store i32 %call52, i32* %code, align 4, !tbaa !25
  %39 = load i32, i32* %code, align 4, !tbaa !25
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.63
  ]

sw.default:                                       ; preds = %if.end.42
  %40 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.end.42
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -5
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr53, i32 0, i32 1
  %boolval55 = bitcast %union.v* %value54 to i16*
  store i16 0, i16* %boolval55, align 2, !tbaa !24
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -5
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  store i16 256, i16* %type_attrs58, align 2, !tbaa !23
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack60 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !5
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -5
  store %struct.ref_s* %add.ptr62, %struct.ref_s** %p61, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.42
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %call65 = call i32 @write_matrix_in(%struct.ref_s* %45, %struct.gs_matrix_s* %mat, %struct.gs_dual_memory_s* %memory64, %struct.gs_ref_memory_s* null) #5
  store i32 %call65, i32* %code, align 4, !tbaa !25
  %47 = load i32, i32* %code, align 4, !tbaa !25
  %cmp66 = icmp slt i32 %47, 0
  br i1 %cmp66, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %sw.bb.63
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  %49 = bitcast i16* %type_attrs69 to i8*
  %arrayidx70 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx70, align 1, !tbaa !21
  %conv71 = zext i8 %50 to i32
  %cmp72 = icmp eq i32 %conv71, 14
  br i1 %cmp72, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %land.lhs.true
  %51 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %land.lhs.true, %sw.bb.63
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -5
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %54 = bitcast %struct.ref_s* %arrayidx76 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !tbaa.struct !36
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %media_size, i32 0, i32 0
  %56 = load double, double* %x, align 8, !tbaa !38
  %conv77 = fptrunc double %56 to float
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -4
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr78, i32 0, i32 1
  %realval = bitcast %union.v* %value79 to float*
  store float %conv77, float* %realval, align 4, !tbaa !19
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -4
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr80, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  store i16 4096, i16* %type_attrs82, align 2, !tbaa !23
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %media_size, i32 0, i32 1
  %59 = load double, double* %y, align 8, !tbaa !41
  %conv83 = fptrunc double %59 to float
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -3
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr84, i32 0, i32 1
  %realval86 = bitcast %union.v* %value85 to float*
  store float %conv83, float* %realval86, align 4, !tbaa !19
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -3
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr87, i32 0, i32 0
  %type_attrs89 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 0
  store i16 4096, i16* %type_attrs89, align 2, !tbaa !23
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -2
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr90, i32 0, i32 1
  %boolval92 = bitcast %union.v* %value91 to i16*
  store i16 1, i16* %boolval92, align 2, !tbaa !24
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -2
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr93, i32 0, i32 0
  %type_attrs95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 0
  store i16 256, i16* %type_attrs95, align 2, !tbaa !23
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack96 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack97 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack96, i32 0, i32 0
  %p98 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack97, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p98, align 8, !tbaa !5
  %add.ptr99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -2
  store %struct.ref_s* %add.ptr99, %struct.ref_s** %p98, align 8, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.75, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.74, %sw.default, %if.then.39, %if.then.25, %if.then.18, %if.then
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.gs_point_s* %media_size to i8*
  call void @llvm.lifetime.end(i64 16, i8* %69) #1
  %70 = bitcast float* %ignore_mismatch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %71) #1
  %72 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_null_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal void @reset_match(%struct.match_record_s* %match) #0 {
entry:
  %match.addr = alloca %struct.match_record_s*, align 8
  store %struct.match_record_s* %match, %struct.match_record_s** %match.addr, align 8, !tbaa !1
  %0 = load %struct.match_record_s*, %struct.match_record_s** %match.addr, align 8, !tbaa !1
  %best_key = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %0, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %best_key, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !23
  %1 = load %struct.match_record_s*, %struct.match_record_s** %match.addr, align 8, !tbaa !1
  %match_key = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %1, i32 0, i32 1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %match_key, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  store i16 3584, i16* %type_attrs2, align 2, !tbaa !23
  %2 = load %struct.match_record_s*, %struct.match_record_s** %match.addr, align 8, !tbaa !1
  %no_match_priority = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %2, i32 0, i32 3
  %3 = load i32, i32* %no_match_priority, align 4, !tbaa !27
  %4 = load %struct.match_record_s*, %struct.match_record_s** %match.addr, align 8, !tbaa !1
  %priority = getelementptr inbounds %struct.match_record_s, %struct.match_record_s* %4, i32 0, i32 2
  store i32 %3, i32* %priority, align 4, !tbaa !37
  ret void
}

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @zmatch_page_size(%struct.gs_memory_s* %mem, %struct.ref_s* %pvreq, %struct.ref_s* %pvmed, i32 %policy, i32 %orient, i32 %roll, float* %best_mismatch, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pmsize) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pvreq.addr = alloca %struct.ref_s*, align 8
  %pvmed.addr = alloca %struct.ref_s*, align 8
  %policy.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %roll.addr = alloca i32, align 4
  %best_mismatch.addr = alloca float*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pmsize.addr = alloca %struct.gs_point_s*, align 8
  %nr = alloca i32, align 4
  %nm = alloca i32, align 4
  %code = alloca i32, align 4
  %rv = alloca [6 x %struct.ref_s], align 16
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %v = alloca [6 x double], align 16
  %code15 = alloca i32, align 4
  %request = alloca %struct.gs_point_s, align 8
  %medium = alloca %struct.gs_rect_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvreq, %struct.ref_s** %pvreq.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvmed, %struct.ref_s** %pvmed.addr, align 8, !tbaa !1
  store i32 %policy, i32* %policy.addr, align 4, !tbaa !25
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !25
  store i32 %roll, i32* %roll.addr, align 4, !tbaa !25
  store float* %best_mismatch, float** %best_mismatch.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pmsize, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [6 x %struct.ref_s]* %rv to i8*
  call void @llvm.lifetime.start(i64 96, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pvreq.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %rv, i32 0, i64 1
  %call = call i32 @array_get(%struct.gs_memory_s* %4, %struct.ref_s* %5, i64 1, %struct.ref_s* %arrayidx) #5
  store i32 %call, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pvreq.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !26
  store i32 %8, i32* %nr, align 4, !tbaa !25
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pvmed.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %rv, i32 0, i64 3
  %call2 = call i32 @array_get(%struct.gs_memory_s* %9, %struct.ref_s* %10, i64 1, %struct.ref_s* %arrayidx1) #5
  store i32 %call2, i32* %code, align 4, !tbaa !25
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %pvmed.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %13 = load i32, i32* %rsize7, align 4, !tbaa !26
  store i32 %13, i32* %nm, align 4, !tbaa !25
  %14 = load i32, i32* %nm, align 4, !tbaa !25
  %cmp8 = icmp eq i32 %14, 2
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %15 = load i32, i32* %nm, align 4, !tbaa !25
  %cmp9 = icmp eq i32 %15, 4
  br i1 %cmp9, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.5
  %16 = load i32, i32* %nr, align 4, !tbaa !25
  %cmp10 = icmp eq i32 %16, 2
  br i1 %cmp10, label %if.end.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true
  %17 = load i32, i32* %nr, align 4, !tbaa !25
  %18 = load i32, i32* %nm, align 4, !tbaa !25
  %cmp12 = icmp eq i32 %17, %18
  br i1 %cmp12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.14:                                        ; preds = %lor.lhs.false.11, %land.lhs.true
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast [6 x double]* %v to i8*
  call void @llvm.lifetime.start(i64 48, i8* %20) #1
  %21 = bitcast i32* %code15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %pvreq.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %rv, i32 0, i64 0
  %call17 = call i32 @array_get(%struct.gs_memory_s* %22, %struct.ref_s* %23, i64 0, %struct.ref_s* %arrayidx16) #5
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %24 = load i32, i32* %i, align 4, !tbaa !25
  %cmp18 = icmp ult i32 %24, 4
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %pvmed.addr, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !25
  %28 = load i32, i32* %nm, align 4, !tbaa !25
  %rem = urem i32 %27, %28
  %conv = zext i32 %rem to i64
  %29 = load i32, i32* %i, align 4, !tbaa !25
  %add = add i32 %29, 2
  %idxprom = zext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %rv, i32 0, i64 %idxprom
  %call20 = call i32 @array_get(%struct.gs_memory_s* %25, %struct.ref_s* %26, i64 %conv, %struct.ref_s* %arrayidx19) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %rv, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay, i64 5
  %arraydecay21 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i32 0
  %call22 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 6, double* %arraydecay21) #5
  store i32 %call22, i32* %code15, align 4, !tbaa !25
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  %31 = load i32, i32* %code15, align 4, !tbaa !25
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.end
  %32 = bitcast %struct.gs_point_s* %request to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast %struct.gs_rect_s* %medium to i8*
  call void @llvm.lifetime.start(i64 32, i8* %33) #1
  %arrayidx27 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 0
  %34 = load double, double* %arrayidx27, align 8, !tbaa !42
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %request, i32 0, i32 0
  store double %34, double* %x, align 8, !tbaa !38
  %arrayidx28 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 1
  %35 = load double, double* %arrayidx28, align 8, !tbaa !42
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %request, i32 0, i32 1
  store double %35, double* %y, align 8, !tbaa !41
  %arrayidx29 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 2
  %36 = load double, double* %arrayidx29, align 8, !tbaa !42
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %medium, i32 0, i32 0
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %36, double* %x30, align 8, !tbaa !43
  %arrayidx31 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 3
  %37 = load double, double* %arrayidx31, align 8, !tbaa !42
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %medium, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  store double %37, double* %y33, align 8, !tbaa !45
  %arrayidx34 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 4
  %38 = load double, double* %arrayidx34, align 8, !tbaa !42
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %medium, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %38, double* %x35, align 8, !tbaa !46
  %arrayidx36 = getelementptr inbounds [6 x double], [6 x double]* %v, i32 0, i64 5
  %39 = load double, double* %arrayidx36, align 8, !tbaa !42
  %q37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %medium, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q37, i32 0, i32 1
  store double %39, double* %y38, align 8, !tbaa !47
  %40 = load i32, i32* %policy.addr, align 4, !tbaa !25
  %41 = load i32, i32* %orient.addr, align 4, !tbaa !25
  %42 = load i32, i32* %roll.addr, align 4, !tbaa !25
  %43 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %45 = load %struct.gs_point_s*, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %call39 = call i32 @match_page_size(%struct.gs_point_s* %request, %struct.gs_rect_s* %medium, i32 %40, i32 %41, i32 %42, float* %43, %struct.gs_matrix_s* %44, %struct.gs_point_s* %45) #5
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %46 = bitcast %struct.gs_rect_s* %medium to i8*
  call void @llvm.lifetime.end(i64 32, i8* %46) #1
  %47 = bitcast %struct.gs_point_s* %request to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %48 = bitcast i32* %code15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast [6 x double]* %v to i8*
  call void @llvm.lifetime.end(i64 48, i8* %49) #1
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  br label %cleanup.42

cleanup.42:                                       ; preds = %cleanup, %if.then.13, %if.then.4, %if.then
  %51 = bitcast [6 x %struct.ref_s]* %rv to i8*
  call void @llvm.lifetime.end(i64 96, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %nm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @match_page_size(%struct.gs_point_s* %request, %struct.gs_rect_s* %medium, i32 %policy, i32 %orient, i32 %roll, float* %best_mismatch, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pmsize) #0 {
entry:
  %retval = alloca i32, align 4
  %request.addr = alloca %struct.gs_point_s*, align 8
  %medium.addr = alloca %struct.gs_rect_s*, align 8
  %policy.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %roll.addr = alloca i32, align 4
  %best_mismatch.addr = alloca float*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pmsize.addr = alloca %struct.gs_point_s*, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %fit_direct = alloca i32, align 4
  %fit_rotated = alloca i32, align 4
  %rotate = alloca i32, align 4
  %rotate110 = alloca i32, align 4
  %rotate147 = alloca i32, align 4
  %larger = alloca i32, align 4
  %adjust = alloca i32, align 4
  %mismatch = alloca float, align 4
  %req_rect = alloca %struct.gs_rect_s, align 8
  %temp = alloca double, align 8
  store %struct.gs_point_s* %request, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %medium, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  store i32 %policy, i32* %policy.addr, align 4, !tbaa !25
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !25
  store i32 %roll, i32* %roll.addr, align 4, !tbaa !25
  store float* %best_mismatch, float** %best_mismatch.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pmsize, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %0 = bitcast double* %rx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !38
  store double %2, double* %rx, align 8, !tbaa !42
  %3 = bitcast double* %ry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8, !tbaa !41
  store double %5, double* %ry, align 8, !tbaa !42
  %6 = load double, double* %rx, align 8, !tbaa !42
  %cmp = fcmp ole double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load double, double* %ry, align 8, !tbaa !42
  %cmp1 = fcmp ole double %7, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %policy.addr, align 4, !tbaa !25
  %cmp2 = icmp eq i32 %8, 7
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float 0.000000e+00, float* %9, align 4, !tbaa !19
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gs_make_identity(%struct.gs_matrix_s* %10) #5
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_point_s* %11 to i8*
  %14 = bitcast %struct.gs_point_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !tbaa.struct !48
  br label %if.end.301

if.else:                                          ; preds = %if.end
  %15 = bitcast i32* %fit_direct to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load double, double* %rx, align 8, !tbaa !42
  %17 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %17, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %18 = load double, double* %x4, align 8, !tbaa !43
  %sub = fsub double %16, %18
  %cmp5 = fcmp oge double %sub, -5.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.else
  %19 = load double, double* %rx, align 8, !tbaa !42
  %20 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %20, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %21 = load double, double* %x6, align 8, !tbaa !46
  %sub7 = fsub double %19, %21
  %cmp8 = fcmp ole double %sub7, 5.000000e+00
  br i1 %cmp8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %22 = load double, double* %ry, align 8, !tbaa !42
  %23 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %23, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p10, i32 0, i32 1
  %24 = load double, double* %y11, align 8, !tbaa !45
  %sub12 = fsub double %22, %24
  %cmp13 = fcmp oge double %sub12, -5.000000e+00
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %25 = load double, double* %ry, align 8, !tbaa !42
  %26 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q14 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %26, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q14, i32 0, i32 1
  %27 = load double, double* %y15, align 8, !tbaa !47
  %sub16 = fsub double %25, %27
  %cmp17 = fcmp ole double %sub16, 5.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true, %if.else
  %28 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %if.else ], [ %cmp17, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %fit_direct, align 4, !tbaa !25
  %29 = bitcast i32* %fit_rotated to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load double, double* %rx, align 8, !tbaa !42
  %31 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p18 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %31, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p18, i32 0, i32 1
  %32 = load double, double* %y19, align 8, !tbaa !45
  %sub20 = fsub double %30, %32
  %cmp21 = fcmp oge double %sub20, -5.000000e+00
  br i1 %cmp21, label %land.lhs.true.22, label %land.end.37

land.lhs.true.22:                                 ; preds = %land.end
  %33 = load double, double* %rx, align 8, !tbaa !42
  %34 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %34, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q23, i32 0, i32 1
  %35 = load double, double* %y24, align 8, !tbaa !47
  %sub25 = fsub double %33, %35
  %cmp26 = fcmp ole double %sub25, 5.000000e+00
  br i1 %cmp26, label %land.lhs.true.27, label %land.end.37

land.lhs.true.27:                                 ; preds = %land.lhs.true.22
  %36 = load double, double* %ry, align 8, !tbaa !42
  %37 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %37, i32 0, i32 0
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p28, i32 0, i32 0
  %38 = load double, double* %x29, align 8, !tbaa !43
  %sub30 = fsub double %36, %38
  %cmp31 = fcmp oge double %sub30, -5.000000e+00
  br i1 %cmp31, label %land.rhs.32, label %land.end.37

land.rhs.32:                                      ; preds = %land.lhs.true.27
  %39 = load double, double* %ry, align 8, !tbaa !42
  %40 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %40, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q33, i32 0, i32 0
  %41 = load double, double* %x34, align 8, !tbaa !46
  %sub35 = fsub double %39, %41
  %cmp36 = fcmp ole double %sub35, 5.000000e+00
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.32, %land.lhs.true.27, %land.lhs.true.22, %land.end
  %42 = phi i1 [ false, %land.lhs.true.27 ], [ false, %land.lhs.true.22 ], [ false, %land.end ], [ %cmp36, %land.rhs.32 ]
  %land.ext38 = zext i1 %42 to i32
  store i32 %land.ext38, i32* %fit_rotated, align 4, !tbaa !25
  %43 = load i32, i32* %fit_direct, align 4, !tbaa !25
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %land.lhs.true.39, label %if.else.71

land.lhs.true.39:                                 ; preds = %land.end.37
  %44 = load i32, i32* %fit_rotated, align 4, !tbaa !25
  %tobool40 = icmp ne i32 %44, 0
  br i1 %tobool40, label %if.then.41, label %if.else.71

if.then.41:                                       ; preds = %land.lhs.true.39
  %45 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %46 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %48 = load i32, i32* %orient.addr, align 4, !tbaa !25
  %cmp42 = icmp slt i32 %48, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.41
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  %49 = load i32, i32* %orient.addr, align 4, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %49, %cond.false ]
  call void @make_adjustment_matrix(%struct.gs_point_s* %45, %struct.gs_rect_s* %46, %struct.gs_matrix_s* %47, i32 0, i32 %cond) #5
  %50 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %50, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p43, i32 0, i32 0
  %51 = load double, double* %x44, align 8, !tbaa !43
  %52 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %52, i32 0, i32 1
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q45, i32 0, i32 0
  %53 = load double, double* %x46, align 8, !tbaa !46
  %cmp47 = fcmp olt double %51, %53
  br i1 %cmp47, label %if.then.54, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %cond.end
  %54 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p49 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %54, i32 0, i32 0
  %y50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p49, i32 0, i32 1
  %55 = load double, double* %y50, align 8, !tbaa !45
  %56 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q51 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %56, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q51, i32 0, i32 1
  %57 = load double, double* %y52, align 8, !tbaa !47
  %cmp53 = fcmp olt double %55, %57
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %lor.lhs.false.48, %cond.end
  %58 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float 0x3F50624DE0000000, float* %58, align 4, !tbaa !19
  br label %if.end.70

if.else.55:                                       ; preds = %lor.lhs.false.48
  %59 = load double, double* %rx, align 8, !tbaa !42
  %60 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %60, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p56, i32 0, i32 0
  %61 = load double, double* %x57, align 8, !tbaa !43
  %sub58 = fsub double %59, %61
  %62 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q59 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %62, i32 0, i32 1
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q59, i32 0, i32 0
  %63 = load double, double* %x60, align 8, !tbaa !46
  %64 = load double, double* %rx, align 8, !tbaa !42
  %sub61 = fsub double %63, %64
  %mul = fmul double %sub58, %sub61
  %call = call double @fabs(double %mul) #7
  %65 = load double, double* %ry, align 8, !tbaa !42
  %66 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %66, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 1
  %67 = load double, double* %y63, align 8, !tbaa !45
  %sub64 = fsub double %65, %67
  %68 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q65 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %68, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q65, i32 0, i32 1
  %69 = load double, double* %y66, align 8, !tbaa !47
  %70 = load double, double* %ry, align 8, !tbaa !42
  %sub67 = fsub double %69, %70
  %mul68 = fmul double %sub64, %sub67
  %call69 = call double @fabs(double %mul68) #7
  %add = fadd double %call, %call69
  %conv = fptrunc double %add to float
  %71 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float %conv, float* %71, align 4, !tbaa !19
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.249

if.else.71:                                       ; preds = %land.lhs.true.39, %land.end.37
  %72 = load i32, i32* %fit_direct, align 4, !tbaa !25
  %tobool72 = icmp ne i32 %72, 0
  br i1 %tobool72, label %if.then.73, label %if.else.107

if.then.73:                                       ; preds = %if.else.71
  %73 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i32, i32* %orient.addr, align 4, !tbaa !25
  %cmp74 = icmp slt i32 %74, 0
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.then.73
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.then.73
  %75 = load i32, i32* %orient.addr, align 4, !tbaa !25
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi i32 [ 0, %cond.true.76 ], [ %75, %cond.false.77 ]
  store i32 %cond79, i32* %rotate, align 4, !tbaa !25
  %76 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %77 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %79 = load i32, i32* %rotate, align 4, !tbaa !25
  %add80 = add nsw i32 %79, 1
  %and = and i32 %add80, 2
  call void @make_adjustment_matrix(%struct.gs_point_s* %76, %struct.gs_rect_s* %77, %struct.gs_matrix_s* %78, i32 0, i32 %and) #5
  %80 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %80, i32 0, i32 0
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p81, i32 0, i32 0
  %81 = load double, double* %x82, align 8, !tbaa !43
  %82 = load double, double* %rx, align 8, !tbaa !42
  %sub83 = fsub double %81, %82
  %83 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q84 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %83, i32 0, i32 1
  %x85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q84, i32 0, i32 0
  %84 = load double, double* %x85, align 8, !tbaa !46
  %85 = load double, double* %rx, align 8, !tbaa !42
  %sub86 = fsub double %84, %85
  %mul87 = fmul double %sub83, %sub86
  %call88 = call double @fabs(double %mul87) #7
  %86 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p89 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %86, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p89, i32 0, i32 1
  %87 = load double, double* %y90, align 8, !tbaa !45
  %88 = load double, double* %ry, align 8, !tbaa !42
  %sub91 = fsub double %87, %88
  %89 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q92 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %89, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q92, i32 0, i32 1
  %90 = load double, double* %y93, align 8, !tbaa !47
  %91 = load double, double* %ry, align 8, !tbaa !42
  %sub94 = fsub double %90, %91
  %mul95 = fmul double %sub91, %sub94
  %call96 = call double @fabs(double %mul95) #7
  %add97 = fadd double %call88, %call96
  %92 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %92, i32 0, i32 0
  %93 = load float, float* %xx, align 4, !tbaa !49
  %conv98 = fpext float %93 to double
  %cmp99 = fcmp oeq double %conv98, 0.000000e+00
  br i1 %cmp99, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.78
  %94 = load i32, i32* %rotate, align 4, !tbaa !25
  %and101 = and i32 %94, 1
  %cmp102 = icmp eq i32 %and101, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.78
  %95 = phi i1 [ true, %cond.end.78 ], [ %cmp102, %lor.rhs ]
  %cond104 = select i1 %95, double 1.000000e-02, double 0.000000e+00
  %add105 = fadd double %add97, %cond104
  %conv106 = fptrunc double %add105 to float
  %96 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float %conv106, float* %96, align 4, !tbaa !19
  %97 = bitcast i32* %rotate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  br label %if.end.248

if.else.107:                                      ; preds = %if.else.71
  %98 = load i32, i32* %fit_rotated, align 4, !tbaa !25
  %tobool108 = icmp ne i32 %98, 0
  br i1 %tobool108, label %if.then.109, label %if.else.146

if.then.109:                                      ; preds = %if.else.107
  %99 = bitcast i32* %rotate110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load i32, i32* %orient.addr, align 4, !tbaa !25
  %cmp111 = icmp slt i32 %100, 0
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.then.109
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.then.109
  %101 = load i32, i32* %orient.addr, align 4, !tbaa !25
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ 1, %cond.true.113 ], [ %101, %cond.false.114 ]
  store i32 %cond116, i32* %rotate110, align 4, !tbaa !25
  %102 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %103 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %104 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %105 = load i32, i32* %rotate110, align 4, !tbaa !25
  %or = or i32 %105, 1
  call void @make_adjustment_matrix(%struct.gs_point_s* %102, %struct.gs_rect_s* %103, %struct.gs_matrix_s* %104, i32 0, i32 %or) #5
  %106 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p117 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %106, i32 0, i32 0
  %y118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p117, i32 0, i32 1
  %107 = load double, double* %y118, align 8, !tbaa !45
  %108 = load double, double* %rx, align 8, !tbaa !42
  %sub119 = fsub double %107, %108
  %109 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q120 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %109, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q120, i32 0, i32 1
  %110 = load double, double* %y121, align 8, !tbaa !47
  %111 = load double, double* %rx, align 8, !tbaa !42
  %sub122 = fsub double %110, %111
  %mul123 = fmul double %sub119, %sub122
  %call124 = call double @fabs(double %mul123) #7
  %112 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p125 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %112, i32 0, i32 0
  %x126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p125, i32 0, i32 0
  %113 = load double, double* %x126, align 8, !tbaa !43
  %114 = load double, double* %ry, align 8, !tbaa !42
  %sub127 = fsub double %113, %114
  %115 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q128 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %115, i32 0, i32 1
  %x129 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q128, i32 0, i32 0
  %116 = load double, double* %x129, align 8, !tbaa !46
  %117 = load double, double* %ry, align 8, !tbaa !42
  %sub130 = fsub double %116, %117
  %mul131 = fmul double %sub127, %sub130
  %call132 = call double @fabs(double %mul131) #7
  %add133 = fadd double %call124, %call132
  %118 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx134 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %118, i32 0, i32 0
  %119 = load float, float* %xx134, align 4, !tbaa !49
  %conv135 = fpext float %119 to double
  %cmp136 = fcmp oeq double %conv135, 0.000000e+00
  br i1 %cmp136, label %lor.end.142, label %lor.rhs.138

lor.rhs.138:                                      ; preds = %cond.end.115
  %120 = load i32, i32* %rotate110, align 4, !tbaa !25
  %and139 = and i32 %120, 1
  %cmp140 = icmp eq i32 %and139, 1
  br label %lor.end.142

lor.end.142:                                      ; preds = %lor.rhs.138, %cond.end.115
  %121 = phi i1 [ true, %cond.end.115 ], [ %cmp140, %lor.rhs.138 ]
  %cond143 = select i1 %121, double 1.000000e-02, double 0.000000e+00
  %add144 = fadd double %add133, %cond143
  %conv145 = fptrunc double %add144 to float
  %122 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float %conv145, float* %122, align 4, !tbaa !19
  %123 = bitcast i32* %rotate110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %if.end.247

if.else.146:                                      ; preds = %if.else.107
  %124 = bitcast i32* %rotate147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %orient.addr, align 4, !tbaa !25
  %cmp148 = icmp sge i32 %125, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %if.else.146
  %126 = load i32, i32* %orient.addr, align 4, !tbaa !25
  br label %cond.end.160

cond.false.151:                                   ; preds = %if.else.146
  %127 = load double, double* %rx, align 8, !tbaa !42
  %128 = load double, double* %ry, align 8, !tbaa !42
  %cmp152 = fcmp olt double %127, %128
  %conv153 = zext i1 %cmp152 to i32
  %129 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q154 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %129, i32 0, i32 1
  %x155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q154, i32 0, i32 0
  %130 = load double, double* %x155, align 8, !tbaa !46
  %131 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q156 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %131, i32 0, i32 1
  %y157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q156, i32 0, i32 1
  %132 = load double, double* %y157, align 8, !tbaa !47
  %cmp158 = fcmp olt double %130, %132
  %conv159 = zext i1 %cmp158 to i32
  %xor = xor i32 %conv153, %conv159
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.151, %cond.true.150
  %cond161 = phi i32 [ %126, %cond.true.150 ], [ %xor, %cond.false.151 ]
  store i32 %cond161, i32* %rotate147, align 4, !tbaa !25
  %133 = bitcast i32* %larger to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load i32, i32* %policy.addr, align 4, !tbaa !25
  %cmp162 = icmp eq i32 %134, 13
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.end.160
  br label %cond.end.194

cond.false.165:                                   ; preds = %cond.end.160
  %135 = load i32, i32* %rotate147, align 4, !tbaa !25
  %and166 = and i32 %135, 1
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.180

cond.true.168:                                    ; preds = %cond.false.165
  %136 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q169 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %136, i32 0, i32 1
  %y170 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q169, i32 0, i32 1
  %137 = load double, double* %y170, align 8, !tbaa !47
  %138 = load double, double* %rx, align 8, !tbaa !42
  %cmp171 = fcmp oge double %137, %138
  br i1 %cmp171, label %land.rhs.173, label %land.end.178

land.rhs.173:                                     ; preds = %cond.true.168
  %139 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q174 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %139, i32 0, i32 1
  %x175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q174, i32 0, i32 0
  %140 = load double, double* %x175, align 8, !tbaa !46
  %141 = load double, double* %ry, align 8, !tbaa !42
  %cmp176 = fcmp oge double %140, %141
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.173, %cond.true.168
  %142 = phi i1 [ false, %cond.true.168 ], [ %cmp176, %land.rhs.173 ]
  %land.ext179 = zext i1 %142 to i32
  br label %cond.end.192

cond.false.180:                                   ; preds = %cond.false.165
  %143 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q181 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %143, i32 0, i32 1
  %x182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q181, i32 0, i32 0
  %144 = load double, double* %x182, align 8, !tbaa !46
  %145 = load double, double* %rx, align 8, !tbaa !42
  %cmp183 = fcmp oge double %144, %145
  br i1 %cmp183, label %land.rhs.185, label %land.end.190

land.rhs.185:                                     ; preds = %cond.false.180
  %146 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q186 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %146, i32 0, i32 1
  %y187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q186, i32 0, i32 1
  %147 = load double, double* %y187, align 8, !tbaa !47
  %148 = load double, double* %ry, align 8, !tbaa !42
  %cmp188 = fcmp oge double %147, %148
  br label %land.end.190

land.end.190:                                     ; preds = %land.rhs.185, %cond.false.180
  %149 = phi i1 [ false, %cond.false.180 ], [ %cmp188, %land.rhs.185 ]
  %land.ext191 = zext i1 %149 to i32
  br label %cond.end.192

cond.end.192:                                     ; preds = %land.end.190, %land.end.178
  %cond193 = phi i32 [ %land.ext179, %land.end.178 ], [ %land.ext191, %land.end.190 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.164
  %cond195 = phi i32 [ 0, %cond.true.164 ], [ %cond193, %cond.end.192 ]
  store i32 %cond195, i32* %larger, align 4, !tbaa !25
  %150 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  store i32 0, i32* %adjust, align 4, !tbaa !25
  %151 = bitcast float* %mismatch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q196 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %152, i32 0, i32 1
  %x197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q196, i32 0, i32 0
  %153 = load double, double* %x197, align 8, !tbaa !46
  %154 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q198 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %154, i32 0, i32 1
  %y199 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q198, i32 0, i32 1
  %155 = load double, double* %y199, align 8, !tbaa !47
  %mul200 = fmul double %153, %155
  %156 = load double, double* %rx, align 8, !tbaa !42
  %157 = load double, double* %ry, align 8, !tbaa !42
  %mul201 = fmul double %156, %157
  %sub202 = fsub double %mul200, %mul201
  %conv203 = fptrunc double %sub202 to float
  store float %conv203, float* %mismatch, align 4, !tbaa !19
  %158 = load i32, i32* %policy.addr, align 4, !tbaa !25
  switch i32 %158, label %sw.default [
    i32 3, label %sw.bb
    i32 13, label %sw.bb
    i32 5, label %sw.bb.204
    i32 4, label %sw.bb.213
    i32 6, label %sw.bb.214
  ]

sw.default:                                       ; preds = %cond.end.194
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %cond.end.194, %cond.end.194
  store i32 1, i32* %adjust, align 4, !tbaa !25
  br label %sw.bb.204

sw.bb.204:                                        ; preds = %cond.end.194, %sw.bb
  %159 = load float, float* %mismatch, align 4, !tbaa !19
  %conv205 = fpext float %159 to double
  %call206 = call double @fabs(double %conv205) #7
  %160 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  %161 = load float, float* %160, align 4, !tbaa !19
  %conv207 = fpext float %161 to double
  %call208 = call double @fabs(double %conv207) #7
  %cmp209 = fcmp oge double %call206, %call208
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %sw.bb.204
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.212:                                       ; preds = %sw.bb.204
  br label %sw.epilog

sw.bb.213:                                        ; preds = %cond.end.194
  store i32 1, i32* %adjust, align 4, !tbaa !25
  br label %sw.bb.214

sw.bb.214:                                        ; preds = %cond.end.194, %sw.bb.213
  %162 = load i32, i32* %larger, align 4, !tbaa !25
  %tobool215 = icmp ne i32 %162, 0
  br i1 %tobool215, label %lor.lhs.false.216, label %if.then.219

lor.lhs.false.216:                                ; preds = %sw.bb.214
  %163 = load float, float* %mismatch, align 4, !tbaa !19
  %164 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  %165 = load float, float* %164, align 4, !tbaa !19
  %cmp217 = fcmp oge float %163, %165
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %lor.lhs.false.216, %sw.bb.214
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.220:                                       ; preds = %lor.lhs.false.216
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.220, %if.end.212
  %166 = load i32, i32* %adjust, align 4, !tbaa !25
  %tobool221 = icmp ne i32 %166, 0
  br i1 %tobool221, label %if.then.222, label %if.else.224

if.then.222:                                      ; preds = %sw.epilog
  %167 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %168 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %169 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %170 = load i32, i32* %larger, align 4, !tbaa !25
  %tobool223 = icmp ne i32 %170, 0
  %lnot = xor i1 %tobool223, true
  %lnot.ext = zext i1 %lnot to i32
  %171 = load i32, i32* %rotate147, align 4, !tbaa !25
  call void @make_adjustment_matrix(%struct.gs_point_s* %167, %struct.gs_rect_s* %168, %struct.gs_matrix_s* %169, i32 %lnot.ext, i32 %171) #5
  br label %if.end.240

if.else.224:                                      ; preds = %sw.epilog
  %172 = bitcast %struct.gs_rect_s* %req_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %172) #1
  %173 = load i32, i32* %rotate147, align 4, !tbaa !25
  %and225 = and i32 %173, 1
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.else.232

if.then.227:                                      ; preds = %if.else.224
  %174 = load double, double* %ry, align 8, !tbaa !42
  %p228 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 0
  %x229 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p228, i32 0, i32 0
  store double %174, double* %x229, align 8, !tbaa !43
  %175 = load double, double* %rx, align 8, !tbaa !42
  %p230 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 0
  %y231 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p230, i32 0, i32 1
  store double %175, double* %y231, align 8, !tbaa !45
  br label %if.end.237

if.else.232:                                      ; preds = %if.else.224
  %176 = load double, double* %rx, align 8, !tbaa !42
  %p233 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 0
  %x234 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p233, i32 0, i32 0
  store double %176, double* %x234, align 8, !tbaa !43
  %177 = load double, double* %ry, align 8, !tbaa !42
  %p235 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 0
  %y236 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p235, i32 0, i32 1
  store double %177, double* %y236, align 8, !tbaa !45
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.232, %if.then.227
  %q238 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 1
  %p239 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %req_rect, i32 0, i32 0
  %178 = bitcast %struct.gs_point_s* %q238 to i8*
  %179 = bitcast %struct.gs_point_s* %p239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 16, i32 8, i1 false), !tbaa.struct !48
  %180 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %181 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %182 = load i32, i32* %rotate147, align 4, !tbaa !25
  call void @make_adjustment_matrix(%struct.gs_point_s* %180, %struct.gs_rect_s* %req_rect, %struct.gs_matrix_s* %181, i32 0, i32 %182) #5
  %183 = bitcast %struct.gs_rect_s* %req_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %183) #1
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.237, %if.then.222
  %184 = load float, float* %mismatch, align 4, !tbaa !19
  %conv241 = fpext float %184 to double
  %call242 = call double @fabs(double %conv241) #7
  %conv243 = fptrunc double %call242 to float
  %185 = load float*, float** %best_mismatch.addr, align 8, !tbaa !1
  store float %conv243, float* %185, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.240, %if.then.219, %if.then.211, %sw.default
  %186 = bitcast float* %mismatch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %larger to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %rotate147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.297 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.247

if.end.247:                                       ; preds = %cleanup.cont, %lor.end.142
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %lor.end
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.70
  %190 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx250 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %190, i32 0, i32 0
  %191 = load float, float* %xx250, align 4, !tbaa !49
  %cmp251 = fcmp oeq float %191, 0.000000e+00
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.249
  %192 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #1
  %193 = load double, double* %rx, align 8, !tbaa !42
  store double %193, double* %temp, align 8, !tbaa !42
  %194 = load double, double* %ry, align 8, !tbaa !42
  store double %194, double* %rx, align 8, !tbaa !42
  %195 = load double, double* %temp, align 8, !tbaa !42
  store double %195, double* %ry, align 8, !tbaa !42
  %196 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.end.249
  %197 = load double, double* %rx, align 8, !tbaa !42
  %198 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p255 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %198, i32 0, i32 0
  %x256 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p255, i32 0, i32 0
  %199 = load double, double* %x256, align 8, !tbaa !43
  %cmp257 = fcmp olt double %197, %199
  br i1 %cmp257, label %cond.true.259, label %cond.false.262

cond.true.259:                                    ; preds = %if.end.254
  %200 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p260 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %200, i32 0, i32 0
  %x261 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p260, i32 0, i32 0
  %201 = load double, double* %x261, align 8, !tbaa !43
  br label %cond.end.273

cond.false.262:                                   ; preds = %if.end.254
  %202 = load double, double* %rx, align 8, !tbaa !42
  %203 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q263 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %203, i32 0, i32 1
  %x264 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q263, i32 0, i32 0
  %204 = load double, double* %x264, align 8, !tbaa !46
  %cmp265 = fcmp ogt double %202, %204
  br i1 %cmp265, label %cond.true.267, label %cond.false.270

cond.true.267:                                    ; preds = %cond.false.262
  %205 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q268 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %205, i32 0, i32 1
  %x269 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q268, i32 0, i32 0
  %206 = load double, double* %x269, align 8, !tbaa !46
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.false.262
  %207 = load double, double* %rx, align 8, !tbaa !42
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.267
  %cond272 = phi double [ %206, %cond.true.267 ], [ %207, %cond.false.270 ]
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.end.271, %cond.true.259
  %cond274 = phi double [ %201, %cond.true.259 ], [ %cond272, %cond.end.271 ]
  %208 = load %struct.gs_point_s*, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %x275 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %208, i32 0, i32 0
  store double %cond274, double* %x275, align 8, !tbaa !38
  %209 = load double, double* %ry, align 8, !tbaa !42
  %210 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p276 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %210, i32 0, i32 0
  %y277 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p276, i32 0, i32 1
  %211 = load double, double* %y277, align 8, !tbaa !45
  %cmp278 = fcmp olt double %209, %211
  br i1 %cmp278, label %cond.true.280, label %cond.false.283

cond.true.280:                                    ; preds = %cond.end.273
  %212 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p281 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %212, i32 0, i32 0
  %y282 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p281, i32 0, i32 1
  %213 = load double, double* %y282, align 8, !tbaa !45
  br label %cond.end.294

cond.false.283:                                   ; preds = %cond.end.273
  %214 = load double, double* %ry, align 8, !tbaa !42
  %215 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q284 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %215, i32 0, i32 1
  %y285 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q284, i32 0, i32 1
  %216 = load double, double* %y285, align 8, !tbaa !47
  %cmp286 = fcmp ogt double %214, %216
  br i1 %cmp286, label %cond.true.288, label %cond.false.291

cond.true.288:                                    ; preds = %cond.false.283
  %217 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q289 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %217, i32 0, i32 1
  %y290 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q289, i32 0, i32 1
  %218 = load double, double* %y290, align 8, !tbaa !47
  br label %cond.end.292

cond.false.291:                                   ; preds = %cond.false.283
  %219 = load double, double* %ry, align 8, !tbaa !42
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.291, %cond.true.288
  %cond293 = phi double [ %218, %cond.true.288 ], [ %219, %cond.false.291 ]
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.end.292, %cond.true.280
  %cond295 = phi double [ %213, %cond.true.280 ], [ %cond293, %cond.end.292 ]
  %220 = load %struct.gs_point_s*, %struct.gs_point_s** %pmsize.addr, align 8, !tbaa !1
  %y296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %220, i32 0, i32 1
  store double %cond295, double* %y296, align 8, !tbaa !41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.297

cleanup.297:                                      ; preds = %cond.end.294, %cleanup
  %221 = bitcast i32* %fit_rotated to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %fit_direct to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %cleanup.dest.299 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.299, label %cleanup.302 [
    i32 0, label %cleanup.cont.300
  ]

cleanup.cont.300:                                 ; preds = %cleanup.297
  br label %if.end.301

if.end.301:                                       ; preds = %cleanup.cont.300, %if.then.3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.302

cleanup.302:                                      ; preds = %if.end.301, %cleanup.297, %if.then
  %223 = bitcast double* %ry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast double* %rx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal void @make_adjustment_matrix(%struct.gs_point_s* %request, %struct.gs_rect_s* %medium, %struct.gs_matrix_s* %pmat, i32 %scale, i32 %rotate) #0 {
entry:
  %request.addr = alloca %struct.gs_point_s*, align 8
  %medium.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %scale.addr = alloca i32, align 4
  %rotate.addr = alloca i32, align 4
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %mx = alloca double, align 8
  %my = alloca double, align 8
  %temp = alloca double, align 8
  %xfactor = alloca double, align 8
  %yfactor = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.gs_point_s* %request, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %medium, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %scale, i32* %scale.addr, align 4, !tbaa !25
  store i32 %rotate, i32* %rotate.addr, align 4, !tbaa !25
  %0 = bitcast double* %rx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !38
  store double %2, double* %rx, align 8, !tbaa !42
  %3 = bitcast double* %ry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8, !tbaa !41
  store double %5, double* %ry, align 8, !tbaa !42
  %6 = bitcast double* %mx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %8 = load double, double* %x1, align 8, !tbaa !46
  store double %8, double* %mx, align 8, !tbaa !42
  %9 = bitcast double* %my to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %q2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 1
  %y3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q2, i32 0, i32 1
  %11 = load double, double* %y3, align 8, !tbaa !47
  store double %11, double* %my, align 8, !tbaa !42
  %12 = load i32, i32* %rotate.addr, align 4, !tbaa !25
  %and = and i32 %12, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load double, double* %rx, align 8, !tbaa !42
  store double %14, double* %temp, align 8, !tbaa !42
  %15 = load double, double* %ry, align 8, !tbaa !42
  store double %15, double* %rx, align 8, !tbaa !42
  %16 = load double, double* %temp, align 8, !tbaa !42
  store double %16, double* %ry, align 8, !tbaa !42
  %17 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %18, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %19 = load double, double* %x4, align 8, !tbaa !43
  %20 = load double, double* %mx, align 8, !tbaa !42
  %cmp = fcmp olt double %19, %20
  br i1 %cmp, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end
  %21 = load double, double* %rx, align 8, !tbaa !42
  %22 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %22, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 0
  %23 = load double, double* %x7, align 8, !tbaa !43
  %cmp8 = fcmp olt double %21, %23
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %24 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %24, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p10, i32 0, i32 0
  %25 = load double, double* %x11, align 8, !tbaa !43
  store double %25, double* %mx, align 8, !tbaa !42
  br label %if.end.15

if.else:                                          ; preds = %if.then.5
  %26 = load double, double* %rx, align 8, !tbaa !42
  %27 = load double, double* %mx, align 8, !tbaa !42
  %cmp12 = fcmp olt double %26, %27
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %28 = load double, double* %rx, align 8, !tbaa !42
  store double %28, double* %mx, align 8, !tbaa !42
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %29 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %29, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p17, i32 0, i32 1
  %30 = load double, double* %y18, align 8, !tbaa !45
  %31 = load double, double* %my, align 8, !tbaa !42
  %cmp19 = fcmp olt double %30, %31
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end.16
  %32 = load double, double* %ry, align 8, !tbaa !42
  %33 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %33, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 1
  %34 = load double, double* %y22, align 8, !tbaa !45
  %cmp23 = fcmp olt double %32, %34
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.then.20
  %35 = load %struct.gs_rect_s*, %struct.gs_rect_s** %medium.addr, align 8, !tbaa !1
  %p25 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %35, i32 0, i32 0
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p25, i32 0, i32 1
  %36 = load double, double* %y26, align 8, !tbaa !45
  store double %36, double* %my, align 8, !tbaa !42
  br label %if.end.31

if.else.27:                                       ; preds = %if.then.20
  %37 = load double, double* %ry, align 8, !tbaa !42
  %38 = load double, double* %my, align 8, !tbaa !42
  %cmp28 = fcmp olt double %37, %38
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.27
  %39 = load double, double* %ry, align 8, !tbaa !42
  store double %39, double* %my, align 8, !tbaa !42
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.16
  %40 = load double, double* %mx, align 8, !tbaa !42
  %div = fdiv double %40, 2.000000e+00
  %41 = load double, double* %my, align 8, !tbaa !42
  %div33 = fdiv double %41, 2.000000e+00
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_make_translation(double %div, double %div33, %struct.gs_matrix_s* %42) #5
  %43 = load i32, i32* %rotate.addr, align 4, !tbaa !25
  %tobool34 = icmp ne i32 %43, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %45 = load i32, i32* %rotate.addr, align 4, !tbaa !25
  %conv = sitofp i32 %45 to double
  %mul = fmul double 9.000000e+01, %conv
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call36 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* %44, double %mul, %struct.gs_matrix_s* %46) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %47 = load i32, i32* %scale.addr, align 4, !tbaa !25
  %tobool38 = icmp ne i32 %47, 0
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.37
  %48 = bitcast double* %xfactor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load double, double* %mx, align 8, !tbaa !42
  %50 = load double, double* %rx, align 8, !tbaa !42
  %div40 = fdiv double %49, %50
  store double %div40, double* %xfactor, align 8, !tbaa !42
  %51 = bitcast double* %yfactor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load double, double* %my, align 8, !tbaa !42
  %53 = load double, double* %ry, align 8, !tbaa !42
  %div41 = fdiv double %52, %53
  store double %div41, double* %yfactor, align 8, !tbaa !42
  %54 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load double, double* %xfactor, align 8, !tbaa !42
  %56 = load double, double* %yfactor, align 8, !tbaa !42
  %cmp42 = fcmp olt double %55, %56
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %57 = load double, double* %xfactor, align 8, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %58 = load double, double* %yfactor, align 8, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %57, %cond.true ], [ %58, %cond.false ]
  store double %cond, double* %factor, align 8, !tbaa !42
  %59 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %60 = load double, double* %factor, align 8, !tbaa !42
  %61 = load double, double* %factor, align 8, !tbaa !42
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call44 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %59, double %60, double %61, %struct.gs_matrix_s* %62) #5
  %63 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast double* %yfactor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast double* %xfactor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  br label %if.end.45

if.end.45:                                        ; preds = %cond.end, %if.end.37
  %66 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %67 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %67, i32 0, i32 0
  %68 = load double, double* %x46, align 8, !tbaa !38
  %sub = fsub double -0.000000e+00, %68
  %div47 = fdiv double %sub, 2.000000e+00
  %69 = load %struct.gs_point_s*, %struct.gs_point_s** %request.addr, align 8, !tbaa !1
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %69, i32 0, i32 1
  %70 = load double, double* %y48, align 8, !tbaa !41
  %sub49 = fsub double -0.000000e+00, %70
  %div50 = fdiv double %sub49, 2.000000e+00
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call51 = call i32 @gs_matrix_translate(%struct.gs_matrix_s* %66, double %div47, double %div50, %struct.gs_matrix_s* %71) #5
  %72 = bitcast double* %my to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %mx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %ry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast double* %rx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_rotate(%struct.gs_matrix_s*, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_translate(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare i32 @write_matrix_in(%struct.ref_s*, %struct.gs_matrix_s*, %struct.gs_dual_memory_s*, %struct.gs_ref_memory_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind readnone }

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
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !3, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!6, !2, i64 632}
!23 = !{!10, !12, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{!10, !9, i64 4}
!27 = !{!28, !9, i64 36}
!28 = !{!"match_record_s", !10, i64 0, !10, i64 16, !9, i64 32, !9, i64 36}
!29 = !{!6, !2, i64 8}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !2, i64 192}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!35, !2, i64 120}
!35 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!36 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 4, !25, i64 8, i64 8, !30, i64 8, i64 2, !24, i64 8, i64 4, !19, i64 8, i64 8, !30, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !30}
!37 = !{!28, !9, i64 32}
!38 = !{!39, !40, i64 0}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !3, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!40, !40, i64 0}
!43 = !{!44, !40, i64 0}
!44 = !{!"gs_rect_s", !39, i64 0, !39, i64 16}
!45 = !{!44, !40, i64 8}
!46 = !{!44, !40, i64 16}
!47 = !{!44, !40, i64 24}
!48 = !{i64 0, i64 8, !42, i64 8, i64 8, !42}
!49 = !{!50, !20, i64 0}
!50 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
