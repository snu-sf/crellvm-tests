; ModuleID = './ziodev.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { {}*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@.str = private unnamed_addr constant [11 x i8] c"%lineedit%\00", align 1
@iodev_dtype_stdio = external constant [0 x i8], align 1
@gs_iodev_lineedit = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @iodev_dtype_stdio, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%statementedit%\00", align 1
@gs_iodev_statementedit = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @iodev_dtype_stdio, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"zfilelineedit(buffer)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"zfilelineedit(shrink buffer)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"zfilelineedit(grow buffer)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"zfilelineedit(resize buffer)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"zfilelineedit(stream)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"1.getiodevice\00", align 1
@ziodev_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetiodevice }, %struct.op_def zeroinitializer], align 16

declare i32 @iodev_no_init(%struct.gx_io_device_s*, %struct.gs_memory_s*) #0

declare i32 @iodev_no_open_device(%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

declare i32 @iodev_no_open_file(%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

declare i32 @iodev_no_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #0

declare i32 @iodev_no_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #0

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #0

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #0

declare i32 @iodev_no_file_status(%struct.gx_io_device_s*, i8*, %struct.stat*) #0

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #0

declare i32 @iodev_no_get_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define i32 @zfilelineedit(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %count = alloca i32, align 4
  %in_eol = alloca i32, align 4
  %code = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %statement = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %ins = alloca %struct.stream_s*, align 8
  %str = alloca %struct.gs_string_s, align 8
  %initial_buf_size = alloca i32, align 4
  %filename = alloca i8*, align 8
  %buf = alloca %struct.gs_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %nbuf = alloca i8*, align 8
  %rfile = alloca %struct.ref_s, align 8
  %nsize = alloca i32, align 4
  %nbuf166 = alloca i8*, align 8
  %st = alloca %struct.stream_s, align 8
  %ts = alloca %struct.stream_s*, align 8
  %state = alloca %struct.scanner_state_s, align 8
  %ignore_value = alloca %struct.ref_s, align 8
  %depth = alloca i32, align 4
  %code215 = alloca i32, align 4
  %nsize220 = alloca i32, align 4
  %nbuf221 = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %count, align 4, !tbaa !5
  %1 = bitcast i32* %in_eol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %in_eol, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %5, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast i32* %statement to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.stream_s** %ins to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = bitcast i32* %initial_buf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast %struct.gs_string_s** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store %struct.gs_string_s* %str, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %15 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end:                                           ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %18 = load i8*, i8** %bytes, align 8, !tbaa !1
  %19 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %19, i32 0, i32 0
  store i8* %18, i8** %data, align 8, !tbaa !21
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !23
  %22 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %22, i32 0, i32 1
  store i32 %21, i32* %size, align 4, !tbaa !24
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %24 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx5, align 1, !tbaa !20
  %conv6 = zext i8 %25 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %add.ptr10) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.12:                                        ; preds = %if.end
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %28 = load i64, i64* %intval, align 8, !tbaa !25
  %conv15 = trunc i64 %28 to i32
  store i32 %conv15, i32* %count, align 4, !tbaa !5
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %30 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx19, align 1, !tbaa !20
  %conv20 = zext i8 %31 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.12
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -2
  %call25 = call i32 @check_type_failed(%struct.ref_s* %add.ptr24) #4
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.26:                                        ; preds = %if.end.12
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 1
  %boolval = bitcast %union.v* %value28 to i16*
  %34 = load i16, i16* %boolval, align 2, !tbaa !26
  %conv29 = zext i16 %34 to i32
  store i32 %conv29, i32* %statement, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.26
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -3
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %36 = load i16, i16* %type_attrs32, align 2, !tbaa !27
  %conv33 = zext i16 %36 to i32
  %and = and i32 %conv33, 16160
  %cmp34 = icmp eq i32 %and, 800
  br i1 %cmp34, label %if.end.46, label %if.then.36

if.then.36:                                       ; preds = %do.body
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -3
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %38 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx40, align 1, !tbaa !20
  %conv41 = zext i8 %39 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.36
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -3
  %call45 = call i32 @check_type_failed(%struct.ref_s* %add.ptr44) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call45, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.46:                                        ; preds = %do.body
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -3
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr48, i32 0, i32 1
  %pfile = bitcast %union.v* %value49 to %struct.stream_s**
  %42 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %42, %struct.stream_s** %ins, align 8, !tbaa !1
  %43 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 19
  %44 = load i16, i16* %read_id, align 2, !tbaa !28
  %conv50 = zext i16 %44 to i32
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -3
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i32 0, i32 0
  %rsize53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 2
  %46 = load i32, i32* %rsize53, align 4, !tbaa !23
  %cmp54 = icmp ne i32 %conv50, %46
  br i1 %cmp54, label %if.then.56, label %if.end.75

if.then.56:                                       ; preds = %do.body.47
  %47 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %read_id57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 19
  %48 = load i16, i16* %read_id57, align 2, !tbaa !28
  %conv58 = zext i16 %48 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.56
  %49 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 20
  %50 = load i16, i16* %write_id, align 2, !tbaa !32
  %conv61 = zext i16 %50 to i32
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -3
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr62, i32 0, i32 0
  %rsize64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 2
  %52 = load i32, i32* %rsize64, align 4, !tbaa !23
  %cmp65 = icmp eq i32 %conv61, %52
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %land.lhs.true
  %53 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -3
  %call69 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr68) #4
  store i32 %call69, i32* %fcode, align 4, !tbaa !5
  %55 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %55, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.67
  %56 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72
  %57 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.348 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.else:                                          ; preds = %land.lhs.true, %if.then.56
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 18
  %59 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !33
  store %struct.stream_s* %59, %struct.stream_s** %ins, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %do.body.47
  br label %do.cond

do.cond:                                          ; preds = %if.end.75
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.end
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  %60 = load i32, i32* %statement, align 4, !tbaa !5
  %tobool = icmp ne i32 %60, 0
  %cond78 = select i1 %tobool, i32 50, i32 20
  store i32 %cond78, i32* %initial_buf_size, align 4, !tbaa !5
  %61 = load i32, i32* %initial_buf_size, align 4, !tbaa !5
  %cmp79 = icmp ugt i32 %61, 16777216
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.end.77
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.82:                                        ; preds = %do.end.77
  %62 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data83 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %62, i32 0, i32 0
  %63 = load i8*, i8** %data83, align 8, !tbaa !21
  %tobool84 = icmp ne i8* %63, null
  br i1 %tobool84, label %lor.lhs.false, label %if.then.88

lor.lhs.false:                                    ; preds = %if.end.82
  %64 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size85 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %64, i32 0, i32 1
  %65 = load i32, i32* %size85, align 4, !tbaa !24
  %66 = load i32, i32* %initial_buf_size, align 4, !tbaa !5
  %cmp86 = icmp ult i32 %65, %66
  br i1 %cmp86, label %if.then.88, label %if.end.107

if.then.88:                                       ; preds = %lor.lhs.false, %if.end.82
  store i32 0, i32* %count, align 4, !tbaa !5
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !34
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %70 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !36
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory89 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %spaces90 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory89, i32 0, i32 1
  %memories91 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces90, i32 0, i32 1
  %named92 = bitcast %union.anon* %memories91 to %struct._ssn*
  %system93 = getelementptr inbounds %struct._ssn, %struct._ssn* %named92, i32 0, i32 1
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system93, align 8, !tbaa !34
  %73 = bitcast %struct.gs_ref_memory_s* %72 to %struct.gs_memory_s*
  %74 = load i32, i32* %initial_buf_size, align 4, !tbaa !5
  %call94 = call i8* %70(%struct.gs_memory_s* %73, i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #4
  %75 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data95 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %75, i32 0, i32 0
  store i8* %call94, i8** %data95, align 8, !tbaa !21
  %76 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data96 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %76, i32 0, i32 0
  %77 = load i8*, i8** %data96, align 8, !tbaa !21
  %cmp97 = icmp eq i8* %77, null
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.88
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.100:                                       ; preds = %if.then.88
  %78 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data101 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %78, i32 0, i32 0
  %79 = load i8*, i8** %data101, align 8, !tbaa !21
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 1
  %bytes103 = bitcast %union.v* %value102 to i8**
  store i8* %79, i8** %bytes103, align 8, !tbaa !1
  %81 = load i32, i32* %initial_buf_size, align 4, !tbaa !5
  %82 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size104 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %82, i32 0, i32 1
  store i32 %81, i32* %size104, align 4, !tbaa !24
  %83 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %rsize106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 2
  store i32 %81, i32* %rsize106, align 4, !tbaa !23
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.100, %lor.lhs.false
  br label %rd

rd:                                               ; preds = %cleanup.277, %cleanup.203, %if.end.107
  %84 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %85 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %spaces109 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory108, i32 0, i32 1
  %memories110 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces109, i32 0, i32 1
  %named111 = bitcast %union.anon* %memories110 to %struct._ssn*
  %system112 = getelementptr inbounds %struct._ssn, %struct._ssn* %named111, i32 0, i32 1
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system112, align 8, !tbaa !34
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %call113 = call i32 @zreadline_from(%struct.stream_s* %84, %struct.gs_string_s* %85, %struct.gs_memory_s* %88, i32* %count, i32* %in_eol) #4
  store i32 %call113, i32* %code, align 4, !tbaa !5
  %89 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size114 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %89, i32 0, i32 1
  %90 = load i32, i32* %size114, align 4, !tbaa !24
  %cmp115 = icmp ugt i32 %90, 16777216
  br i1 %cmp115, label %if.then.117, label %if.end.143

if.then.117:                                      ; preds = %rd
  %91 = bitcast i8** %nbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 1
  %spaces119 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory118, i32 0, i32 1
  %memories120 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces119, i32 0, i32 1
  %named121 = bitcast %union.anon* %memories120 to %struct._ssn*
  %system122 = getelementptr inbounds %struct._ssn, %struct._ssn* %named121, i32 0, i32 1
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system122, align 8, !tbaa !34
  %94 = bitcast %struct.gs_ref_memory_s* %93 to %struct.gs_memory_s*
  %procs123 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs123, i32 0, i32 18
  %95 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !39
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %spaces125 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory124, i32 0, i32 1
  %memories126 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces125, i32 0, i32 1
  %named127 = bitcast %union.anon* %memories126 to %struct._ssn*
  %system128 = getelementptr inbounds %struct._ssn, %struct._ssn* %named127, i32 0, i32 1
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system128, align 8, !tbaa !34
  %98 = bitcast %struct.gs_ref_memory_s* %97 to %struct.gs_memory_s*
  %99 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data129 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %99, i32 0, i32 0
  %100 = load i8*, i8** %data129, align 8, !tbaa !21
  %101 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size130 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %101, i32 0, i32 1
  %102 = load i32, i32* %size130, align 4, !tbaa !24
  %call131 = call i8* %95(%struct.gs_memory_s* %98, i8* %100, i32 %102, i32 16777216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call131, i8** %nbuf, align 8, !tbaa !1
  %103 = load i8*, i8** %nbuf, align 8, !tbaa !1
  %cmp132 = icmp eq i8* %103, null
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.117
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.142

if.end.135:                                       ; preds = %if.then.117
  %104 = load i8*, i8** %nbuf, align 8, !tbaa !1
  %105 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data136 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %105, i32 0, i32 0
  store i8* %104, i8** %data136, align 8, !tbaa !21
  %106 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 1
  %bytes138 = bitcast %union.v* %value137 to i8**
  store i8* %104, i8** %bytes138, align 8, !tbaa !1
  %107 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size139 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %107, i32 0, i32 1
  store i32 16777216, i32* %size139, align 4, !tbaa !24
  %108 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %rsize141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 2
  store i32 16777216, i32* %rsize141, align 4, !tbaa !23
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.142

cleanup.142:                                      ; preds = %if.end.135, %if.then.134
  %109 = bitcast i8** %nbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  br label %cleanup.348

if.end.143:                                       ; preds = %rd
  %110 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data144 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %110, i32 0, i32 0
  %111 = load i8*, i8** %data144, align 8, !tbaa !21
  %112 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 1
  %bytes146 = bitcast %union.v* %value145 to i8**
  store i8* %111, i8** %bytes146, align 8, !tbaa !1
  %113 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size147 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %113, i32 0, i32 1
  %114 = load i32, i32* %size147, align 4, !tbaa !24
  %115 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i32 0, i32 0
  %rsize149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 2
  store i32 %114, i32* %rsize149, align 4, !tbaa !23
  %116 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %116, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.epilog
    i32 -4, label %sw.bb.150
    i32 1, label %sw.bb.164
  ]

sw.bb:                                            ; preds = %if.end.143
  store i32 -22, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.143
  store i32 -12, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.143
  %117 = bitcast %struct.ref_s* %rfile to i8*
  call void @llvm.lifetime.start(i64 16, i8* %117) #2
  %118 = load i32, i32* %count, align 4, !tbaa !5
  %conv151 = zext i32 %118 to i64
  %119 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i64 -1
  %value153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr152, i32 0, i32 1
  %intval154 = bitcast %union.v* %value153 to i64*
  store i64 %conv151, i64* %intval154, align 8, !tbaa !25
  %120 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfile, i32 0, i32 1
  %pfile156 = bitcast %union.v* %value155 to %struct.stream_s**
  store %struct.stream_s* %120, %struct.stream_s** %pfile156, align 8, !tbaa !1
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfile, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  store i16 868, i16* %type_attrs158, align 2, !tbaa !27
  %121 = load %struct.stream_s*, %struct.stream_s** %ins, align 8, !tbaa !1
  %read_id159 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %121, i32 0, i32 19
  %122 = load i16, i16* %read_id159, align 2, !tbaa !28
  %conv160 = zext i16 %122 to i32
  %tas161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rfile, i32 0, i32 0
  %rsize162 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas161, i32 0, i32 2
  store i32 %conv160, i32* %rsize162, align 4, !tbaa !23
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %124 = load i32, i32* %code, align 4, !tbaa !5
  %call163 = call i32 @s_handle_read_exception(%struct.gs_context_state_s* %123, i32 %124, %struct.ref_s* %rfile, %struct.ref_s* null, i32 0, i32 (%struct.gs_context_state_s*)* @zfilelineedit) #4
  store i32 %call163, i32* %code, align 4, !tbaa !5
  %125 = bitcast %struct.ref_s* %rfile to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #2
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end.143
  %126 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #2
  %127 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size165 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %127, i32 0, i32 1
  %128 = load i32, i32* %size165, align 4, !tbaa !24
  store i32 %128, i32* %nsize, align 4, !tbaa !5
  %129 = bitcast i8** %nbuf166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #2
  %130 = load i32, i32* %nsize, align 4, !tbaa !5
  %cmp167 = icmp uge i32 %130, 16777216
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %sw.bb.164
  store i32 -13, i32* %code, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.203

if.else.170:                                      ; preds = %sw.bb.164
  %131 = load i32, i32* %nsize, align 4, !tbaa !5
  %cmp171 = icmp uge i32 %131, 8388608
  br i1 %cmp171, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.else.170
  store i32 16777216, i32* %nsize, align 4, !tbaa !5
  br label %if.end.176

if.else.174:                                      ; preds = %if.else.170
  %132 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size175 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %132, i32 0, i32 1
  %133 = load i32, i32* %size175, align 4, !tbaa !24
  %mul = mul i32 %133, 2
  store i32 %mul, i32* %nsize, align 4, !tbaa !5
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.174, %if.then.173
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176
  %134 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %134, i32 0, i32 1
  %spaces179 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory178, i32 0, i32 1
  %memories180 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces179, i32 0, i32 1
  %named181 = bitcast %union.anon* %memories180 to %struct._ssn*
  %system182 = getelementptr inbounds %struct._ssn, %struct._ssn* %named181, i32 0, i32 1
  %135 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system182, align 8, !tbaa !34
  %136 = bitcast %struct.gs_ref_memory_s* %135 to %struct.gs_memory_s*
  %procs183 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 1
  %resize_string184 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs183, i32 0, i32 18
  %137 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string184, align 8, !tbaa !39
  %138 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory185 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %138, i32 0, i32 1
  %spaces186 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory185, i32 0, i32 1
  %memories187 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces186, i32 0, i32 1
  %named188 = bitcast %union.anon* %memories187 to %struct._ssn*
  %system189 = getelementptr inbounds %struct._ssn, %struct._ssn* %named188, i32 0, i32 1
  %139 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system189, align 8, !tbaa !34
  %140 = bitcast %struct.gs_ref_memory_s* %139 to %struct.gs_memory_s*
  %141 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data190 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %141, i32 0, i32 0
  %142 = load i8*, i8** %data190, align 8, !tbaa !21
  %143 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size191 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %143, i32 0, i32 1
  %144 = load i32, i32* %size191, align 4, !tbaa !24
  %145 = load i32, i32* %nsize, align 4, !tbaa !5
  %call192 = call i8* %137(%struct.gs_memory_s* %140, i8* %142, i32 %144, i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call192, i8** %nbuf166, align 8, !tbaa !1
  %146 = load i8*, i8** %nbuf166, align 8, !tbaa !1
  %cmp193 = icmp eq i8* %146, null
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.177
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.203

if.end.196:                                       ; preds = %if.end.177
  %147 = load i8*, i8** %nbuf166, align 8, !tbaa !1
  %148 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data197 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %148, i32 0, i32 0
  store i8* %147, i8** %data197, align 8, !tbaa !21
  %149 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 1
  %bytes199 = bitcast %union.v* %value198 to i8**
  store i8* %147, i8** %bytes199, align 8, !tbaa !1
  %150 = load i32, i32* %nsize, align 4, !tbaa !5
  %151 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size200 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %151, i32 0, i32 1
  store i32 %150, i32* %size200, align 4, !tbaa !24
  %152 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 0
  %rsize202 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas201, i32 0, i32 2
  store i32 %150, i32* %rsize202, align 4, !tbaa !23
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.203

cleanup.203:                                      ; preds = %if.end.196, %if.then.195, %if.then.169
  %153 = bitcast i8** %nbuf166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %cleanup.dest.205 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.205, label %unreachable [
    i32 7, label %sw.epilog
    i32 6, label %rd
  ]

sw.epilog:                                        ; preds = %cleanup.203, %sw.bb.150, %sw.default, %sw.bb, %if.end.143
  %155 = load i32, i32* %code, align 4, !tbaa !5
  %cmp206 = icmp ne i32 %155, 0
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %sw.epilog
  %156 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %156, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.209:                                       ; preds = %sw.epilog
  %157 = load i32, i32* %statement, align 4, !tbaa !5
  %tobool210 = icmp ne i32 %157, 0
  br i1 %tobool210, label %if.then.211, label %if.end.285

if.then.211:                                      ; preds = %if.end.209
  %158 = bitcast %struct.stream_s* %st to i8*
  call void @llvm.lifetime.start(i64 352, i8* %158) #2
  %159 = bitcast %struct.stream_s** %ts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #2
  store %struct.stream_s* %st, %struct.stream_s** %ts, align 8, !tbaa !1
  %160 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %160) #2
  %161 = bitcast %struct.ref_s* %ignore_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %161) #2
  %162 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #2
  %163 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack212 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %163, i32 0, i32 26
  %stack213 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack212, i32 0, i32 0
  %call214 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack213) #4
  store i32 %call214, i32* %depth, align 4, !tbaa !5
  %164 = bitcast i32* %code215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #2
  %165 = load i32, i32* %count, align 4, !tbaa !5
  %add = add i32 %165, 1
  %166 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size216 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %166, i32 0, i32 1
  %167 = load i32, i32* %size216, align 4, !tbaa !24
  %cmp217 = icmp ugt i32 %add, %167
  br i1 %cmp217, label %if.then.219, label %if.end.258

