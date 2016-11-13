; ModuleID = './iscanbin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
%struct.scan_binary_state_s = type { i32, {}*, %struct.ref_s, i32, i32, i32, i32, i32, i32, i64 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@bin_token_bytes = internal constant [32 x i8] c"\04\04\04\04\05\05\03\03\02\02\05\05\05\02\02\03\03\02\02\02\02\04\01\01\01\01\01\01\01\01\01\01", align 16
@bin_token_num_formats = internal constant [32 x i8] c"0\B00\B0\00\80 \A0\00\000\B01\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [22 x i8] c"binary token, type=%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bin obj seq length too large\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sequence too short\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid object type\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"non-zero unused field\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"binary object sequence(objects)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"bin obj seq, type=%d, elements=%u, size=%lu, %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid number format\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid real number\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid string offset\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"bos strings\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"bad array offset\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"scan_bos_resize\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@enc_num_bytes = external constant [0 x i8], align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"string token\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"number array token\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"bad number format\00", align 1

; Function Attrs: nounwind uwtable
define i32 @scan_binary_token(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %btype = alloca i32, align 4
  %code = alloca i32, align 4
  %wanted = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %btype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %11 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %11, i8** %p, align 8, !tbaa !1
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 1
  %13 = load i8*, i8** %limit, align 8, !tbaa !7
  store i8* %13, i8** %rlimit, align 8, !tbaa !1
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !8
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %btype, align 4, !tbaa !9
  %16 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %token_type = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %16, i32 0, i32 8
  store i32 %conv, i32* %token_type, align 4, !tbaa !11
  %17 = load i32, i32* %btype, align 4, !tbaa !9
  %sub = sub nsw i32 %17, 128
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @bin_token_bytes, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv3 = zext i8 %18 to i32
  %sub4 = sub nsw i32 %conv3, 1
  store i32 %sub4, i32* %wanted, align 4, !tbaa !9
  %19 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load i32, i32* %wanted, align 4, !tbaa !9
  %conv5 = zext i32 %21 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 -1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %r8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_read_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r8, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr9, align 8, !tbaa !5
  %24 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %24, i32 0, i32 4
  store i32 0, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %code, align 4, !tbaa !9
  br label %if.end.19

if.else:                                          ; preds = %entry
  %25 = load i32, i32* %btype, align 4, !tbaa !9
  %sub10 = sub nsw i32 %25, 128
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [32 x i8], [32 x i8]* @bin_token_num_formats, i32 0, i64 %idxprom11
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !8
  %conv13 = zext i8 %26 to i32
  %27 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %27, i32 0, i32 0
  store i32 %conv13, i32* %num_format, align 4, !tbaa !21
  %28 = load i32, i32* %btype, align 4, !tbaa !9
  %and = and i32 %28, -4
  %cmp14 = icmp eq i32 %and, 128
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %31 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call = call i32 @scan_bos(%struct.gs_context_state_s* %29, %struct.ref_s* %30, %struct.scanner_state_s* %31) #4
  store i32 %call, i32* %code, align 4, !tbaa !9
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %34 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call18 = call i32 @scan_bin_scalar(%struct.gs_context_state_s* %32, %struct.ref_s* %33, %struct.scanner_state_s* %34) #4
  store i32 %call18, i32* %code, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %35 = load i32, i32* %code, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %35, 3
  br i1 %cmp20, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.19
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 9
  %37 = load i16, i16* %end_status, align 2, !tbaa !22
  %conv22 = sext i16 %37 to i32
  %cmp23 = icmp eq i32 %conv22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 -18, i32* %code, align 4, !tbaa !9
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.19
  %38 = load i32, i32* %code, align 4, !tbaa !9
  %cmp27 = icmp slt i32 %38, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.38

land.lhs.true.29:                                 ; preds = %if.end.26
  %39 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %39, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i64 0
  %40 = load i8, i8* %arrayidx30, align 1, !tbaa !8
  %conv31 = sext i8 %40 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true.29
  %41 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error35 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %41, i32 0, i32 7
  %string36 = getelementptr inbounds %struct.se_, %struct.se_* %s_error35, i32 0, i32 2
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %string36, i32 0, i32 0
  %42 = load i32, i32* %btype, align 4, !tbaa !9
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %42) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %land.lhs.true.29, %if.end.26
  %43 = load i32, i32* %code, align 4, !tbaa !9
  %44 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %btype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  ret i32 %43
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @scan_bos(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %num_format = alloca i32, align 4
  %code = alloca i32, align 4
  %rcnt = alloca i32, align 4
  %top_size = alloca i32, align 4
  %hsize = alloca i32, align 4
  %size = alloca i32, align 4
  %lsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %q = alloca i8*, align 8
  %rend = alloca i8*, align 8
  %c = alloca i32, align 4
  %index93 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format1 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %8, i32 0, i32 0
  %9 = load i32, i32* %num_format1, align 4, !tbaa !21
  store i32 %9, i32* %num_format, align 4, !tbaa !9
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %12 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %12, i8** %p, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %r3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r3, i32 0, i32 1
  %14 = load i8*, i8** %limit, align 8, !tbaa !7
  store i8* %14, i8** %rlimit, align 8, !tbaa !1
  %15 = bitcast i32* %rcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcnt, align 4, !tbaa !9
  %18 = bitcast i32* %top_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv4 = zext i8 %20 to i32
  store i32 %conv4, i32* %top_size, align 4, !tbaa !9
  %21 = bitcast i32* %hsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %top_size, align 4, !tbaa !9
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %24 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %rcnt, align 4, !tbaa !9
  %cmp6 = icmp ult i32 %25, 7
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %r10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_read_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r10, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr11, align 8, !tbaa !5
  %28 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %28, i32 0, i32 4
  store i32 0, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i32, i32* %num_format, align 4, !tbaa !9
  %call = call i32 @sdecodeushort(i8* %add.ptr12, i32 %30) #4
  store i32 %call, i32* %top_size, align 4, !tbaa !9
  %31 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %top_size13 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %31, i32 0, i32 6
  store i32 %call, i32* %top_size13, align 4, !tbaa !27
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %32, i64 4
  %33 = load i32, i32* %num_format, align 4, !tbaa !9
  %call15 = call i32 @sdecodeint32(i8* %add.ptr14, i32 %33) #4
  store i32 %call15, i32* %lsize, align 4, !tbaa !9
  %conv16 = zext i32 %call15 to i64
  %34 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %lsize17 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %34, i32 0, i32 9
  store i64 %conv16, i64* %lsize17, align 8, !tbaa !28
  %35 = load i32, i32* %lsize, align 4, !tbaa !9
  store i32 %35, i32* %size, align 4, !tbaa !9
  %36 = load i32, i32* %lsize, align 4, !tbaa !9
  %cmp18 = icmp ne i32 %35, %36
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %37 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  store i32 8, i32* %hsize, align 4, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.8
  %38 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.else:                                          ; preds = %entry
  %39 = load i32, i32* %top_size, align 4, !tbaa !9
  %40 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %top_size22 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %40, i32 0, i32 6
  store i32 %39, i32* %top_size22, align 4, !tbaa !27
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i32, i32* %num_format, align 4, !tbaa !9
  %call24 = call i32 @sdecodeushort(i8* %add.ptr23, i32 %42) #4
  store i32 %call24, i32* %size, align 4, !tbaa !9
  %conv25 = zext i32 %call24 to i64
  %43 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %lsize26 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %43, i32 0, i32 9
  store i64 %conv25, i64* %lsize26, align 8, !tbaa !28
  store i32 4, i32* %hsize, align 4, !tbaa !9
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %cleanup.cont
  %44 = load i32, i32* %size, align 4, !tbaa !9
  %45 = load i32, i32* %hsize, align 4, !tbaa !9
  %cmp28 = icmp ult i32 %44, %45
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %46 = load i32, i32* %size, align 4, !tbaa !9
  %47 = load i32, i32* %hsize, align 4, !tbaa !9
  %sub = sub i32 %46, %47
  %shr = lshr i32 %sub, 3
  %48 = load i32, i32* %top_size, align 4, !tbaa !9
  %cmp30 = icmp ult i32 %shr, %48
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.27
  %49 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.33:                                        ; preds = %lor.lhs.false
  %50 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = bitcast i8** %rend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %53 = load i32, i32* %hsize, align 4, !tbaa !9
  %idx.ext = zext i32 %53 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  %54 = load i32, i32* %top_size, align 4, !tbaa !9
  %mul = mul i32 %54, 8
  %idx.ext35 = zext i32 %mul to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr34, i64 %idx.ext35
  store i8* %add.ptr36, i8** %rend, align 8, !tbaa !1
  %55 = load i8*, i8** %rend, align 8, !tbaa !1
  %56 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp37 = icmp ugt i8* %55, %56
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.33
  %57 = load i8*, i8** %rlimit, align 8, !tbaa !1
  store i8* %57, i8** %rend, align 8, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.33
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i32, i32* %hsize, align 4, !tbaa !9
  %idx.ext41 = zext i32 %59 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %58, i64 %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 1
  store i8* %add.ptr43, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %60 = load i8*, i8** %q, align 8, !tbaa !1
  %61 = load i8*, i8** %rend, align 8, !tbaa !1
  %cmp44 = icmp ult i8* %60, %61
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %63, i64 -1
  %64 = load i8, i8* %arrayidx46, align 1, !tbaa !8
  %conv47 = zext i8 %64 to i32
  %and = and i32 %conv47, 127
  store i32 %and, i32* %c, align 4, !tbaa !9
  %65 = load i32, i32* %c, align 4, !tbaa !9
  %cmp48 = icmp sgt i32 %65, 10
  br i1 %cmp48, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %for.body
  %66 = load i32, i32* %c, align 4, !tbaa !9
  %cmp50 = icmp ne i32 %66, 15
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true
  %67 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.53:                                        ; preds = %land.lhs.true, %for.body
  %68 = load i8*, i8** %q, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !8
  %conv54 = zext i8 %69 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  %70 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.58:                                        ; preds = %if.end.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.58, %if.then.57, %if.then.52
  %71 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest.60 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.60, label %cleanup.63 [
    i32 0, label %cleanup.cont.61
  ]

cleanup.cont.61:                                  ; preds = %cleanup.59
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.61
  %72 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i8, i8* %72, i64 8
  store i8* %add.ptr62, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %for.end, %cleanup.59
  %73 = bitcast i8** %rend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %cleanup.dest.65 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.65, label %cleanup.103 [
    i32 0, label %cleanup.cont.66
  ]

cleanup.cont.66:                                  ; preds = %cleanup.63
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %76 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %77 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %77, i32 0, i32 2
  %78 = load i32, i32* %size, align 4, !tbaa !9
  %div = udiv i32 %78, 8
  %call67 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %76, %struct.ref_s* %bin_array, i32 240, i32 %div, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 %call67, i32* %code, align 4, !tbaa !9
  %79 = load i32, i32* %code, align 4, !tbaa !9
  %cmp68 = icmp slt i32 %79, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %cleanup.cont.66
  %80 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.71:                                        ; preds = %cleanup.cont.66
  %81 = load i32, i32* %hsize, align 4, !tbaa !9
  %sub72 = sub i32 %81, 1
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext73 = zext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %82, i64 %idx.ext73
  store i8* %add.ptr74, i8** %p, align 8, !tbaa !1
  %83 = load i32, i32* %hsize, align 4, !tbaa !9
  %84 = load i32, i32* %size, align 4, !tbaa !9
  %sub75 = sub i32 %84, %83
  store i32 %sub75, i32* %size, align 4, !tbaa !9
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %86, i32 0, i32 5
  %r77 = bitcast %union.stream_cursor_s* %cursor76 to %struct.stream_cursor_read_s*
  %ptr78 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r77, i32 0, i32 0
  store i8* %85, i8** %ptr78, align 8, !tbaa !5
  %87 = load i32, i32* %top_size, align 4, !tbaa !9
  %88 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %top_size79 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %88, i32 0, i32 6
  store i32 %87, i32* %top_size79, align 4, !tbaa !27
  %89 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %max_array_index = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %89, i32 0, i32 4
  store i32 %87, i32* %max_array_index, align 4, !tbaa !38
  %90 = load i32, i32* %size, align 4, !tbaa !9
  %91 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %size80 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %91, i32 0, i32 7
  store i32 %90, i32* %size80, align 4, !tbaa !39
  %92 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %min_string_index = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %92, i32 0, i32 5
  store i32 %90, i32* %min_string_index, align 4, !tbaa !40
  %93 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %93, i32 0, i32 3
  store i32 0, i32* %index, align 4, !tbaa !41
  %94 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %94, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 3
  store i32 0, i32* %is_dynamic, align 4, !tbaa !42
  %95 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da81 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %95, i32 0, i32 5
  %buf = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da81, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1023 x i8], [1023 x i8]* %buf, i32 0, i32 0
  %96 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da82 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %96, i32 0, i32 5
  %limit83 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da82, i32 0, i32 2
  store i8* %arraydecay, i8** %limit83, align 8, !tbaa !43
  %97 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da84 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %97, i32 0, i32 5
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da84, i32 0, i32 1
  store i8* %arraydecay, i8** %next, align 8, !tbaa !44
  %98 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da85 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %98, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da85, i32 0, i32 0
  store i8* %arraydecay, i8** %base, align 8, !tbaa !45
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %100 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %101 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call86 = call i32 @scan_bos_continue(%struct.gs_context_state_s* %99, %struct.ref_s* %100, %struct.scanner_state_s* %101) #4
  store i32 %call86, i32* %code, align 4, !tbaa !9
  %102 = load i32, i32* %code, align 4, !tbaa !9
  %cmp87 = icmp eq i32 %102, 3
  br i1 %cmp87, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.71
  %103 = load i32, i32* %code, align 4, !tbaa !9
  %cmp90 = icmp slt i32 %103, 0
  br i1 %cmp90, label %if.then.92, label %if.end.102

if.then.92:                                       ; preds = %lor.lhs.false.89, %if.end.71
  %104 = bitcast i32* %index93 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index94 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %105, i32 0, i32 3
  %106 = load i32, i32* %index94, align 4, !tbaa !41
  store i32 %106, i32* %index93, align 4, !tbaa !9
  %107 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array95 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %107, i32 0, i32 2
  %value96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array95, i32 0, i32 1
  %refs = bitcast %union.v* %value96 to %struct.ref_s**
  %108 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %109 = load i32, i32* %index93, align 4, !tbaa !9
  %idx.ext97 = zext i32 %109 to i64
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i64 %idx.ext97
  %110 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array99 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %110, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array99, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %111 = load i32, i32* %rsize, align 4, !tbaa !46
  %112 = load i32, i32* %index93, align 4, !tbaa !9
  %sub100 = sub i32 %111, %112
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory101, i32 0, i32 5
  %114 = load i32, i32* %new_mask, align 4, !tbaa !47
  call void @refset_null_new(%struct.ref_s* %add.ptr98, i32 %sub100, i32 %114) #4
  %115 = bitcast i32* %index93 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.92, %lor.lhs.false.89
  %116 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %if.end.102, %if.then.70, %cleanup.63, %if.then.32, %cleanup
  %117 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %hsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %top_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %rcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = load i32, i32* %retval
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_bin_scalar(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %num_format = alloca i32, align 4
  %code = alloca i32, align 4
  %wanted = alloca i32, align 4
  %arg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str89 = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format1 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %8, i32 0, i32 0
  %9 = load i32, i32* %num_format1, align 4, !tbaa !21
  store i32 %9, i32* %num_format, align 4, !tbaa !9
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %arg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %14 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %14, i8** %p, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %r3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r3, i32 0, i32 1
  %16 = load i8*, i8** %limit, align 8, !tbaa !7
  store i8* %16, i8** %rlimit, align 8, !tbaa !1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !8
  %conv = zext i8 %18 to i32
  %sub = sub nsw i32 %conv, 128
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @bin_token_bytes, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv4 = zext i8 %19 to i32
  %sub5 = sub nsw i32 %conv4, 1
  store i32 %sub5, i32* %wanted, align 4, !tbaa !9
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !8
  %conv6 = zext i8 %21 to i32
  switch i32 %conv6, label %sw.epilog.219 [
    i32 136, label %sw.bb
    i32 137, label %sw.bb.15
    i32 132, label %sw.bb.32
    i32 133, label %sw.bb.32
    i32 134, label %sw.bb.32
    i32 135, label %sw.bb.32
    i32 138, label %sw.bb.32
    i32 139, label %sw.bb.32
    i32 140, label %sw.bb.32
    i32 141, label %sw.bb.44
    i32 142, label %sw.bb.58
    i32 143, label %sw.bb.60
    i32 144, label %sw.bb.60
    i32 145, label %sw.bb.116
    i32 146, label %sw.bb.123
    i32 147, label %sw.bb.135
    i32 148, label %sw.bb.154
    i32 149, label %sw.bb.178
  ]

sw.bb:                                            ; preds = %entry
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx7, align 1, !tbaa !8
  %conv8 = zext i8 %23 to i32
  %xor = xor i32 %conv8, 128
  %sub9 = sub nsw i32 %xor, 128
  %conv10 = sext i32 %sub9 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %intval = bitcast %union.v* %value11 to i64*
  store i64 %conv10, i64* %intval, align 8, !tbaa !48
  %25 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !49
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %r13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_read_s*
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r13, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr14, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.bb.15:                                         ; preds = %entry
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx16, align 1, !tbaa !8
  %conv17 = zext i8 %29 to i32
  store i32 %conv17, i32* %num_format, align 4, !tbaa !9
  %30 = load i32, i32* %num_format, align 4, !tbaa !9
  %and = and i32 %30, 127
  %cmp = icmp sle i32 %and, 49
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.15
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end:                                           ; preds = %sw.bb.15
  %31 = load i32, i32* %num_format, align 4, !tbaa !9
  %shr = ashr i32 %31, 4
  %idxprom19 = sext i32 %shr to i64
  %arrayidx20 = getelementptr inbounds [0 x i8], [0 x i8]* @enc_num_bytes, i32 0, i64 %idxprom19
  %32 = load i8, i8* %arrayidx20, align 1, !tbaa !8
  %conv21 = zext i8 %32 to i32
  %add = add nsw i32 1, %conv21
  store i32 %add, i32* %wanted, align 4, !tbaa !9
  %33 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i32, i32* %wanted, align 4, !tbaa !9
  %conv22 = zext i32 %35 to i64
  %cmp23 = icmp slt i64 %sub.ptr.sub, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds i8, i8* %36, i64 -1
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %r28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_read_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r28, i32 0, i32 0
  store i8* %add.ptr26, i8** %ptr29, align 8, !tbaa !5
  %38 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %38, i32 0, i32 4
  store i32 0, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.30:                                        ; preds = %if.end
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i32, i32* %num_format, align 4, !tbaa !9
  %41 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @sdecode_number(i8* %add.ptr31, i32 %40, %struct.ref_s* %41) #4
  store i32 %call, i32* %code, align 4, !tbaa !9
  br label %rnum

sw.bb.32:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i32, i32* %num_format, align 4, !tbaa !9
  %44 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call34 = call i32 @sdecode_number(i8* %add.ptr33, i32 %43, %struct.ref_s* %44) #4
  store i32 %call34, i32* %code, align 4, !tbaa !9
  br label %rnum

rnum:                                             ; preds = %sw.bb.32, %if.end.30
  %45 = load i32, i32* %code, align 4, !tbaa !9
  switch i32 %45, label %sw.default [
    i32 11, label %sw.bb.35
    i32 16, label %sw.bb.35
    i32 14, label %sw.bb.39
  ]

sw.bb.35:                                         ; preds = %rnum, %rnum
  %46 = load i32, i32* %code, align 4, !tbaa !9
  %shl = shl i32 %46, 8
  %conv36 = trunc i32 %shl to i16
  %47 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 %conv36, i16* %type_attrs38, align 2, !tbaa !49
  br label %sw.epilog

sw.bb.39:                                         ; preds = %rnum
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.default:                                       ; preds = %rnum
  %48 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.epilog:                                        ; preds = %sw.bb.35
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %50 = load i32, i32* %wanted, align 4, !tbaa !9
  %idx.ext = zext i32 %50 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %49, i64 %idx.ext
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %r42 = bitcast %union.stream_cursor_s* %cursor41 to %struct.stream_cursor_read_s*
  %ptr43 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r42, i32 0, i32 0
  store i8* %add.ptr40, i8** %ptr43, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.bb.44:                                         ; preds = %entry
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx45, align 1, !tbaa !8
  %conv46 = zext i8 %53 to i32
  store i32 %conv46, i32* %arg, align 4, !tbaa !9
  %54 = load i32, i32* %arg, align 4, !tbaa !9
  %and47 = and i32 %54, -2
  %tobool = icmp ne i32 %and47, 0
  br i1 %tobool, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %sw.bb.44
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.49:                                        ; preds = %sw.bb.44
  %55 = load i32, i32* %arg, align 4, !tbaa !9
  %conv50 = trunc i32 %55 to i16
  %56 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %boolval = bitcast %union.v* %value51 to i16*
  store i16 %conv50, i16* %boolval, align 2, !tbaa !50
  %57 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  store i16 256, i16* %type_attrs53, align 2, !tbaa !49
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor55 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 5
  %r56 = bitcast %union.stream_cursor_s* %cursor55 to %struct.stream_cursor_read_s*
  %ptr57 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r56, i32 0, i32 0
  store i8* %add.ptr54, i8** %ptr57, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.bb.58:                                         ; preds = %entry
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %61 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv59 = zext i8 %61 to i32
  store i32 %conv59, i32* %arg, align 4, !tbaa !9
  br label %str

sw.bb.60:                                         ; preds = %entry, %entry
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i32, i32* %num_format, align 4, !tbaa !9
  %call62 = call i32 @sdecodeushort(i8* %add.ptr61, i32 %63) #4
  store i32 %call62, i32* %arg, align 4, !tbaa !9
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %add.ptr63, i8** %p, align 8, !tbaa !1
  br label %str

str:                                              ; preds = %sw.bb.60, %sw.bb.58
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %65, i32 0, i32 10
  %66 = load i8, i8* %foreign, align 1, !tbaa !51
  %conv64 = zext i8 %66 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %str
  %67 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast66 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %68 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %69 = load i32, i32* %arg, align 4, !tbaa !9
  %conv69 = zext i32 %69 to i64
  %cmp70 = icmp sge i64 %sub.ptr.sub68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %land.lhs.true
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 5
  %r74 = bitcast %union.stream_cursor_s* %cursor73 to %struct.stream_cursor_read_s*
  %ptr75 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r74, i32 0, i32 0
  store i8* %70, i8** %ptr75, align 8, !tbaa !5
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 5
  %r77 = bitcast %union.stream_cursor_s* %cursor76 to %struct.stream_cursor_read_s*
  %ptr78 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r77, i32 0, i32 0
  %73 = load i8*, i8** %ptr78, align 8, !tbaa !5
  %add.ptr79 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value80 to i8**
  store i8* %add.ptr79, i8** %const_bytes, align 8, !tbaa !1
  %75 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  store i16 4720, i16* %type_attrs82, align 2, !tbaa !49
  %76 = load i32, i32* %arg, align 4, !tbaa !9
  %77 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 2
  store i32 %76, i32* %rsize, align 4, !tbaa !46
  %78 = load i32, i32* %arg, align 4, !tbaa !9
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 5
  %r85 = bitcast %union.stream_cursor_s* %cursor84 to %struct.stream_cursor_read_s*
  %ptr86 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r85, i32 0, i32 0
  %80 = load i8*, i8** %ptr86, align 8, !tbaa !5
  %idx.ext87 = zext i32 %78 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %80, i64 %idx.ext87
  store i8* %add.ptr88, i8** %ptr86, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.else:                                          ; preds = %land.lhs.true, %str
  %81 = bitcast i8** %str89 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %84 = bitcast %struct.gs_ref_memory_s* %83 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %85 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !52
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current91 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory90, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current91, align 8, !tbaa !29
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %89 = load i32, i32* %arg, align 4, !tbaa !9
  %call92 = call i8* %85(%struct.gs_memory_s* %88, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #4
  store i8* %call92, i8** %str89, align 8, !tbaa !1
  %90 = load i8*, i8** %str89, align 8, !tbaa !1
  %cmp93 = icmp eq i8* %90, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.else
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor97 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %92, i32 0, i32 5
  %r98 = bitcast %union.stream_cursor_s* %cursor97 to %struct.stream_cursor_read_s*
  %ptr99 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r98, i32 0, i32 0
  store i8* %91, i8** %ptr99, align 8, !tbaa !5
  %93 = load i8*, i8** %str89, align 8, !tbaa !1
  %94 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %94, i32 0, i32 5
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 1
  store i8* %93, i8** %next, align 8, !tbaa !44
  %95 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da100 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %95, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da100, i32 0, i32 0
  store i8* %93, i8** %base, align 8, !tbaa !45
  %96 = load i8*, i8** %str89, align 8, !tbaa !1
  %97 = load i32, i32* %arg, align 4, !tbaa !9
  %idx.ext101 = zext i32 %97 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %96, i64 %idx.ext101
  %98 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da103 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %98, i32 0, i32 5
  %limit104 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da103, i32 0, i32 2
  store i8* %add.ptr102, i8** %limit104, align 8, !tbaa !43
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %100 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %101 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call105 = call i32 @scan_bin_string_continue(%struct.gs_context_state_s* %99, %struct.ref_s* %100, %struct.scanner_state_s* %101) #4
  store i32 %call105, i32* %code, align 4, !tbaa !9
  %102 = load i32, i32* %code, align 4, !tbaa !9
  %cmp106 = icmp eq i32 %102, 3
  br i1 %cmp106, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.96
  %103 = load i32, i32* %code, align 4, !tbaa !9
  %cmp108 = icmp slt i32 %103, 0
  br i1 %cmp108, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %lor.lhs.false, %if.end.96
  %104 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da111 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %104, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da111, i32 0, i32 3
  store i32 1, i32* %is_dynamic, align 4, !tbaa !42
  %105 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %105, i32 0, i32 2
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 0
  %type_attrs113 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 0
  store i16 3584, i16* %type_attrs113, align 2, !tbaa !49
  %106 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %cont = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %106, i32 0, i32 1
  %cont114 = bitcast {}** %cont to i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)**
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)* @scan_bin_string_continue, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)** %cont114, align 8, !tbaa !55
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.110, %lor.lhs.false
  %107 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.115, %if.then.95
  %108 = bitcast i8** %str89 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %cleanup.220

