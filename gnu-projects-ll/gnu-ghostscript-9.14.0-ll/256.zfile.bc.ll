; ModuleID = './zfile.bc'
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
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
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
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
%struct.display_callback_s = type opaque

@iodev_dtype_stdio = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [16 x i8] c"%statementedit%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%lineedit%\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%stdin\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1deletefile\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"1.execfile\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"2file\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"3filenameforall\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"0.filenamelistseparator\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"1.filenamesplit\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1.libfile\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"2renamefile\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"1status\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"2.tempfile\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"0%file_continue\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"0%execfile_finish\00", align 1
@zfile_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdeletefile }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecfile }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfile }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfilenameforall }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfilenamelistseparator }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfilenamesplit }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlibfile }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrenamefile }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstatus }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztempfile }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @file_continue }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @execfile_finish }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [18 x i8] c"PermitFileReading\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"PermitFileWriting\00", align 1
@lib_file_open.fmode = private unnamed_addr constant [4 x i8] c"r\00\00\00", align 1
@gx_io_device_table = external constant [0 x %struct.gx_io_device_s*], align 8
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"file_read_string\00", align 1
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"filter_open(stream_state)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"filter_open(buffer)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"deletefile\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"PermitFileControl\00", align 1
@gp_file_name_list_separator = external constant i8, align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"renamefile(to)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"renamefile(from)\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"ztempfile(prefix)\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"ztempfile(fname)\00", align 1
@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"ztempfile(stream)\00", align 1
@file_default_buffer_size = external constant i32, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"ztempfile(buffer)\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c".tempfile(fname)\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%pipe%\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@check_file_permissions_reduced.win_filename_params = internal constant %struct.string_match_params_s { i32 42, i32 63, i32 92, i32 1, i32 1 }, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"SAFETY\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"tempfiles\00", align 1

; Function Attrs: nounwind uwtable
define void @make_invalid_file(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %fp) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fp.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %fp, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 18
  %1 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !5
  %2 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  store %struct.stream_s* %1, %struct.stream_s** %pfile, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 768, i16* %type_attrs, align 2, !tbaa !19
  %4 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 -1, i32* %rsize, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @zfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %file_access = alloca [4 x i8], align 1
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %statement = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %lineedit = alloca i32, align 4
  %__s1_len56 = alloca i64, align 8
  %__s2_len58 = alloca i64, align 8
  %tmp59 = alloca i32, align 4
  %__s166 = alloca i8*, align 8
  %__result70 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %indev = alloca %struct.gx_io_device_s*, align 8
  %ins = alloca %struct.stream_s*, align 8
  %__s1_len129 = alloca i64, align 8
  %__s2_len131 = alloca i64, align 8
  %tmp132 = alloca i32, align 4
  %__s1139 = alloca i8*, align 8
  %__result142 = alloca i32, align 4
  %tmp180 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [4 x i8]* %file_access to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  %call = call i32 @parse_file_access_string(%struct.ref_s* %6, i8* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 13
  %12 = load i32, i32* %LockFilePermissions, align 4, !tbaa !23
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call1 = call i32 @parse_file_name(%struct.ref_s* %add.ptr, %struct.gs_parsed_file_name_s* %pname, i32 %12, %struct.gs_memory_s* %15) #5
  store i32 %call1, i32* %code, align 4, !tbaa !22
  %16 = load i32, i32* %code, align 4, !tbaa !22
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.4:                                         ; preds = %if.end
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %18 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %tobool = icmp ne %struct.gx_io_device_s* %18, null
  br i1 %tobool, label %land.lhs.true, label %if.else.256

land.lhs.true:                                    ; preds = %if.end.4
  %iodev5 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %19 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev5, align 8, !tbaa !25
  %dtype = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %19, i32 0, i32 1
  %20 = load i8*, i8** %dtype, align 8, !tbaa !27
  %cmp6 = icmp eq i8* %20, getelementptr inbounds ([0 x i8], [0 x i8]* @iodev_dtype_stdio, i32 0, i32 0)
  br i1 %cmp6, label %if.then.7, label %if.else.256

if.then.7:                                        ; preds = %land.lhs.true
  %21 = bitcast i32* %statement to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([16 x i8]* @.str to i64)), i64 1), label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %if.then.7
  %call9 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #6
  store i64 %call9, i64* %__s2_len, align 8, !tbaa !30
  %24 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp10 = icmp ult i64 %24, 4
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.8
  %25 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %iodev12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev12, align 8, !tbaa !25
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %dname, align 8, !tbaa !31
  store i8* %27, i8** %__s1, align 8, !tbaa !1
  %28 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %30 to i32
  %31 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !32
  %conv14 = zext i8 %31 to i32
  %sub = sub nsw i32 %conv, %conv14
  store i32 %sub, i32* %__result, align 4, !tbaa !22
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp15 = icmp ugt i64 %32, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.47

land.lhs.true.17:                                 ; preds = %cond.true
  %33 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp18 = icmp eq i32 %33, 0
  br i1 %cmp18, label %if.then.20, label %if.end.47

if.then.20:                                       ; preds = %land.lhs.true.17
  %34 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx21, align 1, !tbaa !32
  %conv22 = zext i8 %35 to i32
  %36 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !32
  %conv23 = zext i8 %36 to i32
  %sub24 = sub nsw i32 %conv22, %conv23
  store i32 %sub24, i32* %__result, align 4, !tbaa !22
  %37 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp25 = icmp ugt i64 %37, 1
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.46

land.lhs.true.27:                                 ; preds = %if.then.20
  %38 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp28 = icmp eq i32 %38, 0
  br i1 %cmp28, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %land.lhs.true.27
  %39 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx31, align 1, !tbaa !32
  %conv32 = zext i8 %40 to i32
  %41 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !32
  %conv33 = zext i8 %41 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  store i32 %sub34, i32* %__result, align 4, !tbaa !22
  %42 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp35 = icmp ugt i64 %42, 2
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %if.then.30
  %43 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp38 = icmp eq i32 %43, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %land.lhs.true.37
  %44 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx41, align 1, !tbaa !32
  %conv42 = zext i8 %45 to i32
  %46 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !32
  %conv43 = zext i8 %46 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  store i32 %sub44, i32* %__result, align 4, !tbaa !22
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.then.30
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.27, %if.then.20
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.17, %cond.true
  %47 = load i32, i32* %__result, align 4, !tbaa !22
  store i32 %47, i32* %tmp48, !tbaa !22
  %48 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %tmp48, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.8, %if.then.7
  %iodev49 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %51 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev49, align 8, !tbaa !25
  %dname50 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %51, i32 0, i32 0
  %52 = load i8*, i8** %dname50, align 8, !tbaa !31
  %call51 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.47
  %cond = phi i32 [ %50, %if.end.47 ], [ %call51, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !22
  %53 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %tmp, !tbaa !22
  %cmp52 = icmp eq i32 %55, 0
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %statement, align 4, !tbaa !22
  %56 = bitcast i32* %lineedit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast i64* %__s1_len56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast i64* %__s2_len58 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.60, label %cond.false.109

land.lhs.true.60:                                 ; preds = %cond.end
  %call61 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #6
  store i64 %call61, i64* %__s2_len58, align 8, !tbaa !30
  %59 = load i64, i64* %__s2_len58, align 8, !tbaa !30
  %cmp62 = icmp ult i64 %59, 4
  br i1 %cmp62, label %cond.true.64, label %cond.false.109

cond.true.64:                                     ; preds = %land.lhs.true.60
  %60 = bitcast i8** %__s166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %iodev67 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %61 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev67, align 8, !tbaa !25
  %dname68 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %61, i32 0, i32 0
  %62 = load i8*, i8** %dname68, align 8, !tbaa !31
  store i8* %62, i8** %__s166, align 8, !tbaa !1
  %63 = bitcast i32* %__result70 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i8*, i8** %__s166, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx71, align 1, !tbaa !32
  %conv72 = zext i8 %65 to i32
  %66 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !32
  %conv73 = zext i8 %66 to i32
  %sub74 = sub nsw i32 %conv72, %conv73
  store i32 %sub74, i32* %__result70, align 4, !tbaa !22
  %67 = load i64, i64* %__s2_len58, align 8, !tbaa !30
  %cmp75 = icmp ugt i64 %67, 0
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.107

land.lhs.true.77:                                 ; preds = %cond.true.64
  %68 = load i32, i32* %__result70, align 4, !tbaa !22
  %cmp78 = icmp eq i32 %68, 0
  br i1 %cmp78, label %if.then.80, label %if.end.107

if.then.80:                                       ; preds = %land.lhs.true.77
  %69 = load i8*, i8** %__s166, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx81, align 1, !tbaa !32
  %conv82 = zext i8 %70 to i32
  %71 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !32
  %conv83 = zext i8 %71 to i32
  %sub84 = sub nsw i32 %conv82, %conv83
  store i32 %sub84, i32* %__result70, align 4, !tbaa !22
  %72 = load i64, i64* %__s2_len58, align 8, !tbaa !30
  %cmp85 = icmp ugt i64 %72, 1
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.106

land.lhs.true.87:                                 ; preds = %if.then.80
  %73 = load i32, i32* %__result70, align 4, !tbaa !22
  %cmp88 = icmp eq i32 %73, 0
  br i1 %cmp88, label %if.then.90, label %if.end.106

if.then.90:                                       ; preds = %land.lhs.true.87
  %74 = load i8*, i8** %__s166, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %74, i64 2
  %75 = load i8, i8* %arrayidx91, align 1, !tbaa !32
  %conv92 = zext i8 %75 to i32
  %76 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !32
  %conv93 = zext i8 %76 to i32
  %sub94 = sub nsw i32 %conv92, %conv93
  store i32 %sub94, i32* %__result70, align 4, !tbaa !22
  %77 = load i64, i64* %__s2_len58, align 8, !tbaa !30
  %cmp95 = icmp ugt i64 %77, 2
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.105

land.lhs.true.97:                                 ; preds = %if.then.90
  %78 = load i32, i32* %__result70, align 4, !tbaa !22
  %cmp98 = icmp eq i32 %78, 0
  br i1 %cmp98, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %land.lhs.true.97
  %79 = load i8*, i8** %__s166, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %79, i64 3
  %80 = load i8, i8* %arrayidx101, align 1, !tbaa !32
  %conv102 = zext i8 %80 to i32
  %81 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !32
  %conv103 = zext i8 %81 to i32
  %sub104 = sub nsw i32 %conv102, %conv103
  store i32 %sub104, i32* %__result70, align 4, !tbaa !22
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %land.lhs.true.97, %if.then.90
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true.87, %if.then.80
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %land.lhs.true.77, %cond.true.64
  %82 = load i32, i32* %__result70, align 4, !tbaa !22
  store i32 %82, i32* %tmp108, !tbaa !22
  %83 = bitcast i32* %__result70 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i8** %__s166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %tmp108, !tbaa !22
  br label %cond.end.113

cond.false.109:                                   ; preds = %land.lhs.true.60, %cond.end
  %iodev110 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %86 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev110, align 8, !tbaa !25
  %dname111 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %86, i32 0, i32 0
  %87 = load i8*, i8** %dname111, align 8, !tbaa !31
  %call112 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.109, %if.end.107
  %cond114 = phi i32 [ %85, %if.end.107 ], [ %call112, %cond.false.109 ]
  store i32 %cond114, i32* %tmp59, !tbaa !22
  %88 = bitcast i64* %__s2_len58 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i64* %__s1_len56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %tmp59, !tbaa !22
  %cmp115 = icmp eq i32 %90, 0
  %conv116 = zext i1 %cmp115 to i32
  store i32 %conv116, i32* %lineedit, align 4, !tbaa !22
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %91 = load i8*, i8** %fname, align 8, !tbaa !33
  %tobool117 = icmp ne i8* %91, null
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %cond.end.113
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end.119:                                       ; preds = %cond.end.113
  %92 = load i32, i32* %statement, align 4, !tbaa !22
  %tobool120 = icmp ne i32 %92, 0
  br i1 %tobool120, label %if.then.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.119
  %93 = load i32, i32* %lineedit, align 4, !tbaa !22
  %tobool121 = icmp ne i32 %93, 0
  br i1 %tobool121, label %if.then.122, label %if.end.241

if.then.122:                                      ; preds = %lor.lhs.false, %if.end.119
  %94 = bitcast %struct.gx_io_device_s** %indev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 1
  %current125 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory124, i32 0, i32 0
  %96 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current125, align 8, !tbaa !24
  %97 = bitcast %struct.gs_ref_memory_s* %96 to %struct.gs_memory_s*
  %call126 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 6) #5
  store %struct.gx_io_device_s* %call126, %struct.gx_io_device_s** %indev, align 8, !tbaa !1
  %98 = bitcast %struct.stream_s** %ins to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = bitcast i64* %__s1_len129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast i64* %__s2_len131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.133, label %cond.false.181

land.lhs.true.133:                                ; preds = %if.then.122
  %call134 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #6
  store i64 %call134, i64* %__s2_len131, align 8, !tbaa !30
  %101 = load i64, i64* %__s2_len131, align 8, !tbaa !30
  %cmp135 = icmp ult i64 %101, 4
  br i1 %cmp135, label %cond.true.137, label %cond.false.181

cond.true.137:                                    ; preds = %land.lhs.true.133
  %102 = bitcast i8** %__s1139 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %arraydecay140 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  store i8* %arraydecay140, i8** %__s1139, align 8, !tbaa !1
  %103 = bitcast i32* %__result142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i8*, i8** %__s1139, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx143, align 1, !tbaa !32
  %conv144 = zext i8 %105 to i32
  %106 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !32
  %conv145 = zext i8 %106 to i32
  %sub146 = sub nsw i32 %conv144, %conv145
  store i32 %sub146, i32* %__result142, align 4, !tbaa !22
  %107 = load i64, i64* %__s2_len131, align 8, !tbaa !30
  %cmp147 = icmp ugt i64 %107, 0
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.179

land.lhs.true.149:                                ; preds = %cond.true.137
  %108 = load i32, i32* %__result142, align 4, !tbaa !22
  %cmp150 = icmp eq i32 %108, 0
  br i1 %cmp150, label %if.then.152, label %if.end.179

if.then.152:                                      ; preds = %land.lhs.true.149
  %109 = load i8*, i8** %__s1139, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx153, align 1, !tbaa !32
  %conv154 = zext i8 %110 to i32
  %111 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !32
  %conv155 = zext i8 %111 to i32
  %sub156 = sub nsw i32 %conv154, %conv155
  store i32 %sub156, i32* %__result142, align 4, !tbaa !22
  %112 = load i64, i64* %__s2_len131, align 8, !tbaa !30
  %cmp157 = icmp ugt i64 %112, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.178

land.lhs.true.159:                                ; preds = %if.then.152
  %113 = load i32, i32* %__result142, align 4, !tbaa !22
  %cmp160 = icmp eq i32 %113, 0
  br i1 %cmp160, label %if.then.162, label %if.end.178

if.then.162:                                      ; preds = %land.lhs.true.159
  %114 = load i8*, i8** %__s1139, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx163, align 1, !tbaa !32
  %conv164 = zext i8 %115 to i32
  %116 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 2), align 1, !tbaa !32
  %conv165 = zext i8 %116 to i32
  %sub166 = sub nsw i32 %conv164, %conv165
  store i32 %sub166, i32* %__result142, align 4, !tbaa !22
  %117 = load i64, i64* %__s2_len131, align 8, !tbaa !30
  %cmp167 = icmp ugt i64 %117, 2
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.177

land.lhs.true.169:                                ; preds = %if.then.162
  %118 = load i32, i32* %__result142, align 4, !tbaa !22
  %cmp170 = icmp eq i32 %118, 0
  br i1 %cmp170, label %if.then.172, label %if.end.177

if.then.172:                                      ; preds = %land.lhs.true.169
  %119 = load i8*, i8** %__s1139, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %119, i64 3
  %120 = load i8, i8* %arrayidx173, align 1, !tbaa !32
  %conv174 = zext i8 %120 to i32
  %121 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 3), align 1, !tbaa !32
  %conv175 = zext i8 %121 to i32
  %sub176 = sub nsw i32 %conv174, %conv175
  store i32 %sub176, i32* %__result142, align 4, !tbaa !22
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.172, %land.lhs.true.169, %if.then.162
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.159, %if.then.152
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %land.lhs.true.149, %cond.true.137
  %122 = load i32, i32* %__result142, align 4, !tbaa !22
  store i32 %122, i32* %tmp180, !tbaa !22
  %123 = bitcast i32* %__result142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i8** %__s1139 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = load i32, i32* %tmp180, !tbaa !22
  br label %cond.end.184