if.then.219:                                      ; preds = %if.then.211
  %168 = bitcast i32* %nsize220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #2
  %169 = bitcast i8** %nbuf221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #2
  %170 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size222 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %170, i32 0, i32 1
  %171 = load i32, i32* %size222, align 4, !tbaa !24
  %add223 = add i32 %171, 1
  store i32 %add223, i32* %nsize220, align 4, !tbaa !5
  %172 = load i32, i32* %nsize220, align 4, !tbaa !5
  %cmp224 = icmp ugt i32 %172, 16777216
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %if.then.219
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.else.227:                                      ; preds = %if.then.219
  %173 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %173, i32 0, i32 1
  %spaces229 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory228, i32 0, i32 1
  %memories230 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces229, i32 0, i32 1
  %named231 = bitcast %union.anon* %memories230 to %struct._ssn*
  %system232 = getelementptr inbounds %struct._ssn, %struct._ssn* %named231, i32 0, i32 1
  %174 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system232, align 8, !tbaa !34
  %175 = bitcast %struct.gs_ref_memory_s* %174 to %struct.gs_memory_s*
  %procs233 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 1
  %resize_string234 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs233, i32 0, i32 18
  %176 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string234, align 8, !tbaa !39
  %177 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory235 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %177, i32 0, i32 1
  %spaces236 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory235, i32 0, i32 1
  %memories237 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces236, i32 0, i32 1
  %named238 = bitcast %union.anon* %memories237 to %struct._ssn*
  %system239 = getelementptr inbounds %struct._ssn, %struct._ssn* %named238, i32 0, i32 1
  %178 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system239, align 8, !tbaa !34
  %179 = bitcast %struct.gs_ref_memory_s* %178 to %struct.gs_memory_s*
  %180 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data240 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %180, i32 0, i32 0
  %181 = load i8*, i8** %data240, align 8, !tbaa !21
  %182 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size241 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %182, i32 0, i32 1
  %183 = load i32, i32* %size241, align 4, !tbaa !24
  %184 = load i32, i32* %nsize220, align 4, !tbaa !5
  %call242 = call i8* %176(%struct.gs_memory_s* %179, i8* %181, i32 %183, i32 %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call242, i8** %nbuf221, align 8, !tbaa !1
  %185 = load i8*, i8** %nbuf221, align 8, !tbaa !1
  %cmp243 = icmp eq i8* %185, null
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.else.227
  store i32 -25, i32* %code215, align 4, !tbaa !5
  %186 = load i32, i32* %code215, align 4, !tbaa !5
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end.246:                                       ; preds = %if.else.227
  %187 = load i8*, i8** %nbuf221, align 8, !tbaa !1
  %188 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data247 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %188, i32 0, i32 0
  store i8* %187, i8** %data247, align 8, !tbaa !21
  %189 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %189, i32 0, i32 1
  %bytes249 = bitcast %union.v* %value248 to i8**
  store i8* %187, i8** %bytes249, align 8, !tbaa !1
  %190 = load i32, i32* %nsize220, align 4, !tbaa !5
  %191 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size250 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %191, i32 0, i32 1
  store i32 %190, i32* %size250, align 4, !tbaa !24
  %192 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas251 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i32 0, i32 0
  %rsize252 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas251, i32 0, i32 2
  store i32 %190, i32* %rsize252, align 4, !tbaa !23
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.246
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.254

cleanup.254:                                      ; preds = %if.end.253, %if.then.245, %if.then.226
  %193 = bitcast i8** %nbuf221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i32* %nsize220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %cleanup.dest.256 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.256, label %cleanup.277 [
    i32 0, label %cleanup.cont.257
  ]

cleanup.cont.257:                                 ; preds = %cleanup.254
  br label %if.end.258

if.end.258:                                       ; preds = %cleanup.cont.257, %if.then.211
  %195 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add i32 %195, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  %idxprom = zext i32 %195 to i64
  %196 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data259 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %196, i32 0, i32 0
  %197 = load i8*, i8** %data259, align 8, !tbaa !21
  %arrayidx260 = getelementptr inbounds i8, i8* %197, i64 %idxprom
  store i8 10, i8* %arrayidx260, align 1, !tbaa !20
  %198 = load %struct.stream_s*, %struct.stream_s** %ts, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %198, %struct.gs_memory_s* null) #4
  %199 = load %struct.stream_s*, %struct.stream_s** %ts, align 8, !tbaa !1
  %200 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data261 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %200, i32 0, i32 0
  %201 = load i8*, i8** %data261, align 8, !tbaa !21
  %202 = load i32, i32* %count, align 4, !tbaa !5
  call void @sread_string(%struct.stream_s* %199, i8* %201, i32 %202) #4
  br label %sc