sw.bb.116:                                        ; preds = %entry
  %109 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 1
  %current118 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory117, i32 0, i32 0
  %111 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current118, align 8, !tbaa !29
  %112 = bitcast %struct.gs_ref_memory_s* %111 to %struct.gs_memory_s*
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory119, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %114 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !56
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %114, i32 0, i32 23
  %115 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !58
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx120, align 1, !tbaa !8
  %conv121 = zext i8 %117 to i32
  %118 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call122 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %109, %struct.gs_memory_s* %112, %struct.ref_s* %115, i32 %conv121, %struct.ref_s* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call122, i32* %code, align 4, !tbaa !9
  br label %lname

sw.bb.123:                                        ; preds = %entry
  %119 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %120 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %120, i32 0, i32 1
  %current125 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory124, i32 0, i32 0
  %121 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current125, align 8, !tbaa !29
  %122 = bitcast %struct.gs_ref_memory_s* %121 to %struct.gs_memory_s*
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 1
  %spaces127 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory126, i32 0, i32 1
  %memories128 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces127, i32 0, i32 1
  %named129 = bitcast %union.anon* %memories128 to %struct._ssn*
  %global130 = getelementptr inbounds %struct._ssn, %struct._ssn* %named129, i32 0, i32 2
  %124 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global130, align 8, !tbaa !56
  %names_array131 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %124, i32 0, i32 23
  %125 = load %struct.ref_s*, %struct.ref_s** %names_array131, align 8, !tbaa !58
  %126 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx132, align 1, !tbaa !8
  %conv133 = zext i8 %127 to i32
  %128 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call134 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %119, %struct.gs_memory_s* %122, %struct.ref_s* %125, i32 %conv133, %struct.ref_s* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call134, i32* %code, align 4, !tbaa !9
  br label %xname

