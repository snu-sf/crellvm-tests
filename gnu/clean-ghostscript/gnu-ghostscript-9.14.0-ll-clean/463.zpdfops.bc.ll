; ModuleID = './zpdfops.bc'
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

@.str = private unnamed_addr constant [13 x i8] c"0.pdfinkpath\00", align 1
@zpdfops_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpdfinkpath }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @zpdfinkpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %optr = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %ocount = alloca i32, align 4
  %code = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %xc1 = alloca double, align 8
  %yc1 = alloca double, align 8
  %xc2 = alloca double, align 8
  %yc2 = alloca double, align 8
  %xc3 = alloca double, align 8
  %yc3 = alloca double, align 8
  %len1 = alloca double, align 8
  %len2 = alloca double, align 8
  %len3 = alloca double, align 8
  %k1 = alloca double, align 8
  %k2 = alloca double, align 8
  %xm1 = alloca double, align 8
  %ym1 = alloca double, align 8
  %xm2 = alloca double, align 8
  %ym2 = alloca double, align 8
  %ctrl1_x = alloca double, align 8
  %ctrl1_y = alloca double, align 8
  %ctrl2_x = alloca double, align 8
  %ctrl2_y = alloca double, align 8
  %smooth_value = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %optr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %3, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack2) #4
  store i32 %call, i32* %count, align 4, !tbaa !19
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast double* %xc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast double* %yc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast double* %xc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast double* %yc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast double* %xc3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast double* %yc3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast double* %len1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast double* %len2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast double* %len3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast double* %k1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast double* %k2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast double* %xm1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast double* %ym1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast double* %xm2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast double* %ym2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast double* %ctrl1_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = bitcast double* %ctrl1_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast double* %ctrl2_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast double* %ctrl2_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast double* %smooth_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store double 1.000000e+00, double* %smooth_value, align 8, !tbaa !20
  %37 = load i32, i32* %count, align 4, !tbaa !19
  %cmp = icmp eq i32 %37, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %38 = load i32, i32* %count, align 4, !tbaa !19
  %and = and i32 %38, 1
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %39 = load i32, i32* %count, align 4, !tbaa !19
  %cmp4 = icmp ult i32 %39, 3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %40 = load i32, i32* %count, align 4, !tbaa !19
  %sub = sub i32 %40, 1
  store i32 %sub, i32* %ocount, align 4, !tbaa !19
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %42 = load i32, i32* %ocount, align 4, !tbaa !19
  %idx.ext = zext i32 %42 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %idx.neg
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 1
  store %struct.ref_s* %add.ptr7, %struct.ref_s** %optr, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %call8 = call i32 @real_param(%struct.ref_s* %43, double* %x1) #4
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %44 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %45 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1
  %call13 = call i32 @real_param(%struct.ref_s* %add.ptr12, double* %y1) #4
  store i32 %call13, i32* %code, align 4, !tbaa !19
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %46 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %49 = load double, double* %x1, align 8, !tbaa !20
  %50 = load double, double* %y1, align 8, !tbaa !20
  %call17 = call i32 @gs_moveto(%struct.gs_state_s* %48, double %49, double %50) #4
  store i32 %call17, i32* %code, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %51 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %52 = load i32, i32* %ocount, align 4, !tbaa !19
  %cmp21 = icmp eq i32 %52, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %pop

if.end.23:                                        ; preds = %if.end.20
  %53 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 2
  %call25 = call i32 @real_param(%struct.ref_s* %add.ptr24, double* %x2) #4
  store i32 %call25, i32* %code, align 4, !tbaa !19
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %54 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.23
  %55 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 3
  %call30 = call i32 @real_param(%struct.ref_s* %add.ptr29, double* %y2) #4
  store i32 %call30, i32* %code, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %56 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.28
  %57 = load i32, i32* %ocount, align 4, !tbaa !19
  %cmp34 = icmp eq i32 %57, 4
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.end.33
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 0
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs36, align 8, !tbaa !22
  %60 = load double, double* %x2, align 8, !tbaa !20
  %61 = load double, double* %y2, align 8, !tbaa !20
  %call37 = call i32 @gs_lineto(%struct.gs_state_s* %59, double %60, double %61) #4
  store i32 %call37, i32* %code, align 4, !tbaa !19
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  %62 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.then.35
  br label %pop

