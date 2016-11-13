; ModuleID = './zpath1.bc'
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
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gs_path_enum_s = type opaque
%struct.obj_header_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }

@.str = private unnamed_addr constant [5 x i8] c"5arc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"5arcn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5arct\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5arcto\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0clippath\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0.dashpath\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"0flattenpath\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4pathforall\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0reversepath\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0strokepath\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"1.pathbbox\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"0pathbbox\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"0%path_continue\00", align 1
@zpath1_op_defs = constant [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zarc }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zarcn }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zarct }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zarcto }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclippath }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdashpath }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zflattenpath }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpathforall }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreversepath }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstrokepath }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z1pathbbox }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpathbbox }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @path_continue }, %struct.op_def zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"pathforall\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"path_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zarc(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_arc(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* @gs_arc) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @common_arc(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double, double, double, double, double)* %aproc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %aproc.addr = alloca i32 (%struct.gs_state_s*, double, double, double, double, double)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %xyra = alloca [5 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double, double, double, double, double)* %aproc, i32 (%struct.gs_state_s*, double, double, double, double, double)** %aproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [5 x double]* %xyra to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 5, double* %arraydecay) #4
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
  %8 = load i32 (%struct.gs_state_s*, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double)** %aproc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i64 0
  %11 = load double, double* %arrayidx, align 8, !tbaa !21
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i64 1
  %12 = load double, double* %arrayidx1, align 8, !tbaa !21
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i64 2
  %13 = load double, double* %arrayidx2, align 8, !tbaa !21
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i64 3
  %14 = load double, double* %arrayidx3, align 8, !tbaa !21
  %arrayidx4 = getelementptr inbounds [5 x double], [5 x double]* %xyra, i32 0, i64 4
  %15 = load double, double* %arrayidx4, align 8, !tbaa !21
  %call5 = call i32 %8(%struct.gs_state_s* %10, double %11, double %12, double %13, double %14, double %15) #4
  store i32 %call5, i32* %code, align 4, !tbaa !19
  %16 = load i32, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp sge i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p10, align 8, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast [5 x double]* %xyra to i8*
  call void @llvm.lifetime.end(i64 40, i8* %21) #2
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_arc(%struct.gs_state_s*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zarcn(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_arc(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* @gs_arcn) #4
  ret i32 %call
}

declare i32 @gs_arcn(%struct.gs_state_s*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zarct(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_arct(%struct.gs_context_state_s* %1, float* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %2 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @common_arct(%struct.gs_context_state_s* %i_ctx_p, float* %tanxy) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %tanxy.addr = alloca float*, align 8
  %op = alloca %struct.ref_s*, align 8
  %args = alloca [5 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store float* %tanxy, float** %tanxy.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [5 x double]* %args to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 5, double* %arraydecay) #4
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
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i64 0
  %10 = load double, double* %arrayidx, align 8, !tbaa !21
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i64 1
  %11 = load double, double* %arrayidx1, align 8, !tbaa !21
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i64 2
  %12 = load double, double* %arrayidx2, align 8, !tbaa !21
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i64 3
  %13 = load double, double* %arrayidx3, align 8, !tbaa !21
  %arrayidx4 = getelementptr inbounds [5 x double], [5 x double]* %args, i32 0, i64 4
  %14 = load double, double* %arrayidx4, align 8, !tbaa !21
  %15 = load float*, float** %tanxy.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_arcto(%struct.gs_state_s* %9, double %10, double %11, double %12, double %13, double %14, float* %15) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast [5 x double]* %args to i8*
  call void @llvm.lifetime.end(i64 40, i8* %17) #2
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @zarcto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %tanxy = alloca [4 x float], align 16
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
  %3 = bitcast [4 x float]* %tanxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i32 0
  %call = call i32 @common_arct(%struct.gs_context_state_s* %5, float* %arraydecay) #4
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
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !23
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %8, float* %realval, align 4, !tbaa !23
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !25
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 1
  %11 = load float, float* %arrayidx2, align 4, !tbaa !23
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  store float %11, float* %realval5, align 4, !tbaa !23
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  store i16 4096, i16* %type_attrs8, align 2, !tbaa !25
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 2
  %14 = load float, float* %arrayidx9, align 4, !tbaa !23
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %realval12 = bitcast %union.v* %value11 to float*
  store float %14, float* %realval12, align 4, !tbaa !23
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  store i16 4096, i16* %type_attrs15, align 2, !tbaa !25
  %arrayidx16 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 3
  %17 = load float, float* %arrayidx16, align 4, !tbaa !23
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 1
  %realval19 = bitcast %union.v* %value18 to float*
  store float %17, float* %realval19, align 4, !tbaa !23
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  store i16 4096, i16* %type_attrs22, align 2, !tbaa !25
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !5
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %p25, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast [4 x float]* %tanxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #2
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zclippath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_clippath(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zdashpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_dashpath(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zflattenpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_flattenpath(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zpathforall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_path_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !25
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %call = call i32 @check_proc_failed(%struct.ref_s* %arrayidx2) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %9 = load i16, i16* %type_attrs6, align 2, !tbaa !25
  %conv7 = zext i16 %9 to i32
  %and8 = and i32 %conv7, 15552
  %cmp9 = icmp eq i32 %and8, 1216
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %do.body.3
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %call13 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx12) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.14:                                        ; preds = %do.body.3
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %12 = load i16, i16* %type_attrs20, align 2, !tbaa !25
  %conv21 = zext i16 %12 to i32
  %and22 = and i32 %conv21, 15552
  %cmp23 = icmp eq i32 %and22, 1216
  br i1 %cmp23, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call27 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx26) #4
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.28:                                        ; preds = %do.body.17
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %15 = load i16, i16* %type_attrs33, align 2, !tbaa !25
  %conv34 = zext i16 %15 to i32
  %and35 = and i32 %conv34, 15552
  %cmp36 = icmp eq i32 %and35, 1216
  br i1 %cmp36, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %do.body.31
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call39 = call i32 @check_proc_failed(%struct.ref_s* %16) #4
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.40:                                        ; preds = %do.body.31
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !26
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 2
  %20 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -8
  %cmp47 = icmp ugt %struct.ref_s* %18, %add.ptr
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %do.end.42
  %21 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %call52 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack51, i32 8) #4
  store i32 %call52, i32* %es_code_, align 4, !tbaa !19
  %23 = load i32, i32* %es_code_, align 4, !tbaa !19
  %cmp53 = icmp slt i32 %23, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.49
  %24 = load i32, i32* %es_code_, align 4, !tbaa !19
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.then.49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55
  %25 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.134 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.57

if.end.57:                                        ; preds = %cleanup.cont, %do.end.42
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %call58 = call %struct.gs_path_enum_s* @gs_path_enum_alloc(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #4
  store %struct.gs_path_enum_s* %call58, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %cmp59 = icmp eq %struct.gs_path_enum_s* %call58, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.62:                                        ; preds = %if.end.57
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current64 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current64, align 8, !tbaa !28
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %32 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 0
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call65 = call i32 @gs_path_enum_copy_init(%struct.gs_memory_s* %31, %struct.gs_path_enum_s* %32, %struct.gs_state_s* %34, i32 1) #4
  store i32 %call65, i32* %code, align 4, !tbaa !19
  %35 = load i32, i32* %code, align 4, !tbaa !19
  %cmp66 = icmp slt i32 %35, 0
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.62
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current70 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory69, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current70, align 8, !tbaa !28
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current72, align 8, !tbaa !28
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %43 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %44 = bitcast %struct.gs_path_enum_s* %43 to i8*
  call void %39(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)) #4
  %45 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.73:                                        ; preds = %if.end.62
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack75 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p76, align 8, !tbaa !26
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p76, align 8, !tbaa !26
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack78 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack77, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack78, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p79, align 8, !tbaa !26
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @path_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack81 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p82, align 8, !tbaa !26
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 0
  store i16 3712, i16* %type_attrs84, align 2, !tbaa !25
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 25
  %stack86 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack85, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p87, align 8, !tbaa !26
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 2
  store i32 2, i32* %rsize, align 4, !tbaa !32
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack90 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack89, i32 0, i32 0
  %p91 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack90, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p91, align 8, !tbaa !26
  %add.ptr92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 1
  %56 = bitcast %struct.ref_s* %add.ptr92 to i8*
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -3
  %58 = bitcast %struct.ref_s* %add.ptr93 to i8*
  %call94 = call i8* @memcpy(i8* %56, i8* %58, i64 64) #5
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack96 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !26
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 5
  store %struct.ref_s* %add.ptr98, %struct.ref_s** %p97, align 8, !tbaa !26
  %61 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %62 = bitcast %struct.gs_path_enum_s* %61 to %struct.obj_header_s*
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack100 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack99, i32 0, i32 0
  %p101 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack100, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p101, align 8, !tbaa !26
  %value102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %pstruct = bitcast %union.v* %value102 to %struct.obj_header_s**
  store %struct.obj_header_s* %62, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory103, i32 0, i32 2
  %66 = load i32, i32* %current_space, align 4, !tbaa !33
  %or = or i32 0, %66
  %add = add i32 2048, %or
  %conv104 = trunc i32 %add to i16
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 25
  %stack106 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack105, i32 0, i32 0
  %p107 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 0
  %68 = load %struct.ref_s*, %struct.ref_s** %p107, align 8, !tbaa !26
  %tas108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %type_attrs109 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas108, i32 0, i32 0
  store i16 %conv104, i16* %type_attrs109, align 2, !tbaa !25
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 25
  %stack111 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack110, i32 0, i32 0
  %p112 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack111, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p112, align 8, !tbaa !26
  %incdec.ptr113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 1
  store %struct.ref_s* %incdec.ptr113, %struct.ref_s** %p112, align 8, !tbaa !26
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 25
  %stack115 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack114, i32 0, i32 0
  %p116 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p116, align 8, !tbaa !26
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  %opproc118 = bitcast %union.v* %value117 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @path_continue, i32 (%struct.gs_context_state_s*)** %opproc118, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 25
  %stack120 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack119, i32 0, i32 0
  %p121 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack120, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p121, align 8, !tbaa !26
  %tas122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs123 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas122, i32 0, i32 0
  store i16 3968, i16* %type_attrs123, align 2, !tbaa !25
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 25
  %stack125 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack124, i32 0, i32 0
  %p126 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack125, i32 0, i32 0
  %76 = load %struct.ref_s*, %struct.ref_s** %p126, align 8, !tbaa !26
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %rsize128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 2
  store i32 0, i32* %rsize128, align 4, !tbaa !32
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 26
  %stack130 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack129, i32 0, i32 0
  %p131 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack130, i32 0, i32 0
  %78 = load %struct.ref_s*, %struct.ref_s** %p131, align 8, !tbaa !5
  %add.ptr132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -4
  store %struct.ref_s* %add.ptr132, %struct.ref_s** %p131, align 8, !tbaa !5
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -4
  store %struct.ref_s* %add.ptr133, %struct.ref_s** %op, align 8, !tbaa !1
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.73, %if.then.68, %if.then.61, %cleanup, %if.then.38, %if.then.25, %if.then.11, %if.then
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @zreversepath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_reversepath(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zstrokepath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_strokepath(%struct.gs_state_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z1pathbbox(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %box = alloca %struct.gs_rect_s, align 8
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
  %3 = bitcast %struct.gs_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %12 = load i16, i16* %boolval, align 2, !tbaa !35
  %conv2 = zext i16 %12 to i32
  %call3 = call i32 @gs_upathbbox(%struct.gs_state_s* %10, %struct.gs_rect_s* %box, i32 %conv2) #4
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp10 = icmp ugt %struct.ref_s* %add.ptr, %17
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 7
  store i32 3, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  store %struct.ref_s* %19, %struct.ref_s** %p17, align 8, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 0
  %21 = load double, double* %x, align 8, !tbaa !38
  %conv20 = fptrunc double %21 to float
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %realval = bitcast %union.v* %value22 to float*
  store float %conv20, float* %realval, align 4, !tbaa !23
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -3
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  store i16 4096, i16* %type_attrs25, align 2, !tbaa !25
  %p26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p26, i32 0, i32 1
  %24 = load double, double* %y, align 8, !tbaa !41
  %conv27 = fptrunc double %24 to float
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 1
  %realval30 = bitcast %union.v* %value29 to float*
  store float %conv27, float* %realval30, align 4, !tbaa !23
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -2
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 4096, i16* %type_attrs33, align 2, !tbaa !25
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %27 = load double, double* %x34, align 8, !tbaa !42
  %conv35 = fptrunc double %27 to float
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 1
  %realval38 = bitcast %union.v* %value37 to float*
  store float %conv35, float* %realval38, align 4, !tbaa !23
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr39, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  store i16 4096, i16* %type_attrs41, align 2, !tbaa !25
  %q42 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q42, i32 0, i32 1
  %30 = load double, double* %y43, align 8, !tbaa !43
  %conv44 = fptrunc double %30 to float
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %realval46 = bitcast %union.v* %value45 to float*
  store float %conv44, float* %realval46, align 4, !tbaa !23
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 4096, i16* %type_attrs48, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.12, %if.then.6, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 32, i8* %34) #2
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zpathbbox(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %6 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
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
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !35
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !25
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @z1pathbbox(%struct.gs_context_state_s* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  %cmp8 = icmp slt i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !5
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr13, %struct.ref_s** %p12, align 8, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %do.end
  %16 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @path_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum = alloca %struct.gs_path_enum_s*, align 8
  %ppts = alloca [3 x %struct.gs_point_s], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !26
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %4, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %5 = bitcast [3 x %struct.gs_point_s]* %ppts to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack1 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 6, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  %call = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* %12, %struct.gs_point_s* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.30
    i32 4, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !26
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !26
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call10 = call i32 @path_cleanup(%struct.gs_context_state_s* %16) #4
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %if.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 2
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !26
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -4
  %22 = bitcast %struct.ref_s* %arrayidx to i8*
  %23 = bitcast %struct.ref_s* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !44
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  call void @pf_push(%struct.gs_context_state_s* %24, %struct.gs_point_s* %arraydecay19, i32 1) #4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !26
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 2
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !26
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -3
  %29 = bitcast %struct.ref_s* %arrayidx24 to i8*
  %30 = bitcast %struct.ref_s* %arrayidx28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !44
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay29 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  call void @pf_push(%struct.gs_context_state_s* %31, %struct.gs_point_s* %arraydecay29, i32 1) #4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack32 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack31, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !26
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 2
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !26
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -2
  %36 = bitcast %struct.ref_s* %arrayidx34 to i8*
  %37 = bitcast %struct.ref_s* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !tbaa.struct !44
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay39 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  call void @pf_push(%struct.gs_context_state_s* %38, %struct.gs_point_s* %arraydecay39, i32 3) #4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p43, align 8, !tbaa !26
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 2
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !26
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  %43 = bitcast %struct.ref_s* %arrayidx44 to i8*
  %44 = bitcast %struct.ref_s* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false), !tbaa.struct !44
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.40, %sw.bb.30, %sw.bb.20, %sw.bb.11
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !26
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p51, align 8, !tbaa !26
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack53 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 0
  %p54 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack53, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p54, align 8, !tbaa !26
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %opproc = bitcast %union.v* %value55 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @path_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack57 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack56, i32 0, i32 0
  %p58 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack57, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p58, align 8, !tbaa !26
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !25
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !26
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !32
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 25
  %stack64 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack63, i32 0, i32 0
  %p65 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack64, i32 0, i32 0
  %54 = load %struct.ref_s*, %struct.ref_s** %p65, align 8, !tbaa !26
  %incdec.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 1
  store %struct.ref_s* %incdec.ptr66, %struct.ref_s** %p65, align 8, !tbaa !26
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb, %if.then
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast [3 x %struct.gs_point_s]* %ppts to i8*
  call void @llvm.lifetime.end(i64 48, i8* %56) #2
  %57 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare i32 @num_params(%struct.ref_s*, i32, double*) #1

declare i32 @gs_arcto(%struct.gs_state_s*, double, double, double, double, double, float*) #1

declare i32 @gs_clippath(%struct.gs_state_s*) #1

declare i32 @gs_dashpath(%struct.gs_state_s*) #1

declare i32 @gs_flattenpath(%struct.gs_state_s*) #1

declare i32 @check_proc_failed(%struct.ref_s*) #1

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #1

declare %struct.gs_path_enum_s* @gs_path_enum_alloc(%struct.gs_memory_s*, i8*) #1

declare i32 @gs_path_enum_copy_init(%struct.gs_memory_s*, %struct.gs_path_enum_s*, %struct.gs_state_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @path_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum = alloca %struct.gs_path_enum_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !26
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %4, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %5 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  call void @gs_path_enum_cleanup(%struct.gs_path_enum_s* %5) #4
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !28
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8, !tbaa !1
  %14 = bitcast %struct.gs_path_enum_s* %13 to i8*
  call void %9(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)) #4
  %15 = bitcast %struct.gs_path_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @gs_path_enum_cleanup(%struct.gs_path_enum_s*) #1

declare i32 @gs_reversepath(%struct.gs_state_s*) #1

declare i32 @gs_strokepath(%struct.gs_state_s*) #1

declare i32 @check_type_failed(%struct.ref_s*) #1

declare i32 @gs_upathbbox(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #1

declare i32 @gs_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @pf_push(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_point_s* %ppts, i32 %n) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ppts.addr = alloca %struct.gs_point_s*, align 8
  %n.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppts, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %n.addr, align 4, !tbaa !19
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %5 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 0
  %6 = load double, double* %x, align 8, !tbaa !46
  %conv = fptrunc double %6 to float
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv, float* %realval, align 4, !tbaa !23
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !25
  %9 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !47
  %conv3 = fptrunc double %10 to float
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  store float %conv3, float* %realval5, align 4, !tbaa !23
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 4096, i16* %type_attrs7, align 2, !tbaa !25
  %13 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 1
  store %struct.gs_point_s* %incdec.ptr, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  store %struct.ref_s* %14, %struct.ref_s** %p10, align 8, !tbaa !5
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

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
!20 = !{!6, !2, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !3, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !3, i64 0}
!25 = !{!10, !12, i64 0}
!26 = !{!6, !2, i64 520}
!27 = !{!6, !2, i64 536}
!28 = !{!6, !2, i64 8}
!29 = !{!30, !2, i64 24}
!30 = !{!"gs_memory_s", !2, i64 0, !31, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!31 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!10, !9, i64 4}
!33 = !{!7, !9, i64 48}
!34 = !{!3, !3, i64 0}
!35 = !{!12, !12, i64 0}
!36 = !{!6, !2, i64 640}
!37 = !{!6, !9, i64 688}
!38 = !{!39, !22, i64 0}
!39 = !{!"gs_rect_s", !40, i64 0, !40, i64 16}
!40 = !{!"gs_point_s", !22, i64 0, !22, i64 8}
!41 = !{!39, !22, i64 8}
!42 = !{!39, !22, i64 16}
!43 = !{!39, !22, i64 24}
!44 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 4, i64 4, !19, i64 8, i64 8, !45, i64 8, i64 2, !35, i64 8, i64 4, !23, i64 8, i64 8, !45, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !45}
!45 = !{!13, !13, i64 0}
!46 = !{!40, !22, i64 0}
!47 = !{!40, !22, i64 8}