cond.false.181:                                   ; preds = %land.lhs.true.133, %if.then.122
  %arraydecay182 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  %call183 = call i32 @strcmp(i8* %arraydecay182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.181, %if.end.179
  %cond185 = phi i32 [ %125, %if.end.179 ], [ %call183, %cond.false.181 ]
  store i32 %cond185, i32* %tmp132, !tbaa !22
  %126 = bitcast i64* %__s2_len131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i64* %__s1_len129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = load i32, i32* %tmp132, !tbaa !22
  %tobool186 = icmp ne i32 %128, 0
  br i1 %tobool186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %cond.end.184
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.188:                                       ; preds = %cond.end.184
  %129 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gs_context_state_s* %129 to i8*
  %131 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %indev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %131, i32 0, i32 3
  store i8* %130, i8** %state, align 8, !tbaa !34
  %132 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %indev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %132, i32 0, i32 2
  %open_device = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 1
  %133 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device, align 8, !tbaa !35
  %134 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %indev, align 8, !tbaa !1
  %arraydecay189 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  %135 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory190 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %135, i32 0, i32 1
  %current191 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory190, i32 0, i32 0
  %136 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current191, align 8, !tbaa !24
  %137 = bitcast %struct.gs_ref_memory_s* %136 to %struct.gs_memory_s*
  %call192 = call i32 %133(%struct.gx_io_device_s* %134, i8* %arraydecay189, %struct.stream_s** %ins, %struct.gs_memory_s* %137) #5
  store i32 %call192, i32* %code, align 4, !tbaa !22
  %138 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %indev, align 8, !tbaa !1
  %state193 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %138, i32 0, i32 3
  store i8* null, i8** %state193, align 8, !tbaa !34
  %139 = load i32, i32* %code, align 4, !tbaa !22
  %cmp194 = icmp slt i32 %139, 0
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.end.188
  %140 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.197:                                       ; preds = %if.end.188
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack198 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %141, i32 0, i32 26
  %stack199 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack198, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack199, i32 0, i32 2
  %142 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %143 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack200 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %143, i32 0, i32 26
  %stack201 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack200, i32 0, i32 0
  %p202 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack201, i32 0, i32 0
  %144 = load %struct.ref_s*, %struct.ref_s** %p202, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %142 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %144 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp203 = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp203, label %if.then.205, label %if.end.208

if.then.205:                                      ; preds = %if.end.197
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack206 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %145, i32 0, i32 26
  %stack207 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack206, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack207, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %if.end.197
  br label %do.body

do.body:                                          ; preds = %if.end.208
  %146 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i64 2
  store %struct.ref_s* %add.ptr209, %struct.ref_s** %op, align 8, !tbaa !1
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack210 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %147, i32 0, i32 26
  %stack211 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack210, i32 0, i32 0
  %top212 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack211, i32 0, i32 2
  %148 = load %struct.ref_s*, %struct.ref_s** %top212, align 8, !tbaa !36
  %cmp213 = icmp ugt %struct.ref_s* %add.ptr209, %148
  br i1 %cmp213, label %if.then.215, label %if.else

if.then.215:                                      ; preds = %do.body
  %149 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack216 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %149, i32 0, i32 26
  %stack217 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack216, i32 0, i32 0
  %requested218 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack217, i32 0, i32 7
  store i32 2, i32* %requested218, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %150 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %151 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack219 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %151, i32 0, i32 26
  %stack220 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack219, i32 0, i32 0
  %p221 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack220, i32 0, i32 0
  store %struct.ref_s* %150, %struct.ref_s** %p221, align 8, !tbaa !21
  br label %if.end.222

if.end.222:                                       ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.222
  br label %do.end

do.end:                                           ; preds = %do.cond
  %152 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr223 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i64 -3
  %153 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %arraydecay224 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  call void @make_stream_file(%struct.ref_s* %add.ptr223, %struct.stream_s* %153, i8* %arraydecay224) #5
  %154 = load i32, i32* %statement, align 4, !tbaa !22
  %conv225 = trunc i32 %154 to i16
  %155 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr226, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv225, i16* %boolval, align 2, !tbaa !38
  %156 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %156, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr227, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !19
  %157 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i64 -1
  %value229 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr228, i32 0, i32 1
  %intval = bitcast %union.v* %value229 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !30
  %158 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i64 -1
  %tas231 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr230, i32 0, i32 0
  %type_attrs232 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas231, i32 0, i32 0
  store i16 2816, i16* %type_attrs232, align 2, !tbaa !19
  %159 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value233 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i32 0, i32 1
  %bytes = bitcast %union.v* %value233 to i8**
  store i8* null, i8** %bytes, align 8, !tbaa !1
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory234 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory234, i32 0, i32 2
  %161 = load i32, i32* %current_space, align 4, !tbaa !39
  %add = add i32 4608, %161
  %conv235 = trunc i32 %add to i16
  %162 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i32 0, i32 0
  %type_attrs237 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas236, i32 0, i32 0
  store i16 %conv235, i16* %type_attrs237, align 2, !tbaa !19
  %163 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas238, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !20
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call239 = call i32 @zfilelineedit(%struct.gs_context_state_s* %164) #5
  store i32 %call239, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.215, %if.then.205, %if.then.196, %if.then.187
  %165 = bitcast %struct.stream_s** %ins to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct.gx_io_device_s** %indev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  br label %cleanup.254

if.end.241:                                       ; preds = %lor.lhs.false
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %168 = bitcast %struct.gs_context_state_s* %167 to i8*
  %iodev242 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %169 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev242, align 8, !tbaa !25
  %state243 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %169, i32 0, i32 3
  store i8* %168, i8** %state243, align 8, !tbaa !34
  %iodev244 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %170 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev244, align 8, !tbaa !25
  %procs245 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %170, i32 0, i32 2
  %open_device246 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs245, i32 0, i32 1
  %171 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device246, align 8, !tbaa !35
  %iodev247 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %172 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev247, align 8, !tbaa !25
  %arraydecay248 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  %173 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory249 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %173, i32 0, i32 1
  %current250 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory249, i32 0, i32 0
  %174 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current250, align 8, !tbaa !24
  %175 = bitcast %struct.gs_ref_memory_s* %174 to %struct.gs_memory_s*
  %call251 = call i32 %171(%struct.gx_io_device_s* %172, i8* %arraydecay248, %struct.stream_s** %s, %struct.gs_memory_s* %175) #5
  store i32 %call251, i32* %code, align 4, !tbaa !22
  %iodev252 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %176 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev252, align 8, !tbaa !25
  %state253 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %176, i32 0, i32 3
  store i8* null, i8** %state253, align 8, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.254

cleanup.254:                                      ; preds = %if.end.241, %cleanup, %if.then.118
  %177 = bitcast i32* %lineedit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %statement to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.292 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.254
  br label %if.end.270

if.else.256:                                      ; preds = %land.lhs.true, %if.end.4
  %iodev257 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %179 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev257, align 8, !tbaa !25
  %cmp258 = icmp eq %struct.gx_io_device_s* %179, null
  br i1 %cmp258, label %if.then.260, label %if.end.265

if.then.260:                                      ; preds = %if.else.256
  %180 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory261 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %180, i32 0, i32 1
  %current262 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory261, i32 0, i32 0
  %181 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current262, align 8, !tbaa !24
  %182 = bitcast %struct.gs_ref_memory_s* %181 to %struct.gs_memory_s*
  %call263 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %182, i32 0) #5
  %iodev264 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  store %struct.gx_io_device_s* %call263, %struct.gx_io_device_s** %iodev264, align 8, !tbaa !25
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.260, %if.else.256
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay266 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  %184 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory267 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %184, i32 0, i32 1
  %current268 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory267, i32 0, i32 0
  %185 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current268, align 8, !tbaa !24
  %186 = bitcast %struct.gs_ref_memory_s* %185 to %struct.gs_memory_s*
  %call269 = call i32 @zopen_file(%struct.gs_context_state_s* %183, %struct.gs_parsed_file_name_s* %pname, i8* %arraydecay266, %struct.stream_s** %s, %struct.gs_memory_s* %186) #5
  store i32 %call269, i32* %code, align 4, !tbaa !22
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.265, %cleanup.cont
  %187 = load i32, i32* %code, align 4, !tbaa !22
  %cmp271 = icmp slt i32 %187, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.270
  %188 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.274:                                       ; preds = %if.end.270
  %189 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %190 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %190, i64 -1
  %value276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx275, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value276 to i8**
  %191 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %192 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i64 -1
  %tas278 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr277, i32 0, i32 0
  %rsize279 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas278, i32 0, i32 2
  %193 = load i32, i32* %rsize279, align 4, !tbaa !20
  %call280 = call i32 @ssetfilename(%struct.stream_s* %189, i8* %191, i32 %193) #5
  store i32 %call280, i32* %code, align 4, !tbaa !22
  %194 = load i32, i32* %code, align 4, !tbaa !22
  %cmp281 = icmp slt i32 %194, 0
  br i1 %cmp281, label %if.then.283, label %if.end.285

if.then.283:                                      ; preds = %if.end.274
  %195 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call284 = call i32 @sclose(%struct.stream_s* %195) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.285:                                       ; preds = %if.end.274
  %196 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr286 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %196, i64 -1
  %197 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay287 = getelementptr inbounds [4 x i8], [4 x i8]* %file_access, i32 0, i32 0
  call void @make_stream_file(%struct.ref_s* %add.ptr286, %struct.stream_s* %197, i8* %arraydecay287) #5
  %198 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack288 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %198, i32 0, i32 26
  %stack289 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack288, i32 0, i32 0
  %p290 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack289, i32 0, i32 0
  %199 = load %struct.ref_s*, %struct.ref_s** %p290, align 8, !tbaa !21
  %add.ptr291 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %199, i64 -1
  store %struct.ref_s* %add.ptr291, %struct.ref_s** %p290, align 8, !tbaa !21
  %200 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %200, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

cleanup.292:                                      ; preds = %if.end.285, %if.then.283, %if.then.273, %cleanup.254, %if.then.3, %if.then
  %201 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %203) #1
  %204 = bitcast [4 x i8]* %file_access to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = load i32, i32* %retval
  ret i32 %206
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_file_access_string(%struct.ref_s* %op, i8* %file_access) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %file_access.addr = alloca i8*, align 8
  %astr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  %0 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %4 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %8, i8** %astr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !20
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load i8*, i8** %astr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx8, align 1, !tbaa !32
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 43
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %sw.bb
  %13 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 43, i8* %arrayidx14, align 1, !tbaa !32
  %14 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 0, i8* %arrayidx15, align 1, !tbaa !32
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %15 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %arrayidx17, align 1, !tbaa !32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.16, %if.end.13
  %16 = load i8*, i8** %astr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx18, align 1, !tbaa !32
  %conv19 = zext i8 %17 to i32
  switch i32 %conv19, label %sw.default.21 [
    i32 114, label %sw.bb.20
    i32 119, label %sw.bb.20
    i32 97, label %sw.bb.20
  ]

sw.bb.20:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.22

sw.default.21:                                    ; preds = %sw.epilog
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.22:                                     ; preds = %sw.bb.20
  %18 = load i8*, i8** %astr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx23, align 1, !tbaa !32
  %20 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %arrayidx24, align 1, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.22, %sw.default.21, %sw.default, %if.then.12, %cond.end
  %21 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_file_name(%struct.ref_s* %op, %struct.gs_parsed_file_name_s* %pfn, i32 %safemode, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %safemode.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i32 %safemode, i32* %safemode.addr, align 4, !tbaa !22
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %4 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !20
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %7, i8* %9, i32 %11, %struct.gs_memory_s* %12) #5
  store i32 %call8, i32* %code, align 4, !tbaa !22
  %13 = load i32, i32* %code, align 4, !tbaa !22
  %cmp9 = icmp slt i32 %13, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %15 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %15, i32 0, i32 1
  %16 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %tobool = icmp ne %struct.gx_io_device_s* %16, null
  br i1 %tobool, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.12
  %17 = load i32, i32* %safemode.addr, align 4, !tbaa !22
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.69

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %18 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.31 to i64)), i64 1), label %land.lhs.true.15, label %cond.false.60

land.lhs.true.15:                                 ; preds = %land.lhs.true.14
  %call16 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #6
  store i64 %call16, i64* %__s2_len, align 8, !tbaa !30
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp17 = icmp ult i64 %20, 4
  br i1 %cmp17, label %cond.true.19, label %cond.false.60

cond.true.19:                                     ; preds = %land.lhs.true.15
  %21 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev21 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %22, i32 0, i32 1
  %23 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev21, align 8, !tbaa !25
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %dname, align 8, !tbaa !31
  store i8* %24, i8** %__s1, align 8, !tbaa !1
  %25 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx23, align 1, !tbaa !32
  %conv24 = zext i8 %27 to i32
  %28 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), align 1, !tbaa !32
  %conv25 = zext i8 %28 to i32
  %sub = sub nsw i32 %conv24, %conv25
  store i32 %sub, i32* %__result, align 4, !tbaa !22
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp26 = icmp ugt i64 %29, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.58

land.lhs.true.28:                                 ; preds = %cond.true.19
  %30 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp29 = icmp eq i32 %30, 0
  br i1 %cmp29, label %if.then.31, label %if.end.58

if.then.31:                                       ; preds = %land.lhs.true.28
  %31 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx32, align 1, !tbaa !32
  %conv33 = zext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i64 1), align 1, !tbaa !32
  %conv34 = zext i8 %33 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !22
  %34 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp36 = icmp ugt i64 %34, 1
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.57

land.lhs.true.38:                                 ; preds = %if.then.31
  %35 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %if.then.41, label %if.end.57

if.then.41:                                       ; preds = %land.lhs.true.38
  %36 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx42, align 1, !tbaa !32
  %conv43 = zext i8 %37 to i32
  %38 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i64 2), align 1, !tbaa !32
  %conv44 = zext i8 %38 to i32
  %sub45 = sub nsw i32 %conv43, %conv44
  store i32 %sub45, i32* %__result, align 4, !tbaa !22
  %39 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp46 = icmp ugt i64 %39, 2
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.56

land.lhs.true.48:                                 ; preds = %if.then.41
  %40 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp49 = icmp eq i32 %40, 0
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %land.lhs.true.48
  %41 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx52, align 1, !tbaa !32
  %conv53 = zext i8 %42 to i32
  %43 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i64 3), align 1, !tbaa !32
  %conv54 = zext i8 %43 to i32
  %sub55 = sub nsw i32 %conv53, %conv54
  store i32 %sub55, i32* %__result, align 4, !tbaa !22
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %land.lhs.true.48, %if.then.41
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.38, %if.then.31
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.28, %cond.true.19
  %44 = load i32, i32* %__result, align 4, !tbaa !22
  store i32 %44, i32* %tmp59, !tbaa !22
  %45 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %tmp59, !tbaa !22
  br label %cond.end.64

cond.false.60:                                    ; preds = %land.lhs.true.15, %land.lhs.true.14
  %48 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev61 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %48, i32 0, i32 1
  %49 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev61, align 8, !tbaa !25
  %dname62 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %49, i32 0, i32 0
  %50 = load i8*, i8** %dname62, align 8, !tbaa !31
  %call63 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #7
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.60, %if.end.58
  %cond65 = phi i32 [ %47, %if.end.58 ], [ %call63, %cond.false.60 ]
  store i32 %cond65, i32* %tmp, !tbaa !22
  %51 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %tmp, !tbaa !22
  %cmp66 = icmp eq i32 %53, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %cond.end.64
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %cond.end.64, %land.lhs.true, %if.end.12
  %54 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.then.68, %if.then.11, %cond.end
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define void @make_stream_file(%struct.ref_s* %pfile, %struct.stream_s* %s, i8* %access) #0 {
entry:
  %pfile.addr = alloca %struct.ref_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %access.addr = alloca i8*, align 8
  %attrs = alloca i32, align 4
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  %0 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 43
  %cond = select i1 %cmp, i32 112, i32 0
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %5 = bitcast %struct.gs_memory_s* %4 to %struct.gs_ref_memory_s*
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %5) #5
  %or = or i32 %cond, %call
  store i32 %or, i32* %attrs, align 4, !tbaa !22
  %6 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !32
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 114
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pfile6 = bitcast %union.v* %value to %struct.stream_s**
  store %struct.stream_s* %8, %struct.stream_s** %pfile6, align 8, !tbaa !1
  %10 = load i32, i32* %attrs, align 4, !tbaa !22
  %or7 = or i32 %10, 96
  %add = add i32 768, %or7
  %conv8 = trunc i32 %add to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv8, i16* %type_attrs, align 2, !tbaa !19
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 19
  %13 = load i16, i16* %read_id, align 2, !tbaa !45
  %conv9 = zext i16 %13 to i32
  %14 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  store i32 %conv9, i32* %rsize, align 4, !tbaa !20
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 20
  store i16 0, i16* %write_id, align 2, !tbaa !46
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pfile12 = bitcast %union.v* %value11 to %struct.stream_s**
  store %struct.stream_s* %16, %struct.stream_s** %pfile12, align 8, !tbaa !1
  %18 = load i32, i32* %attrs, align 4, !tbaa !22
  %or13 = or i32 %18, 16
  %add14 = add i32 768, %or13
  %conv15 = trunc i32 %add14 to i16
  %19 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 %conv15, i16* %type_attrs17, align 2, !tbaa !19
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 20
  %21 = load i16, i16* %write_id18, align 2, !tbaa !46
  %conv19 = zext i16 %21 to i32
  %22 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 2
  store i32 %conv19, i32* %rsize21, align 4, !tbaa !20
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 19
  store i16 0, i16* %read_id22, align 2, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

