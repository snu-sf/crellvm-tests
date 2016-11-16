; ModuleID = './zdps.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_image2_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, %struct.gs_state_s*, float, float, float, float, %struct.gx_path_s*, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.igstate_obj_s = type { %struct.ref_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.name_s = type opaque

@.str = private unnamed_addr constant [21 x i8] c"1.currentscreenphase\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"3.setscreenphase\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"1.image2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"0eoviewclip\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"0initviewclip\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0viewclip\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0viewclippath\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"2defineusername\00", align 1
@zdps_op_defs = constant [9 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentscreenphase }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetscreenphase }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimage2 }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zeoviewclip }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinitviewclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zviewclip }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zviewclippath }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdefineusername }, %struct.op_def zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"ImageMatrix\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"XOrigin\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"YOrigin\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PixelCopy\00", align 1
@st_igstate_obj = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"UnpaintedPath\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c".image2 UnpaintedPath\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c".image2\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"defineusername\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"defineusername(new)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"defineusername(old)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentscreenphase(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %phase = alloca %struct.gs_int_point_s, align 4
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
  %3 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp2 = icmp slt i64 %10, -1
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval5 = bitcast %union.v* %value4 to i64*
  %12 = load i64, i64* %intval5, align 8, !tbaa !20
  %cmp6 = icmp sge i64 %12, 2
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %16 = load i64, i64* %intval11, align 8, !tbaa !20
  %conv12 = trunc i64 %16 to i32
  %call13 = call i32 @gs_currentscreenphase(%struct.gs_state_s* %14, %struct.gs_int_point_s* %phase, i32 %conv12) #3
  store i32 %call13, i32* %code, align 4, !tbaa !22
  %17 = load i32, i32* %code, align 4, !tbaa !22
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  %18 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 2
  %21 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp20 = icmp ugt %struct.ref_s* %add.ptr, %21
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  store %struct.ref_s* %23, %struct.ref_s** %p27, align 8, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %25 = load i32, i32* %x, align 4, !tbaa !25
  %conv29 = sext i32 %25 to i64
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 1
  %intval32 = bitcast %union.v* %value31 to i64*
  store i64 %conv29, i64* %intval32, align 8, !tbaa !20
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  store i16 2816, i16* %type_attrs35, align 2, !tbaa !27
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %28 = load i32, i32* %y, align 4, !tbaa !28
  %conv36 = sext i32 %28 to i64
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  store i64 %conv36, i64* %intval38, align 8, !tbaa !20
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 2816, i16* %type_attrs40, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.22, %if.then.16, %if.then.8, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetscreenphase(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
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
  %4 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %11 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx7, align 1, !tbaa !19
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call13 = call i32 @check_type_failed(%struct.ref_s* %arrayidx12) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %15 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 11
  br i1 %cmp19, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.14
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call22 = call i32 @check_type_failed(%struct.ref_s* %17) #3
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %19 = load i64, i64* %intval, align 8, !tbaa !20
  %conv25 = trunc i64 %19 to i32
  store i32 %conv25, i32* %x, align 4, !tbaa !22
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %intval27 = bitcast %union.v* %value26 to i64*
  %21 = load i64, i64* %intval27, align 8, !tbaa !20
  %conv28 = trunc i64 %21 to i32
  store i32 %conv28, i32* %y, align 4, !tbaa !22
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx29, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  %23 = load i64, i64* %intval31, align 8, !tbaa !20
  %cmp32 = icmp slt i64 %23, -1
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  %25 = load i64, i64* %intval36, align 8, !tbaa !20
  %cmp37 = icmp sge i64 %25, 2
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.23
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %lor.lhs.false
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %28 = load i32, i32* %x, align 4, !tbaa !22
  %29 = load i32, i32* %y, align 4, !tbaa !22
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -2
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  %31 = load i64, i64* %intval43, align 8, !tbaa !20
  %conv44 = trunc i64 %31 to i32
  %call45 = call i32 @gs_setscreenphase(%struct.gs_state_s* %27, i32 %28, i32 %29, i32 %conv44) #3
  store i32 %call45, i32* %code, align 4, !tbaa !22
  %32 = load i32, i32* %code, align 4, !tbaa !22
  %cmp46 = icmp sge i32 %32, 0
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.end.40
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack50 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p51, align 8, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.end.40
  %35 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.39, %if.then.21, %if.then.11, %if.then
  %36 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @zimage2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %image = alloca %struct.gs_image2_s, align 8
  %pDataSource = alloca %struct.ref_s*, align 8
  %ignoref = alloca %struct.ref_s*, align 8
  %rupath = alloca %struct.ref_s, align 8
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
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = load i16, i16* %type_attrs3, align 2, !tbaa !27
  %conv4 = zext i16 %10 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = bitcast %struct.gs_image2_s* %image to i8*
  call void @llvm.lifetime.start(i64 72, i8* %11) #1
  %12 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  call void @gs_image2_t_init(%struct.gs_image2_s* %image) #3
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 1
  %call7 = call i32 @dict_matrix_param(%struct.gs_memory_s* %15, %struct.ref_s* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct.gs_matrix_s* %ImageMatrix) #3
  store i32 %call7, i32* %code, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @dict_find_string(%struct.ref_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s** %pDataSource) #3
  store i32 %call10, i32* %code, align 4, !tbaa !22
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.41, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %XOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 3
  %call14 = call i32 @dict_float_param(%struct.ref_s* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double 0.000000e+00, float* %XOrigin) #3
  store i32 %call14, i32* %code, align 4, !tbaa !22
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.41, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %YOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 4
  %call18 = call i32 @dict_float_param(%struct.ref_s* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double 0.000000e+00, float* %YOrigin) #3
  store i32 %call18, i32* %code, align 4, !tbaa !22
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then.41, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 5
  %call22 = call i32 @dict_float_param(%struct.ref_s* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), double 0.000000e+00, float* %Width) #3
  store i32 %call22, i32* %code, align 4, !tbaa !22
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.41, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %Width26 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 5
  %21 = load float, float* %Width26, align 4, !tbaa !30
  %cmp27 = fcmp ole float %21, 0.000000e+00
  br i1 %cmp27, label %if.then.41, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 6
  %call30 = call i32 @dict_float_param(%struct.ref_s* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), double 0.000000e+00, float* %Height) #3
  store i32 %call30, i32* %code, align 4, !tbaa !22
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then.41, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %Height34 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 6
  %23 = load float, float* %Height34, align 4, !tbaa !34
  %cmp35 = fcmp ole float %23, 0.000000e+00
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %PixelCopy = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 8
  %call38 = call i32 @dict_bool_param(%struct.ref_s* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* %PixelCopy) #3
  store i32 %call38, i32* %code, align 4, !tbaa !22
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false, %do.end
  %25 = load i32, i32* %code, align 4, !tbaa !22
  %cmp42 = icmp slt i32 %25, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.41
  %26 = load i32, i32* %code, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.44:                                        ; preds = %lor.lhs.false.37
  %27 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %28 = load i16, i16* %type_attrs46, align 2, !tbaa !27
  %conv47 = zext i16 %28 to i32
  %and48 = and i32 %conv47, 15872
  %cmp49 = icmp eq i32 %and48, 2048
  br i1 %cmp49, label %land.lhs.true, label %if.then.59