sw.bb.135:                                        ; preds = %entry
  %129 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %130 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %130, i32 0, i32 1
  %current137 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory136, i32 0, i32 0
  %131 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current137, align 8, !tbaa !29
  %132 = bitcast %struct.gs_ref_memory_s* %131 to %struct.gs_memory_s*
  %133 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %133, i32 0, i32 1
  %spaces139 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory138, i32 0, i32 1
  %memories140 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces139, i32 0, i32 1
  %named141 = bitcast %union.anon* %memories140 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named141, i32 0, i32 3
  %134 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !65
  %names_array142 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %134, i32 0, i32 23
  %135 = load %struct.ref_s*, %struct.ref_s** %names_array142, align 8, !tbaa !58
  %136 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx143, align 1, !tbaa !8
  %conv144 = zext i8 %137 to i32
  %138 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call145 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %129, %struct.gs_memory_s* %132, %struct.ref_s* %135, i32 %conv144, %struct.ref_s* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #4
  store i32 %call145, i32* %code, align 4, !tbaa !9
  br label %lname

lname:                                            ; preds = %sw.bb.135, %sw.bb.116
  %139 = load i32, i32* %code, align 4, !tbaa !9
  %cmp146 = icmp slt i32 %139, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %lname
  %140 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.149:                                       ; preds = %lname
  %141 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor151 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %142, i32 0, i32 5
  %r152 = bitcast %union.stream_cursor_s* %cursor151 to %struct.stream_cursor_read_s*
  %ptr153 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r152, i32 0, i32 0
  store i8* %add.ptr150, i8** %ptr153, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.bb.154:                                        ; preds = %entry
  %143 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 1
  %current156 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory155, i32 0, i32 0
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current156, align 8, !tbaa !29
  %146 = bitcast %struct.gs_ref_memory_s* %145 to %struct.gs_memory_s*
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %147, i32 0, i32 1
  %spaces158 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory157, i32 0, i32 1
  %memories159 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces158, i32 0, i32 1
  %named160 = bitcast %union.anon* %memories159 to %struct._ssn*
  %local161 = getelementptr inbounds %struct._ssn, %struct._ssn* %named160, i32 0, i32 3
  %148 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local161, align 8, !tbaa !65
  %names_array162 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %148, i32 0, i32 23
  %149 = load %struct.ref_s*, %struct.ref_s** %names_array162, align 8, !tbaa !58
  %150 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i8, i8* %arrayidx163, align 1, !tbaa !8
  %conv164 = zext i8 %151 to i32
  %152 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call165 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %143, %struct.gs_memory_s* %146, %struct.ref_s* %149, i32 %conv164, %struct.ref_s* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #4
  store i32 %call165, i32* %code, align 4, !tbaa !9
  br label %xname

xname:                                            ; preds = %sw.bb.154, %sw.bb.123
  %153 = load i32, i32* %code, align 4, !tbaa !9
  %cmp166 = icmp slt i32 %153, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %xname
  %154 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.169:                                       ; preds = %xname
  %155 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i32 0, i32 0
  %type_attrs171 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas170, i32 0, i32 0
  %156 = load i16, i16* %type_attrs171, align 2, !tbaa !49
  %conv172 = zext i16 %156 to i32
  %or = or i32 %conv172, 128
  %conv173 = trunc i32 %or to i16
  store i16 %conv173, i16* %type_attrs171, align 2, !tbaa !49
  %157 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr174 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor175 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %158, i32 0, i32 5
  %r176 = bitcast %union.stream_cursor_s* %cursor175 to %struct.stream_cursor_read_s*
  %ptr177 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r176, i32 0, i32 0
  store i8* %add.ptr174, i8** %ptr177, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.bb.178:                                        ; preds = %entry
  %159 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %159, i64 1
  %160 = load i8, i8* %arrayidx179, align 1, !tbaa !8
  %conv180 = zext i8 %160 to i32
  store i32 %conv180, i32* %num_format, align 4, !tbaa !9
  %161 = load i32, i32* %num_format, align 4, !tbaa !9
  %and181 = and i32 %161, 127
  %cmp182 = icmp sle i32 %and181, 49
  br i1 %cmp182, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %sw.bb.178
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.185:                                       ; preds = %sw.bb.178
  %162 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr186 = getelementptr inbounds i8, i8* %162, i64 2
  %163 = load i32, i32* %num_format, align 4, !tbaa !9
  %call187 = call i32 @sdecodeushort(i8* %add.ptr186, i32 %163) #4
  store i32 %call187, i32* %arg, align 4, !tbaa !9
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory188 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 1
  %current189 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory188, i32 0, i32 0
  %165 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current189, align 8, !tbaa !29
  %166 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array190 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %166, i32 0, i32 2
  %167 = load i32, i32* %arg, align 4, !tbaa !9
  %call191 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %165, %struct.ref_s* %bin_array190, i32 112, i32 %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #4
  store i32 %call191, i32* %code, align 4, !tbaa !9
  %168 = load i32, i32* %code, align 4, !tbaa !9
  %cmp192 = icmp slt i32 %168, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.185
  %169 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.195:                                       ; preds = %if.end.185
  %170 = load i32, i32* %num_format, align 4, !tbaa !9
  %171 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format196 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %171, i32 0, i32 0
  store i32 %170, i32* %num_format196, align 4, !tbaa !21
  %172 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %172, i32 0, i32 3
  store i32 0, i32* %index, align 4, !tbaa !41
  %173 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr197 = getelementptr inbounds i8, i8* %173, i64 3
  store i8* %add.ptr197, i8** %p, align 8, !tbaa !1
  %174 = load i8*, i8** %p, align 8, !tbaa !1
  %175 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor198 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %175, i32 0, i32 5
  %r199 = bitcast %union.stream_cursor_s* %cursor198 to %struct.stream_cursor_read_s*
  %ptr200 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r199, i32 0, i32 0
  store i8* %174, i8** %ptr200, align 8, !tbaa !5
  %176 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %177 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %178 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call201 = call i32 @scan_bin_num_array_continue(%struct.gs_context_state_s* %176, %struct.ref_s* %177, %struct.scanner_state_s* %178) #4
  store i32 %call201, i32* %code, align 4, !tbaa !9
  %179 = load i32, i32* %code, align 4, !tbaa !9
  %cmp202 = icmp eq i32 %179, 3
  br i1 %cmp202, label %if.then.207, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %if.end.195
  %180 = load i32, i32* %code, align 4, !tbaa !9
  %cmp205 = icmp slt i32 %180, 0
  br i1 %cmp205, label %if.then.207, label %if.end.218

if.then.207:                                      ; preds = %lor.lhs.false.204, %if.end.195
  %181 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array208 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %181, i32 0, i32 2
  %value209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array208, i32 0, i32 1
  %refs = bitcast %union.v* %value209 to %struct.ref_s**
  %182 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %183 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index210 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %183, i32 0, i32 3
  %184 = load i32, i32* %index210, align 4, !tbaa !41
  %idx.ext211 = zext i32 %184 to i64
  %add.ptr212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %182, i64 %idx.ext211
  %185 = load i32, i32* %arg, align 4, !tbaa !9
  %186 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index213 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %186, i32 0, i32 3
  %187 = load i32, i32* %index213, align 4, !tbaa !41
  %sub214 = sub i32 %185, %187
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory215 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %188, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory215, i32 0, i32 5
  %189 = load i32, i32* %new_mask, align 4, !tbaa !47
  call void @refset_null_new(%struct.ref_s* %add.ptr212, i32 %sub214, i32 %189) #4
  %190 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %cont216 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %190, i32 0, i32 1
  %cont217 = bitcast {}** %cont216 to i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)**
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)* @scan_bin_num_array_continue, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)** %cont217, align 8, !tbaa !55
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.207, %lor.lhs.false.204
  %191 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %191, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

sw.epilog.219:                                    ; preds = %entry
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

