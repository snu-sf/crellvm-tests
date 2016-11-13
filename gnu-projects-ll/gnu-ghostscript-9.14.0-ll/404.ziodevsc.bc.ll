; ModuleID = './ziodevsc.bc'
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
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@iodev_dtype_stdio = constant [8 x i8] c"Special\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"%stdin%\00", align 1
@gs_iodev_stdin = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @iodev_dtype_stdio, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @stdin_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @stdin_open, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%stdout%\00", align 1
@gs_iodev_stdout = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @iodev_dtype_stdio, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @stdout_open, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%stderr%\00", align 1
@gs_iodev_stderr = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @iodev_dtype_stdio, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @stderr_open, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%stdin\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%stdout\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%stderr\00", align 1
@stdin_open.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_stdin_read_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"stdin_open(stream)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"stdin_open(buffer)\00", align 1
@stdout_open.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_std_write_flush, i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_stdout_write_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"stdout_open(stream)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"stdout_open(buffer)\00", align 1
@stderr_open.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_std_write_flush, i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_stderr_write_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"stderr_open(stream)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"stderr_open(buffer)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @stdin_init(%struct.gx_io_device_s* %iodev, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %stdin_is_interactive = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 7
  store i32 1, i32* %stdin_is_interactive, align 4, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @stdin_open(%struct.gx_io_device_s* %iodev, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %sysmem = alloca %struct.gs_memory_s*, align 8
  %buf = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %state, align 8, !tbaa !12
  %3 = bitcast i8* %2 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %3, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 114
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !15
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end:                                           ; preds = %land.lhs.true
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx6 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %10 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 19
  %12 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv7 = zext i16 %12 to i32
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv8 = zext i16 %14 to i32
  %or = or i32 %conv7, %conv8
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio9, i32 0, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp11 = icmp ne i32 %or, %16
  br i1 %cmp11, label %if.then.13, label %if.end.36

if.then.13:                                       ; preds = %if.end
  %17 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %21 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #3
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !28
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call14 = call i8* %24(%struct.gs_memory_s* %25, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #3
  store i8* %call14, i8** %buf, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.stream_s* %26, null
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %27 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %27, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @s_std_init(%struct.stream_s* %28, i8* %29, i32 1024, %struct.stream_procs* @stdin_open.p, i32 1) #3
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !29
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 11
  %32 = load i8, i8* %modes, align 1, !tbaa !30
  %conv21 = zext i8 %32 to i32
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 28
  store i32 %conv21, i32* %file_modes, align 4, !tbaa !31
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !32
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !33
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 25
  store i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !34
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 17
  %arrayidx23 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio22, i32 0, i64 0
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %pfile25 = bitcast %union.v* %value24 to %struct.stream_s**
  store %struct.stream_s* %37, %struct.stream_s** %pfile25, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 17
  %arrayidx27 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio26, i32 0, i64 0
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  store i16 868, i16* %type_attrs, align 2, !tbaa !35
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 19
  %41 = load i16, i16* %read_id29, align 2, !tbaa !16
  %conv30 = zext i16 %41 to i32
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 17
  %arrayidx32 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio31, i32 0, i64 0
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  store i32 %conv30, i32* %rsize34, align 4, !tbaa !23
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %44 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %43, %struct.stream_s** %44, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %45 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  br label %cleanup.37

if.end.36:                                        ; preds = %if.end
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %48 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %47, %struct.stream_s** %48, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %cleanup, %if.then
  %49 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @iodev_no_open_file(%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*) #1

declare i32 @iodev_no_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #1

declare i32 @iodev_no_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #1

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #1

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #1

declare i32 @iodev_no_file_status(%struct.gx_io_device_s*, i8*, %struct.stat*) #1

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #1

declare i32 @iodev_no_get_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #1

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #1

declare i32 @iodev_no_init(%struct.gx_io_device_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @stdout_open(%struct.gx_io_device_s* %iodev, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %sysmem = alloca %struct.gs_memory_s*, align 8
  %buf = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %state, align 8, !tbaa !12
  %3 = bitcast i8* %2 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %3, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 119
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !15
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %land.lhs.true
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx6 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %10 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 19
  %12 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv7 = zext i16 %12 to i32
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv8 = zext i16 %14 to i32
  %or = or i32 %conv7, %conv8
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio9, i32 0, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp11 = icmp ne i32 %or, %16
  br i1 %cmp11, label %if.then.13, label %if.end.37

if.then.13:                                       ; preds = %if.end
  %17 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %21 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #3
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !28
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call14 = call i8* %24(%struct.gs_memory_s* %25, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #3
  store i8* %call14, i8** %buf, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.stream_s* %26, null
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %27 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %27, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @s_std_init(%struct.stream_s* %28, i8* %29, i32 128, %struct.stream_procs* @stdout_open.p, i32 2) #3
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !29
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 11
  %32 = load i8, i8* %modes, align 1, !tbaa !30
  %conv21 = zext i8 %32 to i32
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 28
  store i32 %conv21, i32* %file_modes, align 4, !tbaa !31
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !32
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !33
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs22, i32 0, i32 3
  %37 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !36
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 25
  store i32 (%struct.stream_s*)* %37, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !34
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 17
  %arrayidx24 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio23, i32 0, i64 1
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 1
  %pfile26 = bitcast %union.v* %value25 to %struct.stream_s**
  store %struct.stream_s* %39, %struct.stream_s** %pfile26, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 17
  %arrayidx28 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio27, i32 0, i64 1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx28, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  store i16 788, i16* %type_attrs, align 2, !tbaa !35
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 20
  %43 = load i16, i16* %write_id30, align 2, !tbaa !22
  %conv31 = zext i16 %43 to i32
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 17
  %arrayidx33 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio32, i32 0, i64 1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx33, i32 0, i32 0
  %rsize35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  store i32 %conv31, i32* %rsize35, align 4, !tbaa !23
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %45, %struct.stream_s** %46, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %47 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %cleanup.38

if.end.37:                                        ; preds = %if.end
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %50 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %49, %struct.stream_s** %50, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup, %if.then
  %51 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @stderr_open(%struct.gx_io_device_s* %iodev, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %sysmem = alloca %struct.gs_memory_s*, align 8
  %buf = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %state, align 8, !tbaa !12
  %3 = bitcast i8* %2 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %3, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 119
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !15
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %land.lhs.true
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx6 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %10 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 19
  %12 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv7 = zext i16 %12 to i32
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv8 = zext i16 %14 to i32
  %or = or i32 %conv7, %conv8
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio9, i32 0, i64 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp11 = icmp ne i32 %or, %16
  br i1 %cmp11, label %if.then.13, label %if.end.37

if.then.13:                                       ; preds = %if.end
  %17 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %21 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call = call %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #3
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !28
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %sysmem, align 8, !tbaa !1
  %call14 = call i8* %24(%struct.gs_memory_s* %25, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #3
  store i8* %call14, i8** %buf, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.stream_s* %26, null
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %27 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %27, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @s_std_init(%struct.stream_s* %28, i8* %29, i32 128, %struct.stream_procs* @stderr_open.p, i32 2) #3
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !29
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 11
  %32 = load i8, i8* %modes, align 1, !tbaa !30
  %conv21 = zext i8 %32 to i32
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 28
  store i32 %conv21, i32* %file_modes, align 4, !tbaa !31
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !32
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !33
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs22, i32 0, i32 3
  %37 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !36
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 25
  store i32 (%struct.stream_s*)* %37, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !34
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 17
  %arrayidx24 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio23, i32 0, i64 2
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 1
  %pfile26 = bitcast %union.v* %value25 to %struct.stream_s**
  store %struct.stream_s* %39, %struct.stream_s** %pfile26, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 17
  %arrayidx28 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio27, i32 0, i64 2
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx28, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  store i16 788, i16* %type_attrs, align 2, !tbaa !35
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 20
  %43 = load i16, i16* %write_id30, align 2, !tbaa !22
  %conv31 = zext i16 %43 to i32
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %stdio32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 17
  %arrayidx33 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio32, i32 0, i64 2
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx33, i32 0, i32 0
  %rsize35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  store i32 %conv31, i32* %rsize35, align 4, !tbaa !23
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %45, %struct.stream_s** %46, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %47 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.gs_memory_s** %sysmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %cleanup.38

if.end.37:                                        ; preds = %if.end
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %50 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %49, %struct.stream_s** %50, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup, %if.then
  %51 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @zget_stdin(%struct.gs_context_state_s* %i_ctx_p, %struct.stream_s** %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %s = alloca %struct.stream_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %4 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %4, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 19
  %6 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv = zext i16 %6 to i32
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 20
  %8 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv1 = zext i16 %8 to i32
  %or = or i32 %conv, %conv1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio2, i32 0, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp = icmp eq i32 %or, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %11, %struct.stream_s** %12, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 6) #3
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_context_state_s* %16 to i8*
  %18 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %18, i32 0, i32 3
  store i8* %17, i8** %state, align 8, !tbaa !12
  %19 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %19, i32 0, i32 2
  %open_device = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 1
  %20 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device, align 8, !tbaa !46
  %21 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %call6 = call i32 %20(%struct.gx_io_device_s* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), %struct.stream_s** %22, %struct.gs_memory_s* %25) #3
  store i32 %call6, i32* %code, align 4, !tbaa !47
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %26, i32 0, i32 3
  store i8* null, i8** %state7, align 8, !tbaa !12
  %27 = load i32, i32* %code, align 4, !tbaa !47
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @zis_stdin(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 11
  %1 = load i8, i8* %modes, align 1, !tbaa !30
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %3 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !48
  %cmp2 = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %3, @s_stdin_read_process
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stdin_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !47
  %0 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %limit, align 8, !tbaa !49
  %3 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !51
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wcount, align 4, !tbaa !47
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = load i32, i32* %wcount, align 4, !tbaa !47
  %cmp = icmp sle i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %stdin_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 10
  %12 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdin_fn, align 8, !tbaa !54
  %tobool = icmp ne i32 (i8*, i8*, i32)* %12, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx3, align 8, !tbaa !5
  %stdin_fn4 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 10
  %15 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdin_fn4, align 8, !tbaa !54
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 2
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx5, align 8, !tbaa !5
  %caller_handle = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 8
  %18 = load i8*, i8** %caller_handle, align 8, !tbaa !55
  %19 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %19, i32 0, i32 1
  %20 = load i8*, i8** %ptr6, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 2
  %22 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx7, align 8, !tbaa !5
  %stdin_is_interactive = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %22, i32 0, i32 7
  %23 = load i32, i32* %stdin_is_interactive, align 4, !tbaa !8
  %tobool8 = icmp ne i32 %23, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %24 = load i32, i32* %wcount, align 4, !tbaa !47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %24, %cond.false ]
  %call = call i32 %15(i8* %18, i8* %add.ptr, i32 %cond) #3
  store i32 %call, i32* %count, align 4, !tbaa !47
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %25 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %ptr9, align 8, !tbaa !51
  %add.ptr10 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i32, i32* %wcount, align 4, !tbaa !47
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 2
  %29 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx11, align 8, !tbaa !5
  %stdin_is_interactive12 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %29, i32 0, i32 7
  %30 = load i32, i32* %stdin_is_interactive12, align 4, !tbaa !8
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 2
  %32 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx13, align 8, !tbaa !5
  %fstdin = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %32, i32 0, i32 1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdin, align 8, !tbaa !56
  %call14 = call i32 @gp_stdin_read(i8* %add.ptr10, i32 %27, i32 %30, %struct._IO_FILE* %33) #3
  store i32 %call14, i32* %count, align 4, !tbaa !47
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %cond.end
  %34 = load i32, i32* %count, align 4, !tbaa !47
  %cmp16 = icmp slt i32 %34, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.end.15
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.end.15
  %35 = load i32, i32* %count, align 4, !tbaa !47
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ 0, %cond.true.18 ], [ %35, %cond.false.19 ]
  %36 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %ptr22, align 8, !tbaa !51
  %idx.ext = sext i32 %cond21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr23, i8** %ptr22, align 8, !tbaa !51
  %38 = load i32, i32* %count, align 4, !tbaa !47
  %cmp24 = icmp slt i32 %38, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.20
  br label %cond.end.34

cond.false.27:                                    ; preds = %cond.end.20
  %39 = load i32, i32* %count, align 4, !tbaa !47
  %cmp28 = icmp eq i32 %39, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.27
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.false.27
  %40 = load i32, i32* %count, align 4, !tbaa !47
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ -1, %cond.true.30 ], [ %40, %cond.false.31 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.26
  %cond35 = phi i32 [ -2, %cond.true.26 ], [ %cond33, %cond.end.32 ]
  store i32 %cond35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.34, %if.then
  %41 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @zget_stdout(%struct.gs_context_state_s* %i_ctx_p, %struct.stream_s** %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %s = alloca %struct.stream_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %4 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %4, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 19
  %6 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv = zext i16 %6 to i32
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 20
  %8 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv1 = zext i16 %8 to i32
  %or = or i32 %conv, %conv1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio2, i32 0, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp = icmp eq i32 %or, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %11, %struct.stream_s** %12, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 7) #3
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_context_state_s* %16 to i8*
  %18 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %18, i32 0, i32 3
  store i8* %17, i8** %state, align 8, !tbaa !12
  %19 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %19, i32 0, i32 2
  %open_device = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 1
  %20 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device, align 8, !tbaa !46
  %21 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %call6 = call i32 %20(%struct.gx_io_device_s* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct.stream_s** %22, %struct.gs_memory_s* %25) #3
  store i32 %call6, i32* %code, align 4, !tbaa !47
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %26, i32 0, i32 3
  store i8* null, i8** %state7, align 8, !tbaa !12
  %27 = load i32, i32* %code, align 4, !tbaa !47
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @zget_stderr(%struct.gs_context_state_s* %i_ctx_p, %struct.stream_s** %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %s = alloca %struct.stream_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 17
  %arrayidx = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %4 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %4, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 19
  %6 = load i16, i16* %read_id, align 2, !tbaa !16
  %conv = zext i16 %6 to i32
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 20
  %8 = load i16, i16* %write_id, align 2, !tbaa !22
  %conv1 = zext i16 %8 to i32
  %or = or i32 %conv, %conv1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio2, i32 0, i64 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !23
  %cmp = icmp eq i32 %or, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %11, %struct.stream_s** %12, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 7) #3
  store %struct.gx_io_device_s* %call, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_context_state_s* %16 to i8*
  %18 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %18, i32 0, i32 3
  store i8* %17, i8** %state, align 8, !tbaa !12
  %19 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %19, i32 0, i32 2
  %open_device = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 1
  %20 = load i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_device, align 8, !tbaa !46
  %21 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !26
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %call6 = call i32 %20(%struct.gx_io_device_s* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct.stream_s** %22, %struct.gs_memory_s* %25) #3
  store i32 %call6, i32* %code, align 4, !tbaa !47
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %26, i32 0, i32 3
  store i8* null, i8** %state7, align 8, !tbaa !12
  %27 = load i32, i32* %code, align 4, !tbaa !47
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #1

declare i32 @s_std_noseek(%struct.stream_s*, i64) #1

declare void @s_std_read_reset(%struct.stream_s*) #1

declare i32 @s_std_read_flush(%struct.stream_s*) #1

declare i32 @file_close_file(%struct.stream_s*) #1

declare %struct.stream_s* @file_alloc_stream(%struct.gs_memory_s*, i8*) #1

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #1

declare i32 @s_std_null(%struct.stream_s*) #1

declare i32 @gp_stdin_read(i8*, i32, i32, %struct._IO_FILE*) #1

declare void @s_std_write_reset(%struct.stream_s*) #1

declare i32 @s_std_write_flush(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_stdout_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !47
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !57
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !59
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !47
  %5 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %count, align 4, !tbaa !47
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %ptr2, align 8, !tbaa !59
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i32, i32* %count, align 4, !tbaa !47
  %call = call i32 @outwrite(%struct.gs_memory_s* %8, i8* %add.ptr, i32 %11) #3
  store i32 %call, i32* %written, align 4, !tbaa !47
  %12 = load i32, i32* %written, align 4, !tbaa !47
  %13 = load i32, i32* %count, align 4, !tbaa !47
  %cmp3 = icmp ult i32 %12, %13
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load i32, i32* %written, align 4, !tbaa !47
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr7, align 8, !tbaa !59
  %idx.ext = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr8, i8** %ptr7, align 8, !tbaa !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %17 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @outwrite(%struct.gs_memory_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_stderr_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !47
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !57
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !59
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !47
  %5 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %count, align 4, !tbaa !47
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %ptr2, align 8, !tbaa !59
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i32, i32* %count, align 4, !tbaa !47
  %call = call i32 @errwrite(%struct.gs_memory_s* %8, i8* %add.ptr, i32 %11) #3
  store i32 %call, i32* %written, align 4, !tbaa !47
  %12 = load i32, i32* %written, align 4, !tbaa !47
  %13 = load i32, i32* %count, align 4, !tbaa !47
  %cmp3 = icmp ult i32 %12, %13
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load i32, i32* %written, align 4, !tbaa !47
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr7, align 8, !tbaa !59
  %idx.ext = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr8, i8** %ptr7, align 8, !tbaa !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %17 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #1

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
!5 = !{!6, !2, i64 192}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !10, i64 48}
!9 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"int", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !2, i64 120}
!13 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !14, i64 16, !2, i64 120}
!14 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !18, i64 264}
!17 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !10, i64 144, !10, i64 148, !18, i64 152, !3, i64 154, !3, i64 155, !19, i64 160, !11, i64 176, !20, i64 184, !2, i64 240, !10, i64 248, !10, i64 252, !2, i64 256, !18, i64 264, !18, i64 266, !2, i64 272, !2, i64 280, !10, i64 288, !10, i64 292, !2, i64 296, !2, i64 304, !21, i64 312, !10, i64 328, !11, i64 336, !11, i64 344}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!20 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!21 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!22 = !{!17, !18, i64 266}
!23 = !{!24, !10, i64 4}
!24 = !{!"ref_s", !25, i64 0, !3, i64 8}
!25 = !{!"tas_s", !18, i64 0, !18, i64 2, !10, i64 4}
!26 = !{!27, !2, i64 8}
!27 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!28 = !{!6, !2, i64 64}
!29 = !{!17, !2, i64 304}
!30 = !{!17, !3, i64 155}
!31 = !{!17, !10, i64 328}
!32 = !{!17, !11, i64 336}
!33 = !{!17, !11, i64 344}
!34 = !{!17, !2, i64 296}
!35 = !{!24, !18, i64 0}
!36 = !{!17, !2, i64 208}
!37 = !{!38, !2, i64 8}
!38 = !{!"gs_context_state_s", !2, i64 0, !39, i64 8, !10, i64 80, !24, i64 88, !24, i64 104, !11, i64 120, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !24, i64 152, !24, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !41, i64 264, !41, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !42, i64 368, !44, i64 520, !45, i64 624, !2, i64 720}
!39 = !{!"gs_dual_memory_s", !2, i64 0, !40, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!40 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!41 = !{!"op_array_table_s", !24, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!42 = !{!"dict_stack_s", !43, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !24, i64 136}
!43 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !24, i64 24, !10, i64 40, !10, i64 44, !24, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!44 = !{!"exec_stack_s", !43, i64 0, !2, i64 96}
!45 = !{!"op_stack_s", !43, i64 0}
!46 = !{!13, !2, i64 24}
!47 = !{!10, !10, i64 0}
!48 = !{!17, !2, i64 224}
!49 = !{!50, !2, i64 16}
!50 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!51 = !{!50, !2, i64 8}
!52 = !{!53, !2, i64 8}
!53 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28}
!54 = !{!9, !2, i64 72}
!55 = !{!9, !2, i64 56}
!56 = !{!9, !2, i64 8}
!57 = !{!58, !2, i64 8}
!58 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!59 = !{!58, !2, i64 0}