land.lhs.true:                                    ; preds = %if.end.44
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current52 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory51, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current52, align 8, !tbaa !29
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %32 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !35
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current54 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current54, align 8, !tbaa !29
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %36 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %pstruct = bitcast %union.v* %value55 to %struct.obj_header_s**
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %call56 = call %struct.gs_memory_struct_type_s* %32(%struct.gs_memory_s* %35, i8* %38) #3
  %cmp57 = icmp eq %struct.gs_memory_struct_type_s* %call56, @st_igstate_obj
  br i1 %cmp57, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true, %if.end.44
  %39 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %call60 = call i32 @check_type_failed(%struct.ref_s* %39) #3
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.61:                                        ; preds = %land.lhs.true
  %40 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %pstruct63 = bitcast %union.v* %value62 to %struct.obj_header_s**
  %41 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct63, align 8, !tbaa !1
  %42 = bitcast %struct.obj_header_s* %41 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %42, i32 0, i32 0
  %value64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct65 = bitcast %union.v* %value64 to %struct.obj_header_s**
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct65, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to %struct.gs_state_s*
  %DataSource = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 2
  store %struct.gs_state_s* %44, %struct.gs_state_s** %DataSource, align 8, !tbaa !38
  %45 = bitcast %struct.ref_s** %ignoref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call66 = call i32 @dict_find_string(%struct.ref_s* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %ignoref) #3
  %cmp67 = icmp sgt i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.61
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %pdict72 = bitcast %union.v* %value71 to %struct.dict_s**
  %48 = load %struct.dict_s*, %struct.dict_s** %pdict72, align 8, !tbaa !1
  %values73 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %48, i32 0, i32 0
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values73, i32 0, i32 0
  %type_attrs75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 0
  %49 = load i16, i16* %type_attrs75, align 2, !tbaa !27
  %conv76 = zext i16 %49 to i32
  %and77 = and i32 %conv76, 16
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %do.body.70
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %do.body.70
  br label %do.cond.81

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current84 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory83, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current84, align 8, !tbaa !29
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %call85 = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #3
  %UnpaintedPath = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  store %struct.gx_path_s* %call85, %struct.gx_path_s** %UnpaintedPath, align 8, !tbaa !39
  %UnpaintedPath86 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath86, align 8, !tbaa !39
  %cmp87 = icmp eq %struct.gx_path_s* %53, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.end.82
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %do.end.82
  br label %if.end.92