cleanup.220:                                      ; preds = %sw.epilog.219, %if.end.218, %if.then.194, %if.then.184, %if.end.169, %if.then.168, %if.end.149, %if.then.148, %cleanup, %if.then.72, %if.end.49, %if.then.48, %sw.epilog, %sw.default, %sw.bb.39, %if.then.25, %if.then, %sw.bb
  %192 = bitcast i32* %arg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = load i32, i32* %retval
  ret i32 %200
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @encode_binary_token(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %obj, i64* %ref_offset, i64* %char_offset, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %obj.addr = alloca %struct.ref_s*, align 8
  %ref_offset.addr = alloca i64*, align 8
  %char_offset.addr = alloca i64*, align 8
  %str.addr = alloca i8*, align 8
  %type = alloca i32, align 4
  %size = alloca i32, align 4
  %format = alloca i32, align 4
  %value1 = alloca i64, align 8
  %nstr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  %v0 = alloca i8, align 1
  %v1 = alloca i8, align 1
  %v2 = alloca i8, align 1
  %v3 = alloca i8, align 1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %obj, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  store i64* %ref_offset, i64** %ref_offset.addr, align 8, !tbaa !1
  store i64* %char_offset, i64** %char_offset.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %size, align 4, !tbaa !9
  %2 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8, !tbaa !48
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %format, align 4, !tbaa !9
  %5 = bitcast i64* %value1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %value1, align 8, !tbaa !48
  %6 = bitcast %struct.ref_s* %nstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv2 = zext i8 %9 to i32
  switch i32 %conv2, label %sw.default [
    i32 14, label %sw.bb
    i32 12, label %sw.bb.3
    i32 11, label %sw.bb.4
    i32 16, label %sw.bb.7
    i32 1, label %sw.bb.9
    i32 4, label %sw.bb.12
    i32 2, label %sw.bb.14
    i32 18, label %sw.bb.16
    i32 13, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %type, align 4, !tbaa !8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 10, i32* %type, align 4, !tbaa !8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* %type, align 4, !tbaa !8
  %10 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval6 = bitcast %union.v* %value5 to i64*
  %11 = load i64, i64* %intval6, align 8, !tbaa !48
  store i64 %11, i64* %value1, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 2, i32* %type, align 4, !tbaa !8
  %12 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %realval = bitcast %union.v* %value8 to float*
  %13 = bitcast float* %realval to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !48
  store i64 %14, i64* %value1, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i32 4, i32* %type, align 4, !tbaa !8
  %15 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %boolval = bitcast %union.v* %value10 to i16*
  %16 = load i16, i16* %boolval, align 2, !tbaa !50
  %conv11 = zext i16 %16 to i64
  store i64 %conv11, i64* %value1, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i32 9, i32* %type, align 4, !tbaa !8
  %17 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !46
  store i32 %18, i32* %size, align 4, !tbaa !9
  br label %aod

sw.bb.14:                                         ; preds = %entry
  store i32 15, i32* %type, align 4, !tbaa !8
  %19 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %call = call i32 @dict_length(%struct.ref_s* %19) #4
  %shl = shl i32 %call, 1
  store i32 %shl, i32* %size, align 4, !tbaa !9
  br label %aod

aod:                                              ; preds = %sw.bb.14, %sw.bb.12
  %20 = load i64*, i64** %ref_offset.addr, align 8, !tbaa !1
  %21 = load i64, i64* %20, align 8, !tbaa !48
  store i64 %21, i64* %value1, align 8, !tbaa !48
  %22 = load i32, i32* %size, align 4, !tbaa !9
  %mul = mul i32 %22, 8
  %conv15 = zext i32 %mul to i64
  %23 = load i64*, i64** %ref_offset.addr, align 8, !tbaa !1
  %24 = load i64, i64* %23, align 8, !tbaa !48
  %add = add nsw i64 %24, %conv15
  store i64 %add, i64* %23, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  store i32 5, i32* %type, align 4, !tbaa !8
  br label %nos

nos:                                              ; preds = %sw.bb.21, %sw.bb.16
  %25 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %26 = load i32, i32* %rsize18, align 4, !tbaa !46
  store i32 %26, i32* %size, align 4, !tbaa !9
  %27 = load i64*, i64** %char_offset.addr, align 8, !tbaa !1
  %28 = load i64, i64* %27, align 8, !tbaa !48
  store i64 %28, i64* %value1, align 8, !tbaa !48
  %29 = load i32, i32* %size, align 4, !tbaa !9
  %conv19 = zext i32 %29 to i64
  %30 = load i64*, i64** %char_offset.addr, align 8, !tbaa !1
  %31 = load i64, i64* %30, align 8, !tbaa !48
  %add20 = add nsw i64 %31, %conv19
  store i64 %add20, i64* %30, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  store i32 3, i32* %type, align 4, !tbaa !8
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 2
  %35 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !66
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %35, i32 0, i32 16
  %36 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !67
  %37 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %36, %struct.ref_s* %37, %struct.ref_s* %nstr) #4
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nstr, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %38 = load i16, i16* %type_attrs23, align 2, !tbaa !49
  %conv24 = zext i16 %38 to i32
  %and = and i32 %conv24, -129
  %39 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %40 = load i16, i16* %type_attrs26, align 2, !tbaa !49
  %conv27 = zext i16 %40 to i32
  %and28 = and i32 %conv27, 128
  %or = or i32 %and, %and28
  %conv29 = trunc i32 %or to i16
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nstr, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  store i16 %conv29, i16* %type_attrs31, align 2, !tbaa !49
  store %struct.ref_s* %nstr, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  br label %nos

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %nos, %aod, %sw.bb.9, %sw.bb.7, %sw.bb.4, %sw.bb.3, %sw.bb
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  %41 = load i32, i32* %size, align 4, !tbaa !9
  %conv32 = trunc i32 %41 to i8
  store i8 %conv32, i8* %s0, align 1, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  %42 = load i32, i32* %size, align 4, !tbaa !9
  %shr = lshr i32 %42, 8
  %conv33 = trunc i32 %shr to i8
  store i8 %conv33, i8* %s1, align 1, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %v0) #1
  %43 = load i64, i64* %value1, align 8, !tbaa !48
  %conv34 = trunc i64 %43 to i8
  store i8 %conv34, i8* %v0, align 1, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %v1) #1
  %44 = load i64, i64* %value1, align 8, !tbaa !48
  %shr35 = ashr i64 %44, 8
  %conv36 = trunc i64 %shr35 to i8
  store i8 %conv36, i8* %v1, align 1, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %v2) #1
  %45 = load i64, i64* %value1, align 8, !tbaa !48
  %shr37 = ashr i64 %45, 16
  %conv38 = trunc i64 %shr37 to i8
  store i8 %conv38, i8* %v2, align 1, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %v3) #1
  %46 = load i64, i64* %value1, align 8, !tbaa !48
  %shr39 = ashr i64 %46, 24
  %conv40 = trunc i64 %shr39 to i8
  store i8 %conv40, i8* %v3, align 1, !tbaa !8
  %47 = load i32, i32* %format, align 4, !tbaa !9
  %and41 = and i32 %47, 1
  %tobool = icmp ne i32 %and41, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %48 = load i8, i8* %s1, align 1, !tbaa !8
  %49 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %48, i8* %arrayidx42, align 1, !tbaa !8
  %50 = load i8, i8* %s0, align 1, !tbaa !8
  %51 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %arrayidx43, align 1, !tbaa !8
  %52 = load i8, i8* %v3, align 1, !tbaa !8
  %53 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 4
  store i8 %52, i8* %arrayidx44, align 1, !tbaa !8
  %54 = load i8, i8* %v2, align 1, !tbaa !8
  %55 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %55, i64 5
  store i8 %54, i8* %arrayidx45, align 1, !tbaa !8
  %56 = load i8, i8* %v1, align 1, !tbaa !8
  %57 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %57, i64 6
  store i8 %56, i8* %arrayidx46, align 1, !tbaa !8
  %58 = load i8, i8* %v0, align 1, !tbaa !8
  %59 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %59, i64 7
  store i8 %58, i8* %arrayidx47, align 1, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %60 = load i8, i8* %s0, align 1, !tbaa !8
  %61 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 %60, i8* %arrayidx48, align 1, !tbaa !8
  %62 = load i8, i8* %s1, align 1, !tbaa !8
  %63 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %62, i8* %arrayidx49, align 1, !tbaa !8
  %64 = load i8, i8* %v0, align 1, !tbaa !8
  %65 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %65, i64 4
  store i8 %64, i8* %arrayidx50, align 1, !tbaa !8
  %66 = load i8, i8* %v1, align 1, !tbaa !8
  %67 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %67, i64 5
  store i8 %66, i8* %arrayidx51, align 1, !tbaa !8
  %68 = load i8, i8* %v2, align 1, !tbaa !8
  %69 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %69, i64 6
  store i8 %68, i8* %arrayidx52, align 1, !tbaa !8
  %70 = load i8, i8* %v3, align 1, !tbaa !8
  %71 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %71, i64 7
  store i8 %70, i8* %arrayidx53, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %v3) #1
  call void @llvm.lifetime.end(i64 1, i8* %v2) #1
  call void @llvm.lifetime.end(i64 1, i8* %v1) #1
  call void @llvm.lifetime.end(i64 1, i8* %v0) #1
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %72 = load %struct.ref_s*, %struct.ref_s** %obj.addr, align 8, !tbaa !1
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 0
  %73 = load i16, i16* %type_attrs55, align 2, !tbaa !49
  %conv56 = zext i16 %73 to i32
  %and57 = and i32 %conv56, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end
  %74 = load i32, i32* %type, align 4, !tbaa !8
  %add60 = add i32 %74, 128
  store i32 %add60, i32* %type, align 4, !tbaa !8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end
  %75 = load i32, i32* %type, align 4, !tbaa !8
  %conv62 = trunc i32 %75 to i8
  %76 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 %conv62, i8* %arrayidx63, align 1, !tbaa !8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %sw.default
  %77 = bitcast %struct.ref_s* %nstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #1
  %78 = bitcast i64* %value1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @dict_length(%struct.ref_s*) #3

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #3

declare i32 @sdecodeushort(i8*, i32) #3

declare i32 @sdecodeint32(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @scan_bos_error(%struct.scanner_state_s* %pstate, i8* %msg) #0 {
entry:
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %msg.addr = alloca i8*, align 8
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %0, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 2
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i32 0
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  %token_type = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary, i32 0, i32 8
  %2 = load i32, i32* %token_type, align 4, !tbaa !11
  %3 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss1 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %3, i32 0, i32 6
  %binary2 = bitcast %union.sss_* %s_ss1 to %struct.scan_binary_state_s*
  %top_size = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary2, i32 0, i32 6
  %4 = load i32, i32* %top_size, align 4, !tbaa !27
  %5 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss3 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %5, i32 0, i32 6
  %binary4 = bitcast %union.sss_* %s_ss3 to %struct.scan_binary_state_s*
  %lsize = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %binary4, i32 0, i32 9
  %6 = load i64, i64* %lsize, align 8, !tbaa !28
  %7 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i32 %2, i32 %4, i64 %6, i8* %7) #5
  ret void
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @scan_bos_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %max_array_index = alloca i32, align 4
  %min_string_index = alloca i32, align 4
  %num_format = alloca i32, align 4
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %abase = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %osize = alloca i32, align 4
  %value10 = alloca i32, align 4
  %atype = alloca i32, align 4
  %attrs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vreal = alloca float, align 4
  %str_size = alloca i32, align 4
  %sbase = alloca i8*, align 8
  %aindex = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %max_array_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %max_array_index1 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %8, i32 0, i32 4
  %9 = load i32, i32* %max_array_index1, align 4, !tbaa !38
  store i32 %9, i32* %max_array_index, align 4, !tbaa !9
  %10 = bitcast i32* %min_string_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %min_string_index2 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %11, i32 0, i32 5
  %12 = load i32, i32* %min_string_index2, align 4, !tbaa !40
  store i32 %12, i32* %min_string_index, align 4, !tbaa !9
  %13 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format3 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %14, i32 0, i32 0
  %15 = load i32, i32* %num_format3, align 4, !tbaa !21
  store i32 %15, i32* %num_format, align 4, !tbaa !9
  %16 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %17, i32 0, i32 3
  %18 = load i32, i32* %index4, align 4, !tbaa !41
  store i32 %18, i32* %index, align 4, !tbaa !9
  %19 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %20, i32 0, i32 7
  %21 = load i32, i32* %size5, align 4, !tbaa !39
  store i32 %21, i32* %size, align 4, !tbaa !9
  %22 = bitcast %struct.ref_s** %abase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %23, i32 0, i32 2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 1
  %refs = bitcast %union.v* %value6 to %struct.ref_s**
  %24 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %24, %struct.ref_s** %abase, align 8, !tbaa !1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %cont = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %26, i32 0, i32 1
  %cont7 = bitcast {}** %cont to i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)**
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)* @scan_bos_continue, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)** %cont7, align 8, !tbaa !55
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %28 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %28, i8** %p, align 8, !tbaa !1
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %r9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r9, i32 0, i32 1
  %30 = load i8*, i8** %limit, align 8, !tbaa !7
  store i8* %30, i8** %rlimit, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %index, align 4, !tbaa !9
  %32 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %cmp = icmp ult i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.ref_s*, %struct.ref_s** %abase, align 8, !tbaa !1
  %35 = load i32, i32* %index, align 4, !tbaa !9
  %idx.ext = zext i32 %35 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %36 = bitcast i32* %osize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %value10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %r12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_read_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r12, i32 0, i32 0
  store i8* %40, i8** %ptr13, align 8, !tbaa !5
  %42 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %44 = load i32, i32* %index, align 4, !tbaa !9
  %45 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index15 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %45, i32 0, i32 3
  store i32 %44, i32* %index15, align 4, !tbaa !41
  %46 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %47 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %max_array_index16 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %47, i32 0, i32 4
  store i32 %46, i32* %max_array_index16, align 4, !tbaa !38
  %48 = load i32, i32* %min_string_index, align 4, !tbaa !9
  %49 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %min_string_index17 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %49, i32 0, i32 5
  store i32 %48, i32* %min_string_index17, align 4, !tbaa !40
  %50 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %50, i32 0, i32 4
  store i32 1, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end:                                           ; preds = %for.body
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %52 to i32
  %cmp18 = icmp ne i32 %conv, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %53 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.21:                                        ; preds = %if.end
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx22, align 1, !tbaa !8
  %conv23 = zext i8 %55 to i32
  %and = and i32 %conv23, 128
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 128, i32 0
  store i32 %cond, i32* %attrs, align 4, !tbaa !9
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %56, i64 3
  %57 = load i32, i32* %num_format, align 4, !tbaa !9
  %call = call i32 @sdecodeushort(i8* %add.ptr24, i32 %57) #4
  store i32 %call, i32* %osize, align 4, !tbaa !9
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %58, i64 5
  %59 = load i32, i32* %num_format, align 4, !tbaa !9
  %call26 = call i32 @sdecodeint32(i8* %add.ptr25, i32 %59) #4
  store i32 %call26, i32* %value10, align 4, !tbaa !9
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx27, align 1, !tbaa !8
  %conv28 = zext i8 %61 to i32
  %and29 = and i32 %conv28, 127
  switch i32 %and29, label %sw.default.204 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.41
    i32 4, label %sw.bb.62
    i32 5, label %sw.bb.72
    i32 6, label %sw.bb.133
    i32 3, label %sw.bb.135
    i32 9, label %sw.bb.159
    i32 15, label %sw.bb.189
    i32 10, label %sw.bb.197
  ]

sw.bb:                                            ; preds = %if.end.21
  %62 = load i32, i32* %osize, align 4, !tbaa !9
  %63 = load i32, i32* %value10, align 4, !tbaa !9
  %or = or i32 %62, %63
  %tobool30 = icmp ne i32 %or, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb
  %64 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.32:                                        ; preds = %sw.bb
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !49
  br label %sw.epilog.205

sw.bb.33:                                         ; preds = %if.end.21
  %66 = load i32, i32* %osize, align 4, !tbaa !9
  %tobool34 = icmp ne i32 %66, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.33
  %67 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.36:                                        ; preds = %sw.bb.33
  %68 = load i32, i32* %value10, align 4, !tbaa !9
  %conv37 = sext i32 %68 to i64
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 1
  %intval = bitcast %union.v* %value38 to i64*
  store i64 %conv37, i64* %intval, align 8, !tbaa !48
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 2816, i16* %type_attrs40, align 2, !tbaa !49
  br label %sw.epilog.205