declare i32 @zfilelineedit(%struct.gs_context_state_s*) #4

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @zopen_file(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_parsed_file_name_s* %pfn, i8* %file_access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %file_access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %open_file = alloca i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %1, i32 0, i32 1
  %2 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev1, align 8, !tbaa !25
  store %struct.gx_io_device_s* %2, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %3 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %fname, align 8, !tbaa !33
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %5, i32 0, i32 2
  %open_device = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 1
  %6 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device, align 8, !tbaa !35
  %7 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %8 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %9 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_io_device_s* %7, i8* %8, %struct.stream_s** %9, %struct.gs_memory_s* %10) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.else:                                          ; preds = %entry
  %11 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %12, i32 0, i32 2
  %open_file3 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs2, i32 0, i32 2
  %13 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file3, align 8, !tbaa !47
  store i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %13, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %14 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %cmp4 = icmp eq i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_os_open_file, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %15 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %cmp6 = icmp eq i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %15, @iodev_os_open_file
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname8 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %18, i32 0, i32 2
  %19 = load i8*, i8** %fname8, align 8, !tbaa !33
  %20 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %20, i32 0, i32 3
  %21 = load i32, i32* %len, align 4, !tbaa !48
  %22 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = sext i8 %23 to i32
  %cmp9 = icmp eq i32 %conv, 114
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)
  %call11 = call i32 @check_file_permissions(%struct.gs_context_state_s* %17, i8* %19, i32 %21, i8* %cond) #5
  store i32 %call11, i32* %code, align 4, !tbaa !22
  %24 = load i32, i32* %code, align 4, !tbaa !22
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.7
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname14 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %26, i32 0, i32 2
  %27 = load i8*, i8** %fname14, align 8, !tbaa !33
  %28 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len15 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %28, i32 0, i32 3
  %29 = load i32, i32* %len15, align 4, !tbaa !48
  %call16 = call i32 @file_is_tempfile(%struct.gs_context_state_s* %25, i8* %27, i32 %29) #5
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true, %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.end
  %32 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %33 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %34 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname20 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %34, i32 0, i32 2
  %35 = load i8*, i8** %fname20, align 8, !tbaa !33
  %36 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len21 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %36, i32 0, i32 3
  %37 = load i32, i32* %len21, align 4, !tbaa !48
  %38 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %39 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call22 = call i32 %32(%struct.gx_io_device_s* %33, i8* %35, i32 %37, i8* %38, %struct.stream_s** %39, %struct.gs_memory_s* %40) #5
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.19, %cleanup
  %41 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %cleanup.24

cleanup.24:                                       ; preds = %cleanup.23, %if.then
  %42 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @ssetfilename(%struct.stream_s*, i8*, i32) #4

declare i32 @sclose(%struct.stream_s*) #4

; Function Attrs: nounwind uwtable
define i32 @zlibfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cname = alloca [2048 x i8], align 16
  %clen = alloca i32, align 4
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %iodev_dflt = alloca %struct.gx_io_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fref = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2048 x i8]* %cname to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #1
  %5 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 13
  %16 = load i32, i32* %LockFilePermissions, align 4, !tbaa !23
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %call = call i32 @parse_file_name(%struct.ref_s* %14, %struct.gs_parsed_file_name_s* %pname, i32 %16, %struct.gs_memory_s* %19) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %20 = load i32, i32* %code, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.10:                                        ; preds = %if.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory11, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current12, align 8, !tbaa !24
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %call13 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %24, i32 0) #5
  store %struct.gx_io_device_s* %call13, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %25 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %cmp14 = icmp eq %struct.gx_io_device_s* %25, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.10
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %iodev16 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  store %struct.gx_io_device_s* %26, %struct.gx_io_device_s** %iodev16, align 8, !tbaa !25
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.10
  %iodev18 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %27 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev18, align 8, !tbaa !25
  %28 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %cmp19 = icmp ne %struct.gx_io_device_s* %27, %28
  br i1 %cmp19, label %if.then.20, label %if.else.49

if.then.20:                                       ; preds = %if.end.17
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !24
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %call23 = call i32 @zopen_file(%struct.gs_context_state_s* %29, %struct.gs_parsed_file_name_s* %pname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct.stream_s** %s, %struct.gs_memory_s* %32) #5
  store i32 %call23, i32* %code, align 4, !tbaa !22
  %33 = load i32, i32* %code, align 4, !tbaa !22
  %cmp24 = icmp sge i32 %33, 0
  br i1 %cmp24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.20
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %36 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %38 = load i32, i32* %rsize, align 4, !tbaa !20
  %call26 = call i32 @ssetfilename(%struct.stream_s* %34, i8* %36, i32 %38) #5
  store i32 %call26, i32* %code, align 4, !tbaa !22
  %39 = load i32, i32* %code, align 4, !tbaa !22
  %cmp27 = icmp slt i32 %39, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.25
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @sclose(%struct.stream_s* %40) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.30:                                        ; preds = %if.then.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.20
  %41 = load i32, i32* %code, align 4, !tbaa !22
  %cmp32 = icmp slt i32 %41, 0
  br i1 %cmp32, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %if.end.31
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack35 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack34, i32 0, i32 0
  %top36 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack35, i32 0, i32 2
  %44 = load %struct.ref_s*, %struct.ref_s** %top36, align 8, !tbaa !36
  %cmp37 = icmp ugt %struct.ref_s* %add.ptr, %44
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %do.body
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack40 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack39, i32 0, i32 0
  %requested41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 7
  store i32 1, i32* %requested41, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.else:                                          ; preds = %do.body
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack43 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  store %struct.ref_s* %46, %struct.ref_s** %p44, align 8, !tbaa !21
  br label %if.end.45

if.end.45:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  br label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %boolval = bitcast %union.v* %value46 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !38
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.48:                                        ; preds = %if.end.31
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %50, %struct.stream_s* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.91

if.else.49:                                       ; preds = %if.end.17
  %52 = bitcast %struct.ref_s* %fref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %52) #1
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 16
  %54 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path, align 8, !tbaa !49
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current51 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory50, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current51, align 8, !tbaa !24
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %59 = load i8*, i8** %fname, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %60 = load i32, i32* %len, align 4, !tbaa !48
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %cname, i32 0, i32 0
  %call52 = call i32 @lib_file_open(%struct.gs_file_path_s* %54, %struct.gs_memory_s* %57, %struct.gs_context_state_s* %58, i8* %59, i32 %60, i8* %arraydecay, i32 2048, i32* %clen, %struct.ref_s* %fref) #5
  store i32 %call52, i32* %code, align 4, !tbaa !22
  %61 = load i32, i32* %code, align 4, !tbaa !22
  %cmp53 = icmp sge i32 %61, 0
  br i1 %cmp53, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.else.49
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fref, i32 0, i32 1
  %pfile = bitcast %union.v* %value55 to %struct.stream_s**
  %62 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %62, %struct.stream_s** %s, align 8, !tbaa !1
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cname, i32 0, i32 0
  %64 = load i32, i32* %clen, align 4, !tbaa !22
  %call57 = call i32 @ssetfilename(%struct.stream_s* %63, i8* %arraydecay56, i32 %64) #5
  store i32 %call57, i32* %code, align 4, !tbaa !22
  %65 = load i32, i32* %code, align 4, !tbaa !22
  %cmp58 = icmp slt i32 %65, 0
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.54
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @sclose(%struct.stream_s* %66) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.49
  %67 = load i32, i32* %code, align 4, !tbaa !22
  %cmp63 = icmp slt i32 %67, 0
  br i1 %cmp63, label %if.then.64, label %if.end.90

if.then.64:                                       ; preds = %if.end.62
  %68 = load i32, i32* %code, align 4, !tbaa !22
  %cmp65 = icmp eq i32 %68, -25
  br i1 %cmp65, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.64
  %69 = load i32, i32* %code, align 4, !tbaa !22
  %cmp66 = icmp eq i32 %69, -9
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %if.then.64
  %70 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %lor.lhs.false
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.68
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 1
  store %struct.ref_s* %add.ptr70, %struct.ref_s** %op, align 8, !tbaa !1
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 26
  %stack72 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack71, i32 0, i32 0
  %top73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 2
  %73 = load %struct.ref_s*, %struct.ref_s** %top73, align 8, !tbaa !36
  %cmp74 = icmp ugt %struct.ref_s* %add.ptr70, %73
  br i1 %cmp74, label %if.then.75, label %if.else.79

if.then.75:                                       ; preds = %do.body.69
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack77 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack76, i32 0, i32 0
  %requested78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 7
  store i32 1, i32* %requested78, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.79:                                       ; preds = %do.body.69
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 26
  %stack81 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  store %struct.ref_s* %75, %struct.ref_s** %p82, align 8, !tbaa !21
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  %77 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  %boolval87 = bitcast %union.v* %value86 to i16*
  store i16 0, i16* %boolval87, align 2, !tbaa !38
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %type_attrs89 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 0
  store i16 256, i16* %type_attrs89, align 2, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.62
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %80 = bitcast %struct.ref_s* %79 to i8*
  %81 = bitcast %struct.ref_s* %fref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false), !tbaa.struct !50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %do.end.85, %if.then.75, %if.then.67, %if.then.59
  %82 = bitcast %struct.ref_s* %fref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.113 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.91

if.end.91:                                        ; preds = %cleanup.cont, %if.end.48
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.91
  %83 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 1
  store %struct.ref_s* %add.ptr93, %struct.ref_s** %op, align 8, !tbaa !1
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %top96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 2
  %85 = load %struct.ref_s*, %struct.ref_s** %top96, align 8, !tbaa !36
  %cmp97 = icmp ugt %struct.ref_s* %add.ptr93, %85
  br i1 %cmp97, label %if.then.98, label %if.else.102

if.then.98:                                       ; preds = %do.body.92
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 26
  %stack100 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack99, i32 0, i32 0
  %requested101 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack100, i32 0, i32 7
  store i32 1, i32* %requested101, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.else.102:                                      ; preds = %do.body.92
  %87 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %88 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack103 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %88, i32 0, i32 26
  %stack104 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack103, i32 0, i32 0
  %p105 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack104, i32 0, i32 0
  store %struct.ref_s* %87, %struct.ref_s** %p105, align 8, !tbaa !21
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.102
  br label %do.cond.107

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %89 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 1
  %boolval110 = bitcast %union.v* %value109 to i16*
  store i16 1, i16* %boolval110, align 2, !tbaa !38
  %90 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i32 0, i32 0
  %type_attrs112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 0
  store i16 256, i16* %type_attrs112, align 2, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

cleanup.113:                                      ; preds = %do.end.108, %if.then.98, %cleanup, %do.end, %if.then.38, %if.then.28, %if.then.9, %if.then
  %91 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %93) #1
  %94 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast [2048 x i8]* %cname to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %95) #1
  %96 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define i32 @lib_file_open(%struct.gs_file_path_s* %lib_path, %struct.gs_memory_s* %mem, %struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %flen, i8* %buffer, i32 %blen, i32* %pclen, %struct.ref_s* %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %lib_path.addr = alloca %struct.gs_file_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32, align 4
  %pclen.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %starting_arg_file = alloca i32, align 4
  %search_with_no_combine = alloca i32, align 4
  %search_with_combine = alloca i32, align 4
  %fmode = alloca [4 x i8], align 1
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_file_path_s* %lib_path, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !22
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %blen, i32* %blen.addr, align 4, !tbaa !22
  store i32* %pclen, i32** %pclen.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %starting_arg_file to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_context_state_s* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %starting_arg_file1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 14
  %3 = load i32, i32* %starting_arg_file1, align 4, !tbaa !53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %starting_arg_file, align 4, !tbaa !22
  %4 = bitcast i32* %search_with_no_combine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %search_with_no_combine, align 4, !tbaa !22
  %5 = bitcast i32* %search_with_combine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %search_with_combine, align 4, !tbaa !22
  %6 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lib_file_open.fmode, i32 0, i32 0), i64 4, i32 1, i1 false)
  %8 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %9, i32 0) #5
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %10 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %11) #5
  store %struct.gs_main_instance_s* %call2, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_context_state_s* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %starting_arg_file3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 14
  store i32 0, i32* %starting_arg_file3, align 4, !tbaa !53
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gx_io_device_s* %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** getelementptr inbounds ([0 x %struct.gx_io_device_s*], [0 x %struct.gx_io_device_s*]* @gx_io_device_table, i32 0, i64 0), align 8, !tbaa !1
  store %struct.gx_io_device_s* %16, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call7 = call i8* @strcat(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0)) #7
  %17 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %18 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %call8 = call i32 @gp_file_name_is_absolute(i8* %17, i32 %18) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %search_with_no_combine, align 4, !tbaa !22
  store i32 0, i32* %search_with_combine, align 4, !tbaa !22
  br label %if.end.11

if.else:                                          ; preds = %if.end.6
  %19 = load i32, i32* %starting_arg_file, align 4, !tbaa !22
  store i32 %19, i32* %search_with_no_combine, align 4, !tbaa !22
  store i32 1, i32* %search_with_combine, align 4, !tbaa !22
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %20 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %search_here_first = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %20, i32 0, i32 6
  %21 = load i32, i32* %search_here_first, align 4, !tbaa !54
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %if.then.13, label %if.else.30

if.then.13:                                       ; preds = %if.end.11
  %22 = load i32, i32* %search_with_no_combine, align 4, !tbaa !22
  %tobool14 = icmp ne i32 %22, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.13
  %23 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %27 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %28 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %29 = load i32, i32* %blen.addr, align 4, !tbaa !22
  %30 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %32 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %33 = load i32, i32* %starting_arg_file, align 4, !tbaa !22
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call17 = call i32 @lib_file_open_search_with_no_combine(%struct.gs_file_path_s* %23, %struct.gs_memory_s* %24, %struct.gs_context_state_s* %25, i8* %26, i32 %27, i8* %28, i32 %29, i32* %30, %struct.ref_s* %31, %struct.gx_io_device_s* %32, i32 %33, i8* %arraydecay16) #5
  store i32 %call17, i32* %code, align 4, !tbaa !22
  %34 = load i32, i32* %code, align 4, !tbaa !22
  %cmp18 = icmp sle i32 %34, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  %35 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.13
  %36 = load i32, i32* %search_with_combine, align 4, !tbaa !22
  %tobool22 = icmp ne i32 %36, 0
  br i1 %tobool22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.21
  %37 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %41 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %42 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %43 = load i32, i32* %blen.addr, align 4, !tbaa !22
  %44 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  %45 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %46 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %47 = load i32, i32* %starting_arg_file, align 4, !tbaa !22
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call25 = call i32 @lib_file_open_search_with_combine(%struct.gs_file_path_s* %37, %struct.gs_memory_s* %38, %struct.gs_context_state_s* %39, i8* %40, i32 %41, i8* %42, i32 %43, i32* %44, %struct.ref_s* %45, %struct.gx_io_device_s* %46, i32 %47, i8* %arraydecay24) #5
  store i32 %call25, i32* %code, align 4, !tbaa !22
  %48 = load i32, i32* %code, align 4, !tbaa !22
  %cmp26 = icmp sle i32 %48, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  %49 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.21
  br label %if.end.47