sc:                                               ; preds = %sw.bb.273, %if.end.258
  %203 = load %struct.stream_s*, %struct.stream_s** %ts, align 8, !tbaa !1
  call void @gs_scanner_init_stream_options(%struct.scanner_state_s* %state, %struct.stream_s* %203, i32 2) #4
  %204 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory262 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %204, i32 0, i32 1
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory262, i32 12) #4
  %205 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call263 = call i32 @gs_scan_token(%struct.gs_context_state_s* %205, %struct.ref_s* %ignore_value, %struct.scanner_state_s* %state) #4
  store i32 %call263, i32* %code215, align 4, !tbaa !5
  %206 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack264 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %206, i32 0, i32 26
  %stack265 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack264, i32 0, i32 0
  %207 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack266 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %207, i32 0, i32 26
  %stack267 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack266, i32 0, i32 0
  %call268 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack267) #4
  %208 = load i32, i32* %depth, align 4, !tbaa !5
  %sub = sub i32 %call268, %208
  call void @ref_stack_pop(%struct.ref_stack_s* %stack265, i32 %sub) #4
  %209 = load i32, i32* %code215, align 4, !tbaa !5
  %cmp269 = icmp slt i32 %209, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %sc
  store i32 2, i32* %code215, align 4, !tbaa !5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %sc
  %210 = load i32, i32* %code215, align 4, !tbaa !5
  switch i32 %210, label %sw.default.275 [
    i32 0, label %sw.bb.273
    i32 1, label %sw.bb.273
    i32 3, label %sw.bb.274
    i32 2, label %sw.epilog.276
  ]