sw.bb.41:                                         ; preds = %if.end.21
  %71 = bitcast float* %vreal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %osize, align 4, !tbaa !9
  %cmp42 = icmp ne i32 %72, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %sw.bb.41
  %73 = load i32, i32* %osize, align 4, !tbaa !9
  %cmp45 = icmp ugt i32 %73, 31
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.44
  %74 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.44
  %75 = load i32, i32* %value10, align 4, !tbaa !9
  %conv49 = sitofp i32 %75 to double
  %76 = load i32, i32* %osize, align 4, !tbaa !9
  %sub = sub nsw i32 0, %76
  %call50 = call double @ldexp(double %conv49, i32 %sub) #5
  %conv51 = fptrunc double %call50 to float
  store float %conv51, float* %vreal, align 4, !tbaa !69
  br label %if.end.58

if.else:                                          ; preds = %sw.bb.41
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i8, i8* %77, i64 5
  %78 = load i32, i32* %num_format, align 4, !tbaa !9
  %call53 = call i32 @sdecode_float(i8* %add.ptr52, i32 %78, float* %vreal) #4
  store i32 %call53, i32* %code, align 4, !tbaa !9
  %79 = load i32, i32* %code, align 4, !tbaa !9
  %cmp54 = icmp slt i32 %79, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else
  %80 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)) #4
  %81 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.48
  %82 = load float, float* %vreal, align 4, !tbaa !69
  %83 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  %realval = bitcast %union.v* %value59 to float*
  store float %82, float* %realval, align 4, !tbaa !69
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 4096, i16* %type_attrs61, align 2, !tbaa !49
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.56, %if.then.47
  %85 = bitcast float* %vreal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.206 [
    i32 5, label %sw.epilog.205
  ]

sw.bb.62:                                         ; preds = %if.end.21
  %86 = load i32, i32* %osize, align 4, !tbaa !9
  %tobool63 = icmp ne i32 %86, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.62
  %87 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.65:                                        ; preds = %sw.bb.62
  %88 = load i32, i32* %value10, align 4, !tbaa !9
  %cmp66 = icmp ne i32 %88, 0
  %conv67 = zext i1 %cmp66 to i32
  %conv68 = trunc i32 %conv67 to i16
  %89 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 1
  %boolval = bitcast %union.v* %value69 to i16*
  store i16 %conv68, i16* %boolval, align 2, !tbaa !50
  %90 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 256, i16* %type_attrs71, align 2, !tbaa !49
  br label %sw.epilog.205

sw.bb.72:                                         ; preds = %if.end.21
  %91 = load i32, i32* %attrs, align 4, !tbaa !9
  %or73 = or i32 %91, 112
  store i32 %or73, i32* %attrs, align 4, !tbaa !9
  br label %str

str:                                              ; preds = %sw.default, %sw.bb.72
  %92 = load i32, i32* %osize, align 4, !tbaa !9
  %cmp74 = icmp eq i32 %92, 0
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %str
  %93 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 1
  %bytes = bitcast %union.v* %value77 to i8**
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %94 = load i32, i32* %attrs, align 4, !tbaa !9
  %add = add nsw i32 4608, %94
  %conv78 = trunc i32 %add to i16
  %95 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %type_attrs80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 0
  store i16 %conv78, i16* %type_attrs80, align 2, !tbaa !49
  %96 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !46
  br label %sw.epilog.205

if.end.82:                                        ; preds = %str
  %97 = load i32, i32* %value10, align 4, !tbaa !9
  %98 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %mul = mul i32 %98, 8
  %cmp83 = icmp ult i32 %97, %mul
  br i1 %cmp83, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.82
  %99 = load i32, i32* %value10, align 4, !tbaa !9
  %100 = load i32, i32* %osize, align 4, !tbaa !9
  %add85 = add i32 %99, %100
  %101 = load i32, i32* %size, align 4, !tbaa !9
  %cmp86 = icmp ugt i32 %add85, %101
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false, %if.end.82
  %102 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.89:                                        ; preds = %lor.lhs.false
  %103 = load i32, i32* %value10, align 4, !tbaa !9
  %104 = load i32, i32* %min_string_index, align 4, !tbaa !9
  %cmp90 = icmp ult i32 %103, %104
  br i1 %cmp90, label %if.then.92, label %if.end.117

if.then.92:                                       ; preds = %if.end.89
  %105 = bitcast i32* %str_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load i32, i32* %size, align 4, !tbaa !9
  %107 = load i32, i32* %value10, align 4, !tbaa !9
  %sub93 = sub i32 %106, %107
  store i32 %sub93, i32* %str_size, align 4, !tbaa !9
  %108 = bitcast i8** %sbase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %109, i32 0, i32 5
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 3
  %110 = load i32, i32* %is_dynamic, align 4, !tbaa !42
  %tobool94 = icmp ne i32 %110, 0
  br i1 %tobool94, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.92
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %112 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %113 = load i32, i32* %str_size, align 4, !tbaa !9
  %114 = load i32, i32* %index, align 4, !tbaa !9
  %call96 = call i8* @scan_bos_resize(%struct.gs_context_state_s* %111, %struct.scanner_state_s* %112, i32 %113, i32 %114) #4
  store i8* %call96, i8** %sbase, align 8, !tbaa !1
  br label %if.end.101

if.else.97:                                       ; preds = %if.then.92
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %116 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %117 = bitcast %struct.gs_ref_memory_s* %116 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %118 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !52
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 1
  %current99 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory98, i32 0, i32 0
  %120 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current99, align 8, !tbaa !29
  %121 = bitcast %struct.gs_ref_memory_s* %120 to %struct.gs_memory_s*
  %122 = load i32, i32* %str_size, align 4, !tbaa !9
  %call100 = call i8* %118(%struct.gs_memory_s* %121, i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #4
  store i8* %call100, i8** %sbase, align 8, !tbaa !1
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.97, %if.then.95
  %123 = load i8*, i8** %sbase, align 8, !tbaa !1
  %cmp102 = icmp eq i8* %123, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.105:                                       ; preds = %if.end.101
  %124 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da106 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %124, i32 0, i32 5
  %is_dynamic107 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da106, i32 0, i32 3
  store i32 1, i32* %is_dynamic107, align 4, !tbaa !42
  %125 = load i8*, i8** %sbase, align 8, !tbaa !1
  %126 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da108 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %126, i32 0, i32 5
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da108, i32 0, i32 1
  store i8* %125, i8** %next, align 8, !tbaa !44
  %127 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da109 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %127, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da109, i32 0, i32 0
  store i8* %125, i8** %base, align 8, !tbaa !45
  %128 = load i8*, i8** %sbase, align 8, !tbaa !1
  %129 = load i32, i32* %str_size, align 4, !tbaa !9
  %idx.ext110 = zext i32 %129 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %128, i64 %idx.ext110
  %130 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da112 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %130, i32 0, i32 5
  %limit113 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da112, i32 0, i32 2
  store i8* %add.ptr111, i8** %limit113, align 8, !tbaa !43
  %131 = load i32, i32* %value10, align 4, !tbaa !9
  store i32 %131, i32* %min_string_index, align 4, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %if.end.105, %if.then.104
  %132 = bitcast i8** %sbase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %str_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %cleanup.dest.116 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.116, label %cleanup.206 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.114
  br label %if.end.117

if.end.117:                                       ; preds = %cleanup.cont, %if.end.89
  %134 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da118 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %134, i32 0, i32 5
  %base119 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da118, i32 0, i32 0
  %135 = load i8*, i8** %base119, align 8, !tbaa !45
  %136 = load i32, i32* %value10, align 4, !tbaa !9
  %137 = load i32, i32* %min_string_index, align 4, !tbaa !9
  %sub120 = sub i32 %136, %137
  %idx.ext121 = zext i32 %sub120 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %135, i64 %idx.ext121
  %138 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i32 0, i32 1
  %bytes124 = bitcast %union.v* %value123 to i8**
  store i8* %add.ptr122, i8** %bytes124, align 8, !tbaa !1
  %139 = load i32, i32* %attrs, align 4, !tbaa !9
  %140 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory125 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %140, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory125, i32 0, i32 2
  %141 = load i32, i32* %current_space, align 4, !tbaa !71
  %or126 = or i32 %139, %141
  %add127 = add i32 4608, %or126
  %conv128 = trunc i32 %add127 to i16
  %142 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 0
  %type_attrs130 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas129, i32 0, i32 0
  store i16 %conv128, i16* %type_attrs130, align 2, !tbaa !49
  %143 = load i32, i32* %osize, align 4, !tbaa !9
  %144 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i32 0, i32 0
  %rsize132 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas131, i32 0, i32 2
  store i32 %143, i32* %rsize132, align 4, !tbaa !46
  br label %sw.epilog.205

sw.bb.133:                                        ; preds = %if.end.21
  %145 = load i32, i32* %attrs, align 4, !tbaa !9
  %or134 = or i32 %145, 96
  store i32 %or134, i32* %attrs, align 4, !tbaa !9
  br label %sw.bb.135

sw.bb.135:                                        ; preds = %if.end.21, %sw.bb.133
  %146 = load i32, i32* %osize, align 4, !tbaa !9
  switch i32 %146, label %sw.default [
    i32 0, label %sw.bb.136
    i32 65535, label %sw.bb.141
  ]

sw.bb.136:                                        ; preds = %sw.bb.135
  %147 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %148 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %148, i32 0, i32 1
  %current138 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory137, i32 0, i32 0
  %149 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current138, align 8, !tbaa !29
  %150 = bitcast %struct.gs_ref_memory_s* %149 to %struct.gs_memory_s*
  %151 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %151, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory139, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %152 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !65
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %152, i32 0, i32 23
  %153 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !58
  %154 = load i32, i32* %value10, align 4, !tbaa !9
  %155 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call140 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %147, %struct.gs_memory_s* %150, %struct.ref_s* %153, i32 %154, %struct.ref_s* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #4
  store i32 %call140, i32* %code, align 4, !tbaa !9
  br label %usn

sw.bb.141:                                        ; preds = %sw.bb.135
  %156 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %157 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %157, i32 0, i32 1
  %current143 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory142, i32 0, i32 0
  %158 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current143, align 8, !tbaa !29
  %159 = bitcast %struct.gs_ref_memory_s* %158 to %struct.gs_memory_s*
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 1
  %spaces145 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory144, i32 0, i32 1
  %memories146 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces145, i32 0, i32 1
  %named147 = bitcast %union.anon* %memories146 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named147, i32 0, i32 2
  %161 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !56
  %names_array148 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %161, i32 0, i32 23
  %162 = load %struct.ref_s*, %struct.ref_s** %names_array148, align 8, !tbaa !58
  %163 = load i32, i32* %value10, align 4, !tbaa !9
  %164 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call149 = call i32 @scan_bin_get_name(%struct.scanner_state_s* %156, %struct.gs_memory_s* %159, %struct.ref_s* %162, i32 %163, %struct.ref_s* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call149, i32* %code, align 4, !tbaa !9
  br label %usn

usn:                                              ; preds = %sw.bb.141, %sw.bb.136
  %165 = load i32, i32* %code, align 4, !tbaa !9
  %cmp150 = icmp slt i32 %165, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %usn
  %166 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.153:                                       ; preds = %usn
  %167 = load i32, i32* %attrs, align 4, !tbaa !9
  %168 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 0
  %type_attrs155 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas154, i32 0, i32 0
  %169 = load i16, i16* %type_attrs155, align 2, !tbaa !49
  %conv156 = zext i16 %169 to i32
  %or157 = or i32 %conv156, %167
  %conv158 = trunc i32 %or157 to i16
  store i16 %conv158, i16* %type_attrs155, align 2, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.135
  br label %str

sw.epilog:                                        ; preds = %if.end.153
  br label %sw.epilog.205

sw.bb.159:                                        ; preds = %if.end.21
  store i32 4, i32* %atype, align 4, !tbaa !9
  br label %arr

arr:                                              ; preds = %if.end.196, %sw.bb.159
  %170 = load i32, i32* %value10, align 4, !tbaa !9
  %171 = load i32, i32* %osize, align 4, !tbaa !9
  %add160 = add i32 %170, %171
  %172 = load i32, i32* %min_string_index, align 4, !tbaa !9
  %cmp161 = icmp ugt i32 %add160, %172
  br i1 %cmp161, label %if.then.166, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %arr
  %173 = load i32, i32* %value10, align 4, !tbaa !9
  %and164 = and i32 %173, 7
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %lor.lhs.false.163, %arr
  %174 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.167:                                       ; preds = %lor.lhs.false.163
  %175 = bitcast i32* %aindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  %176 = load i32, i32* %value10, align 4, !tbaa !9
  %div = udiv i32 %176, 8
  store i32 %div, i32* %aindex, align 4, !tbaa !9
  %177 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %178 = load i32, i32* %aindex, align 4, !tbaa !9
  %179 = load i32, i32* %osize, align 4, !tbaa !9
  %add168 = add i32 %178, %179
  %cmp169 = icmp ugt i32 %177, %add168
  br i1 %cmp169, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.167
  %180 = load i32, i32* %max_array_index, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end.167
  %181 = load i32, i32* %aindex, align 4, !tbaa !9
  %182 = load i32, i32* %osize, align 4, !tbaa !9
  %add171 = add i32 %181, %182
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond172 = phi i32 [ %180, %cond.true ], [ %add171, %cond.false ]
  store i32 %cond172, i32* %max_array_index, align 4, !tbaa !9
  %183 = load %struct.ref_s*, %struct.ref_s** %abase, align 8, !tbaa !1
  %184 = load i32, i32* %aindex, align 4, !tbaa !9
  %idx.ext173 = zext i32 %184 to i64
  %add.ptr174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %183, i64 %idx.ext173
  %185 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i32 0, i32 1
  %refs176 = bitcast %union.v* %value175 to %struct.ref_s**
  store %struct.ref_s* %add.ptr174, %struct.ref_s** %refs176, align 8, !tbaa !1
  %186 = load i32, i32* %atype, align 4, !tbaa !9
  %shl = shl i32 %186, 8
  %187 = load i32, i32* %attrs, align 4, !tbaa !9
  %or177 = or i32 %187, 112
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %188, i32 0, i32 1
  %current_space179 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory178, i32 0, i32 2
  %189 = load i32, i32* %current_space179, align 4, !tbaa !71
  %or180 = or i32 %or177, %189
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory181 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %190, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory181, i32 0, i32 5
  %191 = load i32, i32* %new_mask, align 4, !tbaa !47
  %or182 = or i32 %or180, %191
  %add183 = add i32 %shl, %or182
  %conv184 = trunc i32 %add183 to i16
  %192 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i32 0, i32 0
  %type_attrs186 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas185, i32 0, i32 0
  store i16 %conv184, i16* %type_attrs186, align 2, !tbaa !49
  %193 = load i32, i32* %osize, align 4, !tbaa !9
  %194 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas187 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %194, i32 0, i32 0
  %rsize188 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas187, i32 0, i32 2
  store i32 %193, i32* %rsize188, align 4, !tbaa !46
  %195 = bitcast i32* %aindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  br label %sw.epilog.205

sw.bb.189:                                        ; preds = %if.end.21
  %196 = load i32, i32* %osize, align 4, !tbaa !9
  %and190 = and i32 %196, 1
  %cmp191 = icmp ne i32 %and190, 0
  br i1 %cmp191, label %land.lhs.true, label %if.end.196

land.lhs.true:                                    ; preds = %sw.bb.189
  %197 = load i32, i32* %osize, align 4, !tbaa !9
  %cmp193 = icmp ne i32 %197, 1
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.196:                                       ; preds = %land.lhs.true, %sw.bb.189
  store i32 5, i32* %atype, align 4, !tbaa !9
  br label %arr

sw.bb.197:                                        ; preds = %if.end.21
  %198 = load i32, i32* %osize, align 4, !tbaa !9
  %199 = load i32, i32* %value10, align 4, !tbaa !9
  %or198 = or i32 %198, %199
  %tobool199 = icmp ne i32 %or198, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %sw.bb.197
  %200 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.201:                                       ; preds = %sw.bb.197
  %201 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %201, i32 0, i32 0
  %type_attrs203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas202, i32 0, i32 0
  store i16 3072, i16* %type_attrs203, align 2, !tbaa !49
  br label %sw.epilog.205

sw.default.204:                                   ; preds = %if.end.21
  %202 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

sw.epilog.205:                                    ; preds = %if.end.201, %cond.end, %sw.epilog, %if.end.117, %if.then.76, %if.end.65, %cleanup, %if.end.36, %if.end.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %sw.epilog.205, %sw.default.204, %if.then.200, %if.then.195, %if.then.166, %if.then.152, %cleanup.114, %if.then.88, %if.then.64, %cleanup, %if.then.35, %if.then.31, %if.then.20, %if.then
  %203 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %atype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %value10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %osize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %cleanup.dest.211 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.211, label %cleanup.229 [
    i32 0, label %cleanup.cont.212
  ]

cleanup.cont.212:                                 ; preds = %cleanup.206
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.212
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr213 = getelementptr inbounds i8, i8* %208, i64 8
  store i8* %add.ptr213, i8** %p, align 8, !tbaa !1
  %209 = load i32, i32* %index, align 4, !tbaa !9
  %inc = add i32 %209, 1
  store i32 %inc, i32* %index, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %210 = load i8*, i8** %p, align 8, !tbaa !1
  %211 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor214 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %211, i32 0, i32 5
  %r215 = bitcast %union.stream_cursor_s* %cursor214 to %struct.stream_cursor_read_s*
  %ptr216 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r215, i32 0, i32 0
  store i8* %210, i8** %ptr216, align 8, !tbaa !5
  %212 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %213 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index217 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %213, i32 0, i32 3
  store i32 %212, i32* %index217, align 4, !tbaa !41
  %214 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %214, i32 0, i32 1
  %current219 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory218, i32 0, i32 0
  %215 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current219, align 8, !tbaa !29
  %216 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array220 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %216, i32 0, i32 2
  %217 = load i32, i32* %max_array_index, align 4, !tbaa !9
  %call221 = call i32 @gs_resize_ref_array(%struct.gs_ref_memory_s* %215, %struct.ref_s* %bin_array220, i32 %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #4
  %218 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %219 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %220 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call222 = call i32 @scan_bos_string_continue(%struct.gs_context_state_s* %218, %struct.ref_s* %219, %struct.scanner_state_s* %220) #4
  store i32 %call222, i32* %code, align 4, !tbaa !9
  %221 = load i32, i32* %code, align 4, !tbaa !9
  %cmp223 = icmp eq i32 %221, 3
  br i1 %cmp223, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %for.end
  %222 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %cont226 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %222, i32 0, i32 1
  %cont227 = bitcast {}** %cont226 to i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)**
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)* @scan_bos_string_continue, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*)** %cont227, align 8, !tbaa !55
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %for.end
  %223 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %223, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.229

