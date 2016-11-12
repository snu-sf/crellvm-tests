; ModuleID = './ziodev2.bc'
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.stack_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.0, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_stack_s*, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.1, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.password_s = type { i32, [64 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"%null%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_null = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @null_open, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_os_gp_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_os_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1.getdevparams\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"2.putdevparams\00", align 1
@ziodev2_l2_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetdevparams }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zputdevparams }, %struct.op_def zeroinitializer], align 16
@gp_null_file_name = external constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SystemParamsPassword\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1

declare i32 @iodev_no_init(%struct.gx_io_device_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @null_open(%struct.gx_io_device_s* %iodev, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 119
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1, !tbaa !5
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_null_file_name, i32 0, i32 0)) #4
  %conv6 = trunc i64 %call to i32
  %4 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %7, i32 0, i32 2
  %gp_fopen = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 3
  %8 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %gp_fopen, align 8, !tbaa !6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @file_open_stream(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_null_file_name, i32 0, i32 0), i32 %conv6, i8* %4, i32 256, %struct.stream_s** %5, %struct.gx_io_device_s* %6, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %8, %struct.gs_memory_s* %9) #5
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @iodev_no_open_file(%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

declare i32 @iodev_os_gp_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #0

declare i32 @iodev_os_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #0

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #0

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #0

declare i32 @iodev_no_file_status(%struct.gx_io_device_s*, i8*, %struct.stat*) #0

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #0

declare i32 @iodev_no_get_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @zgetdevparams(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %list = alloca %struct.stack_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %pmark = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !9
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %4) #3
  %5 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast %struct.stack_param_list_s* %list to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %6, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast %struct.ref_s** %pmark to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !23
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv4 = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %14) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %19 = load i8*, i8** %bytes, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !25
  %call8 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %17, i8* %19, i32 %21) #5
  store %struct.gx_io_device_s* %call8, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gx_io_device_s* %22, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !24
  %call17 = call i32 @stack_param_list_write(%struct.stack_param_list_s* %list, %struct.ref_stack_s* %stack14, %struct.ref_s* null, %struct.gs_ref_memory_s* %25) #5
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call18 = call i32 @gs_getdevparams(%struct.gx_io_device_s* %26, %struct.gs_param_list_s* %27) #5
  store i32 %call18, i32* %code, align 4, !tbaa !26
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %count = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %29 = load i32, i32* %count, align 4, !tbaa !27
  %mul = mul i32 %29, 2
  call void @ref_stack_pop(%struct.ref_stack_s* %stack23, i32 %mul) #5
  %30 = load i32, i32* %code, align 4, !tbaa !26
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.12
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %count27 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %32 = load i32, i32* %count27, align 4, !tbaa !27
  %mul28 = mul i32 %32, 2
  %conv29 = zext i32 %mul28 to i64
  %call30 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack26, i64 %conv29) #5
  store %struct.ref_s* %call30, %struct.ref_s** %pmark, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %pmark, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 3072, i16* %type_attrs32, align 2, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.21, %if.then.11, %cond.end
  %34 = bitcast %struct.ref_s** %pmark to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %37) #3
  %38 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @zputdevparams(%struct.gs_context_state_s* %i_ctx_p) #1 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %list = alloca %struct.stack_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %system_params_password = alloca %struct.password_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !9
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %4) #3
  %5 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast %struct.stack_param_list_s* %list to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %6, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast %struct.password_s* %system_params_password to i8*
  call void @llvm.lifetime.start(i64 68, i8* %8) #3
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !23
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv4 = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %14) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %19 = load i8*, i8** %bytes, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !25
  %call8 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %17, i8* %19, i32 %21) #5
  store %struct.gx_io_device_s* %call8, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gx_io_device_s* %22, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !24
  %call17 = call i32 @stack_param_list_read(%struct.stack_param_list_s* %list, %struct.ref_stack_s* %stack14, i32 1, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %25) #5
  store i32 %call17, i32* %code, align 4, !tbaa !26
  %26 = load i32, i32* %code, align 4, !tbaa !26
  %cmp18 = icmp slt i32 %26, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.12
  %27 = load i32, i32* %code, align 4, !tbaa !26
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call22 = call i32 @dict_read_password(%struct.password_s* %system_params_password, %struct.ref_s* %system_dict, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 %call22, i32* %code, align 4, !tbaa !26
  %29 = load i32, i32* %code, align 4, !tbaa !26
  %cmp23 = icmp slt i32 %29, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %30 = load i32, i32* %code, align 4, !tbaa !26
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call27 = call i32 @param_check_password(%struct.gs_param_list_s* %31, %struct.password_s* %system_params_password) #5
  store i32 %call27, i32* %code, align 4, !tbaa !26
  %32 = load i32, i32* %code, align 4, !tbaa !26
  %cmp28 = icmp ne i32 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.end.26
  %memory31 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %memory32 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !29
  %results = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 6
  %36 = load i32*, i32** %results, align 8, !tbaa !33
  %37 = bitcast i32* %36 to i8*
  call void %34(%struct.gs_memory_s* %35, i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #5
  %38 = load i32, i32* %code, align 4, !tbaa !26
  %cmp33 = icmp slt i32 %38, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.then.30
  %39 = load i32, i32* %code, align 4, !tbaa !26
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.then.30
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ %39, %cond.true.35 ], [ -7, %cond.false.36 ]
  store i32 %cond38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.26
  %40 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call40 = call i32 @gs_putdevparams(%struct.gx_io_device_s* %40, %struct.gs_param_list_s* %41) #5
  store i32 %call40, i32* %code, align 4, !tbaa !26
  %memory41 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !29
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object43, align 8, !tbaa !30
  %memory44 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !29
  %results45 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 6
  %45 = load i32*, i32** %results45, align 8, !tbaa !33
  %46 = bitcast i32* %45 to i8*
  call void %43(%struct.gs_memory_s* %44, i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #5
  %47 = load i32, i32* %code, align 4, !tbaa !26
  %cmp46 = icmp slt i32 %47, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.39
  %48 = load i32, i32* %code, align 4, !tbaa !26
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.39
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 26
  %stack51 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack50, i32 0, i32 0
  %count = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %list, i32 0, i32 7
  %50 = load i32, i32* %count, align 4, !tbaa !27
  %mul = mul i32 %50, 2
  %add = add i32 %mul, 2
  call void @ref_stack_pop(%struct.ref_stack_s* %stack51, i32 %add) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48, %cond.end.37, %if.then.25, %if.then.20, %if.then.11, %cond.end
  %51 = bitcast %struct.password_s* %system_params_password to i8*
  call void @llvm.lifetime.end(i64 68, i8* %51) #3
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %54) #3
  %55 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  %56 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @file_open_stream(i8*, i32, i8*, i32, %struct.stream_s**, %struct.gx_io_device_s*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @check_type_failed(%struct.ref_s*) #0

declare %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s*, i8*, i32) #0

declare i32 @stack_param_list_write(%struct.stack_param_list_s*, %struct.ref_stack_s*, %struct.ref_s*, %struct.gs_ref_memory_s*) #0

declare i32 @gs_getdevparams(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #0

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare i32 @stack_param_list_read(%struct.stack_param_list_s*, %struct.ref_stack_s*, i32, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #0

declare i32 @dict_read_password(%struct.password_s*, %struct.ref_s*, i8*) #0

declare i32 @param_check_password(%struct.gs_param_list_s*, %struct.password_s*) #0

declare i32 @gs_putdevparams(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind readonly }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 40}
!7 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !8, i64 16, !2, i64 120}
!8 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!9 = !{!10, !2, i64 624}
!10 = !{!"gs_context_state_s", !2, i64 0, !11, i64 8, !13, i64 80, !14, i64 88, !14, i64 104, !17, i64 120, !17, i64 128, !17, i64 136, !13, i64 144, !13, i64 148, !14, i64 152, !14, i64 168, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !18, i64 264, !18, i64 304, !2, i64 344, !13, i64 352, !2, i64 360, !19, i64 368, !21, i64 520, !22, i64 624, !2, i64 720}
!11 = !{!"gs_dual_memory_s", !2, i64 0, !12, i64 8, !13, i64 48, !2, i64 56, !13, i64 64, !13, i64 68}
!12 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!13 = !{!"int", !3, i64 0}
!14 = !{!"ref_s", !15, i64 0, !3, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2, !13, i64 4}
!16 = !{!"short", !3, i64 0}
!17 = !{!"long", !3, i64 0}
!18 = !{!"op_array_table_s", !14, i64 0, !2, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!19 = !{!"dict_stack_s", !20, i64 0, !13, i64 96, !13, i64 100, !13, i64 104, !2, i64 112, !13, i64 120, !2, i64 128, !14, i64 136}
!20 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !13, i64 40, !13, i64 44, !14, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !2, i64 80, !2, i64 88}
!21 = !{!"exec_stack_s", !20, i64 0, !2, i64 96}
!22 = !{!"op_stack_s", !20, i64 0}
!23 = !{!14, !16, i64 0}
!24 = !{!10, !2, i64 8}
!25 = !{!14, !13, i64 4}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !13, i64 80}
!28 = !{!"stack_param_list_s", !2, i64 0, !2, i64 8, !13, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 84, !2, i64 88, !13, i64 96}
!29 = !{!28, !2, i64 8}
!30 = !{!31, !2, i64 24}
!31 = !{!"gs_memory_s", !2, i64 0, !32, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!33 = !{!28, !2, i64 72}