if.else.30:                                       ; preds = %if.end.11
  %50 = load i32, i32* %search_with_combine, align 4, !tbaa !22
  %tobool31 = icmp ne i32 %50, 0
  br i1 %tobool31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.else.30
  %51 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %55 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %56 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %57 = load i32, i32* %blen.addr, align 4, !tbaa !22
  %58 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %60 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %61 = load i32, i32* %starting_arg_file, align 4, !tbaa !22
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call34 = call i32 @lib_file_open_search_with_combine(%struct.gs_file_path_s* %51, %struct.gs_memory_s* %52, %struct.gs_context_state_s* %53, i8* %54, i32 %55, i8* %56, i32 %57, i32* %58, %struct.ref_s* %59, %struct.gx_io_device_s* %60, i32 %61, i8* %arraydecay33) #5
  store i32 %call34, i32* %code, align 4, !tbaa !22
  %62 = load i32, i32* %code, align 4, !tbaa !22
  %cmp35 = icmp sle i32 %62, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %63 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else.30
  %64 = load i32, i32* %search_with_no_combine, align 4, !tbaa !22
  %tobool39 = icmp ne i32 %64, 0
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.end.38
  %65 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %69 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %70 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %71 = load i32, i32* %blen.addr, align 4, !tbaa !22
  %72 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  %73 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %74 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %75 = load i32, i32* %starting_arg_file, align 4, !tbaa !22
  %arraydecay41 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call42 = call i32 @lib_file_open_search_with_no_combine(%struct.gs_file_path_s* %65, %struct.gs_memory_s* %66, %struct.gs_context_state_s* %67, i8* %68, i32 %69, i8* %70, i32 %71, i32* %72, %struct.ref_s* %73, %struct.gx_io_device_s* %74, i32 %75, i8* %arraydecay41) #5
  store i32 %call42, i32* %code, align 4, !tbaa !22
  %76 = load i32, i32* %code, align 4, !tbaa !22
  %cmp43 = icmp sle i32 %76, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  %77 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.38
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.29
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.44, %if.then.36, %if.then.27, %if.then.19
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %search_with_combine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %search_with_no_combine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %starting_arg_file to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @zdeletefile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call = call i32 @parse_real_file_name(%struct.ref_s* %5, %struct.gs_parsed_file_name_s* %pname, %struct.gs_memory_s* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !24
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %call3 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %14, i32 0) #5
  %cmp4 = icmp eq %struct.gx_io_device_s* %11, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %16 = load i8*, i8** %fname, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %17 = load i32, i32* %len, align 4, !tbaa !48
  %call6 = call i32 @check_file_permissions(%struct.gs_context_state_s* %15, i8* %16, i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)) #5
  store i32 %call6, i32* %code, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.5
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %bytes, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !20
  %call8 = call i32 @file_is_tempfile(%struct.gs_context_state_s* %18, i8* %20, i32 %22) #5
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %land.lhs.true, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %iodev12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %24 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev12, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %24, i32 0, i32 2
  %delete_file = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 5
  %25 = load i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*)** %delete_file, align 8, !tbaa !57
  %iodev13 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev13, align 8, !tbaa !25
  %fname14 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %27 = load i8*, i8** %fname14, align 8, !tbaa !33
  %call15 = call i32 %25(%struct.gx_io_device_s* %26, i8* %27) #5
  store i32 %call15, i32* %code, align 4, !tbaa !22
  call void @gs_free_file_name(%struct.gs_parsed_file_name_s* %pname, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #5
  %28 = load i32, i32* %code, align 4, !tbaa !22
  %cmp16 = icmp slt i32 %28, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  %29 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.11
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p21, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.9, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %33) #1
  %34 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16352
  %cmp = icmp eq i32 %and, 992
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 3
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
  br label %cleanup.61

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !58
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !59
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -4
  %cmp11 = icmp ugt %struct.ref_s* %10, %add.ptr
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end
  %13 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack14, i32 0, i32 0
  %call16 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack15, i32 4) #5
  store i32 %call16, i32* %es_code_, align 4, !tbaa !22
  %15 = load i32, i32* %es_code_, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  %16 = load i32, i32* %es_code_, align 4, !tbaa !22
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %17 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %if.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !58
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p24, align 8, !tbaa !58
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !58
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @execfile_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !58
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 3712, i16* %type_attrs32, align 2, !tbaa !19
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !58
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !20
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack38 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack37, i32 0, i32 0
  %p39 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !58
  %incdec.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 1
  store %struct.ref_s* %incdec.ptr40, %struct.ref_s** %p39, align 8, !tbaa !58
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %incdec.ptr40 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !50
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p43, align 8, !tbaa !58
  %incdec.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 1
  store %struct.ref_s* %incdec.ptr44, %struct.ref_s** %p43, align 8, !tbaa !58
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !58
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %opproc49 = bitcast %union.v* %value48 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @execfile_finish, i32 (%struct.gs_context_state_s*)** %opproc49, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !58
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 3968, i16* %type_attrs54, align 2, !tbaa !19
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !58
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %rsize59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  store i32 0, i32* %rsize59, align 4, !tbaa !20
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call60 = call i32 @zexec(%struct.gs_context_state_s* %39) #5
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %if.end.21, %cleanup, %cond.end
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @zfilenameforall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfen = alloca %struct.file_enum_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %5 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !22
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4624
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %14 = load i16, i16* %type_attrs9, align 2, !tbaa !19
  %conv10 = zext i16 %14 to i32
  %and11 = and i32 %conv10, 15552
  %cmp12 = icmp eq i32 %and11, 1216
  br i1 %cmp12, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %do.body
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %call16 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx15) #5
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.17:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %17 = load i16, i16* %type_attrs20, align 2, !tbaa !19
  %conv21 = zext i16 %17 to i32
  %and22 = and i32 %conv21, 16160
  %cmp23 = icmp eq i32 %and22, 4640
  br i1 %cmp23, label %if.end.39, label %if.then.25

if.then.25:                                       ; preds = %do.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %19 = bitcast i16* %type_attrs28 to i8*
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx29, align 1, !tbaa !32
  %conv30 = zext i8 %20 to i32
  %cmp31 = icmp eq i32 %conv30, 18
  br i1 %cmp31, label %cond.false.36, label %cond.true.33

cond.true.33:                                     ; preds = %if.then.25
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %call35 = call i32 @check_type_failed(%struct.ref_s* %arrayidx34) #5
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.then.25
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.33
  %cond38 = phi i32 [ %call35, %cond.true.33 ], [ -7, %cond.false.36 ]
  store i32 %cond38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.39:                                        ; preds = %do.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !58
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 2
  %25 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !59
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -7
  %cmp44 = icmp ugt %struct.ref_s* %23, %add.ptr
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.39
  %26 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack48 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack47, i32 0, i32 0
  %call49 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack48, i32 7) #5
  store i32 %call49, i32* %es_code_, align 4, !tbaa !22
  %28 = load i32, i32* %es_code_, align 4, !tbaa !22
  %cmp50 = icmp slt i32 %28, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.46
  %29 = load i32, i32* %es_code_, align 4, !tbaa !22
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52
  %30 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.179 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont, %if.end.39
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 13
  %33 = load i32, i32* %LockFilePermissions, align 4, !tbaa !23
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %call56 = call i32 @parse_file_name(%struct.ref_s* %add.ptr55, %struct.gs_parsed_file_name_s* %pname, i32 %33, %struct.gs_memory_s* %36) #5
  store i32 %call56, i32* %code, align 4, !tbaa !22
  %37 = load i32, i32* %code, align 4, !tbaa !22
  %cmp57 = icmp slt i32 %37, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  %38 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.60:                                        ; preds = %if.end.54
  %iodev61 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %39 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev61, align 8, !tbaa !25
  %cmp62 = icmp eq %struct.gx_io_device_s* %39, null
  br i1 %cmp62, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %if.end.60
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current66 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current66, align 8, !tbaa !24
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %call67 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %42, i32 0) #5
  br label %cond.end.70

cond.false.68:                                    ; preds = %if.end.60
  %iodev69 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %43 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev69, align 8, !tbaa !25
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.68, %cond.true.64
  %cond71 = phi %struct.gx_io_device_s* [ %call67, %cond.true.64 ], [ %43, %cond.false.68 ]
  store %struct.gx_io_device_s* %cond71, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %44 = load i32, i32* %len, align 4, !tbaa !48
  %cmp72 = icmp eq i32 %44, 0
  br i1 %cmp72, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.70
  %45 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %45, i32 0, i32 2
  %enumerate_files = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 8
  %46 = load %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)** %enumerate_files, align 8, !tbaa !60
  %cmp74 = icmp eq %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* %46, @iodev_no_enumerate_files
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %lor.lhs.false, %cond.end.70
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack78 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack77, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack78, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p79, align 8, !tbaa !21
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -3
  store %struct.ref_s* %add.ptr80, %struct.ref_s** %p79, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.81:                                        ; preds = %lor.lhs.false
  %49 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs82 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %49, i32 0, i32 2
  %enumerate_files83 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs82, i32 0, i32 8
  %50 = load %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)** %enumerate_files83, align 8, !tbaa !60
  %51 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %52 = load i8*, i8** %fname, align 8, !tbaa !33
  %len84 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %53 = load i32, i32* %len84, align 4, !tbaa !48
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 1
  %current86 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory85, i32 0, i32 0
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current86, align 8, !tbaa !24
  %56 = bitcast %struct.gs_ref_memory_s* %55 to %struct.gs_memory_s*
  %call87 = call %struct.file_enum_s* %50(%struct.gx_io_device_s* %51, i8* %52, i32 %53, %struct.gs_memory_s* %56) #5
  store %struct.file_enum_s* %call87, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %57 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %cmp88 = icmp eq %struct.file_enum_s* %57, null
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.81
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.91:                                        ; preds = %if.end.81
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack92 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 25
  %stack93 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack92, i32 0, i32 0
  %p94 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack93, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p94, align 8, !tbaa !58
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p94, align 8, !tbaa !58
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack96 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !58
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @file_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 25
  %stack99 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack98, i32 0, i32 0
  %p100 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack99, i32 0, i32 0
  %63 = load %struct.ref_s*, %struct.ref_s** %p100, align 8, !tbaa !58
  %tas101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs102 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas101, i32 0, i32 0
  store i16 3712, i16* %type_attrs102, align 2, !tbaa !19
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack103 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 25
  %stack104 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack103, i32 0, i32 0
  %p105 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack104, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p105, align 8, !tbaa !58
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 2
  store i32 2, i32* %rsize, align 4, !tbaa !20
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 25
  %stack108 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack107, i32 0, i32 0
  %p109 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack108, i32 0, i32 0
  %67 = load %struct.ref_s*, %struct.ref_s** %p109, align 8, !tbaa !58
  %incdec.ptr110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 1
  store %struct.ref_s* %incdec.ptr110, %struct.ref_s** %p109, align 8, !tbaa !58
  %68 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %69 = bitcast %struct.gx_io_device_s* %68 to %struct.obj_header_s*
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack111 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 25
  %stack112 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack111, i32 0, i32 0
  %p113 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack112, i32 0, i32 0
  %71 = load %struct.ref_s*, %struct.ref_s** %p113, align 8, !tbaa !58
  %value114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %pstruct = bitcast %union.v* %value114 to %struct.obj_header_s**
  store %struct.obj_header_s* %69, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory115, i32 0, i32 2
  %73 = load i32, i32* %current_space, align 4, !tbaa !39
  %or = or i32 0, %73
  %add = add i32 2048, %or
  %conv116 = trunc i32 %add to i16
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 25
  %stack118 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack117, i32 0, i32 0
  %p119 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack118, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p119, align 8, !tbaa !58
  %tas120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %type_attrs121 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas120, i32 0, i32 0
  store i16 %conv116, i16* %type_attrs121, align 2, !tbaa !19
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 25
  %stack123 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 0
  %77 = load %struct.ref_s*, %struct.ref_s** %p124, align 8, !tbaa !58
  %incdec.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 1
  store %struct.ref_s* %incdec.ptr125, %struct.ref_s** %p124, align 8, !tbaa !58
  %78 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -2
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr126, i32 0, i32 0
  %rsize128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 2
  %79 = load i32, i32* %rsize128, align 4, !tbaa !20
  %len129 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %80 = load i32, i32* %len129, align 4, !tbaa !48
  %sub = sub i32 %79, %80
  %conv130 = zext i32 %sub to i64
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack131 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 25
  %stack132 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack131, i32 0, i32 0
  %p133 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack132, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p133, align 8, !tbaa !58
  %value134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %intval = bitcast %union.v* %value134 to i64*
  store i64 %conv130, i64* %intval, align 8, !tbaa !30
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack136 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack135, i32 0, i32 0
  %p137 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack136, i32 0, i32 0
  %84 = load %struct.ref_s*, %struct.ref_s** %p137, align 8, !tbaa !58
  %tas138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs139 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas138, i32 0, i32 0
  store i16 2816, i16* %type_attrs139, align 2, !tbaa !19
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack140 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 25
  %stack141 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack140, i32 0, i32 0
  %p142 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack141, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p142, align 8, !tbaa !58
  %incdec.ptr143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 1
  store %struct.ref_s* %incdec.ptr143, %struct.ref_s** %p142, align 8, !tbaa !58
  %87 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %88 = bitcast %struct.ref_s* %incdec.ptr143 to i8*
  %89 = bitcast %struct.ref_s* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false), !tbaa.struct !50
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 25
  %stack145 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack144, i32 0, i32 0
  %p146 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack145, i32 0, i32 0
  %91 = load %struct.ref_s*, %struct.ref_s** %p146, align 8, !tbaa !58
  %incdec.ptr147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 1
  store %struct.ref_s* %incdec.ptr147, %struct.ref_s** %p146, align 8, !tbaa !58
  %92 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %93 = bitcast %struct.file_enum_s* %92 to %struct.obj_header_s*
  %94 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack148 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %94, i32 0, i32 25
  %stack149 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack148, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %95 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !58
  %value151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  %pstruct152 = bitcast %union.v* %value151 to %struct.obj_header_s**
  store %struct.obj_header_s* %93, %struct.obj_header_s** %pstruct152, align 8, !tbaa !1
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory153 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current_space154 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory153, i32 0, i32 2
  %97 = load i32, i32* %current_space154, align 4, !tbaa !39
  %or155 = or i32 0, %97
  %add156 = add i32 2048, %or155
  %conv157 = trunc i32 %add156 to i16
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack158 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 25
  %stack159 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack158, i32 0, i32 0
  %p160 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack159, i32 0, i32 0
  %99 = load %struct.ref_s*, %struct.ref_s** %p160, align 8, !tbaa !58
  %tas161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 0
  %type_attrs162 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas161, i32 0, i32 0
  store i16 %conv157, i16* %type_attrs162, align 2, !tbaa !19
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack163 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 25
  %stack164 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack163, i32 0, i32 0
  %p165 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack164, i32 0, i32 0
  %101 = load %struct.ref_s*, %struct.ref_s** %p165, align 8, !tbaa !58
  %incdec.ptr166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 1
  store %struct.ref_s* %incdec.ptr166, %struct.ref_s** %p165, align 8, !tbaa !58
  %102 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -1
  %103 = bitcast %struct.ref_s* %incdec.ptr166 to i8*
  %104 = bitcast %struct.ref_s* %arrayidx167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 16, i32 8, i1 false), !tbaa.struct !50
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack168 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 26
  %stack169 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack168, i32 0, i32 0
  %p170 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack169, i32 0, i32 0
  %106 = load %struct.ref_s*, %struct.ref_s** %p170, align 8, !tbaa !21
  %add.ptr171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i64 -3
  store %struct.ref_s* %add.ptr171, %struct.ref_s** %p170, align 8, !tbaa !21
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call172 = call i32 @file_continue(%struct.gs_context_state_s* %107) #5
  store i32 %call172, i32* %code, align 4, !tbaa !22
  %108 = load i32, i32* %code, align 4, !tbaa !22
  %cmp173 = icmp eq i32 %108, 14
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %if.end.91
  br label %cond.end.177

