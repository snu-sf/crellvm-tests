; ModuleID = './zchar32.bc'
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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
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
%struct.font_cid_range_t = type { i64, i64, %struct.gs_font_s* }

@.str = private unnamed_addr constant [15 x i8] c"1.getmetrics32\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"4.makeglyph32\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"3.removeglyphs\00", align 1
@zchar32_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetmetrics32 }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmakeglyph32 }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zremoveglyphs }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @zgetmetrics32(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %wop = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 6, i32* %n, align 4, !tbaa !19
  %7 = bitcast %struct.ref_s** %wop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %11 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %13) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %15 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %15, i8** %data, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !22
  store i32 %17, i32* %size, align 4, !tbaa !19
  %18 = load i32, i32* %size, align 4, !tbaa !19
  %cmp8 = icmp ult i32 %18, 5
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.11:                                        ; preds = %if.end
  %19 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx12, align 1, !tbaa !21
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %if.then.13, label %if.else.77

if.then.13:                                       ; preds = %if.end.11
  %21 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx14, align 1, !tbaa !21
  %conv15 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv15, 128
  store i32 %sub, i32* %llx, align 4, !tbaa !19
  %24 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 4
  %26 = load i8, i8* %arrayidx16, align 1, !tbaa !21
  %conv17 = zext i8 %26 to i32
  %sub18 = sub nsw i32 %conv17, 128
  store i32 %sub18, i32* %lly, align 4, !tbaa !19
  store i32 6, i32* %n, align 4, !tbaa !19
  store i32 5, i32* %size, align 4, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 2
  %29 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !23
  %cmp21 = icmp ugt %struct.ref_s* %add.ptr, %29
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 7
  store i32 8, i32* %requested, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  store %struct.ref_s* %31, %struct.ref_s** %p28, align 8, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx30, align 1, !tbaa !21
  %conv31 = zext i8 %34 to i64
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -6
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr32, i32 0, i32 1
  %intval = bitcast %union.v* %value33 to i64*
  store i64 %conv31, i64* %intval, align 8, !tbaa !25
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -6
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 2816, i16* %type_attrs36, align 2, !tbaa !20
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -5
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i32 0, i32 1
  %intval39 = bitcast %union.v* %value38 to i64*
  store i64 0, i64* %intval39, align 8, !tbaa !25
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -5
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  store i16 2816, i16* %type_attrs42, align 2, !tbaa !20
  %39 = load i32, i32* %llx, align 4, !tbaa !19
  %conv43 = sext i32 %39 to i64
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -4
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 1
  %intval46 = bitcast %union.v* %value45 to i64*
  store i64 %conv43, i64* %intval46, align 8, !tbaa !25
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -4
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  store i16 2816, i16* %type_attrs49, align 2, !tbaa !20
  %42 = load i32, i32* %lly, align 4, !tbaa !19
  %conv50 = sext i32 %42 to i64
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -3
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i32 0, i32 1
  %intval53 = bitcast %union.v* %value52 to i64*
  store i64 %conv50, i64* %intval53, align 8, !tbaa !25
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -3
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr54, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  store i16 2816, i16* %type_attrs56, align 2, !tbaa !20
  %45 = load i32, i32* %llx, align 4, !tbaa !19
  %46 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx57, align 1, !tbaa !21
  %conv58 = zext i8 %47 to i32
  %add = add nsw i32 %45, %conv58
  %conv59 = sext i32 %add to i64
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 1
  %intval62 = bitcast %union.v* %value61 to i64*
  store i64 %conv59, i64* %intval62, align 8, !tbaa !25
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr63, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  store i16 2816, i16* %type_attrs65, align 2, !tbaa !20
  %50 = load i32, i32* %lly, align 4, !tbaa !19
  %51 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx66, align 1, !tbaa !21
  %conv67 = zext i8 %52 to i32
  %add68 = add nsw i32 %50, %conv67
  %conv69 = sext i32 %add68 to i64
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr70, i32 0, i32 1
  %intval72 = bitcast %union.v* %value71 to i64*
  store i64 %conv69, i64* %intval72, align 8, !tbaa !25
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr73, i32 0, i32 0
  %type_attrs75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 0
  store i16 2816, i16* %type_attrs75, align 2, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.23
  %55 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.172 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.137

if.else.77:                                       ; preds = %if.end.11
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx78, align 1, !tbaa !21
  %tobool79 = icmp ne i8 %58, 0
  br i1 %tobool79, label %if.then.80, label %if.else.85