cleanup.229:                                      ; preds = %if.end.228, %cleanup.206
  %224 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast %struct.ref_s** %abase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %num_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %min_string_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %max_array_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = load i32, i32* %retval
  ret i32 %235
}

declare void @refset_null_new(%struct.ref_s*, i32, i32) #3

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

declare i32 @sdecode_float(i8*, i32, float*) #3

; Function Attrs: nounwind uwtable
define internal i8* @scan_bos_resize(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %pstate, i32 %new_size, i32 %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %new_size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %old_size = alloca i32, align 4
  %old_base = alloca i8*, align 8
  %new_base = alloca i8*, align 8
  %relocated_base = alloca i8*, align 8
  %i = alloca i32, align 4
  %aptr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store i32 %new_size, i32* %new_size.addr, align 4, !tbaa !9
  store i32 %index, i32* %index.addr, align 4, !tbaa !9
  %0 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %2 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %3, i32 0, i32 5
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 2
  %4 = load i8*, i8** %limit, align 8, !tbaa !72
  %5 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da1 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %5, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1, i32 0, i32 0
  %6 = load i8*, i8** %base, align 8, !tbaa !73
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %old_size, align 4, !tbaa !9
  %7 = bitcast i8** %old_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da2 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %8, i32 0, i32 5
  %base3 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da2, i32 0, i32 0
  %9 = load i8*, i8** %base3, align 8, !tbaa !45
  store i8* %9, i8** %old_base, align 8, !tbaa !1
  %10 = bitcast i8** %new_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %14 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !74
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current5, align 8, !tbaa !29
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load i8*, i8** %old_base, align 8, !tbaa !1
  %19 = load i32, i32* %old_size, align 4, !tbaa !9
  %20 = load i32, i32* %new_size.addr, align 4, !tbaa !9
  %call = call i8* %14(%struct.gs_memory_s* %17, i8* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #4
  store i8* %call, i8** %new_base, align 8, !tbaa !1
  %21 = bitcast i8** %relocated_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8*, i8** %new_base, align 8, !tbaa !1
  %23 = load i32, i32* %new_size.addr, align 4, !tbaa !9
  %24 = load i32, i32* %old_size, align 4, !tbaa !9
  %sub = sub i32 %23, %24
  %idx.ext = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %relocated_base, align 8, !tbaa !1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %27, i32 0, i32 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %28 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %28, %struct.ref_s** %aptr, align 8, !tbaa !1
  %29 = load i8*, i8** %new_base, align 8, !tbaa !1
  %cmp = icmp eq i8* %29, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load i8*, i8** %relocated_base, align 8, !tbaa !1
  %31 = load i8*, i8** %old_base, align 8, !tbaa !1
  %cmp7 = icmp ne i8* %30, %31
  br i1 %cmp7, label %if.then.9, label %if.end.27

if.then.9:                                        ; preds = %if.end
  %32 = load i32, i32* %index.addr, align 4, !tbaa !9
  store i32 %32, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %33 = load i32, i32* %i, align 4, !tbaa !9
  %cmp10 = icmp ne i32 %33, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %35 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv12 = zext i8 %36 to i32
  %cmp13 = icmp eq i32 %conv12, 18
  br i1 %cmp13, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.body
  %37 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 2
  %38 = load i32, i32* %rsize, align 4, !tbaa !46
  %cmp16 = icmp ne i32 %38, 0
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %land.lhs.true
  %39 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %bytes = bitcast %union.v* %value19 to i8**
  %40 = load i8*, i8** %bytes, align 8, !tbaa !1
  %41 = load i8*, i8** %old_base, align 8, !tbaa !1
  %sub.ptr.lhs.cast20 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %41 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %42 = load i8*, i8** %relocated_base, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %42, i64 %sub.ptr.sub22
  %43 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %bytes25 = bitcast %union.v* %value24 to i8**
  store i8* %add.ptr23, i8** %bytes25, align 8, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.18, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %44 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add i32 %44, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %45 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %aptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end
  %46 = load i8*, i8** %new_base, align 8, !tbaa !1
  store i8* %46, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then
  %47 = bitcast %struct.ref_s** %aptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %relocated_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %new_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %old_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = load i8*, i8** %retval
  ret i8* %54
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_bin_get_name(%struct.scanner_state_s* %pstate, %struct.gs_memory_s* %mem, %struct.ref_s* %pnames, i32 %index, %struct.ref_s* %pref, i8* %usstring) #0 {
entry:
  %retval = alloca i32, align 4
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnames.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %usstring.addr = alloca i8*, align 8
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pnames, %struct.ref_s** %pnames.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !9
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i8* %usstring, i8** %usstring.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pnames.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %pnames.addr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !9
  %conv = sext i32 %3 to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @array_get(%struct.gs_memory_s* %1, %struct.ref_s* %2, i64 %conv, %struct.ref_s* %4) #4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 13
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %8, i32 0, i32 7
  %string = getelementptr inbounds %struct.se_, %struct.se_* %s_error, i32 0, i32 2
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %string, i32 0, i32 0
  %9 = load i8*, i8** %usstring.addr, align 8, !tbaa !1
  %10 = load i32, i32* %index.addr, align 4, !tbaa !9
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %9, i32 %10) #5
  %11 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_error8 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %11, i32 0, i32 7
  %is_name = getelementptr inbounds %struct.se_, %struct.se_* %s_error8, i32 0, i32 1
  store i32 1, i32* %is_name, align 4, !tbaa !75
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_resize_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @scan_bos_string_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %rstr = alloca %struct.ref_s, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %space = alloca i32, align 4
  %rescan = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %attrs = alloca i32, align 4
  %defp = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %rdict = alloca %struct.ref_s, align 8
  %piref = alloca %struct.ref_s*, align 8
  %rdict156 = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call = call i32 @scan_bin_string_continue(%struct.gs_context_state_s* %5, %struct.ref_s* %rstr, %struct.scanner_state_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !9
  %7 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %9 = load i32, i32* %current_space, align 4, !tbaa !71
  store i32 %9, i32* %space, align 4, !tbaa !9
  %10 = bitcast i32* %rescan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %rescan, align 4, !tbaa !9
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

if.end:                                           ; preds = %entry
  %14 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %14, i32 0, i32 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %15 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %15, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array1 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %16, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !46
  store i32 %17, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !9
  %cmp2 = icmp ne i32 %18, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %21 to i32
  switch i32 %conv, label %sw.epilog [
    i32 18, label %sw.bb
    i32 13, label %sw.bb.26
    i32 5, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %for.body
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %23 = load i16, i16* %type_attrs5, align 2, !tbaa !49
  %conv6 = zext i16 %23 to i32
  %and = and i32 %conv6, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end.8:                                         ; preds = %sw.bb
  %24 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %26 = load i16, i16* %type_attrs10, align 2, !tbaa !49
  %conv11 = zext i16 %26 to i32
  %and12 = and i32 %conv11, 160
  store i32 %and12, i32* %attrs, align 4, !tbaa !9
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 2
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !66
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 16
  %31 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !67
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %bytes = bitcast %union.v* %value14 to i8**
  %33 = load i8*, i8** %bytes, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 2
  %35 = load i32, i32* %rsize16, align 4, !tbaa !46
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call17 = call i32 @names_ref(%struct.name_table_s* %31, i8* %33, i32 %35, %struct.ref_s* %36, i32 1) #4
  store i32 %call17, i32* %code, align 4, !tbaa !9
  %37 = load i32, i32* %code, align 4, !tbaa !9
  %cmp18 = icmp slt i32 %37, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.8
  %38 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.8
  %39 = load i32, i32* %attrs, align 4, !tbaa !9
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %41 = load i16, i16* %type_attrs23, align 2, !tbaa !49
  %conv24 = zext i16 %41 to i32
  %or = or i32 %conv24, %39
  %conv25 = trunc i32 %or to i16
  store i16 %conv25, i16* %type_attrs23, align 2, !tbaa !49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %42 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.190 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %for.body, %cleanup.cont
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %44 = load i16, i16* %type_attrs28, align 2, !tbaa !49
  %conv29 = zext i16 %44 to i32
  %and30 = and i32 %conv29, 32
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.54

if.then.32:                                       ; preds = %sw.bb.26
  %45 = bitcast %struct.ref_s** %defp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 24
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !29
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %gs_lib_ctx35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 2
  %50 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx35, align 8, !tbaa !66
  %gs_name_table36 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %50, i32 0, i32 16
  %51 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table36, align 8, !tbaa !67
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call37 = call i32 @names_index(%struct.name_table_s* %51, %struct.ref_s* %52) #4
  %call38 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack, i32 %call37) #4
  store %struct.ref_s* %call38, %struct.ref_s** %defp, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %cmp39 = icmp eq %struct.ref_s* %53, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.32
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.42:                                        ; preds = %if.then.32
  %54 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  %55 = load i16, i16* %type_attrs44, align 2, !tbaa !49
  %conv45 = zext i16 %55 to i32
  %and46 = and i32 %conv45, 12
  %56 = load i32, i32* %space, align 4, !tbaa !9
  %cmp47 = icmp ugt i32 %and46, %56
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.42
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.50:                                        ; preds = %if.end.42
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %59 = bitcast %struct.ref_s* %57 to i8*
  %60 = bitcast %struct.ref_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !tbaa.struct !76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %if.then.49, %if.then.41
  %61 = bitcast %struct.ref_s** %defp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %cleanup.190 [
    i32 0, label %cleanup.cont.53
  ]

cleanup.cont.53:                                  ; preds = %cleanup.51
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont.53, %sw.bb.26
  br label %sw.epilog

sw.bb.55:                                         ; preds = %for.body
  store i32 1, i32* %rescan, align 4, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.55, %for.body, %if.end.54, %if.then.7
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %62 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add i32 %62, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i32, i32* %rescan, align 4, !tbaa !9
  %tobool56 = icmp ne i32 %64, 0
  br i1 %tobool56, label %if.then.57, label %if.end.135

if.then.57:                                       ; preds = %for.end
  store i32 0, i32* %rescan, align 4, !tbaa !9
  %65 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array58 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %65, i32 0, i32 2
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array58, i32 0, i32 1
  %refs60 = bitcast %union.v* %value59 to %struct.ref_s**
  %66 = load %struct.ref_s*, %struct.ref_s** %refs60, align 8, !tbaa !1
  store %struct.ref_s* %66, %struct.ref_s** %op, align 8, !tbaa !1
  %67 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array61 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %67, i32 0, i32 2
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array61, i32 0, i32 0
  %rsize63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 2
  %68 = load i32, i32* %rsize63, align 4, !tbaa !46
  store i32 %68, i32* %i, align 4, !tbaa !9
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.131, %if.then.57
  %69 = load i32, i32* %i, align 4, !tbaa !9
  %cmp65 = icmp ne i32 %69, 0
  br i1 %cmp65, label %for.body.67, label %for.end.134

for.body.67:                                      ; preds = %for.cond.64
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  %71 = bitcast i16* %type_attrs69 to i8*
  %arrayidx70 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx70, align 1, !tbaa !8
  %conv71 = zext i8 %72 to i32
  switch i32 %conv71, label %sw.epilog.130 [
    i32 5, label %sw.bb.72
  ]

sw.bb.72:                                         ; preds = %for.body.67
  %73 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize74 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas73, i32 0, i32 2
  %75 = load i32, i32* %rsize74, align 4, !tbaa !46
  store i32 %75, i32* %count, align 4, !tbaa !9
  %76 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %76) #1
  %77 = load i32, i32* %count, align 4, !tbaa !9
  %cmp75 = icmp eq i32 %77, 1
  br i1 %cmp75, label %if.then.77, label %if.else.86

if.then.77:                                       ; preds = %sw.bb.72
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 1
  %refs79 = bitcast %union.v* %value78 to %struct.ref_s**
  %79 = load %struct.ref_s*, %struct.ref_s** %refs79, align 8, !tbaa !1
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %cmp80 = icmp ult %struct.ref_s* %79, %80
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %if.then.77
  %81 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %refs84 = bitcast %union.v* %value83 to %struct.ref_s**
  %82 = load %struct.ref_s*, %struct.ref_s** %refs84, align 8, !tbaa !1
  %83 = bitcast %struct.ref_s* %rdict to i8*
  %84 = bitcast %struct.ref_s* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 16, i32 8, i1 false), !tbaa.struct !76
  br label %if.end.85