cond.false.176:                                   ; preds = %if.end.91
  %109 = load i32, i32* %code, align 4, !tbaa !22
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.176, %cond.true.175
  %cond178 = phi i32 [ 5, %cond.true.175 ], [ %109, %cond.false.176 ]
  store i32 %cond178, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %cond.end.177, %if.then.90, %if.then.76, %if.then.59, %cleanup, %cond.end.37, %if.then.14, %cond.end
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %111) #1
  %112 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @zfilenamelistseparator(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* @gp_file_name_list_separator, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !19
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  store i32 1, i32* %rsize, align 4, !tbaa !20
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
define internal i32 @zfilenamesplit(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !19
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
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !32
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
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %9 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @zrenamefile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %pname1 = alloca %struct.gs_parsed_file_name_s, align 8
  %pname2 = alloca %struct.gs_parsed_file_name_s, align 8
  %cleanup.dest.slot = alloca i32
  %iodev_dflt = alloca %struct.gx_io_device_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %3, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = bitcast %struct.gs_parsed_file_name_s* %pname1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast %struct.gs_parsed_file_name_s* %pname2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %call = call i32 @parse_real_file_name(%struct.ref_s* %6, %struct.gs_parsed_file_name_s* %pname2, %struct.gs_memory_s* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %10 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 2
  store i8* null, i8** %fname, align 8, !tbaa !33
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !24
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call3 = call i32 @parse_real_file_name(%struct.ref_s* %add.ptr, %struct.gs_parsed_file_name_s* %pname1, %struct.gs_memory_s* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #5
  store i32 %call3, i32* %code, align 4, !tbaa !22
  %16 = load i32, i32* %code, align 4, !tbaa !22
  %cmp4 = icmp sge i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.53

if.then.5:                                        ; preds = %if.end
  %17 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !24
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %call8 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %20, i32 0) #5
  store %struct.gx_io_device_s* %call8, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %21 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %iodev9 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 1
  %22 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev9, align 8, !tbaa !25
  %cmp10 = icmp ne %struct.gx_io_device_s* %21, %22
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.then.5
  %iodev12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %23 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev12, align 8, !tbaa !25
  %24 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gx_io_device_s* %23, %24
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.11
  %iodev15 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 1
  %25 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev15, align 8, !tbaa !25
  %iodev16 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  store %struct.gx_io_device_s* %25, %struct.gx_io_device_s** %iodev16, align 8, !tbaa !25
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.then.11
  %iodev18 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 1
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev18, align 8, !tbaa !25
  %27 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.gx_io_device_s* %26, %27
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %iodev21 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %28 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev21, align 8, !tbaa !25
  %iodev22 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 1
  store %struct.gx_io_device_s* %28, %struct.gx_io_device_s** %iodev22, align 8, !tbaa !25
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.5
  %iodev25 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %29 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev25, align 8, !tbaa !25
  %iodev26 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 1
  %30 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev26, align 8, !tbaa !25
  %cmp27 = icmp ne %struct.gx_io_device_s* %29, %30
  br i1 %cmp27, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %iodev28 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %31 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev28, align 8, !tbaa !25
  %32 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.gx_io_device_s* %31, %32
  br i1 %cmp29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %fname30 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 2
  %34 = load i8*, i8** %fname30, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 3
  %35 = load i32, i32* %len, align 4, !tbaa !48
  %call31 = call i32 @check_file_permissions(%struct.gs_context_state_s* %33, i8* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)) #5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %land.lhs.true.33, label %lor.lhs.false.36

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %38 = load i8*, i8** %bytes, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %40 = load i32, i32* %rsize, align 4, !tbaa !20
  %call35 = call i32 @file_is_tempfile(%struct.gs_context_state_s* %36, i8* %38, i32 %40) #5
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %lor.lhs.false.36, label %if.then.46

lor.lhs.false.36:                                 ; preds = %land.lhs.true.33, %land.lhs.true
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %fname37 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 2
  %42 = load i8*, i8** %fname37, align 8, !tbaa !33
  %len38 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 3
  %43 = load i32, i32* %len38, align 4, !tbaa !48
  %call39 = call i32 @check_file_permissions(%struct.gs_context_state_s* %41, i8* %42, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)) #5
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.36
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %fname42 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 2
  %45 = load i8*, i8** %fname42, align 8, !tbaa !33
  %len43 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 3
  %46 = load i32, i32* %len43, align 4, !tbaa !48
  %call44 = call i32 @check_file_permissions(%struct.gs_context_state_s* %44, i8* %45, i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.36, %land.lhs.true.33, %if.end.24
  store i32 -9, i32* %code, align 4, !tbaa !22
  br label %if.end.52

if.else:                                          ; preds = %lor.lhs.false.41, %lor.lhs.false
  %iodev47 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %47 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev47, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %47, i32 0, i32 2
  %rename_file = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 6
  %48 = load i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)** %rename_file, align 8, !tbaa !61
  %iodev48 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 1
  %49 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev48, align 8, !tbaa !25
  %fname49 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname1, i32 0, i32 2
  %50 = load i8*, i8** %fname49, align 8, !tbaa !33
  %fname50 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname2, i32 0, i32 2
  %51 = load i8*, i8** %fname50, align 8, !tbaa !33
  %call51 = call i32 %48(%struct.gx_io_device_s* %49, i8* %50, i8* %51) #5
  store i32 %call51, i32* %code, align 4, !tbaa !22
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.46
  %52 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  call void @gs_free_file_name(%struct.gs_parsed_file_name_s* %pname2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #5
  call void @gs_free_file_name(%struct.gs_parsed_file_name_s* %pname1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #5
  %53 = load i32, i32* %code, align 4, !tbaa !22
  %cmp54 = icmp slt i32 %53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %54 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.53
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 26
  %stack58 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !21
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -2
  store %struct.ref_s* %add.ptr60, %struct.ref_s** %p59, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then
  %57 = bitcast %struct.gs_parsed_file_name_s* %pname2 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #1
  %58 = bitcast %struct.gs_parsed_file_name_s* %pname1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %58) #1
  %59 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @zstatus(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %fstat = alloca %struct.stat, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 18, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %8 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %8, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 19
  %10 = load i16, i16* %read_id, align 2, !tbaa !45
  %conv1 = zext i16 %10 to i32
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 20
  %12 = load i16, i16* %write_id, align 2, !tbaa !46
  %conv2 = zext i16 %12 to i32
  %or = or i32 %conv1, %conv2
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !20
  %cmp = icmp eq i32 %or, %14
  %cond = select i1 %cmp, i32 1, i32 0
  %conv5 = trunc i32 %cond to i16
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %boolval = bitcast %union.v* %value6 to i16*
  store i16 %conv5, i16* %boolval, align 2, !tbaa !38
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  store i16 256, i16* %type_attrs8, align 2, !tbaa !19
  %17 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

sw.bb.9:                                          ; preds = %entry
  %18 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %18) #1
  %19 = bitcast %struct.stat* %fstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 13
  %23 = load i32, i32* %LockFilePermissions, align 4, !tbaa !23
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %call = call i32 @parse_file_name(%struct.ref_s* %21, %struct.gs_parsed_file_name_s* %pname, i32 %23, %struct.gs_memory_s* %26) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %27 = load i32, i32* %code, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %27, 0
  br i1 %cmp10, label %if.then, label %if.end.19

if.then:                                          ; preds = %sw.bb.9
  %28 = load i32, i32* %code, align 4, !tbaa !22
  %cmp12 = icmp eq i32 %28, -22
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %boolval16 = bitcast %union.v* %value15 to i16*
  store i16 0, i16* %boolval16, align 2, !tbaa !38
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  store i16 256, i16* %type_attrs18, align 2, !tbaa !19
  store i32 0, i32* %code, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %31 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %sw.bb.9
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !24
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %call22 = call i32 @gs_terminate_file_name(%struct.gs_parsed_file_name_s* %pname, %struct.gs_memory_s* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #5
  store i32 %call22, i32* %code, align 4, !tbaa !22
  %35 = load i32, i32* %code, align 4, !tbaa !22
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  %36 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.19
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %37 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %37, i32 0, i32 2
  %file_status = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 7
  %38 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)** %file_status, align 8, !tbaa !62
  %iodev27 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %39 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev27, align 8, !tbaa !25
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %40 = load i8*, i8** %fname, align 8, !tbaa !33
  %call28 = call i32 %38(%struct.gx_io_device_s* %39, i8* %40, %struct.stat* %fstat) #5
  store i32 %call28, i32* %code, align 4, !tbaa !22
  %41 = load i32, i32* %code, align 4, !tbaa !22
  switch i32 %41, label %sw.epilog [
    i32 0, label %sw.bb.29
    i32 -22, label %sw.bb.100
  ]

sw.bb.29:                                         ; preds = %if.end.26
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 2
  %43 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp35 = icmp slt i64 %sub.ptr.div, 4
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %sw.bb.29
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %sw.bb.29
  br label %do.body

do.body:                                          ; preds = %if.end.40
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 26
  %stack42 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack41, i32 0, i32 0
  %top43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 2
  %49 = load %struct.ref_s*, %struct.ref_s** %top43, align 8, !tbaa !36
  %cmp44 = icmp ugt %struct.ref_s* %add.ptr, %49
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %do.body
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 26
  %stack48 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack47, i32 0, i32 0
  %requested49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack48, i32 0, i32 7
  store i32 4, i32* %requested49, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack51 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  store %struct.ref_s* %51, %struct.ref_s** %p52, align 8, !tbaa !21
  br label %if.end.53

if.end.53:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.53
  br label %do.end

do.end:                                           ; preds = %do.cond
  %st_blocks = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 10
  %53 = load i64, i64* %st_blocks, align 8, !tbaa !63
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -4
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr54, i32 0, i32 1
  %intval = bitcast %union.v* %value55 to i64*
  store i64 %53, i64* %intval, align 8, !tbaa !30
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -4
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  store i16 2816, i16* %type_attrs58, align 2, !tbaa !19
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 8
  %56 = load i64, i64* %st_size, align 8, !tbaa !66
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -3
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 1
  %intval61 = bitcast %union.v* %value60 to i64*
  store i64 %56, i64* %intval61, align 8, !tbaa !30
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -3
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr62, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  store i16 2816, i16* %type_attrs64, align 2, !tbaa !19
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -4
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx65, i32 0, i32 1
  %intval67 = bitcast %union.v* %value66 to i64*
  %60 = load i64, i64* %intval67, align 8, !tbaa !30
  %conv68 = sitofp i64 %60 to double
  %st_blocks69 = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 10
  %61 = load i64, i64* %st_blocks69, align 8, !tbaa !63
  %conv70 = sitofp i64 %61 to double
  %cmp71 = fcmp une double %conv68, %conv70
  br i1 %cmp71, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -3
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx73, i32 0, i32 1
  %intval75 = bitcast %union.v* %value74 to i64*
  %63 = load i64, i64* %intval75, align 8, !tbaa !30
  %conv76 = sitofp i64 %63 to double
  %st_size77 = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 8
  %64 = load i64, i64* %st_size77, align 8, !tbaa !66
  %conv78 = sitofp i64 %64 to double
  %cmp79 = fcmp une double %conv76, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false, %do.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %lor.lhs.false
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %65 = load i64, i64* %tv_sec, align 8, !tbaa !67
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -2
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr83, i32 0, i32 1
  %intval85 = bitcast %union.v* %value84 to i64*
  store i64 %65, i64* %intval85, align 8, !tbaa !30
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %tas87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr86, i32 0, i32 0
  %type_attrs88 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas87, i32 0, i32 0
  store i16 2816, i16* %type_attrs88, align 2, !tbaa !19
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %fstat, i32 0, i32 13
  %tv_sec89 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %68 = load i64, i64* %tv_sec89, align 8, !tbaa !68
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr90, i32 0, i32 1
  %intval92 = bitcast %union.v* %value91 to i64*
  store i64 %68, i64* %intval92, align 8, !tbaa !30
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr93, i32 0, i32 0
  %type_attrs95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 0
  store i16 2816, i16* %type_attrs95, align 2, !tbaa !19
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %boolval97 = bitcast %union.v* %value96 to i16*
  store i16 1, i16* %boolval97, align 2, !tbaa !38
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 0
  store i16 256, i16* %type_attrs99, align 2, !tbaa !19
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.26
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %boolval102 = bitcast %union.v* %value101 to i16*
  store i16 0, i16* %boolval102, align 2, !tbaa !38
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  store i16 256, i16* %type_attrs104, align 2, !tbaa !19
  store i32 0, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.100, %if.end.26, %if.end.82
  call void @gs_free_file_name(%struct.gs_parsed_file_name_s* %pname, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #5
  %75 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.81, %if.then.46, %if.then.37, %if.then.25, %if.end
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.stat* %fstat to i8*
  call void @llvm.lifetime.end(i64 144, i8* %77) #1
  %78 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %78) #1
  br label %cleanup.108

sw.default:                                       ; preds = %entry
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call107 = call i32 @check_type_failed(%struct.ref_s* %79) #5
  store i32 %call107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %sw.default, %cleanup, %sw.bb
  %80 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @ztempfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pstr = alloca i8*, align 8
  %fmode = alloca [4 x i8], align 1
  %code = alloca i32, align 4
  %prefix = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %fnlen = alloca i32, align 4
  %sfile = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.stream_s*, align 8
  %buf = alloca i8*, align 8
  %sbody = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %psize = alloca i32, align 4
  %iodev_dflt = alloca %struct.gx_io_device_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call = call i32 @parse_file_access_string(%struct.ref_s* %6, i8* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %7 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* null, i8** %prefix, align 8, !tbaa !1
  %8 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %fname, align 8, !tbaa !1
  %9 = bitcast i32* %fnlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !24
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %call3 = call i8* %19(%struct.gs_memory_s* %22, i32 4096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %call3, i8** %prefix, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current5, align 8, !tbaa !24
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes7, align 8, !tbaa !69
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !24
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %call10 = call i8* %26(%struct.gs_memory_s* %29, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)) #5
  store i8* %call10, i8** %fname, align 8, !tbaa !1
  %30 = load i8*, i8** %prefix, align 8, !tbaa !1
  %tobool = icmp ne i8* %30, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i8*, i8** %fname, align 8, !tbaa !1
  %tobool11 = icmp ne i8* %31, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %done

if.end.13:                                        ; preds = %lor.lhs.false
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call15 = call i8* @strcat(i8* %arraydecay14, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0)) #7
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %33 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %34 to i32
  %cmp16 = icmp eq i32 %conv, 14
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.13
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_scratch_file_name_prefix, i32 0, i32 0), i8** %pstr, align 8, !tbaa !1
  br label %if.end.46

if.else:                                          ; preds = %if.end.13
  %35 = bitcast i32* %psize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx19, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %37 = load i16, i16* %type_attrs21, align 2, !tbaa !19
  %conv22 = zext i16 %37 to i32
  %and = and i32 %conv22, 16160
  %cmp23 = icmp eq i32 %and, 4640
  br i1 %cmp23, label %if.end.35, label %if.then.25

if.then.25:                                       ; preds = %if.else
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %39 = bitcast i16* %type_attrs28 to i8*
  %arrayidx29 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx29, align 1, !tbaa !32
  %conv30 = zext i8 %40 to i32
  %cmp31 = icmp eq i32 %conv30, 18
  br i1 %cmp31, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.25
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %call34 = call i32 @check_type_failed(%struct.ref_s* %arrayidx33) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call34, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.else
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  %43 = load i32, i32* %rsize, align 4, !tbaa !20
  store i32 %43, i32* %psize, align 4, !tbaa !22
  %44 = load i32, i32* %psize, align 4, !tbaa !22
  %cmp38 = icmp uge i32 %44, 4096
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.35
  store i32 -15, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.35
  %45 = load i8*, i8** %prefix, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx42, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %47 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %48 = load i32, i32* %psize, align 4, !tbaa !22
  %conv43 = zext i32 %48 to i64
  %call44 = call i8* @memcpy(i8* %45, i8* %47, i64 %conv43) #7
  %49 = load i32, i32* %psize, align 4, !tbaa !22
  %idxprom = zext i32 %49 to i64
  %50 = load i8*, i8** %prefix, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  store i8 0, i8* %arrayidx45, align 1, !tbaa !32
  %51 = load i8*, i8** %prefix, align 8, !tbaa !1
  store i8* %51, i8** %pstr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.40, %if.end.41, %cond.end
  %52 = bitcast i32* %psize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.164 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %if.then.18
  %53 = load i8*, i8** %pstr, align 8, !tbaa !1
  %54 = load i8*, i8** %pstr, align 8, !tbaa !1
  %call47 = call i64 @strlen(i8* %54) #6
  %conv48 = trunc i64 %call47 to i32
  %call49 = call i32 @gp_file_name_is_absolute(i8* %53, i32 %conv48) #5
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.59

if.then.51:                                       ; preds = %if.end.46
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %pstr, align 8, !tbaa !1
  %57 = load i8*, i8** %pstr, align 8, !tbaa !1
  %call52 = call i64 @strlen(i8* %57) #6
  %conv53 = trunc i64 %call52 to i32
  %call54 = call i32 @check_file_permissions(%struct.gs_context_state_s* %55, i8* %56, i32 %conv53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.51
  store i32 -9, i32* %code, align 4, !tbaa !22
  br label %done

if.end.58:                                        ; preds = %if.then.51
  br label %if.end.64

if.else.59:                                       ; preds = %if.end.46
  %58 = load i8*, i8** %pstr, align 8, !tbaa !1
  %call60 = call i32 @prefix_is_simple(i8* %58) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.else.59
  store i32 -9, i32* %code, align 4, !tbaa !22
  br label %done

if.end.63:                                        ; preds = %if.else.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.58
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %current66 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 0
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current66, align 8, !tbaa !24
  %61 = bitcast %struct.gs_ref_memory_s* %60 to %struct.gs_memory_s*
  %call67 = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #5
  store %struct.stream_s* %call67, %struct.stream_s** %s, align 8, !tbaa !1
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp68 = icmp eq %struct.stream_s* %62, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.64
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %done

if.end.71:                                        ; preds = %if.end.64
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 1
  %current73 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory72, i32 0, i32 0
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current73, align 8, !tbaa !24
  %65 = bitcast %struct.gs_ref_memory_s* %64 to %struct.gs_memory_s*
  %procs74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %alloc_bytes75 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs74, i32 0, i32 7
  %66 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes75, align 8, !tbaa !69
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %current77 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory76, i32 0, i32 0
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current77, align 8, !tbaa !24
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %70 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !22
  %call78 = call i8* %66(%struct.gs_memory_s* %69, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #5
  store i8* %call78, i8** %buf, align 8, !tbaa !1
  %71 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp79 = icmp eq i8* %71, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.71
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %done

if.end.82:                                        ; preds = %if.end.71
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 1
  %current84 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory83, i32 0, i32 0
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current84, align 8, !tbaa !24
  %74 = bitcast %struct.gs_ref_memory_s* %73 to %struct.gs_memory_s*
  %75 = load i8*, i8** %pstr, align 8, !tbaa !1
  %76 = load i8*, i8** %fname, align 8, !tbaa !1
  %arraydecay85 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call86 = call %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s* %74, i8* %75, i8* %76, i8* %arraydecay85) #5
  store %struct._IO_FILE* %call86, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %cmp87 = icmp eq %struct._IO_FILE* %77, null
  br i1 %cmp87, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end.82
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 1
  %current91 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory90, i32 0, i32 0
  %79 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current91, align 8, !tbaa !24
  %80 = bitcast %struct.gs_ref_memory_s* %79 to %struct.gs_memory_s*
  %procs92 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs92, i32 0, i32 2
  %81 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !72
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 1
  %current94 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory93, i32 0, i32 0
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current94, align 8, !tbaa !24
  %84 = bitcast %struct.gs_ref_memory_s* %83 to %struct.gs_memory_s*
  %85 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %81(%struct.gs_memory_s* %84, i8* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #5
  store i32 -9, i32* %code, align 4, !tbaa !22
  br label %done

if.end.95:                                        ; preds = %if.end.82
  %86 = load i8*, i8** %fname, align 8, !tbaa !1
  %call96 = call i64 @strlen(i8* %86) #6
  %conv97 = trunc i64 %call96 to i32
  store i32 %conv97, i32* %fnlen, align 4, !tbaa !22
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 1
  %current99 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory98, i32 0, i32 0
  %88 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current99, align 8, !tbaa !24
  %89 = bitcast %struct.gs_ref_memory_s* %88 to %struct.gs_memory_s*
  %procs100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs100, i32 0, i32 16
  %90 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !73
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 1
  %current102 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory101, i32 0, i32 0
  %92 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current102, align 8, !tbaa !24
  %93 = bitcast %struct.gs_ref_memory_s* %92 to %struct.gs_memory_s*
  %94 = load i32, i32* %fnlen, align 4, !tbaa !22
  %call103 = call i8* %90(%struct.gs_memory_s* %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0)) #5
  store i8* %call103, i8** %sbody, align 8, !tbaa !1
  %95 = load i8*, i8** %sbody, align 8, !tbaa !1
  %cmp104 = icmp eq i8* %95, null
  br i1 %cmp104, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %if.end.95
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current108 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current108, align 8, !tbaa !24
  %98 = bitcast %struct.gs_ref_memory_s* %97 to %struct.gs_memory_s*
  %procs109 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %free_object110 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs109, i32 0, i32 2
  %99 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object110, align 8, !tbaa !72
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory111 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 1
  %current112 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory111, i32 0, i32 0
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current112, align 8, !tbaa !24
  %102 = bitcast %struct.gs_ref_memory_s* %101 to %struct.gs_memory_s*
  %103 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %99(%struct.gs_memory_s* %102, i8* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #5
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %done

if.end.113:                                       ; preds = %if.end.95
  %104 = load i8*, i8** %sbody, align 8, !tbaa !1
  %105 = load i8*, i8** %fname, align 8, !tbaa !1
  %106 = load i32, i32* %fnlen, align 4, !tbaa !22
  %conv114 = zext i32 %106 to i64
  %call115 = call i8* @memcpy(i8* %104, i8* %105, i64 %conv114) #7
  %107 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %arraydecay116 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %109 = load i8*, i8** %buf, align 8, !tbaa !1
  %110 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !22
  call void @file_init_stream(%struct.stream_s* %107, %struct._IO_FILE* %108, i8* %arraydecay116, i8* %109, i32 %110) #5
  %111 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %112 = load i8*, i8** %fname, align 8, !tbaa !1
  %113 = load i32, i32* %fnlen, align 4, !tbaa !22
  %call117 = call i32 @ssetfilename(%struct.stream_s* %111, i8* %112, i32 %113) #5
  store i32 %call117, i32* %code, align 4, !tbaa !22
  %114 = load i32, i32* %code, align 4, !tbaa !22
  %cmp118 = icmp slt i32 %114, 0
  br i1 %cmp118, label %if.then.120, label %if.end.133

if.then.120:                                      ; preds = %if.end.113
  %115 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %116, i32 0, i32 1
  %current122 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 0
  %117 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current122, align 8, !tbaa !24
  %118 = bitcast %struct.gs_ref_memory_s* %117 to %struct.gs_memory_s*
  %call123 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %118, i32 0) #5
  store %struct.gx_io_device_s* %call123, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call124 = call i32 @sclose(%struct.stream_s* %119) #5
  %120 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %procs125 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %120, i32 0, i32 2
  %delete_file = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs125, i32 0, i32 5
  %121 = load i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*)** %delete_file, align 8, !tbaa !57
  %122 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev_dflt, align 8, !tbaa !1
  %123 = load i8*, i8** %fname, align 8, !tbaa !1
  %call126 = call i32 %121(%struct.gx_io_device_s* %122, i8* %123) #5
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory127 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 1
  %current128 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory127, i32 0, i32 0
  %125 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current128, align 8, !tbaa !24
  %126 = bitcast %struct.gs_ref_memory_s* %125 to %struct.gs_memory_s*
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 19
  %127 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !74
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 1
  %current131 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory130, i32 0, i32 0
  %129 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current131, align 8, !tbaa !24
  %130 = bitcast %struct.gs_ref_memory_s* %129 to %struct.gs_memory_s*
  %131 = load i8*, i8** %sbody, align 8, !tbaa !1
  %132 = load i32, i32* %fnlen, align 4, !tbaa !22
  call void %127(%struct.gs_memory_s* %130, i8* %131, i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0)) #5
  store i32 -25, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  %133 = bitcast %struct.gx_io_device_s** %iodev_dflt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %cleanup.dest145 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest145, label %cleanup.164 [
    i32 2, label %done
  ]