if.else:                                          ; preds = %if.end.61
  %UnpaintedPath91 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  store %struct.gx_path_s* null, %struct.gx_path_s** %UnpaintedPath91, align 8, !tbaa !39
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.end.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.92, %if.then.89, %if.then.79
  %54 = bitcast %struct.ref_s** %ignoref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.121 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gs_image2_s* %image to %struct.gs_image_common_s*
  %call93 = call i32 @process_non_source_image(%struct.gs_context_state_s* %55, %struct.gs_image_common_s* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #3
  store i32 %call93, i32* %code, align 4, !tbaa !22
  %UnpaintedPath94 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  %57 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath94, align 8, !tbaa !39
  %tobool95 = icmp ne %struct.gx_path_s* %57, null
  br i1 %tobool95, label %if.then.96, label %if.end.120

if.then.96:                                       ; preds = %cleanup.cont
  %58 = bitcast %struct.ref_s* %rupath to i8*
  call void @llvm.lifetime.start(i64 16, i8* %58) #1
  %59 = load i32, i32* %code, align 4, !tbaa !22
  %cmp97 = icmp slt i32 %59, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.96
  %60 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.100:                                       ; preds = %if.then.96
  %UnpaintedPath101 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath101, align 8, !tbaa !39
  %call102 = call i32 @gx_path_is_null(%struct.gx_path_s* %61) #3
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.end.100
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rupath, i32 0, i32 0
  %type_attrs106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 0
  store i16 3584, i16* %type_attrs106, align 2, !tbaa !27
  br label %if.end.110

if.else.107:                                      ; preds = %if.end.100
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 0
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %UnpaintedPath108 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath108, align 8, !tbaa !39
  %call109 = call i32 @make_upath(%struct.gs_context_state_s* %62, %struct.ref_s* %rupath, %struct.gs_state_s* %64, %struct.gx_path_s* %65, i32 0) #3
  store i32 %call109, i32* %code, align 4, !tbaa !22
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.104
  %UnpaintedPath111 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %image, i32 0, i32 7
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath111, align 8, !tbaa !39
  call void @gx_path_free(%struct.gx_path_s* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #3
  %67 = load i32, i32* %code, align 4, !tbaa !22
  %cmp112 = icmp slt i32 %67, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.110
  %68 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.115:                                       ; preds = %if.end.110
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 24
  %call116 = call i32 @dict_put_string(%struct.ref_s* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s* %rupath, %struct.dict_stack_s* %dict_stack) #3
  store i32 %call116, i32* %code, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %if.end.115, %if.then.114, %if.then.99
  %71 = bitcast %struct.ref_s* %rupath to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %cleanup.dest.118 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.118, label %cleanup.121 [
    i32 0, label %cleanup.cont.119
  ]

cleanup.cont.119:                                 ; preds = %cleanup.117
  br label %if.end.120

if.end.120:                                       ; preds = %cleanup.cont.119, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %if.end.120, %cleanup.117, %cleanup, %if.then.59, %cond.end
  %72 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_image2_s* %image to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #1
  %cleanup.dest.123 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.123, label %cleanup.132 [
    i32 0, label %cleanup.cont.124
  ]

cleanup.cont.124:                                 ; preds = %cleanup.121
  %74 = load i32, i32* %code, align 4, !tbaa !22
  %cmp125 = icmp sge i32 %74, 0
  br i1 %cmp125, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %cleanup.cont.124
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 26
  %stack129 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack128, i32 0, i32 0
  %p130 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack129, i32 0, i32 0
  %76 = load %struct.ref_s*, %struct.ref_s** %p130, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p130, align 8, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.127, %cleanup.cont.124
  %77 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %if.end.131, %cleanup.121, %if.then.5, %if.then
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @zeoviewclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_eoviewclip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitviewclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_initviewclip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zviewclip(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_viewclip(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zviewclippath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @gs_viewclippath(%struct.gs_state_s* %1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zdefineusername(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %uname = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %new_array = alloca %struct.ref_s, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %slmem = alloca %struct.gs_ref_memory_s*, align 8
  %code103 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %uname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end:                                           ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp5 = icmp uge i64 %9, 16777216
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %11 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx11, align 1, !tbaa !19
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %do.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call16 = call i32 @check_type_failed(%struct.ref_s* %13) #3
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.17:                                        ; preds = %do.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !40
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 23
  %16 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !42
  %cmp18 = icmp eq %struct.ref_s* %16, null
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %if.end.17
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %spaces22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 1
  %memories23 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces22, i32 0, i32 1
  %named24 = bitcast %union.anon* %memories23 to %struct._ssn*
  %local25 = getelementptr inbounds %struct._ssn, %struct._ssn* %named24, i32 0, i32 3
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local25, align 8, !tbaa !40
  %names_array26 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 23
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces28 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory27, i32 0, i32 1
  %memories29 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces28, i32 0, i32 1
  %named30 = bitcast %union.anon* %memories29 to %struct._ssn*
  %local31 = getelementptr inbounds %struct._ssn, %struct._ssn* %named30, i32 0, i32 3
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local31, align 8, !tbaa !40
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %call32 = call i32 @create_names_array(%struct.ref_s** %names_array26, %struct.gs_memory_s* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #3
  store i32 %call32, i32* %code, align 4, !tbaa !22
  %23 = load i32, i32* %code, align 4, !tbaa !22
  %cmp33 = icmp slt i32 %23, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.20
  %24 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.35
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.162 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont, %if.end.17
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %spaces40 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 1
  %memories41 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces40, i32 0, i32 1
  %named42 = bitcast %union.anon* %memories41 to %struct._ssn*
  %local43 = getelementptr inbounds %struct._ssn, %struct._ssn* %named42, i32 0, i32 3
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local43, align 8, !tbaa !40
  %names_array44 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 23
  %31 = load %struct.ref_s*, %struct.ref_s** %names_array44, align 8, !tbaa !42
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx45, i32 0, i32 1
  %intval47 = bitcast %union.v* %value46 to i64*
  %33 = load i64, i64* %intval47, align 8, !tbaa !20
  %call48 = call i32 @array_get(%struct.gs_memory_s* %28, %struct.ref_s* %31, i64 %33, %struct.ref_s* %uname) #3
  %cmp49 = icmp sge i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.37
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %uname, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  %34 = bitcast i16* %type_attrs53 to i8*
  %arrayidx54 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx54, align 1, !tbaa !19
  %conv55 = zext i8 %35 to i32
  switch i32 %conv55, label %sw.default [
    i32 14, label %sw.epilog
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.51
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %uname, i32 0, i32 1
  %pname = bitcast %union.v* %value56 to %struct.name_s**
  %36 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %pname58 = bitcast %union.v* %value57 to %struct.name_s**
  %38 = load %struct.name_s*, %struct.name_s** %pname58, align 8, !tbaa !1
  %cmp59 = icmp eq %struct.name_s* %36, %38
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.bb
  br label %ret

if.end.62:                                        ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %if.then.51, %if.end.62
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

sw.epilog:                                        ; preds = %if.then.51
  br label %if.end.145

if.else:                                          ; preds = %if.end.37
  %39 = bitcast %struct.ref_s* %new_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %spaces64 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 1
  %memories65 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces64, i32 0, i32 1
  %named66 = bitcast %union.anon* %memories65 to %struct._ssn*
  %local67 = getelementptr inbounds %struct._ssn, %struct._ssn* %named66, i32 0, i32 3
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local67, align 8, !tbaa !40
  %names_array68 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 23
  %43 = load %struct.ref_s*, %struct.ref_s** %names_array68, align 8, !tbaa !42
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 2
  %44 = load i32, i32* %rsize, align 4, !tbaa !49
  store i32 %44, i32* %old_size, align 4, !tbaa !22
  %45 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx70, i32 0, i32 1
  %intval72 = bitcast %union.v* %value71 to i64*
  %47 = load i64, i64* %intval72, align 8, !tbaa !20
  %conv73 = trunc i64 %47 to i32
  %add = add i32 %conv73, 1
  store i32 %add, i32* %new_size, align 4, !tbaa !22
  %48 = load i32, i32* %new_size, align 4, !tbaa !22
  %cmp74 = icmp ult i32 %48, 100
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else
  store i32 100, i32* %new_size, align 4, !tbaa !22
  br label %if.end.91

if.else.77:                                       ; preds = %if.else
  %49 = load i32, i32* %new_size, align 4, !tbaa !22
  %cmp78 = icmp ugt i32 %49, 8388608
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.77
  store i32 16777216, i32* %new_size, align 4, !tbaa !22
  br label %if.end.90

if.else.81:                                       ; preds = %if.else.77
  %50 = load i32, i32* %new_size, align 4, !tbaa !22
  %shr = lshr i32 %50, 1
  %51 = load i32, i32* %old_size, align 4, !tbaa !22
  %cmp82 = icmp ult i32 %shr, %51
  br i1 %cmp82, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %if.else.81
  %52 = load i32, i32* %old_size, align 4, !tbaa !22
  %cmp85 = icmp ugt i32 %52, 8388608
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  br label %cond.end

cond.false:                                       ; preds = %if.then.84
  %53 = load i32, i32* %old_size, align 4, !tbaa !22
  %shl = shl i32 %53, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16777216, %cond.true ], [ %shl, %cond.false ]
  store i32 %cond, i32* %new_size, align 4, !tbaa !22
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.81
  %54 = load i32, i32* %new_size, align 4, !tbaa !22
  %shl88 = shl i32 %54, 1
  store i32 %shl88, i32* %new_size, align 4, !tbaa !22
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %cond.end
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.80
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.76
  %55 = bitcast %struct.gs_ref_memory_s** %slmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory92 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %spaces93 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory92, i32 0, i32 1
  %memories94 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces93, i32 0, i32 1
  %named95 = bitcast %union.anon* %memories94 to %struct._ssn*
  %local96 = getelementptr inbounds %struct._ssn, %struct._ssn* %named95, i32 0, i32 3
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local96, align 8, !tbaa !40
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %59 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !50
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 1
  %spaces98 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory97, i32 0, i32 1
  %memories99 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces98, i32 0, i32 1
  %named100 = bitcast %union.anon* %memories99 to %struct._ssn*
  %local101 = getelementptr inbounds %struct._ssn, %struct._ssn* %named100, i32 0, i32 3
  %61 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local101, align 8, !tbaa !40
  %62 = bitcast %struct.gs_ref_memory_s* %61 to %struct.gs_memory_s*
  %call102 = call %struct.gs_memory_s* %59(%struct.gs_memory_s* %62) #3
  %63 = bitcast %struct.gs_memory_s* %call102 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %63, %struct.gs_ref_memory_s** %slmem, align 8, !tbaa !1
  %64 = bitcast i32* %code103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %slmem, align 8, !tbaa !1
  %66 = load i32, i32* %new_size, align 4, !tbaa !22
  %call104 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %65, %struct.ref_s* %new_array, i32 112, i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #3
  store i32 %call104, i32* %code103, align 4, !tbaa !22
  %67 = load i32, i32* %code103, align 4, !tbaa !22
  %cmp105 = icmp slt i32 %67, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.91
  %68 = load i32, i32* %code103, align 4, !tbaa !22
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end.108:                                       ; preds = %if.end.91
  %value109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %new_array, i32 0, i32 1
  %refs = bitcast %union.v* %value109 to %struct.ref_s**
  %69 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 1
  %spaces111 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory110, i32 0, i32 1
  %memories112 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces111, i32 0, i32 1
  %named113 = bitcast %union.anon* %memories112 to %struct._ssn*
  %local114 = getelementptr inbounds %struct._ssn, %struct._ssn* %named113, i32 0, i32 3
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local114, align 8, !tbaa !40
  %names_array115 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %71, i32 0, i32 23
  %72 = load %struct.ref_s*, %struct.ref_s** %names_array115, align 8, !tbaa !42
  %value116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  %refs117 = bitcast %union.v* %value116 to %struct.ref_s**
  %73 = load %struct.ref_s*, %struct.ref_s** %refs117, align 8, !tbaa !1
  %74 = load i32, i32* %old_size, align 4, !tbaa !22
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 1
  call void @refcpy_to_new(%struct.ref_s* %69, %struct.ref_s* %73, i32 %74, %struct.gs_dual_memory_s* %memory118) #3
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %new_array, i32 0, i32 1
  %refs120 = bitcast %union.v* %value119 to %struct.ref_s**
  %76 = load %struct.ref_s*, %struct.ref_s** %refs120, align 8, !tbaa !1
  %77 = load i32, i32* %old_size, align 4, !tbaa !22
  %idx.ext = zext i32 %77 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 %idx.ext
  %78 = load i32, i32* %new_size, align 4, !tbaa !22
  %79 = load i32, i32* %old_size, align 4, !tbaa !22
  %sub = sub i32 %78, %79
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 5
  %81 = load i32, i32* %new_mask, align 4, !tbaa !51
  call void @refset_null_new(%struct.ref_s* %add.ptr, i32 %sub, i32 %81) #3
  %82 = load i32, i32* %old_size, align 4, !tbaa !22
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %if.then.122, label %if.end.129

if.then.122:                                      ; preds = %if.end.108
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %slmem, align 8, !tbaa !1
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 1
  %spaces124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 1
  %memories125 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces124, i32 0, i32 1
  %named126 = bitcast %union.anon* %memories125 to %struct._ssn*
  %local127 = getelementptr inbounds %struct._ssn, %struct._ssn* %named126, i32 0, i32 3
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local127, align 8, !tbaa !40
  %names_array128 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %85, i32 0, i32 23
  %86 = load %struct.ref_s*, %struct.ref_s** %names_array128, align 8, !tbaa !42
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %83, %struct.ref_s* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #3
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.122, %if.end.108
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.130

cleanup.130:                                      ; preds = %if.end.129, %if.then.107
  %87 = bitcast i32* %code103 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.gs_ref_memory_s** %slmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest.132 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.132, label %cleanup.140 [
    i32 0, label %cleanup.cont.133
  ]

cleanup.cont.133:                                 ; preds = %cleanup.130
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 1
  %spaces135 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory134, i32 0, i32 1
  %memories136 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces135, i32 0, i32 1
  %named137 = bitcast %union.anon* %memories136 to %struct._ssn*
  %local138 = getelementptr inbounds %struct._ssn, %struct._ssn* %named137, i32 0, i32 3
  %90 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local138, align 8, !tbaa !40
  %names_array139 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %90, i32 0, i32 23
  %91 = load %struct.ref_s*, %struct.ref_s** %names_array139, align 8, !tbaa !42
  %92 = bitcast %struct.ref_s* %91 to i8*
  %93 = bitcast %struct.ref_s* %new_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false), !tbaa.struct !52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %cleanup.cont.133, %cleanup.130
  %94 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast %struct.ref_s* %new_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #1
  %cleanup.dest.143 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.143, label %cleanup.162 [
    i32 0, label %cleanup.cont.144
  ]

cleanup.cont.144:                                 ; preds = %cleanup.140
  br label %if.end.145

if.end.145:                                       ; preds = %cleanup.cont.144, %sw.epilog
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 1
  %spaces147 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory146, i32 0, i32 1
  %memories148 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces147, i32 0, i32 1
  %named149 = bitcast %union.anon* %memories148 to %struct._ssn*
  %local150 = getelementptr inbounds %struct._ssn, %struct._ssn* %named149, i32 0, i32 3
  %98 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local150, align 8, !tbaa !40
  %names_array151 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %98, i32 0, i32 23
  %99 = load %struct.ref_s*, %struct.ref_s** %names_array151, align 8, !tbaa !42
  %value152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 1
  %refs153 = bitcast %union.v* %value152 to %struct.ref_s**
  %100 = load %struct.ref_s*, %struct.ref_s** %refs153, align 8, !tbaa !1
  %101 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 -1
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx154, i32 0, i32 1
  %intval156 = bitcast %union.v* %value155 to i64*
  %102 = load i64, i64* %intval156, align 8, !tbaa !20
  %add.ptr157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 %102
  %103 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %104 = bitcast %struct.ref_s* %add.ptr157 to i8*
  %105 = bitcast %struct.ref_s* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 16, i32 8, i1 false), !tbaa.struct !52
  br label %ret

ret:                                              ; preds = %if.end.145, %if.then.61
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack158 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 26
  %stack159 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack158, i32 0, i32 0
  %p160 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack159, i32 0, i32 0
  %107 = load %struct.ref_s*, %struct.ref_s** %p160, align 8, !tbaa !5
  %add.ptr161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 -2
  store %struct.ref_s* %add.ptr161, %struct.ref_s** %p160, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %ret, %cleanup.140, %sw.default, %cleanup, %if.then.15, %if.then.7, %if.then
  %108 = bitcast %struct.ref_s* %uname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %108) #1
  %109 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_currentscreenphase(%struct.gs_state_s*, %struct.gs_int_point_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_setscreenphase(%struct.gs_state_s*, i32, i32, i32) #2

declare void @gs_image2_t_init(%struct.gs_image2_s*) #2

declare i32 @dict_matrix_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.gs_matrix_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s*, %struct.gs_memory_s*, i8*) #2

declare i32 @process_non_source_image(%struct.gs_context_state_s*, %struct.gs_image_common_s*, i8*) #2

declare i32 @gx_path_is_null(%struct.gx_path_s*) #2

declare i32 @make_upath(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_state_s*, %struct.gx_path_s*, i32) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @gs_eoviewclip(%struct.gs_state_s*) #2

declare i32 @gs_initviewclip(%struct.gs_state_s*) #2

declare i32 @gs_viewclip(%struct.gs_state_s*) #2

declare i32 @gs_viewclippath(%struct.gs_state_s*) #2

declare i32 @create_names_array(%struct.ref_s**, %struct.gs_memory_s*, i8*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare void @refcpy_to_new(%struct.ref_s*, %struct.ref_s*, i32, %struct.gs_dual_memory_s*) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

declare void @gs_free_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!19 = !{!3, !3, i64 0}
!20 = !{!13, !13, i64 0}
!21 = !{!6, !2, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!6, !2, i64 640}
!24 = !{!6, !9, i64 688}
!25 = !{!26, !9, i64 0}
!26 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!27 = !{!10, !12, i64 0}
!28 = !{!26, !9, i64 4}
!29 = !{!6, !2, i64 8}
!30 = !{!31, !33, i64 48}
!31 = !{!"gs_image2_s", !2, i64 0, !32, i64 8, !2, i64 32, !33, i64 40, !33, i64 44, !33, i64 48, !33, i64 52, !2, i64 56, !9, i64 64}
!32 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!33 = !{!"float", !3, i64 0}
!34 = !{!31, !33, i64 52}
!35 = !{!36, !2, i64 128}
!36 = !{!"gs_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!37 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!38 = !{!31, !2, i64 32}
!39 = !{!31, !2, i64 56}
!40 = !{!41, !2, i64 24}
!41 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!42 = !{!43, !2, i64 576}
!43 = !{!"gs_ref_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !44, i64 232, !9, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !45, i64 304, !2, i64 488, !46, i64 496, !13, i64 512, !13, i64 520, !47, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !48, i64 648, !9, i64 672, !3, i64 680}
!44 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!45 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!47 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!48 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!49 = !{!10, !9, i64 4}
!50 = !{!36, !2, i64 32}
!51 = !{!7, !9, i64 68}
!52 = !{i64 0, i64 2, !53, i64 2, i64 2, !53, i64 4, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 2, !53, i64 8, i64 4, !54, i64 8, i64 8, !20, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !20}
!53 = !{!12, !12, i64 0}
!54 = !{!33, !33, i64 0}
