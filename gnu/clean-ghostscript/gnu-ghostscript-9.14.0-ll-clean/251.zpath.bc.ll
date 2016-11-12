; ModuleID = './zpath.bc'
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
%struct.gs_point_s = type { double, double }

@.str = private unnamed_addr constant [6 x i8] c"0clip\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0closepath\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"0currentpoint\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"6curveto\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0eoclip\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0initclip\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"2lineto\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"2moveto\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"0newpath\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"6rcurveto\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"2rlineto\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"2rmoveto\00", align 1
@zpath_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclip }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclosepath }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentpoint }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurveto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zeoclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinitclip }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlineto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmoveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znewpath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrcurveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrlineto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrmoveto }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define i32 @zmoveto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_to(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_moveto) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @common_to(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double, double)* %add_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %add_proc.addr = alloca i32 (%struct.gs_state_s*, double, double)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opxy = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double, double)* %add_proc, i32 (%struct.gs_state_s*, double, double)** %add_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [2 x double]* %opxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 2, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32 (%struct.gs_state_s*, double, double)*, i32 (%struct.gs_state_s*, double, double)** %add_proc.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 0
  %9 = load double, double* %arrayidx, align 8, !tbaa !21
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %opxy, i32 0, i64 1
  %10 = load double, double* %arrayidx1, align 8, !tbaa !21
  %call2 = call i32 %6(%struct.gs_state_s* %8, double %9, double %10) #3
  store i32 %call2, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast [2 x double]* %opxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #2
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrmoveto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_to(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_rmoveto) #3
  ret i32 %call
}

declare i32 @gs_rmoveto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zlineto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_to(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_lineto) #3
  ret i32 %call
}

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrlineto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_to(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_rlineto) #3
  ret i32 %call
}

declare i32 @gs_rlineto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurveto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_curve(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* @gs_curveto) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @common_curve(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* %add_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %add_proc.addr = alloca i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %opxy = alloca [6 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, double, double, double, double, double, double)* %add_proc, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %add_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [6 x double]* %opxy to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %5, i32 6, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %add_proc.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 0
  %10 = load double, double* %arrayidx, align 8, !tbaa !21
  %arrayidx1 = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 1
  %11 = load double, double* %arrayidx1, align 8, !tbaa !21
  %arrayidx2 = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 2
  %12 = load double, double* %arrayidx2, align 8, !tbaa !21
  %arrayidx3 = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 3
  %13 = load double, double* %arrayidx3, align 8, !tbaa !21
  %arrayidx4 = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 4
  %14 = load double, double* %arrayidx4, align 8, !tbaa !21
  %arrayidx5 = getelementptr inbounds [6 x double], [6 x double]* %opxy, i32 0, i64 5
  %15 = load double, double* %arrayidx5, align 8, !tbaa !21
  %call6 = call i32 %7(%struct.gs_state_s* %9, double %10, double %11, double %12, double %13, double %14, double %15) #3
  store i32 %call6, i32* %code, align 4, !tbaa !19
  %16 = load i32, i32* %code, align 4, !tbaa !19
  %cmp7 = icmp sge i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p11, align 8, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast [6 x double]* %opxy to i8*
  call void @llvm.lifetime.end(i64 48, i8* %21) #2
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_curveto(%struct.gs_state_s*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrcurveto(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @common_curve(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* @gs_rcurveto) #3
  ret i32 %call
}

declare i32 @gs_rcurveto(%struct.gs_state_s*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zclosepath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_closepath(%struct.gs_state_s* %1) #3
  ret i32 %call
}

declare i32 @gs_closepath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_clip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentpoint(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
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
  %3 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_currentpoint(%struct.gs_state_s* %6, %struct.gs_point_s* %pt) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %7 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %11
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %13, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !25
  %conv = fptrunc double %15 to float
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv, float* %realval, align 4, !tbaa !27
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !29
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %18 = load double, double* %y, align 8, !tbaa !30
  %conv13 = fptrunc double %18 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %realval15 = bitcast %union.v* %value14 to float*
  store float %conv13, float* %realval15, align 4, !tbaa !27
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 4096, i16* %type_attrs17, align 2, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #2
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zeoclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_eoclip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_initclip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @znewpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !20
  %call = call i32 @gs_newpath(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_clip(%struct.gs_state_s*) #1

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #1

declare i32 @gs_eoclip(%struct.gs_state_s*) #1

declare i32 @gs_initclip(%struct.gs_state_s*) #1

declare i32 @gs_newpath(%struct.gs_state_s*) #1

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
!20 = !{!6, !2, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !3, i64 0}
!23 = !{!6, !2, i64 640}
!24 = !{!6, !9, i64 688}
!25 = !{!26, !22, i64 0}
!26 = !{!"gs_point_s", !22, i64 0, !22, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!10, !12, i64 0}
!30 = !{!26, !22, i64 8}