if.end.133:                                       ; preds = %if.end.113
  %134 = load i8*, i8** %sbody, align 8, !tbaa !1
  %135 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i64 -1
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr134, i32 0, i32 1
  %bytes = bitcast %union.v* %value135 to i8**
  store i8* %134, i8** %bytes, align 8, !tbaa !1
  %136 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %136, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory136, i32 0, i32 2
  %137 = load i32, i32* %current_space, align 4, !tbaa !39
  %or = or i32 96, %137
  %add = add i32 4608, %or
  %conv137 = trunc i32 %add to i16
  %138 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i64 -1
  %tas139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr138, i32 0, i32 0
  %type_attrs140 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas139, i32 0, i32 0
  store i16 %conv137, i16* %type_attrs140, align 2, !tbaa !19
  %139 = load i32, i32* %fnlen, align 4, !tbaa !22
  %140 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i64 -1
  %tas142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr141, i32 0, i32 0
  %rsize143 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas142, i32 0, i32 2
  store i32 %139, i32* %rsize143, align 4, !tbaa !20
  %141 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay144 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  call void @make_stream_file(%struct.ref_s* %141, %struct.stream_s* %142, i8* %arraydecay144) #5
  br label %done

done:                                             ; preds = %if.end.133, %if.then.120, %cleanup, %if.then.106, %if.then.89, %if.then.81, %if.then.70, %if.then.62, %if.then.57, %if.then.12
  %143 = load i8*, i8** %prefix, align 8, !tbaa !1
  %tobool146 = icmp ne i8* %143, null
  br i1 %tobool146, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %done
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 1
  %current149 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory148, i32 0, i32 0
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current149, align 8, !tbaa !24
  %146 = bitcast %struct.gs_ref_memory_s* %145 to %struct.gs_memory_s*
  %procs150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 1
  %free_object151 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs150, i32 0, i32 2
  %147 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object151, align 8, !tbaa !72
  %148 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %148, i32 0, i32 1
  %current153 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory152, i32 0, i32 0
  %149 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current153, align 8, !tbaa !24
  %150 = bitcast %struct.gs_ref_memory_s* %149 to %struct.gs_memory_s*
  %151 = load i8*, i8** %prefix, align 8, !tbaa !1
  call void %147(%struct.gs_memory_s* %150, i8* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #5
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %done
  %152 = load i8*, i8** %fname, align 8, !tbaa !1
  %tobool155 = icmp ne i8* %152, null
  br i1 %tobool155, label %if.then.156, label %if.end.163

if.then.156:                                      ; preds = %if.end.154
  %153 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %153, i32 0, i32 1
  %current158 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory157, i32 0, i32 0
  %154 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current158, align 8, !tbaa !24
  %155 = bitcast %struct.gs_ref_memory_s* %154 to %struct.gs_memory_s*
  %procs159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %free_object160 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs159, i32 0, i32 2
  %156 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object160, align 8, !tbaa !72
  %157 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %157, i32 0, i32 1
  %current162 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory161, i32 0, i32 0
  %158 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current162, align 8, !tbaa !24
  %159 = bitcast %struct.gs_ref_memory_s* %158 to %struct.gs_memory_s*
  %160 = load i8*, i8** %fname, align 8, !tbaa !1
  call void %156(%struct.gs_memory_s* %159, i8* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.156, %if.end.154
  %161 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %161, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.164

cleanup.164:                                      ; preds = %if.end.163, %if.then.120, %cleanup, %if.then
  %162 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %fnlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = load i32, i32* %retval
  ret i32 %173
}

; Function Attrs: nounwind uwtable
define internal i32 @file_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pscratch = alloca %struct.ref_s*, align 8
  %pfen = alloca %struct.file_enum_s*, align 8
  %devlen = alloca i32, align 4
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pscratch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !58
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %6 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !58
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to %struct.file_enum_s*
  store %struct.file_enum_s* %10, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %11 = bitcast i32* %devlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !58
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value10 to i64*
  %14 = load i64, i64* %intval, align 8, !tbaa !30
  %conv = trunc i64 %14 to i32
  store i32 %conv, i32* %devlen, align 4, !tbaa !22
  %15 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !58
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -4
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 1
  %pstruct16 = bitcast %union.v* %value15 to %struct.obj_header_s**
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct16, align 8, !tbaa !1
  %19 = bitcast %struct.obj_header_s* %18 to %struct.gx_io_device_s*
  store %struct.gx_io_device_s* %19, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %20 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.ref_s*, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !20
  store i32 %22, i32* %len, align 4, !tbaa !22
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %len, align 4, !tbaa !22
  %25 = load i32, i32* %devlen, align 4, !tbaa !22
  %cmp = icmp ult i32 %24, %25
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load %struct.ref_s*, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %bytes = bitcast %union.v* %value18 to i8**
  %27 = load i8*, i8** %bytes, align 8, !tbaa !1
  %28 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %dname, align 8, !tbaa !31
  %30 = load i32, i32* %devlen, align 4, !tbaa !22
  %conv19 = sext i32 %30 to i64
  %call = call i8* @memcpy(i8* %27, i8* %29, i64 %conv19) #7
  %31 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %31, i32 0, i32 2
  %enumerate_next = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 9
  %32 = load i32 (%struct.file_enum_s*, i8*, i32)*, i32 (%struct.file_enum_s*, i8*, i32)** %enumerate_next, align 8, !tbaa !75
  %33 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %bytes21 = bitcast %union.v* %value20 to i8**
  %35 = load i8*, i8** %bytes21, align 8, !tbaa !1
  %36 = load i32, i32* %devlen, align 4, !tbaa !22
  %idx.ext = sext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  %37 = load i32, i32* %len, align 4, !tbaa !22
  %38 = load i32, i32* %devlen, align 4, !tbaa !22
  %sub = sub i32 %37, %38
  %call23 = call i32 %32(%struct.file_enum_s* %33, i8* %add.ptr22, i32 %sub) #5
  store i32 %call23, i32* %code, align 4, !tbaa !22
  %39 = load i32, i32* %code, align 4, !tbaa !22
  %cmp24 = icmp eq i32 %39, -1
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack28 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !58
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -5
  store %struct.ref_s* %add.ptr30, %struct.ref_s** %p29, align 8, !tbaa !58
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %42 = load i32, i32* %code, align 4, !tbaa !22
  %43 = load i32, i32* %len, align 4, !tbaa !22
  %cmp31 = icmp ugt i32 %42, %43
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.34:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else.34
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 1
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %op, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack37 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack36, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 2
  %46 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp38 = icmp ugt %struct.ref_s* %add.ptr35, %46
  br i1 %cmp38, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %do.body
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack42 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack41, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.43:                                       ; preds = %do.body
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 26
  %stack45 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  store %struct.ref_s* %48, %struct.ref_s** %p46, align 8, !tbaa !21
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  br label %do.end

do.end:                                           ; preds = %do.cond
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %51 = load %struct.ref_s*, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %52 = bitcast %struct.ref_s* %50 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !50
  %54 = load i32, i32* %code, align 4, !tbaa !22
  %55 = load i32, i32* %devlen, align 4, !tbaa !22
  %add = add i32 %54, %55
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %rsize49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 2
  store i32 %add, i32* %rsize49, align 4, !tbaa !20
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !58
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p52, align 8, !tbaa !58
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !58
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 1
  %opproc = bitcast %union.v* %value56 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @file_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 25
  %stack58 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %62 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !58
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !19
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack62 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack61, i32 0, i32 0
  %p63 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack62, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p63, align 8, !tbaa !58
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %rsize65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 2
  store i32 0, i32* %rsize65, align 4, !tbaa !20
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %p68 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack67, i32 0, i32 0
  %66 = load %struct.ref_s*, %struct.ref_s** %p68, align 8, !tbaa !58
  %incdec.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 1
  store %struct.ref_s* %incdec.ptr69, %struct.ref_s** %p68, align 8, !tbaa !58
  %67 = load %struct.ref_s*, %struct.ref_s** %pscratch, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 2
  %68 = bitcast %struct.ref_s* %incdec.ptr69 to i8*
  %69 = bitcast %struct.ref_s* %arrayidx70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false), !tbaa.struct !50
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.40, %if.then.33, %if.then.26, %if.then
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %devlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.ref_s** %pscratch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @execfile_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 2
  %1 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !58
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p6, align 8, !tbaa !58
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @execfile_cleanup(%struct.gs_context_state_s* %7) #5
  store i32 14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @iodev_os_open_file(%struct.gx_io_device_s* %iodev, i8* %fname, i32 %len, i8* %file_access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !22
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %len.addr, align 4, !tbaa !22
  %2 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %3 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !22
  %4 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %5 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %6, i32 0, i32 2
  %gp_fopen = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 3
  %7 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %gp_fopen, align 8, !tbaa !76
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @file_open_stream(i8* %0, i32 %1, i8* %2, i32 %3, %struct.stream_s** %4, %struct.gx_io_device_s* %5, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %7, %struct.gs_memory_s* %8) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @check_file_permissions(%struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %len, i8* %permitgroup) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %permitgroup.addr = alloca i8*, align 8
  %fname_reduced = alloca [4096 x i8], align 16
  %rlen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !22
  store i8* %permitgroup, i8** %permitgroup.addr, align 8, !tbaa !1
  %0 = bitcast [4096 x i8]* %fname_reduced to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 4096, i32* %rlen, align 4, !tbaa !22
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !22
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname_reduced, i32 0, i32 0
  %call = call i32 @gp_file_name_reduce(i8* %2, i32 %3, i8* %arraydecay, i32* %rlen) #5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname_reduced, i32 0, i32 0
  %5 = load i32, i32* %rlen, align 4, !tbaa !22
  %6 = load i8*, i8** %permitgroup.addr, align 8, !tbaa !1
  %call2 = call i32 @check_file_permissions_reduced(%struct.gs_context_state_s* %4, i8* %arraydecay1, i32 %5, i8* %6) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast [4096 x i8]* %fname_reduced to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @file_is_tempfile(%struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %SAFETY = alloca %struct.ref_s*, align 8
  %tempfiles = alloca %struct.ref_s*, align 8
  %kname = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !22
  %0 = bitcast %struct.ref_s** %SAFETY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %tempfiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct.ref_s** %SAFETY) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %SAFETY, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), %struct.ref_s** %tempfiles) #5
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !77
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !78
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %len.addr, align 4, !tbaa !22
  %call3 = call i32 @names_ref(%struct.name_table_s* %9, i8* %10, i32 %11, %struct.ref_s* %kname, i32 -1) #5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %tempfiles, align 8, !tbaa !1
  %call6 = call i32 @dict_find(%struct.ref_s* %12, %struct.ref_s* %kname, %struct.ref_s** %SAFETY) #5
  %cmp7 = icmp sle i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false.5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %13 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s** %tempfiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %SAFETY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #4