if.then.80:                                       ; preds = %if.else.77
  %59 = load i32, i32* %size, align 4, !tbaa !19
  %cmp81 = icmp ult i32 %59, 22
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.84:                                        ; preds = %if.then.80
  store i32 10, i32* %n, align 4, !tbaa !19
  store i32 22, i32* %size, align 4, !tbaa !19
  br label %if.end.90

if.else.85:                                       ; preds = %if.else.77
  %60 = load i32, i32* %size, align 4, !tbaa !19
  %cmp86 = icmp ult i32 %60, 14
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.else.85
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.89:                                        ; preds = %if.else.85
  store i32 6, i32* %n, align 4, !tbaa !19
  store i32 14, i32* %size, align 4, !tbaa !19
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.84
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  %61 = load i32, i32* %n, align 4, !tbaa !19
  %add92 = add nsw i32 2, %61
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = sext i32 %add92 to i64
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 %idx.ext
  store %struct.ref_s* %add.ptr93, %struct.ref_s** %op, align 8, !tbaa !1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %top96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 2
  %64 = load %struct.ref_s*, %struct.ref_s** %top96, align 8, !tbaa !23
  %cmp97 = icmp ugt %struct.ref_s* %add.ptr93, %64
  br i1 %cmp97, label %if.then.99, label %if.else.104

if.then.99:                                       ; preds = %do.body.91
  %65 = load i32, i32* %n, align 4, !tbaa !19
  %add100 = add nsw i32 2, %65
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 26
  %stack102 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack101, i32 0, i32 0
  %requested103 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack102, i32 0, i32 7
  store i32 %add100, i32* %requested103, align 4, !tbaa !24
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.104:                                      ; preds = %do.body.91
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 26
  %stack106 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack105, i32 0, i32 0
  %p107 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 0
  store %struct.ref_s* %67, %struct.ref_s** %p107, align 8, !tbaa !5
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.104
  br label %do.cond.109

do.cond.109:                                      ; preds = %if.end.108
  br label %do.end.110

do.end.110:                                       ; preds = %do.cond.109
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.110
  %69 = load i32, i32* %i, align 4, !tbaa !19
  %70 = load i32, i32* %n, align 4, !tbaa !19
  %cmp111 = icmp slt i32 %69, %70
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %i, align 4, !tbaa !19
  %mul = mul nsw i32 2, %71
  %add113 = add nsw i32 %mul, 2
  %idxprom = sext i32 %add113 to i64
  %72 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %72, i64 %idxprom
  %73 = load i8, i8* %arrayidx114, align 1, !tbaa !21
  %conv115 = zext i8 %73 to i32
  %shl = shl i32 %conv115, 8
  %74 = load i32, i32* %i, align 4, !tbaa !19
  %mul116 = mul nsw i32 2, %74
  %add117 = add nsw i32 %mul116, 3
  %idxprom118 = sext i32 %add117 to i64
  %75 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %75, i64 %idxprom118
  %76 = load i8, i8* %arrayidx119, align 1, !tbaa !21
  %conv120 = zext i8 %76 to i32
  %add121 = add nsw i32 %shl, %conv120
  %xor = xor i32 %add121, 32768
  %sub122 = sub nsw i32 %xor, 32768
  %conv123 = sext i32 %sub122 to i64
  %77 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %78 = load i32, i32* %n, align 4, !tbaa !19
  %idx.ext124 = sext i32 %78 to i64
  %idx.neg = sub i64 0, %idx.ext124
  %add.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 %idx.neg
  %79 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext126 = sext i32 %79 to i64
  %add.ptr127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr125, i64 %idx.ext126
  %value128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr127, i32 0, i32 1
  %intval129 = bitcast %union.v* %value128 to i64*
  store i64 %conv123, i64* %intval129, align 8, !tbaa !25
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %81 = load i32, i32* %n, align 4, !tbaa !19
  %idx.ext130 = sext i32 %81 to i64
  %idx.neg131 = sub i64 0, %idx.ext130
  %add.ptr132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 %idx.neg131
  %82 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext133 = sext i32 %82 to i64
  %add.ptr134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr132, i64 %idx.ext133
  %tas135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr134, i32 0, i32 0
  %type_attrs136 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas135, i32 0, i32 0
  store i16 2816, i16* %type_attrs136, align 2, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %83 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.137