if.end.41:                                        ; preds = %if.end.33
  %63 = load double, double* %x1, align 8, !tbaa !20
  %mul = fmul double 2.000000e+00, %63
  %64 = load double, double* %x2, align 8, !tbaa !20
  %sub42 = fsub double %mul, %64
  store double %sub42, double* %x0, align 8, !tbaa !20
  %65 = load double, double* %y1, align 8, !tbaa !20
  %mul43 = fmul double 2.000000e+00, %65
  %66 = load double, double* %y2, align 8, !tbaa !20
  %sub44 = fsub double %mul43, %66
  store double %sub44, double* %y0, align 8, !tbaa !20
  store i32 4, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %67 = load i32, i32* %i, align 4, !tbaa !19
  %68 = load i32, i32* %ocount, align 4, !tbaa !19
  %cmp45 = icmp ule i32 %67, %68
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4, !tbaa !19
  %70 = load i32, i32* %ocount, align 4, !tbaa !19
  %cmp46 = icmp ult i32 %69, %70
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %for.body
  %71 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %72 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext48 = zext i32 %72 to i64
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 %idx.ext48
  %call50 = call i32 @real_param(%struct.ref_s* %add.ptr49, double* %x3) #4
  store i32 %call50, i32* %code, align 4, !tbaa !19
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.47
  %73 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.47
  %74 = load %struct.ref_s*, %struct.ref_s** %optr, align 8, !tbaa !1
  %75 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext54 = zext i32 %75 to i64
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 %idx.ext54
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr55, i64 1
  %call57 = call i32 @real_param(%struct.ref_s* %add.ptr56, double* %y3) #4
  store i32 %call57, i32* %code, align 4, !tbaa !19
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.53
  %76 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.53
  br label %if.end.65