sw.bb.273:                                        ; preds = %if.end.272, %if.end.272
  br label %sc

sw.bb.274:                                        ; preds = %if.end.272
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.277

sw.default.275:                                   ; preds = %if.end.272
  %211 = load i32, i32* %code215, align 4, !tbaa !5
  store i32 %211, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.277

sw.epilog.276:                                    ; preds = %if.end.272
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.277

cleanup.277:                                      ; preds = %sw.epilog.276, %sw.default.275, %sw.bb.274, %cleanup.254
  %212 = bitcast i32* %code215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast %struct.ref_s* %ignore_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %214) #2
  %215 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %215) #2
  %216 = bitcast %struct.stream_s** %ts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  %217 = bitcast %struct.stream_s* %st to i8*
  call void @llvm.lifetime.end(i64 352, i8* %217) #2
  %cleanup.dest.283 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.283, label %cleanup.348 [
    i32 0, label %cleanup.cont.284
    i32 6, label %rd
  ]

cleanup.cont.284:                                 ; preds = %cleanup.277
  br label %if.end.285

if.end.285:                                       ; preds = %cleanup.cont.284, %if.end.209
  %218 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory286 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %218, i32 0, i32 1
  %spaces287 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory286, i32 0, i32 1
  %memories288 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces287, i32 0, i32 1
  %named289 = bitcast %union.anon* %memories288 to %struct._ssn*
  %system290 = getelementptr inbounds %struct._ssn, %struct._ssn* %named289, i32 0, i32 1
  %219 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system290, align 8, !tbaa !34
  %220 = bitcast %struct.gs_ref_memory_s* %219 to %struct.gs_memory_s*
  %procs291 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 1
  %resize_string292 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs291, i32 0, i32 18
  %221 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string292, align 8, !tbaa !39
  %222 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory293 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %222, i32 0, i32 1
  %spaces294 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory293, i32 0, i32 1
  %memories295 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces294, i32 0, i32 1
  %named296 = bitcast %union.anon* %memories295 to %struct._ssn*
  %system297 = getelementptr inbounds %struct._ssn, %struct._ssn* %named296, i32 0, i32 1
  %223 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system297, align 8, !tbaa !34
  %224 = bitcast %struct.gs_ref_memory_s* %223 to %struct.gs_memory_s*
  %225 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data298 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %225, i32 0, i32 0
  %226 = load i8*, i8** %data298, align 8, !tbaa !21
  %227 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size299 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %227, i32 0, i32 1
  %228 = load i32, i32* %size299, align 4, !tbaa !24
  %229 = load i32, i32* %count, align 4, !tbaa !5
  %call300 = call i8* %221(%struct.gs_memory_s* %224, i8* %226, i32 %228, i32 %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #4
  %230 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data301 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %230, i32 0, i32 0
  store i8* %call300, i8** %data301, align 8, !tbaa !21
  %231 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data302 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %231, i32 0, i32 0
  %232 = load i8*, i8** %data302, align 8, !tbaa !21
  %cmp303 = icmp eq i8* %232, null
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.285
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.306:                                       ; preds = %if.end.285
  %233 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data307 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %233, i32 0, i32 0
  %234 = load i8*, i8** %data307, align 8, !tbaa !21
  %235 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %235, i32 0, i32 1
  %bytes309 = bitcast %union.v* %value308 to i8**
  store i8* %234, i8** %bytes309, align 8, !tbaa !1
  %236 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %size310 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %236, i32 0, i32 1
  %237 = load i32, i32* %size310, align 4, !tbaa !24
  %238 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %238, i32 0, i32 0
  %rsize312 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas311, i32 0, i32 2
  store i32 %237, i32* %rsize312, align 4, !tbaa !23
  %239 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory313 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %239, i32 0, i32 1
  %spaces314 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory313, i32 0, i32 1
  %memories315 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces314, i32 0, i32 1
  %named316 = bitcast %union.anon* %memories315 to %struct._ssn*
  %system317 = getelementptr inbounds %struct._ssn, %struct._ssn* %named316, i32 0, i32 1
  %240 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system317, align 8, !tbaa !34
  %241 = bitcast %struct.gs_ref_memory_s* %240 to %struct.gs_memory_s*
  %call318 = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #4
  store %struct.stream_s* %call318, %struct.stream_s** %s, align 8, !tbaa !1
  %242 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp319 = icmp eq %struct.stream_s* %242, null
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.end.306
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.322:                                       ; preds = %if.end.306
  %243 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %244 = load %struct.gs_string_s*, %struct.gs_string_s** %buf, align 8, !tbaa !1
  %data323 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %244, i32 0, i32 0
  %245 = load i8*, i8** %data323, align 8, !tbaa !21
  %246 = load i32, i32* %count, align 4, !tbaa !5
  call void @sread_string(%struct.stream_s* %243, i8* %245, i32 %246) #4
  %247 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs324 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %247, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs324, i32 0, i32 4
  %248 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !40
  %249 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %249, i32 0, i32 25
  store i32 (%struct.stream_s*)* %248, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !41
  %250 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs325 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %250, i32 0, i32 14
  %close326 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs325, i32 0, i32 4
  store i32 (%struct.stream_s*)* @file_close_disable, i32 (%struct.stream_s*)** %close326, align 8, !tbaa !40
  %251 = load i32, i32* %statement, align 4, !tbaa !5
  %tobool327 = icmp ne i32 %251, 0
  br i1 %tobool327, label %cond.true.328, label %cond.false.329

cond.true.328:                                    ; preds = %if.end.322
  %252 = load i8*, i8** getelementptr inbounds (%struct.gx_io_device_s, %struct.gx_io_device_s* bitcast ({ i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* }* @gs_iodev_statementedit to %struct.gx_io_device_s*), i32 0, i32 0), align 8, !tbaa !42
  br label %cond.end.330

cond.false.329:                                   ; preds = %if.end.322
  %253 = load i8*, i8** getelementptr inbounds (%struct.gx_io_device_s, %struct.gx_io_device_s* bitcast ({ i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* }* @gs_iodev_lineedit to %struct.gx_io_device_s*), i32 0, i32 0), align 8, !tbaa !42
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.329, %cond.true.328
  %cond331 = phi i8* [ %252, %cond.true.328 ], [ %253, %cond.false.329 ]
  store i8* %cond331, i8** %filename, align 8, !tbaa !1
  %254 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %255 = load i8*, i8** %filename, align 8, !tbaa !1
  %256 = load i8*, i8** %filename, align 8, !tbaa !1
  %call332 = call i64 @strlen(i8* %256) #5
  %add333 = add i64 %call332, 1
  %conv334 = trunc i64 %add333 to i32
  %call335 = call i32 @ssetfilename(%struct.stream_s* %254, i8* %255, i32 %conv334) #4
  store i32 %call335, i32* %code, align 4, !tbaa !5
  %257 = load i32, i32* %code, align 4, !tbaa !5
  %cmp336 = icmp slt i32 %257, 0
  br i1 %cmp336, label %if.then.338, label %if.end.340

if.then.338:                                      ; preds = %cond.end.330
  %258 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call339 = call i32 @sclose(%struct.stream_s* %258) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

if.end.340:                                       ; preds = %cond.end.330
  %259 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack341 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %259, i32 0, i32 26
  %stack342 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack341, i32 0, i32 0
  %p343 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack342, i32 0, i32 0
  %260 = load %struct.ref_s*, %struct.ref_s** %p343, align 8, !tbaa !7
  %add.ptr344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %260, i64 -3
  store %struct.ref_s* %add.ptr344, %struct.ref_s** %p343, align 8, !tbaa !7
  %261 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack345 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %261, i32 0, i32 26
  %stack346 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack345, i32 0, i32 0
  %p347 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack346, i32 0, i32 0
  %262 = load %struct.ref_s*, %struct.ref_s** %p347, align 8, !tbaa !7
  %263 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %262, %struct.stream_s* %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #4
  %264 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %264, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.348

cleanup.348:                                      ; preds = %if.end.340, %if.then.338, %if.then.321, %if.then.305, %cleanup.277, %if.then.208, %cleanup.142, %if.then.99, %if.then.81, %cleanup, %cond.end, %if.then.23, %if.then.9, %if.then
  %265 = bitcast %struct.gs_string_s** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #2
  %266 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #2
  %267 = bitcast i32* %initial_buf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %268) #2
  %269 = bitcast %struct.stream_s** %ins to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %270 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  %271 = bitcast i32* %statement to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #2
  %273 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #2
  %274 = bitcast i32* %in_eol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  %275 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #2
  %276 = load i32, i32* %retval
  ret i32 %276