declare %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i32 @gp_file_name_is_absolute(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @lib_file_open_search_with_no_combine(%struct.gs_file_path_s* %lib_path, %struct.gs_memory_s* %mem, %struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %flen, i8* %buffer, i32 %blen, i32* %pclen, %struct.ref_s* %pfile, %struct.gx_io_device_s* %iodev, i32 %starting_arg_file, i8* %fmode) #0 {
entry:
  %retval = alloca i32, align 4
  %lib_path.addr = alloca %struct.gs_file_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32, align 4
  %pclen.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %starting_arg_file.addr = alloca i32, align 4
  %fmode.addr = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %blen1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_file_path_s* %lib_path, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !22
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %blen, i32* %blen.addr, align 4, !tbaa !22
  store i32* %pclen, i32** %pclen.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i32 %starting_arg_file, i32* %starting_arg_file.addr, align 4, !tbaa !22
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %blen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %blen.addr, align 4, !tbaa !22
  store i32 %2, i32* %blen1, align 4, !tbaa !22
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %4 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %call = call i32 @gp_file_name_reduce(i8* %3, i32 %4, i8* %5, i32* %blen1) #5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %skip

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %blen1, align 4, !tbaa !22
  %9 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @iodev_os_open_file(%struct.gx_io_device_s* %6, i8* %7, i32 %8, i8* %9, %struct.stream_s** %s, %struct.gs_memory_s* %10) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %starting_arg_file.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %14 = load i32, i32* %blen1, align 4, !tbaa !22
  %call4 = call i32 @check_file_permissions_aux(%struct.gs_context_state_s* %12, i8* %13, i32 %14) #5
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.3
  %15 = load i32, i32* %blen1, align 4, !tbaa !22
  %16 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  store i32 %15, i32* %16, align 4, !tbaa !22
  %17 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %17, %struct.stream_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call8 = call i32 @sclose(%struct.stream_s* %19) #5
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  br label %skip

skip:                                             ; preds = %if.end.9, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %skip, %if.end.7, %if.then.6
  %20 = bitcast i32* %blen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @lib_file_open_search_with_combine(%struct.gs_file_path_s* %lib_path, %struct.gs_memory_s* %mem, %struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %flen, i8* %buffer, i32 %blen, i32* %pclen, %struct.ref_s* %pfile, %struct.gx_io_device_s* %iodev, i32 %starting_arg_file, i8* %fmode) #0 {
entry:
  %retval = alloca i32, align 4
  %lib_path.addr = alloca %struct.gs_file_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32, align 4
  %pclen.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %starting_arg_file.addr = alloca i32, align 4
  %fmode.addr = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pfpath = alloca %struct.gs_file_path_s*, align 8
  %pi = alloca i32, align 4
  %prdir = alloca %struct.ref_s*, align 8
  %pstr = alloca i8*, align 8
  %plen = alloca i32, align 4
  %blen1 = alloca i32, align 4
  %pname = alloca %struct.gs_parsed_file_name_s, align 8
  %r = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_file_path_s* %lib_path, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !22
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %blen, i32* %blen.addr, align 4, !tbaa !22
  store i32* %pclen, i32** %pclen.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i32 %starting_arg_file, i32* %starting_arg_file.addr, align 4, !tbaa !22
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_file_path_s** %pfpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %lib_path.addr, align 8, !tbaa !1
  store %struct.gs_file_path_s* %2, %struct.gs_file_path_s** %pfpath, align 8, !tbaa !1
  %3 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %pi, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %pi, align 4, !tbaa !22
  %5 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfpath, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %5, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !20
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.ref_s** %prdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfpath, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %8, i32 0, i32 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list1, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %10 = load i32, i32* %pi, align 4, !tbaa !22
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %prdir, align 8, !tbaa !1
  %11 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %prdir, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value2 to i8**
  %13 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %13, i8** %pstr, align 8, !tbaa !1
  %14 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.ref_s*, %struct.ref_s** %prdir, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %16 = load i32, i32* %rsize4, align 4, !tbaa !20
  store i32 %16, i32* %plen, align 4, !tbaa !22
  %17 = bitcast i32* %blen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %blen.addr, align 4, !tbaa !22
  store i32 %18, i32* %blen1, align 4, !tbaa !22
  %19 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.start(i64 32, i8* %19) #1
  %20 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %pstr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = sext i8 %22 to i32
  %cmp5 = icmp eq i32 %conv, 37
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %pstr, align 8, !tbaa !1
  %25 = load i32, i32* %plen, align 4, !tbaa !22
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pname, i8* %24, i32 %25, %struct.gs_memory_s* %26) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %27 = load i32, i32* %code, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %27, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %28 = load i32, i32* %blen.addr, align 4, !tbaa !22
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %29 = load i32, i32* %len, align 4, !tbaa !48
  %30 = load i32, i32* %plen, align 4, !tbaa !22
  %cmp10 = icmp ugt i32 %29, %30
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %len12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %31 = load i32, i32* %len12, align 4, !tbaa !48
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %32 = load i32, i32* %plen, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ]
  %33 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %add = add i32 %cond, %33
  %cmp13 = icmp ult i32 %28, %add
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %cond.end
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %fname17 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 2
  %35 = load i8*, i8** %fname17, align 8, !tbaa !33
  %len18 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %36 = load i32, i32* %len18, align 4, !tbaa !48
  %conv19 = zext i32 %36 to i64
  %call20 = call i8* @memcpy(i8* %34, i8* %35, i64 %conv19) #7
  %37 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %len21 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %38 = load i32, i32* %len21, align 4, !tbaa !48
  %idx.ext22 = zext i32 %38 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %37, i64 %idx.ext22
  %39 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %40 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %conv24 = zext i32 %40 to i64
  %call25 = call i8* @memcpy(i8* %add.ptr23, i8* %39, i64 %conv24) #7
  %iodev26 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %41 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev26, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %41, i32 0, i32 2
  %open_file = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 2
  %42 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !47
  %iodev27 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 1
  %43 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev27, align 8, !tbaa !25
  %44 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %len28 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pname, i32 0, i32 3
  %45 = load i32, i32* %len28, align 4, !tbaa !48
  %46 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %add29 = add i32 %45, %46
  %47 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call30 = call i32 %42(%struct.gx_io_device_s* %43, i8* %44, i32 %add29, i8* %47, %struct.stream_s** %s, %struct.gs_memory_s* %48) #5
  store i32 %call30, i32* %code, align 4, !tbaa !22
  %49 = load i32, i32* %code, align 4, !tbaa !22
  %cmp31 = icmp slt i32 %49, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.16
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.16
  %50 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %50, %struct.stream_s* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  %52 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %53 = load i8*, i8** %pstr, align 8, !tbaa !1
  %54 = load i32, i32* %plen, align 4, !tbaa !22
  %conv35 = zext i32 %54 to i64
  %call36 = call i8* @memcpy(i8* %52, i8* %53, i64 %conv35) #7
  %55 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %56 = load i32, i32* %plen, align 4, !tbaa !22
  %idx.ext37 = zext i32 %56 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %55, i64 %idx.ext37
  %57 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %58 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %conv39 = zext i32 %58 to i64
  %call40 = call i8* @memcpy(i8* %add.ptr38, i8* %57, i64 %conv39) #7
  %59 = load i32, i32* %plen, align 4, !tbaa !22
  %60 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %add41 = add i32 %59, %60
  %61 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  store i32 %add41, i32* %61, align 4, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.15, %if.then.9
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %cleanup.59

if.else:                                          ; preds = %for.body
  %63 = load i8*, i8** %pstr, align 8, !tbaa !1
  %64 = load i32, i32* %plen, align 4, !tbaa !22
  %65 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %66 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %67 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %call42 = call i32 @gp_file_name_combine(i8* %63, i32 %64, i8* %65, i32 %66, i32 0, i8* %67, i32* %blen1) #5
  store i32 %call42, i32* %r, align 4, !tbaa !32
  %68 = load i32, i32* %r, align 4, !tbaa !32
  %cmp43 = icmp ne i32 %68, 1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.46:                                        ; preds = %if.else
  %69 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %71 = load i32, i32* %blen1, align 4, !tbaa !22
  %72 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call47 = call i32 @iodev_os_open_file(%struct.gx_io_device_s* %69, i8* %70, i32 %71, i8* %72, %struct.stream_s** %s, %struct.gs_memory_s* %73) #5
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %if.end.46
  %74 = load i32, i32* %starting_arg_file.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.50
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %77 = load i32, i32* %blen1, align 4, !tbaa !22
  %call51 = call i32 @check_file_permissions_aux(%struct.gs_context_state_s* %75, i8* %76, i32 %77) #5
  %cmp52 = icmp sge i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %if.then.50
  %78 = load i32, i32* %blen1, align 4, !tbaa !22
  %79 = load i32*, i32** %pclen.addr, align 8, !tbaa !1
  store i32 %78, i32* %79, align 4, !tbaa !22
  %80 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %80, %struct.stream_s* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.55:                                        ; preds = %lor.lhs.false
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call56 = call i32 @sclose(%struct.stream_s* %82) #5
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.57:                                        ; preds = %if.end.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.58, %if.end.55, %if.then.54, %if.then.45, %cleanup
  %83 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.gs_parsed_file_name_s* %pname to i8*
  call void @llvm.lifetime.end(i64 32, i8* %84) #1
  %85 = bitcast i32* %blen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.ref_s** %prdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup.59
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup.59
  %89 = load i32, i32* %pi, align 4, !tbaa !22
  %inc = add i32 %89, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %for.end, %cleanup.59
  %90 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.gs_file_path_s** %pfpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @lib_fopen(%struct.gs_file_path_s* %pfpath, %struct.gs_memory_s* %mem, i8* %fname) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %pfpath.addr = alloca %struct.gs_file_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fname.addr = alloca i8*, align 8
  %filename_found = alloca [2048 x i8], align 16
  %file = alloca %struct._IO_FILE*, align 8
  %fnamelen = alloca i32, align 4
  %obj = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_file_path_s* %pfpath, %struct.gs_file_path_s** %pfpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = bitcast [2048 x i8]* %filename_found to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %0) #1
  %1 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !1
  %2 = bitcast i32* %fnamelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.ref_s* %obj to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfpath.addr, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call to i32
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename_found, i32 0, i32 0
  %call1 = call i32 @lib_file_open(%struct.gs_file_path_s* %5, %struct.gs_memory_s* %6, %struct.gs_context_state_s* null, i8* %7, i32 %conv, i8* %arraydecay, i32 2048, i32* %fnamelen, %struct.ref_s* %obj) #5
  store i32 %call1, i32* %code, align 4, !tbaa !22
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %obj, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %10 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %file3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 26
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file3, align 8, !tbaa !80
  store %struct._IO_FILE* %11, %struct._IO_FILE** %file, align 8, !tbaa !1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  store %struct._IO_FILE* %12, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %obj to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = bitcast i32* %fnamelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast [2048 x i8]* %filename_found to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %17) #1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %18
}

; Function Attrs: nounwind uwtable
define i32 @file_read_string(i8* %str, i32 %len, %struct.ref_s* %pfile, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pfile.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !22
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !22
  call void @sread_string(%struct.stream_s* %4, i8* %5, i32 %6) #5
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 10
  store i8 1, i8* %foreign, align 1, !tbaa !81
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 20
  store i16 0, i16* %write_id, align 2, !tbaa !46
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pfile1 = bitcast %union.v* %value to %struct.stream_s**
  store %struct.stream_s* %9, %struct.stream_s** %pfile1, align 8, !tbaa !1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call2 = call i32 @imemory_space(%struct.gs_ref_memory_s* %11) #5
  %or = or i32 96, %call2
  %add = add i32 768, %or
  %conv = trunc i32 %add to i16
  %12 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !19
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !45
  %conv3 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  store i32 %conv3, i32* %rsize, align 4, !tbaa !20
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %17 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !82
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 25
  store i32 (%struct.stream_s*)* %17, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !83
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 14
  %close6 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs5, i32 0, i32 4
  store i32 (%struct.stream_s*)* @file_close_disable, i32 (%struct.stream_s*)** %close6, align 8, !tbaa !82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #4

declare void @sread_string(%struct.stream_s*, i8*, i32) #4

declare i32 @file_close_disable(%struct.stream_s*) #4

; Function Attrs: nounwind uwtable
define i32 @filter_report_error(%struct.stream_state_s* %st, i8* %str) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i32 0
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i8* @strncpy(i8* %arraydecay, i8* %1, i64 79) #7
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %error_string1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %2, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string1, i32 0, i64 79
  store i8 0, i8* %arrayidx, align 1, !tbaa !32
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @filter_open(i8* %file_access, i32 %buffer_size, %struct.ref_s* %pfile, %struct.stream_procs* %procs, %struct.stream_template_s* %templat, %struct.stream_state_s* %st, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %pfile.addr = alloca %struct.ref_s*, align 8
  %procs.addr = alloca %struct.stream_procs*, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ssize = alloca i32, align 4
  %sst = alloca %struct.stream_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !22
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  store %struct.stream_procs* %procs, %struct.stream_procs** %procs.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !84
  %call = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %3) #5
  store i32 %call, i32* %ssize, align 4, !tbaa !22
  %4 = bitcast %struct.stream_state_s** %sst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.stream_state_s* null, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %stype1 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype1, align 8, !tbaa !84
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %7, @st_stream_state
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %stype2 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype2, align 8, !tbaa !84
  %call3 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  store %struct.stream_state_s* %call3, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %11 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.stream_state_s* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %12 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %13 = load i32, i32* %buffer_size.addr, align 4, !tbaa !22
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @file_open_stream(i8* null, i32 0, i8* %12, i32 %13, %struct.stream_s** %s, %struct.gx_io_device_s* null, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* null, %struct.gs_memory_s* %14) #5
  store i32 %call7, i32* %code, align 4, !tbaa !22
  %15 = load i32, i32* %code, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !72
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %20 = bitcast %struct.stream_state_s* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  %21 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 6
  %24 = load i8*, i8** %cbuf, align 8, !tbaa !86
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 7
  %26 = load i32, i32* %bsize, align 4, !tbaa !87
  %27 = load %struct.stream_procs*, %struct.stream_procs** %procs.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !32
  %conv = sext i8 %29 to i32
  %cmp12 = icmp eq i32 %conv, 114
  %cond = select i1 %cmp12, i32 1, i32 2
  call void @s_std_init(%struct.stream_s* %22, i8* %24, i32 %26, %struct.stream_procs* %27, i32 %cond) #5
  %30 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %30, i32 0, i32 2
  %31 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !88
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 14
  %process15 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs14, i32 0, i32 5
  store i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %31, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process15, align 8, !tbaa !89
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs16, i32 0, i32 4
  %34 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !82
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 25
  store i32 (%struct.stream_s*)* %34, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !83
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 14
  %close18 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs17, i32 0, i32 4
  store i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_s*)** %close18, align 8, !tbaa !82
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.stream_state_s* %37, null
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.11
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %39 = bitcast %struct.stream_s* %38 to %struct.stream_state_s*
  store %struct.stream_state_s* %39, %struct.stream_state_s** %sst, align 8, !tbaa !1
  br label %if.end.28