if.else:                                          ; preds = %if.then.77
  store i32 1, i32* %rescan, align 4, !tbaa !9
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.126

if.end.85:                                        ; preds = %if.then.82
  br label %if.end.108

if.else.86:                                       ; preds = %sw.bb.72
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 1
  %current88 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory87, i32 0, i32 0
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current88, align 8, !tbaa !29
  %87 = load i32, i32* %count, align 4, !tbaa !9
  %shr = lshr i32 %87, 1
  %call89 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %86, i32 %shr, %struct.ref_s* %rdict) #4
  store i32 %call89, i32* %code, align 4, !tbaa !9
  %88 = load i32, i32* %code, align 4, !tbaa !9
  %cmp90 = icmp slt i32 %88, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.86
  %89 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126

if.end.93:                                        ; preds = %if.else.86
  br label %while.cond

while.cond:                                       ; preds = %if.end.107, %if.end.93
  %90 = load i32, i32* %count, align 4, !tbaa !9
  %tobool94 = icmp ne i32 %90, 0
  br i1 %tobool94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %91 = load i32, i32* %count, align 4, !tbaa !9
  %sub = sub i32 %91, 2
  store i32 %sub, i32* %count, align 4, !tbaa !9
  %92 = load i32, i32* %count, align 4, !tbaa !9
  %idxprom = zext i32 %92 to i64
  %93 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 1
  %refs96 = bitcast %union.v* %value95 to %struct.ref_s**
  %94 = load %struct.ref_s*, %struct.ref_s** %refs96, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 %idxprom
  %95 = load i32, i32* %count, align 4, !tbaa !9
  %add = add i32 %95, 1
  %idxprom98 = zext i32 %add to i64
  %96 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 1
  %refs100 = bitcast %union.v* %value99 to %struct.ref_s**
  %97 = load %struct.ref_s*, %struct.ref_s** %refs100, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 %idxprom98
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 24
  %call103 = call i32 @dict_put(%struct.ref_s* %rdict, %struct.ref_s* %arrayidx97, %struct.ref_s* %arrayidx101, %struct.dict_stack_s* %dict_stack102) #4
  store i32 %call103, i32* %code, align 4, !tbaa !9
  %99 = load i32, i32* %code, align 4, !tbaa !9
  %cmp104 = icmp slt i32 %99, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %while.body
  %100 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126

if.end.107:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.108

if.end.108:                                       ; preds = %while.end, %if.end.85
  %tas109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rdict, i32 0, i32 0
  %type_attrs110 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas109, i32 0, i32 0
  %101 = load i16, i16* %type_attrs110, align 2, !tbaa !49
  %conv111 = zext i16 %101 to i32
  %or112 = or i32 %conv111, 112
  %conv113 = trunc i32 %or112 to i16
  store i16 %conv113, i16* %type_attrs110, align 2, !tbaa !49
  %tas114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rdict, i32 0, i32 0
  %type_attrs115 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas114, i32 0, i32 0
  %102 = load i16, i16* %type_attrs115, align 2, !tbaa !49
  %conv116 = zext i16 %102 to i32
  %and117 = and i32 %conv116, -129
  %103 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 0
  %type_attrs119 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas118, i32 0, i32 0
  %104 = load i16, i16* %type_attrs119, align 2, !tbaa !49
  %conv120 = zext i16 %104 to i32
  %and121 = and i32 %conv120, 128
  %or122 = or i32 %and117, %and121
  %conv123 = trunc i32 %or122 to i16
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rdict, i32 0, i32 0
  %type_attrs125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 0
  store i16 %conv123, i16* %type_attrs125, align 2, !tbaa !49
  %105 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %106 = bitcast %struct.ref_s* %105 to i8*
  %107 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 16, i32 8, i1 false), !tbaa.struct !76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.126

cleanup.126:                                      ; preds = %if.end.108, %if.then.106, %if.then.92, %if.else
  %108 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %108) #1
  %109 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %cleanup.dest.128 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.128, label %cleanup.190 [
    i32 0, label %cleanup.cont.129
    i32 8, label %for.inc.131
  ]

cleanup.cont.129:                                 ; preds = %cleanup.126
  br label %sw.epilog.130

sw.epilog.130:                                    ; preds = %for.body.67, %cleanup.cont.129
  br label %for.inc.131

for.inc.131:                                      ; preds = %sw.epilog.130, %cleanup.126
  %110 = load i32, i32* %i, align 4, !tbaa !9
  %dec132 = add i32 %110, -1
  store i32 %dec132, i32* %i, align 4, !tbaa !9
  %111 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 1
  store %struct.ref_s* %incdec.ptr133, %struct.ref_s** %op, align 8, !tbaa !1
  br label %for.cond.64

for.end.134:                                      ; preds = %for.cond.64
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end
  %112 = load i32, i32* %rescan, align 4, !tbaa !9
  %tobool136 = icmp ne i32 %112, 0
  br i1 %tobool136, label %if.then.137, label %if.end.186

if.then.137:                                      ; preds = %if.end.135
  %113 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array138 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %113, i32 0, i32 2
  %value139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array138, i32 0, i32 1
  %refs140 = bitcast %union.v* %value139 to %struct.ref_s**
  %114 = load %struct.ref_s*, %struct.ref_s** %refs140, align 8, !tbaa !1
  store %struct.ref_s* %114, %struct.ref_s** %op, align 8, !tbaa !1
  %115 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array141 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %115, i32 0, i32 2
  %tas142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array141, i32 0, i32 0
  %rsize143 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas142, i32 0, i32 2
  %116 = load i32, i32* %rsize143, align 4, !tbaa !46
  store i32 %116, i32* %i, align 4, !tbaa !9
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.182, %if.then.137
  %117 = load i32, i32* %i, align 4, !tbaa !9
  %cmp145 = icmp ne i32 %117, 0
  br i1 %cmp145, label %for.body.147, label %for.end.185

for.body.147:                                     ; preds = %for.cond.144
  %118 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 0
  %type_attrs149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 0
  %119 = bitcast i16* %type_attrs149 to i8*
  %arrayidx150 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx150, align 1, !tbaa !8
  %conv151 = zext i8 %120 to i32
  %cmp152 = icmp eq i32 %conv151, 5
  br i1 %cmp152, label %if.then.154, label %if.end.181

if.then.154:                                      ; preds = %for.body.147
  %121 = bitcast %struct.ref_s** %piref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 1
  %const_refs = bitcast %union.v* %value155 to %struct.ref_s**
  %123 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %123, %struct.ref_s** %piref, align 8, !tbaa !1
  %124 = bitcast %struct.ref_s* %rdict156 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %124) #1
  %125 = load %struct.ref_s*, %struct.ref_s** %piref, align 8, !tbaa !1
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  %126 = bitcast i16* %type_attrs158 to i8*
  %arrayidx159 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx159, align 1, !tbaa !8
  %conv160 = zext i8 %127 to i32
  %cmp161 = icmp eq i32 %conv160, 5
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.154
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.164:                                       ; preds = %if.then.154
  %128 = load %struct.ref_s*, %struct.ref_s** %piref, align 8, !tbaa !1
  %129 = bitcast %struct.ref_s* %rdict156 to i8*
  %130 = bitcast %struct.ref_s* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 16, i32 8, i1 false), !tbaa.struct !76
  %tas165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rdict156, i32 0, i32 0
  %type_attrs166 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas165, i32 0, i32 0
  %131 = load i16, i16* %type_attrs166, align 2, !tbaa !49
  %conv167 = zext i16 %131 to i32
  %and168 = and i32 %conv167, -129
  %132 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 0, i32 0
  %type_attrs170 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas169, i32 0, i32 0
  %133 = load i16, i16* %type_attrs170, align 2, !tbaa !49
  %conv171 = zext i16 %133 to i32
  %and172 = and i32 %conv171, 128
  %or173 = or i32 %and168, %and172
  %conv174 = trunc i32 %or173 to i16
  %tas175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rdict156, i32 0, i32 0
  %type_attrs176 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas175, i32 0, i32 0
  store i16 %conv174, i16* %type_attrs176, align 2, !tbaa !49
  %134 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %135 = bitcast %struct.ref_s* %134 to i8*
  %136 = bitcast %struct.ref_s* %rdict156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 16, i32 8, i1 false), !tbaa.struct !76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %if.end.164, %if.then.163
  %137 = bitcast %struct.ref_s* %rdict156 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %137) #1
  %138 = bitcast %struct.ref_s** %piref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %cleanup.dest.179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.179, label %cleanup.190 [
    i32 0, label %cleanup.cont.180
  ]

