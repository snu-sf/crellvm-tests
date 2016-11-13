; ModuleID = './zfilter2.bc'
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
%struct.stream_PDiff_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i8, i32, i32, [60 x i32] }
%struct.stream_PNGP_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i8, i32, i8*, i32, i64, [512 x i8] }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.stream_LZW_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { %struct.lzw_decode_s* }
%struct.lzw_decode_s = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@s_PDiffE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"2CCITTFaxEncode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"1LZWEncode\00", align 1
@zfilter2_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zCFE }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zLZWE }, %struct.op_def zeroinitializer], align 16
@s_CFE_template = external constant %struct.stream_template_s, align 8
@s_LZWE_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define i32 @filter_write_predictor(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, %struct.stream_template_s* %templat, %struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %predictor = alloca i32, align 4
  %code = alloca i32, align 4
  %pds = alloca %struct.stream_PDiff_state_s, align 8
  %pps = alloca %struct.stream_PNGP_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %rtarget = alloca %struct.ref_s, align 8
  %rdict = alloca %struct.ref_s, align 8
  %code19 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.start(i64 376, i8* %5) #1
  %6 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.start(i64 672, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i32 15, i32 1, i32* %predictor) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %predictor, align 4, !tbaa !5
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb.5
    i32 10, label %sw.bb.7
    i32 11, label %sw.bb.7
    i32 12, label %sw.bb.7
    i32 13, label %sw.bb.7
    i32 14, label %sw.bb.7
    i32 15, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %predictor, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @zpd_setup(%struct.ref_s* %13, %struct.stream_PDiff_state_s* %pds) #3
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call8 = call i32 @zpp_setup(%struct.ref_s* %14, %struct.stream_PNGP_state_s* %pps) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.5, %sw.bb, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.epilog
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.12:                                        ; preds = %sw.epilog
  br label %if.end.13

if.else:                                          ; preds = %entry
  store i32 1, i32* %predictor, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.12
  %17 = load i32, i32* %predictor, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %17, 1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %20 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %21 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call17 = call i32 @filter_write(%struct.gs_context_state_s* %18, i32 %19, %struct.stream_template_s* %20, %struct.stream_state_s* %21, i32 0) #3
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.18:                                        ; preds = %if.end.13
  %22 = bitcast %struct.ref_s* %rtarget to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %26 = bitcast %struct.ref_s* %rtarget to i8*
  %27 = bitcast %struct.ref_s* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !21
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %rdict to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !21
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %32 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %33 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %34 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call20 = call i32 @filter_write(%struct.gs_context_state_s* %31, i32 %32, %struct.stream_template_s* %33, %struct.stream_state_s* %34, i32 0) #3
  store i32 %call20, i32* %code19, align 4, !tbaa !5
  %35 = load i32, i32* %code19, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %35, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %36 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !7
  store %struct.ref_s* %38, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = load i32, i32* %predictor, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %39, 2
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %41 = bitcast %struct.stream_PDiff_state_s* %pds to %struct.stream_state_s*
  %call30 = call i32 @filter_write(%struct.gs_context_state_s* %40, i32 0, %struct.stream_template_s* @s_PDiffE_template, %struct.stream_state_s* %41, i32 0) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = bitcast %struct.stream_PNGP_state_s* %pps to %struct.stream_state_s*
  %call31 = call i32 @filter_write(%struct.gs_context_state_s* %42, i32 0, %struct.stream_template_s* @s_PNGPE_template, %struct.stream_state_s* %43, i32 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call30, %cond.true ], [ %call31, %cond.false ]
  store i32 %cond, i32* %code19, align 4, !tbaa !5
  %44 = load i32, i32* %code19, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %44, 0
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %cond.end
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p37, align 8, !tbaa !7
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %48 = bitcast %struct.ref_s* %add.ptr38 to i8*
  %49 = bitcast %struct.ref_s* %rtarget to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false), !tbaa.struct !21
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %51 = bitcast %struct.ref_s* %50 to i8*
  %52 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false), !tbaa.struct !21
  %53 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %cond.end
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @filter_mark_strm_temp(%struct.ref_s* %54, i32 2) #3
  %55 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.34, %if.then.23
  %56 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  %58 = bitcast %struct.ref_s* %rtarget to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  br label %cleanup.42

cleanup.42:                                       ; preds = %cleanup, %if.then.16, %if.then.11, %sw.default, %if.then.4
  %59 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.end(i64 672, i8* %59) #1
  %60 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.end(i64 376, i8* %60) #1
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @zpd_setup(%struct.ref_s*, %struct.stream_PDiff_state_s*) #2

declare i32 @zpp_setup(%struct.ref_s*, %struct.stream_PNGP_state_s*) #2

declare i32 @filter_write(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @filter_mark_strm_temp(%struct.ref_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zCFE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cfs = alloca %struct.stream_CFE_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_CFE_state_s* %cfs to i8*
  call void @llvm.lifetime.start(i64 216, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %11 = load i16, i16* %type_attrs3, align 2, !tbaa !26
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = bitcast %struct.stream_CFE_state_s* %cfs to %struct.stream_CF_state_s*
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !27
  %call7 = call i32 @zcf_setup(%struct.ref_s* %12, %struct.stream_CF_state_s* %13, %struct.gs_ref_memory_s* %15) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = bitcast %struct.stream_CFE_state_s* %cfs to %struct.stream_state_s*
  %call12 = call i32 @filter_write(%struct.gs_context_state_s* %18, i32 0, %struct.stream_template_s* @s_CFE_template, %struct.stream_state_s* %19, i32 0) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.stream_CFE_state_s* %cfs to i8*
  call void @llvm.lifetime.end(i64 216, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zLZWE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %lzs = alloca %struct.stream_LZW_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_LZW_state_s* %lzs to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zlz_setup(%struct.ref_s* %5, %struct.stream_LZW_state_s* %lzs) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_LZW_state_s* %lzs to %struct.stream_state_s*
  %call1 = call i32 @filter_write_predictor(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_LZWE_template, %struct.stream_state_s* %9) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_LZW_state_s* %lzs to i8*
  call void @llvm.lifetime.end(i64 176, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @zcf_setup(%struct.ref_s*, %struct.stream_CF_state_s*, %struct.gs_ref_memory_s*) #2

declare i32 @zlz_setup(%struct.ref_s*, %struct.stream_LZW_state_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 624}
!8 = !{!"gs_context_state_s", !2, i64 0, !9, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!9 = !{!"gs_dual_memory_s", !2, i64 0, !10, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!10 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{i64 0, i64 2, !22, i64 2, i64 2, !22, i64 4, i64 4, !5, i64 8, i64 8, !23, i64 8, i64 2, !22, i64 8, i64 4, !24, i64 8, i64 8, !23, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !23}
!22 = !{!13, !13, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!11, !13, i64 0}
!27 = !{!8, !2, i64 8}