if.else:                                          ; preds = %if.end.11
  %40 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %cmp22 = icmp ne %struct.stream_state_s* %40, null
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.else
  %41 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %42 = bitcast %struct.stream_state_s* %41 to i8*
  %43 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %44 = bitcast %struct.stream_state_s* %43 to i8*
  %45 = load i32, i32* %ssize, align 4, !tbaa !22
  %conv25 = zext i32 %45 to i64
  %call26 = call i8* @memcpy(i8* %42, i8* %44, i64 %conv25) #7
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.21
  %46 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 18
  store %struct.stream_state_s* %46, %struct.stream_state_s** %state, align 8, !tbaa !90
  %48 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %49 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init_state(%struct.stream_state_s* %48, %struct.stream_template_s* %49, %struct.gs_memory_s* %50) #5
  %51 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %report_error = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %51, i32 0, i32 2
  store i32 (%struct.stream_state_s*, i8*)* @filter_report_error, i32 (%struct.stream_state_s*, i8*)** %report_error, align 8, !tbaa !91
  %52 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %52, i32 0, i32 1
  %53 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !93
  %cmp29 = icmp ne i32 (%struct.stream_state_s*)* %53, null
  br i1 %cmp29, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.end.28
  %54 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %init32 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %54, i32 0, i32 1
  %55 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init32, align 8, !tbaa !93
  %56 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %call33 = call i32 %55(%struct.stream_state_s* %56) #5
  store i32 %call33, i32* %code, align 4, !tbaa !22
  %57 = load i32, i32* %code, align 4, !tbaa !22
  %cmp34 = icmp slt i32 %57, 0
  br i1 %cmp34, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.then.31
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object38, align 8, !tbaa !72
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %61 = load %struct.stream_state_s*, %struct.stream_state_s** %sst, align 8, !tbaa !1
  %62 = bitcast %struct.stream_state_s* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #5
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object40, align 8, !tbaa !72
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 6
  %67 = load i8*, i8** %cbuf41, align 8, !tbaa !86
  call void %64(%struct.gs_memory_s* %65, i8* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #5
  %68 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.28
  %69 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %71 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %69, %struct.stream_s* %70, i8* %71) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.36, %if.then.9, %if.then.5
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.stream_state_s** %sst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s*) #4

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #4

declare i32 @file_open_stream(i8*, i32, i8*, i32, %struct.stream_s**, %struct.gx_io_device_s*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, %struct.gs_memory_s*) #4

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #4

declare i32 @file_close_file(%struct.stream_s*) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #4

; Function Attrs: nounwind uwtable
define i32 @file_close(%struct.ref_s* %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile1 = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile1, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 19
  %4 = load i16, i16* %read_id, align 2, !tbaa !45
  %conv = zext i16 %4 to i32
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 20
  %6 = load i16, i16* %write_id, align 2, !tbaa !46
  %conv2 = zext i16 %6 to i32
  %or = or i32 %conv, %conv2
  %7 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !20
  %cmp = icmp eq i32 %or, %8
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @sclose(%struct.stream_s* %9) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %10 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_real_file_name(%struct.ref_s* %op, %struct.gs_parsed_file_name_s* %pfn, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %3 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !20
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_parse_real_file_name(%struct.gs_parsed_file_name_s* %6, i8* %8, i32 %10, %struct.gs_memory_s* %11, i8* %12) #5
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @gs_free_file_name(%struct.gs_parsed_file_name_s*, i8*) #4

declare i32 @check_type_failed(%struct.ref_s*) #4

declare i32 @gs_parse_real_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*, i8*) #4

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @execfile_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 2
  %1 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p7, align 8, !tbaa !21
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !58
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 2
  %9 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %10 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !50
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zclosefile(%struct.gs_context_state_s* %11) #5
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @zexec(%struct.gs_context_state_s*) #4

declare i32 @zclosefile(%struct.gs_context_state_s*) #4

declare i32 @check_proc_failed(%struct.ref_s*) #4

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @file_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !58
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gx_io_device_s*
  store %struct.gx_io_device_s* %4, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %5 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %5, i32 0, i32 2
  %enumerate_close = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 10
  %6 = load void (%struct.file_enum_s*)*, void (%struct.file_enum_s*)** %enumerate_close, align 8, !tbaa !94
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !58
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 5
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 1
  %pstruct6 = bitcast %union.v* %value5 to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct6, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to %struct.file_enum_s*
  call void %6(%struct.file_enum_s* %10) #5
  %11 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 0
}

declare i32 @gs_terminate_file_name(%struct.gs_parsed_file_name_s*, %struct.gs_memory_s*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @prefix_is_simple(i8* %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %pstr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %pstr, i8** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %pstr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !32
  store i8 %3, i8* %c, align 1, !tbaa !32
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8, i8* %c, align 1, !tbaa !32
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8, i8* %c, align 1, !tbaa !32
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 95
  br i1 %cmp6, label %if.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load i8, i8* %c, align 1, !tbaa !32
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp sge i32 %conv9, 48
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.15

land.lhs.true:                                    ; preds = %lor.lhs.false.8
  %7 = load i8, i8* %c, align 1, !tbaa !32
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp sle i32 %conv12, 57
  br i1 %cmp13, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true, %lor.lhs.false.8
  %8 = load i8, i8* %c, align 1, !tbaa !32
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp sge i32 %conv16, 65
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false.23

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15
  %9 = load i8, i8* %c, align 1, !tbaa !32
  %conv20 = sext i8 %9 to i32
  %cmp21 = icmp sle i32 %conv20, 90
  br i1 %cmp21, label %if.end, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.19, %lor.lhs.false.15
  %10 = load i8, i8* %c, align 1, !tbaa !32
  %conv24 = sext i8 %10 to i32
  %cmp25 = icmp sge i32 %conv24, 97
  br i1 %cmp25, label %land.lhs.true.27, label %if.then

land.lhs.true.27:                                 ; preds = %lor.lhs.false.23
  %11 = load i8, i8* %c, align 1, !tbaa !32
  %conv28 = sext i8 %11 to i32
  %cmp29 = icmp sle i32 %conv28, 122
  br i1 %cmp29, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.27, %lor.lhs.false.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.27, %land.lhs.true.19, %land.lhs.true, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s*, i8*, i8*, i8*) #4

declare void @file_init_stream(%struct.stream_s*, %struct._IO_FILE*, i8*, i8*, i32) #4

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #4

declare i32 @gp_file_name_reduce(i8*, i32, i8*, i32*) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_file_permissions_reduced(%struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %len, i8* %permitgroup) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %permitgroup.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %permitlist = alloca %struct.ref_s*, align 8
  %win_sep2 = alloca i8*, align 8
  %use_windows_pathsep = alloca i32, align 4
  %plen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %permitstring = alloca %struct.ref_s, align 8
  %permstr = alloca i8*, align 8
  %permlen = alloca i32, align 4
  %cwd_len = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !22
  store i8* %permitgroup, i8** %permitgroup.addr, align 8, !tbaa !1
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %permitlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.ref_s* null, %struct.ref_s** %permitlist, align 8, !tbaa !1
  %2 = bitcast i8** %win_sep2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8** %win_sep2, align 8, !tbaa !1
  %3 = bitcast i32* %use_windows_pathsep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %win_sep2, align 8, !tbaa !1
  %5 = load i8*, i8** %win_sep2, align 8, !tbaa !1
  %call = call i32 @gs_file_name_check_separator(i8* %4, i32 1, i8* %5) #5
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %use_windows_pathsep, align 4, !tbaa !22
  %6 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !22
  %call1 = call i32 @gp_file_name_parents(i8* %7, i32 %8) #5
  store i32 %call1, i32* %plen, align 4, !tbaa !22
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %userparams = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 11
  %10 = load i8*, i8** %permitgroup.addr, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %userparams, i8* %10, %struct.ref_s** %permitlist) #5
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %i, align 8, !tbaa !30
  %12 = load %struct.ref_s*, %struct.ref_s** %permitlist, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !20
  %conv5 = zext i32 %13 to i64
  %cmp6 = icmp slt i64 %11, %conv5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.ref_s* %permitstring to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i8** %permstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %permlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %cwd_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %cwd_len, align 4, !tbaa !22
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %permitlist, align 8, !tbaa !1
  %22 = load i64, i64* %i, align 8, !tbaa !30
  %call8 = call i32 @array_get(%struct.gs_memory_s* %20, %struct.ref_s* %21, i64 %22, %struct.ref_s* %permitstring) #5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %permitstring, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %23 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv12 = zext i8 %24 to i32
  %cmp13 = icmp ne i32 %conv12, 18
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %permitstring, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %25 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %25, i8** %permstr, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %permitstring, i32 0, i32 0
  %rsize18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %26 = load i32, i32* %rsize18, align 4, !tbaa !20
  store i32 %26, i32* %permlen, align 4, !tbaa !22
  %27 = load i32, i32* %permlen, align 4, !tbaa !22
  %cmp19 = icmp eq i32 %27, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.16
  %28 = load i8*, i8** %permstr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx21, align 1, !tbaa !32
  %conv22 = zext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 42
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true, %if.end.16
  %30 = load i32, i32* %plen, align 4, !tbaa !22
  %cmp27 = icmp ne i32 %30, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %if.end.26
  %31 = load i32, i32* %plen, align 4, !tbaa !22
  %32 = load i8*, i8** %permstr, align 8, !tbaa !1
  %33 = load i32, i32* %permlen, align 4, !tbaa !22
  %call30 = call i32 @gp_file_name_parents(i8* %32, i32 %33) #5
  %cmp31 = icmp ne i32 %31, %call30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %land.lhs.true.29, %if.end.26
  %34 = load i8*, i8** %permstr, align 8, !tbaa !1
  %35 = load i32, i32* %permlen, align 4, !tbaa !22
  %call35 = call i32 @gp_file_name_cwds(i8* %34, i32 %35) #5
  store i32 %call35, i32* %cwd_len, align 4, !tbaa !22
  %36 = load i32, i32* %cwd_len, align 4, !tbaa !22
  %cmp36 = icmp sgt i32 %36, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.41

land.lhs.true.38:                                 ; preds = %if.end.34
  %37 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %38 = load i32, i32* %len.addr, align 4, !tbaa !22
  %call39 = call i32 @gp_file_name_is_absolute(i8* %37, i32 %38) #5
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.38
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %land.lhs.true.38, %if.end.34
  %39 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %40 = load i32, i32* %len.addr, align 4, !tbaa !22
  %41 = load i8*, i8** %permstr, align 8, !tbaa !1
  %42 = load i32, i32* %cwd_len, align 4, !tbaa !22
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  %43 = load i32, i32* %permlen, align 4, !tbaa !22
  %44 = load i32, i32* %cwd_len, align 4, !tbaa !22
  %sub = sub i32 %43, %44
  %45 = load i32, i32* %use_windows_pathsep, align 4, !tbaa !22
  %tobool42 = icmp ne i32 %45, 0
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.string_match_params_s* [ @check_file_permissions_reduced.win_filename_params, %cond.true ], [ null, %cond.false ]
  %call43 = call i32 @string_match(i8* %39, i32 %40, i8* %add.ptr, i32 %sub, %struct.string_match_params_s* %cond) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45, %if.then.40, %if.then.33, %if.then.25, %if.then.15
  %46 = bitcast i32* %cwd_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %permlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %permstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.ref_s* %permitstring to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %50 = load i64, i64* %i, align 8, !tbaa !30
  %inc = add nsw i64 %50, 1
  store i64 %inc, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %for.end, %cleanup, %if.then
  %51 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %use_windows_pathsep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i8** %win_sep2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.ref_s** %permitlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gs_file_name_check_separator(i8*, i32, i8*) #4

declare i32 @gp_file_name_parents(i8*, i32) #4

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #4

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #4

declare i32 @gp_file_name_cwds(i8*, i32) #4

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #4

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #4

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_file_permissions_aux(%struct.gs_context_state_s* %i_ctx_p, i8* %fname, i32 %flen) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !22
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_context_state_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i32, i32* %flen.addr, align 4, !tbaa !22
  %call = call i32 @check_file_permissions_reduced(%struct.gs_context_state_s* %1, i8* %2, i32 %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -9, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @gp_file_name_combine(i8*, i32, i8*, i32, i32, i8*, i32*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 256}
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
!19 = !{!10, !12, i64 0}
!20 = !{!10, !9, i64 4}
!21 = !{!6, !2, i64 624}
!22 = !{!9, !9, i64 0}
!23 = !{!6, !9, i64 188}
!24 = !{!6, !2, i64 8}
!25 = !{!26, !2, i64 8}
!26 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24}
!27 = !{!28, !2, i64 8}
!28 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !29, i64 16, !2, i64 120}
!29 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!30 = !{!13, !13, i64 0}
!31 = !{!28, !2, i64 0}
!32 = !{!3, !3, i64 0}
!33 = !{!26, !2, i64 16}
!34 = !{!28, !2, i64 120}
!35 = !{!28, !2, i64 24}
!36 = !{!6, !2, i64 640}
!37 = !{!6, !9, i64 688}
!38 = !{!12, !12, i64 0}
!39 = !{!7, !9, i64 48}
!40 = !{!41, !2, i64 8}
!41 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !42, i64 160, !13, i64 176, !43, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !44, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!42 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!43 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!44 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!45 = !{!41, !12, i64 264}
!46 = !{!41, !12, i64 266}
!47 = !{!28, !2, i64 32}
!48 = !{!26, !9, i64 24}
!49 = !{!6, !2, i64 200}
!50 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 4, !22, i64 8, i64 8, !30, i64 8, i64 2, !38, i64 8, i64 4, !51, i64 8, i64 8, !30, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !30}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !3, i64 0}
!53 = !{!6, !9, i64 192}
!54 = !{!55, !9, i64 36}
!55 = !{!"gs_main_instance_s", !2, i64 0, !9, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !56, i64 48, !3, i64 104, !2, i64 120, !10, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !9, i64 176}
!56 = !{!"gs_file_path_s", !10, i64 0, !10, i64 16, !2, i64 32, !2, i64 40, !9, i64 48}
!57 = !{!28, !2, i64 56}
!58 = !{!6, !2, i64 520}
!59 = !{!6, !2, i64 536}
!60 = !{!28, !2, i64 80}
!61 = !{!28, !2, i64 64}
!62 = !{!28, !2, i64 72}
!63 = !{!64, !13, i64 64}
!64 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !65, i64 72, !65, i64 88, !65, i64 104, !3, i64 120}
!65 = !{!"timespec", !13, i64 0, !13, i64 8}
!66 = !{!64, !13, i64 48}
!67 = !{!64, !13, i64 88}
!68 = !{!64, !13, i64 104}
!69 = !{!70, !2, i64 64}
!70 = !{!"gs_memory_s", !2, i64 0, !71, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!71 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!72 = !{!70, !2, i64 24}
!73 = !{!70, !2, i64 136}
!74 = !{!70, !2, i64 160}
!75 = !{!28, !2, i64 88}
!76 = !{!28, !2, i64 40}
!77 = !{!70, !2, i64 192}
!78 = !{!79, !2, i64 120}
!79 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!80 = !{!41, !2, i64 304}
!81 = !{!41, !3, i64 154}
!82 = !{!41, !2, i64 216}
!83 = !{!41, !2, i64 296}
!84 = !{!85, !2, i64 0}
!85 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!86 = !{!41, !2, i64 136}
!87 = !{!41, !9, i64 144}
!88 = !{!85, !2, i64 16}
!89 = !{!41, !2, i64 224}
!90 = !{!41, !2, i64 256}
!91 = !{!92, !2, i64 16}
!92 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28}
!93 = !{!85, !2, i64 8}
!94 = !{!28, !2, i64 96}