cleanup.cont.180:                                 ; preds = %cleanup.177
  br label %if.end.181

if.end.181:                                       ; preds = %cleanup.cont.180, %for.body.147
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %139 = load i32, i32* %i, align 4, !tbaa !9
  %dec183 = add i32 %139, -1
  store i32 %dec183, i32* %i, align 4, !tbaa !9
  %140 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i32 1
  store %struct.ref_s* %incdec.ptr184, %struct.ref_s** %op, align 8, !tbaa !1
  br label %for.cond.144

for.end.185:                                      ; preds = %for.cond.144
  br label %if.end.186

if.end.186:                                       ; preds = %for.end.185, %if.end.135
  %141 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %142 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array187 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %142, i32 0, i32 2
  %143 = bitcast %struct.ref_s* %141 to i8*
  %144 = bitcast %struct.ref_s* %bin_array187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 16, i32 8, i1 false), !tbaa.struct !76
  %145 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %top_size = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %145, i32 0, i32 6
  %146 = load i32, i32* %top_size, align 4, !tbaa !27
  %147 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i32 0, i32 0
  %rsize189 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas188, i32 0, i32 2
  store i32 %146, i32* %rsize189, align 4, !tbaa !46
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

cleanup.190:                                      ; preds = %if.end.186, %cleanup.177, %cleanup.126, %cleanup.51, %cleanup, %if.then
  %148 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %rescan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %153) #1
  %154 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = load i32, i32* %retval
  ret i32 %155
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @scan_bin_string_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %q = alloca i8*, align 8
  %wanted = alloca i32, align 4
  %rcnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 5
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da, i32 0, i32 1
  %5 = load i8*, i8** %next, align 8, !tbaa !44
  store i8* %5, i8** %q, align 8, !tbaa !1
  %6 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da1 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %7, i32 0, i32 5
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da1, i32 0, i32 2
  %8 = load i8*, i8** %limit, align 8, !tbaa !43
  %9 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wanted, align 4, !tbaa !9
  %10 = bitcast i32* %rcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load i8*, i8** %q, align 8, !tbaa !1
  %13 = load i32, i32* %wanted, align 4, !tbaa !9
  %call = call i32 @sgets(%struct.stream_s* %11, i8* %12, i32 %13, i32* %rcnt) #4
  %14 = load i32, i32* %rcnt, align 4, !tbaa !9
  %15 = load i32, i32* %wanted, align 4, !tbaa !9
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da3 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %16, i32 0, i32 5
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da3, i32 0, i32 0
  %17 = load i8*, i8** %base, align 8, !tbaa !45
  %18 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %bytes = bitcast %union.v* %value4 to i8**
  store i8* %17, i8** %bytes, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %20 = load i32, i32* %current_space, align 4, !tbaa !71
  %or = or i32 112, %20
  %add = add i32 4608, %or
  %conv5 = trunc i32 %add to i16
  %21 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv5, i16* %type_attrs, align 2, !tbaa !49
  %22 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da6 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %22, i32 0, i32 5
  %limit7 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da6, i32 0, i32 2
  %23 = load i8*, i8** %limit7, align 8, !tbaa !43
  %24 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da8 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %24, i32 0, i32 5
  %base9 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da8, i32 0, i32 0
  %25 = load i8*, i8** %base9, align 8, !tbaa !45
  %sub.ptr.lhs.cast10 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %25 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv13 = trunc i64 %sub.ptr.sub12 to i32
  %26 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  store i32 %conv13, i32* %rsize, align 4, !tbaa !46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = load i8*, i8** %q, align 8, !tbaa !1
  %28 = load i32, i32* %rcnt, align 4, !tbaa !9
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %29 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_da15 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %29, i32 0, i32 5
  %next16 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %s_da15, i32 0, i32 1
  store i8* %add.ptr, i8** %next16, align 8, !tbaa !44
  %30 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %30, i32 0, i32 4
  store i32 1, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %31 = bitcast i32* %rcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #3

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #3

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #3

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #3

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #3

declare i32 @sdecode_number(i8*, i32, %struct.ref_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @scan_bin_num_array_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, %struct.scanner_state_s* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pbs = alloca %struct.scan_binary_state_s*, align 8
  %index = alloca i32, align 4
  %np = alloca %struct.ref_s*, align 8
  %wanted = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s_file, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_ss = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %4, i32 0, i32 6
  %binary = bitcast %union.sss_* %s_ss to %struct.scan_binary_state_s*
  store %struct.scan_binary_state_s* %binary, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %6, i32 0, i32 3
  %7 = load i32, i32* %index1, align 4, !tbaa !41
  store i32 %7, i32* %index, align 4, !tbaa !9
  %8 = bitcast %struct.ref_s** %np to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %9, i32 0, i32 2
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array, i32 0, i32 1
  %refs = bitcast %union.v* %value2 to %struct.ref_s**
  %10 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %11 = load i32, i32* %index, align 4, !tbaa !9
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %np, align 8, !tbaa !1
  %12 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %13, i32 0, i32 0
  %14 = load i32, i32* %num_format, align 4, !tbaa !21
  %shr = ashr i32 %14, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @enc_num_bytes, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %wanted, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %index, align 4, !tbaa !9
  %17 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array3 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %17, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %bin_array3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !46
  %cmp = icmp ult i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %21 = load i8*, i8** %limit, align 8, !tbaa !7
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r6, i32 0, i32 0
  %23 = load i8*, i8** %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = load i32, i32* %wanted, align 4, !tbaa !9
  %conv7 = zext i32 %24 to i64
  %cmp8 = icmp slt i64 %sub.ptr.sub, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %index, align 4, !tbaa !9
  %26 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %index10 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %26, i32 0, i32 3
  store i32 %25, i32* %index10, align 4, !tbaa !41
  %27 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %s_scan_type = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %27, i32 0, i32 4
  store i32 1, i32* %s_scan_type, align 4, !tbaa !17
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %r12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_read_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r12, i32 0, i32 0
  %29 = load i8*, i8** %ptr13, align 8, !tbaa !5
  %add.ptr14 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %num_format15 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %30, i32 0, i32 0
  %31 = load i32, i32* %num_format15, align 4, !tbaa !21
  %32 = load %struct.ref_s*, %struct.ref_s** %np, align 8, !tbaa !1
  %call = call i32 @sdecode_number(i8* %add.ptr14, i32 %31, %struct.ref_s* %32) #4
  store i32 %call, i32* %code, align 4, !tbaa !9
  %33 = load i32, i32* %code, align 4, !tbaa !9
  switch i32 %33, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb
    i32 14, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %34 = load i32, i32* %code, align 4, !tbaa !9
  %shl = shl i32 %34, 8
  %conv16 = trunc i32 %shl to i16
  %35 = load %struct.ref_s*, %struct.ref_s** %np, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  store i16 %conv16, i16* %type_attrs, align 2, !tbaa !49
  %36 = load i32, i32* %wanted, align 4, !tbaa !9
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %r19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_read_s*
  %ptr20 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r19, i32 0, i32 0
  %38 = load i8*, i8** %ptr20, align 8, !tbaa !5
  %idx.ext21 = zext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %38, i64 %idx.ext21
  store i8* %add.ptr22, i8** %ptr20, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %39 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  call void @scan_bos_error(%struct.scanner_state_s* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %40 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb.23, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %42 = load i32, i32* %index, align 4, !tbaa !9
  %inc = add i32 %42, 1
  store i32 %inc, i32* %index, align 4, !tbaa !9
  %43 = load %struct.ref_s*, %struct.ref_s** %np, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %np, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %45 = load %struct.scan_binary_state_s*, %struct.scan_binary_state_s** %pbs, align 8, !tbaa !1
  %bin_array24 = getelementptr inbounds %struct.scan_binary_state_s, %struct.scan_binary_state_s* %45, i32 0, i32 2
  %46 = bitcast %struct.ref_s* %44 to i8*
  %47 = bitcast %struct.ref_s* %bin_array24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false), !tbaa.struct !76
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %for.end, %cleanup
  %48 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.ref_s** %np to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.scan_binary_state_s** %pbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!7 = !{!6, !2, i64 8}
!8 = !{!3, !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !10, i64 52}
!12 = !{!"scan_binary_state_s", !10, i64 0, !2, i64 8, !13, i64 16, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !16, i64 56}
!13 = !{!"ref_s", !14, i64 0, !3, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2, !10, i64 4}
!15 = !{!"short", !3, i64 0}
!16 = !{!"long", !3, i64 0}
!17 = !{!18, !3, i64 28}
!18 = !{!"scanner_state_s", !13, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !3, i64 28, !19, i64 32, !3, i64 1096, !20, i64 1224}
!19 = !{!"dynamic_area_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !2, i64 1056}
!20 = !{!"se_", !13, i64 0, !10, i64 16, !3, i64 20}
!21 = !{!12, !10, i64 0}
!22 = !{!23, !15, i64 152}
!23 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !10, i64 144, !10, i64 148, !15, i64 152, !3, i64 154, !3, i64 155, !24, i64 160, !16, i64 176, !25, i64 184, !2, i64 240, !10, i64 248, !10, i64 252, !2, i64 256, !15, i64 264, !15, i64 266, !2, i64 272, !2, i64 280, !10, i64 288, !10, i64 292, !2, i64 296, !2, i64 304, !26, i64 312, !10, i64 328, !16, i64 336, !16, i64 344}
!24 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!25 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!26 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!27 = !{!12, !10, i64 44}
!28 = !{!12, !16, i64 56}
!29 = !{!30, !2, i64 8}
!30 = !{!"gs_context_state_s", !2, i64 0, !31, i64 8, !10, i64 80, !13, i64 88, !13, i64 104, !16, i64 120, !16, i64 128, !16, i64 136, !10, i64 144, !10, i64 148, !13, i64 152, !13, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !33, i64 264, !33, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !34, i64 368, !36, i64 520, !37, i64 624, !2, i64 720}
!31 = !{!"gs_dual_memory_s", !2, i64 0, !32, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!32 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!33 = !{!"op_array_table_s", !13, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!34 = !{!"dict_stack_s", !35, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !13, i64 136}
!35 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !13, i64 24, !10, i64 40, !10, i64 44, !13, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!36 = !{!"exec_stack_s", !35, i64 0, !2, i64 96}
!37 = !{!"op_stack_s", !35, i64 0}
!38 = !{!12, !10, i64 36}
!39 = !{!12, !10, i64 48}
!40 = !{!12, !10, i64 40}
!41 = !{!12, !10, i64 32}
!42 = !{!18, !10, i64 56}
!43 = !{!18, !2, i64 48}
!44 = !{!18, !2, i64 40}
!45 = !{!18, !2, i64 32}
!46 = !{!13, !10, i64 4}
!47 = !{!31, !10, i64 68}
!48 = !{!16, !16, i64 0}
!49 = !{!13, !15, i64 0}
!50 = !{!15, !15, i64 0}
!51 = !{!23, !3, i64 154}
!52 = !{!53, !2, i64 136}
!53 = !{!"gs_memory_s", !2, i64 0, !54, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!54 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!55 = !{!12, !2, i64 8}
!56 = !{!57, !2, i64 16}
!57 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!58 = !{!59, !2, i64 576}
!59 = !{!"gs_ref_memory_s", !2, i64 0, !54, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !60, i64 232, !10, i64 272, !16, i64 280, !2, i64 288, !2, i64 296, !61, i64 304, !2, i64 488, !62, i64 496, !16, i64 512, !16, i64 520, !63, i64 528, !10, i64 552, !10, i64 556, !10, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !10, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !16, i64 624, !16, i64 632, !2, i64 640, !64, i64 648, !10, i64 672, !3, i64 680}
!60 = !{!"gs_memory_gc_status_s", !16, i64 0, !16, i64 8, !2, i64 16, !10, i64 24, !10, i64 28, !16, i64 32}
!61 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !10, i64 100, !2, i64 104, !10, i64 112, !2, i64 120, !2, i64 128, !10, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!62 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!63 = !{!"lost_", !16, i64 0, !16, i64 8, !16, i64 16}
!64 = !{!"gs_memory_status_s", !16, i64 0, !16, i64 8, !10, i64 16}
!65 = !{!57, !2, i64 24}
!66 = !{!53, !2, i64 192}
!67 = !{!68, !2, i64 120}
!68 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !16, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !3, i64 0}
!71 = !{!31, !10, i64 48}
!72 = !{!19, !2, i64 16}
!73 = !{!19, !2, i64 0}
!74 = !{!53, !2, i64 152}
!75 = !{!18, !10, i64 1240}
!76 = !{i64 0, i64 2, !50, i64 2, i64 2, !50, i64 4, i64 4, !9, i64 8, i64 8, !48, i64 8, i64 2, !50, i64 8, i64 4, !69, i64 8, i64 8, !48, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !48}