unreachable:                                      ; preds = %cleanup.203
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @check_type_failed(%struct.ref_s*) #0

declare i32 @file_switch_to_read(%struct.ref_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @zreadline_from(%struct.stream_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*) #0

declare i32 @s_handle_read_exception(%struct.gs_context_state_s*, i32, %struct.ref_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*) #0

declare i32 @ref_stack_count(%struct.ref_stack_s*) #0

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #0

declare void @sread_string(%struct.stream_s*, i8*, i32) #0

declare void @gs_scanner_init_stream_options(%struct.scanner_state_s*, %struct.stream_s*, i32) #0

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #0

declare i32 @gs_scan_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #0

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #0

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #0

declare i32 @file_close_disable(%struct.stream_s*) #0

declare i32 @ssetfilename(%struct.stream_s*, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @sclose(%struct.stream_s*) #0

declare void @make_stream_file(%struct.ref_s*, %struct.stream_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @zgetiodevice(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %dname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !45
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %13 = load i64, i64* %intval, align 8, !tbaa !25
  %conv2 = trunc i64 %13 to i32
  %call3 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %11, i32 %conv2) #4
  store %struct.gx_io_device_s* %call3, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %14 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gx_io_device_s* %14, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %dname8 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %dname8, align 8, !tbaa !42
  store i8* %16, i8** %dname, align 8, !tbaa !1
  %17 = load i8*, i8** %dname, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %17, null
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 3584, i16* %type_attrs13, align 2, !tbaa !27
  br label %if.end.20

if.else:                                          ; preds = %if.end.7
  %19 = load i8*, i8** %dname, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value14 to i8**
  store i8* %19, i8** %const_bytes, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 4704, i16* %type_attrs16, align 2, !tbaa !27
  %22 = load i8*, i8** %dname, align 8, !tbaa !1
  %call17 = call i64 @strlen(i8* %22) #5
  %conv18 = trunc i64 %call17 to i32
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  store i32 %conv18, i32* %rsize, align 4, !tbaa !23
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.6, %if.then
  %24 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

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
!21 = !{!22, !2, i64 0}
!22 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!23 = !{!11, !6, i64 4}
!24 = !{!22, !6, i64 8}
!25 = !{!14, !14, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!11, !13, i64 0}
!28 = !{!29, !13, i64 264}
!29 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !3, i64 154, !3, i64 155, !22, i64 160, !14, i64 176, !30, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !13, i64 264, !13, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !31, i64 312, !6, i64 328, !14, i64 336, !14, i64 344}
!30 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!31 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!32 = !{!29, !13, i64 266}
!33 = !{!8, !2, i64 256}
!34 = !{!35, !2, i64 8}
!35 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!36 = !{!37, !2, i64 136}
!37 = !{!"gs_memory_s", !2, i64 0, !38, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!39 = !{!37, !2, i64 152}
!40 = !{!29, !2, i64 216}
!41 = !{!29, !2, i64 296}
!42 = !{!43, !2, i64 0}
!43 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !44, i64 16, !2, i64 120}
!44 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!45 = !{!8, !2, i64 8}