if.end.137:                                       ; preds = %for.end, %cleanup.cont
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %85 = load i32, i32* %n, align 4, !tbaa !19
  %idx.ext138 = sext i32 %85 to i64
  %idx.neg139 = sub i64 0, %idx.ext138
  %add.ptr140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 %idx.neg139
  store %struct.ref_s* %add.ptr140, %struct.ref_s** %wop, align 8, !tbaa !1
  %86 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 4
  %value142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx141, i32 0, i32 1
  %intval143 = bitcast %union.v* %value142 to i64*
  %87 = load i64, i64* %intval143, align 8, !tbaa !25
  %88 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 2
  %value145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx144, i32 0, i32 1
  %intval146 = bitcast %union.v* %value145 to i64*
  %89 = load i64, i64* %intval146, align 8, !tbaa !25
  %sub147 = sub nsw i64 %87, %89
  %90 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -2
  %value149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr148, i32 0, i32 1
  %intval150 = bitcast %union.v* %value149 to i64*
  store i64 %sub147, i64* %intval150, align 8, !tbaa !25
  %91 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 -2
  %tas152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr151, i32 0, i32 0
  %type_attrs153 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas152, i32 0, i32 0
  store i16 2816, i16* %type_attrs153, align 2, !tbaa !20
  %92 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 5
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx154, i32 0, i32 1
  %intval156 = bitcast %union.v* %value155 to i64*
  %93 = load i64, i64* %intval156, align 8, !tbaa !25
  %94 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 3
  %value158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx157, i32 0, i32 1
  %intval159 = bitcast %union.v* %value158 to i64*
  %95 = load i64, i64* %intval159, align 8, !tbaa !25
  %sub160 = sub nsw i64 %93, %95
  %96 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %add.ptr161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -1
  %value162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr161, i32 0, i32 1
  %intval163 = bitcast %union.v* %value162 to i64*
  store i64 %sub160, i64* %intval163, align 8, !tbaa !25
  %97 = load %struct.ref_s*, %struct.ref_s** %wop, align 8, !tbaa !1
  %add.ptr164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 -1
  %tas165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr164, i32 0, i32 0
  %type_attrs166 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas165, i32 0, i32 0
  store i16 2816, i16* %type_attrs166, align 2, !tbaa !20
  %98 = load i32, i32* %size, align 4, !tbaa !19
  %conv167 = zext i32 %98 to i64
  %99 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 1
  %intval169 = bitcast %union.v* %value168 to i64*
  store i64 %conv167, i64* %intval169, align 8, !tbaa !25
  %100 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 0
  %type_attrs171 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas170, i32 0, i32 0
  store i16 2816, i16* %type_attrs171, align 2, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %if.end.137, %if.then.99, %if.then.88, %if.then.83, %cleanup, %if.then.10, %cond.end
  %101 = bitcast %struct.ref_s** %wop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load i32, i32* %retval
  ret i32 %107
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakeglyph32(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %long_form = alloca i32, align 4
  %msize = alloca i32, align 4
  %metrics = alloca [10 x double], align 16
  %wx = alloca i32, align 4
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %raster = alloca i32, align 4
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %long_form to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %msize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [10 x double]* %metrics to i8*
  call void @llvm.lifetime.start(i64 80, i8* %5) #1
  %6 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx1, align 1, !tbaa !21
  %conv = zext i8 %19 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -4
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !22
  store i32 %22, i32* %msize, align 4, !tbaa !19
  %23 = load i32, i32* %msize, align 4, !tbaa !19
  switch i32 %23, label %sw.default [
    i32 10, label %sw.bb
    i32 6, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %do.end
  store i32 1, i32* %long_form, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.5:                                          ; preds = %do.end
  store i32 0, i32* %long_form, align 4, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %25 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %26 = load i32, i32* %msize, align 4, !tbaa !19
  %idx.ext = zext i32 %26 to i64
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idx.ext
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i64 -1
  %27 = load i32, i32* %msize, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i32 0
  %call9 = call i32 @num_params(%struct.ref_s* %add.ptr8, i32 %27, double* %arraydecay) #3
  store i32 %call9, i32* %code, align 4, !tbaa !19
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %28, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.epilog
  %29 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %sw.epilog
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %neg = xor i32 %30, -1
  %and = and i32 %neg, 60
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.13
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %32 = load i16, i16* %type_attrs18, align 2, !tbaa !20
  %conv19 = zext i16 %32 to i32
  %and20 = and i32 %conv19, 16160
  %cmp21 = icmp eq i32 %and20, 4640
  br i1 %cmp21, label %if.end.33, label %if.then.23

if.then.23:                                       ; preds = %if.end.15
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -3
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %34 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx27, align 1, !tbaa !21
  %conv28 = zext i8 %35 to i32
  %cmp29 = icmp eq i32 %conv28, 18
  br i1 %cmp29, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.23
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %call32 = call i32 @check_type_failed(%struct.ref_s* %arrayidx31) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call32, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.15
  %arrayidx34 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 2
  %37 = load double, double* %arrayidx34, align 8, !tbaa !26
  %conv35 = fptosi double %37 to i32
  store i32 %conv35, i32* %llx, align 4, !tbaa !19
  %arrayidx36 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 3
  %38 = load double, double* %arrayidx36, align 8, !tbaa !26
  %conv37 = fptosi double %38 to i32
  store i32 %conv37, i32* %lly, align 4, !tbaa !19
  %arrayidx38 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 4
  %39 = load double, double* %arrayidx38, align 8, !tbaa !26
  %conv39 = fptosi double %39 to i32
  store i32 %conv39, i32* %urx, align 4, !tbaa !19
  %arrayidx40 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 5
  %40 = load double, double* %arrayidx40, align 8, !tbaa !26
  %conv41 = fptosi double %40 to i32
  store i32 %conv41, i32* %ury, align 4, !tbaa !19
  %41 = load i32, i32* %urx, align 4, !tbaa !19
  %42 = load i32, i32* %llx, align 4, !tbaa !19
  %sub = sub nsw i32 %41, %42
  store i32 %sub, i32* %width, align 4, !tbaa !19
  %43 = load i32, i32* %ury, align 4, !tbaa !19
  %44 = load i32, i32* %lly, align 4, !tbaa !19
  %sub42 = sub nsw i32 %43, %44
  store i32 %sub42, i32* %height, align 4, !tbaa !19
  %45 = load i32, i32* %width, align 4, !tbaa !19
  %add = add nsw i32 %45, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !19
  %46 = load i32, i32* %width, align 4, !tbaa !19
  %cmp43 = icmp slt i32 %46, 0
  br i1 %cmp43, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %47 = load i32, i32* %height, align 4, !tbaa !19
  %cmp45 = icmp slt i32 %47, 0
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -3
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr48, i32 0, i32 0
  %rsize50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 2
  %49 = load i32, i32* %rsize50, align 4, !tbaa !22
  %50 = load i32, i32* %raster, align 4, !tbaa !19
  %51 = load i32, i32* %height, align 4, !tbaa !19
  %mul = mul nsw i32 %50, %51
  %cmp51 = icmp ne i32 %49, %mul
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false, %if.end.33
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %lor.lhs.false.47
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.54
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %53 = bitcast i16* %type_attrs58 to i8*
  %arrayidx59 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx59, align 1, !tbaa !21
  %conv60 = zext i8 %54 to i32
  %cmp61 = icmp eq i32 %conv60, 11
  br i1 %cmp61, label %if.end.66, label %if.then.63

if.then.63:                                       ; preds = %do.body.55
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -2
  %call65 = call i32 @check_type_failed(%struct.ref_s* %arrayidx64) #3
  store i32 %call65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %do.body.55
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -2
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx67, i32 0, i32 1
  %intval = bitcast %union.v* %value68 to i64*
  %57 = load i64, i64* %intval, align 8, !tbaa !25
  %cmp69 = icmp ugt i64 %57, 65535
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.66
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.66
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -1
  %call76 = call i32 @font_param(%struct.ref_s* %add.ptr75, %struct.gs_font_s** %pfont) #3
  store i32 %call76, i32* %code, align 4, !tbaa !19
  %59 = load i32, i32* %code, align 4, !tbaa !19
  %cmp77 = icmp slt i32 %59, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.end.74
  %60 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %do.end.74
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 11
  %62 = load i32, i32* %FontType, align 4, !tbaa !28
  %cmp81 = icmp ne i32 %62, 32
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.80
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 0
  %64 = load i16, i16* %type_attrs86, align 2, !tbaa !20
  %conv87 = zext i16 %64 to i32
  %and88 = and i32 %conv87, 16144
  %cmp89 = icmp eq i32 %and88, 4624
  br i1 %cmp89, label %if.end.103, label %if.then.91

if.then.91:                                       ; preds = %if.end.84
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  %66 = bitcast i16* %type_attrs93 to i8*
  %arrayidx94 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx94, align 1, !tbaa !21
  %conv95 = zext i8 %67 to i32
  %cmp96 = icmp eq i32 %conv95, 18
  br i1 %cmp96, label %cond.false.100, label %cond.true.98

cond.true.98:                                     ; preds = %if.then.91
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call99 = call i32 @check_type_failed(%struct.ref_s* %68) #3
  br label %cond.end.101

cond.false.100:                                   ; preds = %if.then.91
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.98
  %cond102 = phi i32 [ %call99, %cond.true.98 ], [ -7, %cond.false.100 ]
  store i32 %cond102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.84
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %rsize105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 2
  %70 = load i32, i32* %rsize105, align 4, !tbaa !22
  %cmp106 = icmp ult i32 %70, 22
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.103
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %if.end.103
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %bytes = bitcast %union.v* %value110 to i8**
  %72 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %72, i8** %str, align 8, !tbaa !1
  %73 = load i32, i32* %long_form, align 4, !tbaa !19
  %tobool111 = icmp ne i32 %73, 0
  br i1 %tobool111, label %if.then.135, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.end.109
  %arrayidx113 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 0
  %74 = load double, double* %arrayidx113, align 8, !tbaa !26
  %arrayidx114 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 0
  %75 = load double, double* %arrayidx114, align 8, !tbaa !26
  %conv115 = fptosi double %75 to i32
  store i32 %conv115, i32* %wx, align 4, !tbaa !19
  %conv116 = sitofp i32 %conv115 to double
  %cmp117 = fcmp une double %74, %conv116
  br i1 %cmp117, label %if.then.135, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.112
  %arrayidx120 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 1
  %76 = load double, double* %arrayidx120, align 8, !tbaa !26
  %cmp121 = fcmp une double %76, 0.000000e+00
  br i1 %cmp121, label %if.then.135, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.119
  %77 = load i32, i32* %height, align 4, !tbaa !19
  %cmp124 = icmp eq i32 %77, 0
  br i1 %cmp124, label %if.then.135, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.123
  %78 = load i32, i32* %wx, align 4, !tbaa !19
  %79 = load i32, i32* %width, align 4, !tbaa !19
  %or = or i32 %78, %79
  %80 = load i32, i32* %height, align 4, !tbaa !19
  %or127 = or i32 %or, %80
  %81 = load i32, i32* %llx, align 4, !tbaa !19
  %add128 = add nsw i32 %81, 128
  %or129 = or i32 %or127, %add128
  %82 = load i32, i32* %lly, align 4, !tbaa !19
  %add130 = add nsw i32 %82, 128
  %or131 = or i32 %or129, %add130
  %and132 = and i32 %or131, -256
  %cmp133 = icmp ne i32 %and132, 0
  br i1 %cmp133, label %if.then.135, label %if.else

if.then.135:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.123, %lor.lhs.false.119, %lor.lhs.false.112, %if.end.109
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* %long_form, align 4, !tbaa !19
  %tobool136 = icmp ne i32 %85, 0
  %cond137 = select i1 %tobool136, i32 10, i32 6
  store i32 %cond137, i32* %n, align 4, !tbaa !19
  %86 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 0, i8* %arrayidx138, align 1, !tbaa !21
  %87 = load i32, i32* %long_form, align 4, !tbaa !19
  %conv139 = trunc i32 %87 to i8
  %88 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %conv139, i8* %arrayidx140, align 1, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.135
  %89 = load i32, i32* %i, align 4, !tbaa !19
  %90 = load i32, i32* %n, align 4, !tbaa !19
  %cmp141 = icmp slt i32 %89, %90
  br i1 %cmp141, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %91 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %92 to i64
  %arrayidx143 = getelementptr inbounds [10 x double], [10 x double]* %metrics, i32 0, i64 %idxprom
  %93 = load double, double* %arrayidx143, align 8, !tbaa !26
  %conv144 = fptosi double %93 to i32
  store i32 %conv144, i32* %v, align 4, !tbaa !19
  %94 = load i32, i32* %v, align 4, !tbaa !19
  %shr145 = ashr i32 %94, 8
  %conv146 = trunc i32 %shr145 to i8
  %95 = load i32, i32* %i, align 4, !tbaa !19
  %mul147 = mul nsw i32 2, %95
  %add148 = add nsw i32 2, %mul147
  %idxprom149 = sext i32 %add148 to i64
  %96 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %96, i64 %idxprom149
  store i8 %conv146, i8* %arrayidx150, align 1, !tbaa !21
  %97 = load i32, i32* %v, align 4, !tbaa !19
  %conv151 = trunc i32 %97 to i8
  %98 = load i32, i32* %i, align 4, !tbaa !19
  %mul152 = mul nsw i32 2, %98
  %add153 = add nsw i32 2, %mul152
  %add154 = add nsw i32 %add153, 1
  %idxprom155 = sext i32 %add154 to i64
  %99 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %99, i64 %idxprom155
  store i8 %conv151, i8* %arrayidx156, align 1, !tbaa !21
  %100 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = load i32, i32* %n, align 4, !tbaa !19
  %mul157 = mul nsw i32 %102, 2
  %add158 = add nsw i32 2, %mul157
  %103 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 0
  %rsize160 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas159, i32 0, i32 2
  store i32 %add158, i32* %rsize160, align 4, !tbaa !22
  %104 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  br label %if.end.175

if.else:                                          ; preds = %lor.lhs.false.126
  %106 = load i32, i32* %width, align 4, !tbaa !19
  %conv161 = trunc i32 %106 to i8
  %107 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %conv161, i8* %arrayidx162, align 1, !tbaa !21
  %108 = load i32, i32* %height, align 4, !tbaa !19
  %conv163 = trunc i32 %108 to i8
  %109 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %conv163, i8* %arrayidx164, align 1, !tbaa !21
  %110 = load i32, i32* %wx, align 4, !tbaa !19
  %conv165 = trunc i32 %110 to i8
  %111 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %conv165, i8* %arrayidx166, align 1, !tbaa !21
  %112 = load i32, i32* %llx, align 4, !tbaa !19
  %add167 = add nsw i32 %112, 128
  %conv168 = trunc i32 %add167 to i8
  %113 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8, i8* %113, i64 3
  store i8 %conv168, i8* %arrayidx169, align 1, !tbaa !21
  %114 = load i32, i32* %lly, align 4, !tbaa !19
  %add170 = add nsw i32 %114, 128
  %conv171 = trunc i32 %add170 to i8
  %115 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %115, i64 4
  store i8 %conv171, i8* %arrayidx172, align 1, !tbaa !21
  %116 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %rsize174 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas173, i32 0, i32 2
  store i32 5, i32* %rsize174, align 4, !tbaa !22
  br label %if.end.175

if.end.175:                                       ; preds = %if.else, %for.end
  %117 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.175, %if.then.108, %cond.end.101, %if.then.83, %if.then.79, %if.then.71, %if.then.63, %if.then.53, %cond.end, %if.then.14, %if.then.12, %sw.default, %if.then
  %118 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast [10 x double]* %metrics to i8*
  call void @llvm.lifetime.end(i64 80, i8* %129) #1
  %130 = bitcast i32* %msize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %long_form to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal i32 @zremoveglyphs(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %range = alloca %struct.font_cid_range_t, align 8
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
  %4 = bitcast %struct.font_cid_range_t* %range to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !25
  %cmp5 = icmp ugt i64 %10, 65535
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %12 = bitcast i16* %type_attrs12 to i8*
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx13, align 1, !tbaa !21
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 11
  br i1 %cmp15, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %call19 = call i32 @check_type_failed(%struct.ref_s* %arrayidx18) #3
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.body.9
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx21, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %16 = load i64, i64* %intval23, align 8, !tbaa !25
  %cmp24 = icmp ugt i64 %16, 65535
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.20
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %range, i32 0, i32 2
  %call30 = call i32 @font_param(%struct.ref_s* %17, %struct.gs_font_s** %font) #3
  store i32 %call30, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %18, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end.29
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %do.end.29
  %font35 = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %range, i32 0, i32 2
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %font35, align 8, !tbaa !35
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 11
  %21 = load i32, i32* %FontType, align 4, !tbaa !28
  %cmp36 = icmp ne i32 %21, 32
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.34
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %intval42 = bitcast %union.v* %value41 to i64*
  %23 = load i64, i64* %intval42, align 8, !tbaa !25
  %add = add i64 2147483648, %23
  %cid_min = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %range, i32 0, i32 0
  store i64 %add, i64* %cid_min, align 8, !tbaa !37
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 1
  %intval45 = bitcast %union.v* %value44 to i64*
  %25 = load i64, i64* %intval45, align 8, !tbaa !25
  %add46 = add i64 2147483648, %25
  %cid_max = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %range, i32 0, i32 1
  store i64 %add46, i64* %cid_max, align 8, !tbaa !38
  %font47 = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %range, i32 0, i32 2
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %font47, align 8, !tbaa !35
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 3
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !39
  %28 = bitcast %struct.font_cid_range_t* %range to i8*
  call void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s* %27, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)* @select_cid_range, i8* %28) #3
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p50, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then.33, %if.then.26, %if.then.17, %if.then.7, %if.then
  %31 = bitcast %struct.font_cid_range_t* %range to i8*
  call void @llvm.lifetime.end(i64 24, i8* %31) #1
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

declare void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s*, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @select_cid_range(%struct.gs_memory_s* %mem, %struct.cached_char_s* %cc, i8* %range_ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %range_ptr.addr = alloca i8*, align 8
  %range = alloca %struct.font_cid_range_t*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store i8* %range_ptr, i8** %range_ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.font_cid_range_t** %range to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %range_ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.font_cid_range_t*
  store %struct.font_cid_range_t* %2, %struct.font_cid_range_t** %range, align 8, !tbaa !1
  %3 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %3, i32 0, i32 8
  %4 = load i64, i64* %code, align 8, !tbaa !40
  %5 = load %struct.font_cid_range_t*, %struct.font_cid_range_t** %range, align 8, !tbaa !1
  %cid_min = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %5, i32 0, i32 0
  %6 = load i64, i64* %cid_min, align 8, !tbaa !37
  %cmp = icmp uge i64 %4, %6
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %code1 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %7, i32 0, i32 8
  %8 = load i64, i64* %code1, align 8, !tbaa !40
  %9 = load %struct.font_cid_range_t*, %struct.font_cid_range_t** %range, align 8, !tbaa !1
  %cid_max = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %9, i32 0, i32 1
  %10 = load i64, i64* %cid_max, align 8, !tbaa !38
  %cmp2 = icmp ule i64 %8, %10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %pair = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %11, i32 0, i32 6
  %12 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !44
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %12, i32 0, i32 0
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !45
  %14 = load %struct.font_cid_range_t*, %struct.font_cid_range_t** %range, align 8, !tbaa !1
  %font3 = getelementptr inbounds %struct.font_cid_range_t, %struct.font_cid_range_t* %14, i32 0, i32 2
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font3, align 8, !tbaa !35
  %cmp4 = icmp eq %struct.gs_font_s* %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %17 = bitcast %struct.font_cid_range_t** %range to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %land.ext
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
!19 = !{!9, !9, i64 0}
!20 = !{!10, !12, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!10, !9, i64 4}
!23 = !{!6, !2, i64 640}
!24 = !{!6, !9, i64 688}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !3, i64 0}
!28 = !{!29, !3, i64 128}
!29 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !30, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !31, i64 80, !31, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !32, i64 156, !9, i64 160, !33, i64 168, !34, i64 272, !34, i64 324}
!30 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!31 = !{!"gs_matrix_s", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20}
!32 = !{!"float", !3, i64 0}
!33 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!34 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!35 = !{!36, !2, i64 16}
!36 = !{!"", !13, i64 0, !13, i64 8, !2, i64 16}
!37 = !{!36, !13, i64 0}
!38 = !{!36, !13, i64 8}
!39 = !{!29, !2, i64 24}
!40 = !{!41, !13, i64 40}
!41 = !{!"cached_char_s", !42, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !13, i64 16, !2, i64 24, !9, i64 32, !13, i64 40, !3, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !43, i64 72, !13, i64 80, !43, i64 88, !43, i64 96}
!42 = !{!"gx_cached_bits_head_s", !9, i64 0, !9, i64 4}
!43 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!44 = !{!41, !2, i64 24}
!45 = !{!46, !2, i64 0}
!46 = !{!"cached_fm_pair_s", !2, i64 0, !47, i64 8, !3, i64 24, !9, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !9, i64 48, !9, i64 52, !2, i64 56, !2, i64 64, !9, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !9, i64 104}
!47 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