if.else:                                          ; preds = %for.body
  %77 = load double, double* %x2, align 8, !tbaa !20
  %mul61 = fmul double 2.000000e+00, %77
  %78 = load double, double* %x1, align 8, !tbaa !20
  %sub62 = fsub double %mul61, %78
  store double %sub62, double* %x3, align 8, !tbaa !20
  %79 = load double, double* %y2, align 8, !tbaa !20
  %mul63 = fmul double 2.000000e+00, %79
  %80 = load double, double* %y1, align 8, !tbaa !20
  %sub64 = fsub double %mul63, %80
  store double %sub64, double* %y3, align 8, !tbaa !20
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.end.60
  %81 = load double, double* %x0, align 8, !tbaa !20
  %82 = load double, double* %x1, align 8, !tbaa !20
  %add = fadd double %81, %82
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %xc1, align 8, !tbaa !20
  %83 = load double, double* %y0, align 8, !tbaa !20
  %84 = load double, double* %y1, align 8, !tbaa !20
  %add66 = fadd double %83, %84
  %div67 = fdiv double %add66, 2.000000e+00
  store double %div67, double* %yc1, align 8, !tbaa !20
  %85 = load double, double* %x1, align 8, !tbaa !20
  %86 = load double, double* %x2, align 8, !tbaa !20
  %add68 = fadd double %85, %86
  %div69 = fdiv double %add68, 2.000000e+00
  store double %div69, double* %xc2, align 8, !tbaa !20
  %87 = load double, double* %y1, align 8, !tbaa !20
  %88 = load double, double* %y2, align 8, !tbaa !20
  %add70 = fadd double %87, %88
  %div71 = fdiv double %add70, 2.000000e+00
  store double %div71, double* %yc2, align 8, !tbaa !20
  %89 = load double, double* %x2, align 8, !tbaa !20
  %90 = load double, double* %x3, align 8, !tbaa !20
  %add72 = fadd double %89, %90
  %div73 = fdiv double %add72, 2.000000e+00
  store double %div73, double* %xc3, align 8, !tbaa !20
  %91 = load double, double* %y2, align 8, !tbaa !20
  %92 = load double, double* %y3, align 8, !tbaa !20
  %add74 = fadd double %91, %92
  %div75 = fdiv double %add74, 2.000000e+00
  store double %div75, double* %yc3, align 8, !tbaa !20
  %93 = load double, double* %x1, align 8, !tbaa !20
  %94 = load double, double* %x0, align 8, !tbaa !20
  %sub76 = fsub double %93, %94
  %95 = load double, double* %x1, align 8, !tbaa !20
  %96 = load double, double* %x0, align 8, !tbaa !20
  %sub77 = fsub double %95, %96
  %mul78 = fmul double %sub76, %sub77
  %97 = load double, double* %y1, align 8, !tbaa !20
  %98 = load double, double* %y0, align 8, !tbaa !20
  %sub79 = fsub double %97, %98
  %99 = load double, double* %y1, align 8, !tbaa !20
  %100 = load double, double* %y0, align 8, !tbaa !20
  %sub80 = fsub double %99, %100
  %mul81 = fmul double %sub79, %sub80
  %add82 = fadd double %mul78, %mul81
  %call83 = call double @sqrt(double %add82) #5
  store double %call83, double* %len1, align 8, !tbaa !20
  %101 = load double, double* %x2, align 8, !tbaa !20
  %102 = load double, double* %x1, align 8, !tbaa !20
  %sub84 = fsub double %101, %102
  %103 = load double, double* %x2, align 8, !tbaa !20
  %104 = load double, double* %x1, align 8, !tbaa !20
  %sub85 = fsub double %103, %104
  %mul86 = fmul double %sub84, %sub85
  %105 = load double, double* %y2, align 8, !tbaa !20
  %106 = load double, double* %y1, align 8, !tbaa !20
  %sub87 = fsub double %105, %106
  %107 = load double, double* %y2, align 8, !tbaa !20
  %108 = load double, double* %y1, align 8, !tbaa !20
  %sub88 = fsub double %107, %108
  %mul89 = fmul double %sub87, %sub88
  %add90 = fadd double %mul86, %mul89
  %call91 = call double @sqrt(double %add90) #5
  store double %call91, double* %len2, align 8, !tbaa !20
  %109 = load double, double* %x3, align 8, !tbaa !20
  %110 = load double, double* %x2, align 8, !tbaa !20
  %sub92 = fsub double %109, %110
  %111 = load double, double* %x3, align 8, !tbaa !20
  %112 = load double, double* %x2, align 8, !tbaa !20
  %sub93 = fsub double %111, %112
  %mul94 = fmul double %sub92, %sub93
  %113 = load double, double* %y3, align 8, !tbaa !20
  %114 = load double, double* %y2, align 8, !tbaa !20
  %sub95 = fsub double %113, %114
  %115 = load double, double* %y3, align 8, !tbaa !20
  %116 = load double, double* %y2, align 8, !tbaa !20
  %sub96 = fsub double %115, %116
  %mul97 = fmul double %sub95, %sub96
  %add98 = fadd double %mul94, %mul97
  %call99 = call double @sqrt(double %add98) #5
  store double %call99, double* %len3, align 8, !tbaa !20
  %117 = load double, double* %len1, align 8, !tbaa !20
  %118 = load double, double* %len1, align 8, !tbaa !20
  %119 = load double, double* %len2, align 8, !tbaa !20
  %add100 = fadd double %118, %119
  %div101 = fdiv double %117, %add100
  store double %div101, double* %k1, align 8, !tbaa !20
  %120 = load double, double* %len2, align 8, !tbaa !20
  %121 = load double, double* %len2, align 8, !tbaa !20
  %122 = load double, double* %len3, align 8, !tbaa !20
  %add102 = fadd double %121, %122
  %div103 = fdiv double %120, %add102
  store double %div103, double* %k2, align 8, !tbaa !20
  %123 = load double, double* %xc1, align 8, !tbaa !20
  %124 = load double, double* %xc2, align 8, !tbaa !20
  %125 = load double, double* %xc1, align 8, !tbaa !20
  %sub104 = fsub double %124, %125
  %126 = load double, double* %k1, align 8, !tbaa !20
  %mul105 = fmul double %sub104, %126
  %add106 = fadd double %123, %mul105
  store double %add106, double* %xm1, align 8, !tbaa !20
  %127 = load double, double* %yc1, align 8, !tbaa !20
  %128 = load double, double* %yc2, align 8, !tbaa !20
  %129 = load double, double* %yc1, align 8, !tbaa !20
  %sub107 = fsub double %128, %129
  %130 = load double, double* %k1, align 8, !tbaa !20
  %mul108 = fmul double %sub107, %130
  %add109 = fadd double %127, %mul108
  store double %add109, double* %ym1, align 8, !tbaa !20
  %131 = load double, double* %xc2, align 8, !tbaa !20
  %132 = load double, double* %xc3, align 8, !tbaa !20
  %133 = load double, double* %xc2, align 8, !tbaa !20
  %sub110 = fsub double %132, %133
  %134 = load double, double* %k2, align 8, !tbaa !20
  %mul111 = fmul double %sub110, %134
  %add112 = fadd double %131, %mul111
  store double %add112, double* %xm2, align 8, !tbaa !20
  %135 = load double, double* %yc2, align 8, !tbaa !20
  %136 = load double, double* %yc3, align 8, !tbaa !20
  %137 = load double, double* %yc2, align 8, !tbaa !20
  %sub113 = fsub double %136, %137
  %138 = load double, double* %k2, align 8, !tbaa !20
  %mul114 = fmul double %sub113, %138
  %add115 = fadd double %135, %mul114
  store double %add115, double* %ym2, align 8, !tbaa !20
  %139 = load double, double* %xm1, align 8, !tbaa !20
  %140 = load double, double* %xc2, align 8, !tbaa !20
  %141 = load double, double* %xm1, align 8, !tbaa !20
  %sub116 = fsub double %140, %141
  %mul117 = fmul double %sub116, 1.000000e+00
  %add118 = fadd double %139, %mul117
  %142 = load double, double* %x1, align 8, !tbaa !20
  %add119 = fadd double %add118, %142
  %143 = load double, double* %xm1, align 8, !tbaa !20
  %sub120 = fsub double %add119, %143
  store double %sub120, double* %ctrl1_x, align 8, !tbaa !20
  %144 = load double, double* %ym1, align 8, !tbaa !20
  %145 = load double, double* %yc2, align 8, !tbaa !20
  %146 = load double, double* %ym1, align 8, !tbaa !20
  %sub121 = fsub double %145, %146
  %mul122 = fmul double %sub121, 1.000000e+00
  %add123 = fadd double %144, %mul122
  %147 = load double, double* %y1, align 8, !tbaa !20
  %add124 = fadd double %add123, %147
  %148 = load double, double* %ym1, align 8, !tbaa !20
  %sub125 = fsub double %add124, %148
  store double %sub125, double* %ctrl1_y, align 8, !tbaa !20
  %149 = load double, double* %xm2, align 8, !tbaa !20
  %150 = load double, double* %xc2, align 8, !tbaa !20
  %151 = load double, double* %xm2, align 8, !tbaa !20
  %sub126 = fsub double %150, %151
  %mul127 = fmul double %sub126, 1.000000e+00
  %add128 = fadd double %149, %mul127
  %152 = load double, double* %x2, align 8, !tbaa !20
  %add129 = fadd double %add128, %152
  %153 = load double, double* %xm2, align 8, !tbaa !20
  %sub130 = fsub double %add129, %153
  store double %sub130, double* %ctrl2_x, align 8, !tbaa !20
  %154 = load double, double* %ym2, align 8, !tbaa !20
  %155 = load double, double* %yc2, align 8, !tbaa !20
  %156 = load double, double* %ym2, align 8, !tbaa !20
  %sub131 = fsub double %155, %156
  %mul132 = fmul double %sub131, 1.000000e+00
  %add133 = fadd double %154, %mul132
  %157 = load double, double* %y2, align 8, !tbaa !20
  %add134 = fadd double %add133, %157
  %158 = load double, double* %ym2, align 8, !tbaa !20
  %sub135 = fsub double %add134, %158
  store double %sub135, double* %ctrl2_y, align 8, !tbaa !20
  %159 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs136 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %159, i32 0, i32 0
  %160 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs136, align 8, !tbaa !22
  %161 = load double, double* %ctrl1_x, align 8, !tbaa !20
  %162 = load double, double* %ctrl1_y, align 8, !tbaa !20
  %163 = load double, double* %ctrl2_x, align 8, !tbaa !20
  %164 = load double, double* %ctrl2_y, align 8, !tbaa !20
  %165 = load double, double* %x2, align 8, !tbaa !20
  %166 = load double, double* %y2, align 8, !tbaa !20
  %call137 = call i32 @gs_curveto(%struct.gs_state_s* %160, double %161, double %162, double %163, double %164, double %165, double %166) #4
  store i32 %call137, i32* %code, align 4, !tbaa !19
  %167 = load i32, i32* %code, align 4, !tbaa !19
  %cmp138 = icmp slt i32 %167, 0
  br i1 %cmp138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.65
  %168 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %168, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %if.end.65
  %169 = load double, double* %x1, align 8, !tbaa !20
  store double %169, double* %x0, align 8, !tbaa !20
  %170 = load double, double* %x2, align 8, !tbaa !20
  store double %170, double* %x1, align 8, !tbaa !20
  %171 = load double, double* %x3, align 8, !tbaa !20
  store double %171, double* %x2, align 8, !tbaa !20
  %172 = load double, double* %y1, align 8, !tbaa !20
  store double %172, double* %y0, align 8, !tbaa !20
  %173 = load double, double* %y2, align 8, !tbaa !20
  store double %173, double* %y1, align 8, !tbaa !20
  %174 = load double, double* %y3, align 8, !tbaa !20
  store double %174, double* %y2, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %if.end.140
  %175 = load i32, i32* %i, align 4, !tbaa !19
  %add141 = add i32 %175, 2
  store i32 %add141, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %pop

pop:                                              ; preds = %for.end, %if.end.40, %if.then.22
  %176 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %176, i32 0, i32 26
  %stack143 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack142, i32 0, i32 0
  %177 = load i32, i32* %count, align 4, !tbaa !19
  call void @ref_stack_pop(%struct.ref_stack_s* %stack143, i32 %177) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %pop, %if.then.139, %if.then.59, %if.then.52, %if.then.39, %if.then.32, %if.then.27, %if.then.19, %if.then.15, %if.then.10, %if.then.5, %if.then
  %178 = bitcast double* %smooth_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast double* %ctrl2_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast double* %ctrl2_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast double* %ctrl1_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast double* %ctrl1_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast double* %ym2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast double* %xm2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast double* %ym1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast double* %xm1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast double* %k2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast double* %k1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast double* %len3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast double* %len2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast double* %len1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast double* %yc3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast double* %xc3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast double* %yc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast double* %xc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast double* %yc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast double* %xc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast %struct.ref_s** %optr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = load i32, i32* %retval
  ret i32 %212
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare i32 @gs_curveto(%struct.gs_state_s*, double, double, double, double, double, double) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !3, i64 0}
!22 = !{!6, !2, i64 0}
