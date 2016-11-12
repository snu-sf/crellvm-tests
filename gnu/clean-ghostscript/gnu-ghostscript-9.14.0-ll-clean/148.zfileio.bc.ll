; ModuleID = './zfileio.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"1bytesavailable\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"1closefile\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1echo\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"1.filename\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"1.fileposition\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"1fileposition\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0flush\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"1flushfile\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"1.isprocfilter\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"2.peekstring\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"1print\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"1read\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"2readhexstring\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"2readline\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"2readstring\00", align 1
@zfileio1_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbytesavailable }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zclosefile }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zecho }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfilename }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zxfileposition }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfileposition }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zflush }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zflushfile }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zisprocfilter }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpeekstring }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zprint }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zread }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadhexstring }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadline }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadstring }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"1resetfile\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"2setfileposition\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"2.unread\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"2write\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"3.writecvp\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"2writehexstring\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"2writestring\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"3%zreadhexstring_continue\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"3%zreadline_continue\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"3%zreadstring_continue\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"4%zwritecvp_continue\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"3%zwritehexstring_continue\00", align 1
@zfileio2_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zresetfile }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetfileposition }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zunread }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwrite }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwritecvp }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwritehexstring }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwritestring }, %struct.op_def { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadhexstring_continue }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadline_continue }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zreadstring_continue }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwritecvp_continue }, %struct.op_def { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwritehexstring_continue }, %struct.op_def zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zclosefile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %11 to i32
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  %13 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %13 to i32
  %or = or i32 %conv2, %conv3
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp eq i32 %or, %15
  br i1 %cmp5, label %if.then.7, label %if.end.21

if.then.7:                                        ; preds = %if.end
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call8 = call i32 @sclose(%struct.stream_s* %17) #4
  store i32 %call8, i32* %status, align 4, !tbaa !27
  %18 = load i32, i32* %status, align 4, !tbaa !27
  %cmp9 = icmp ne i32 %18, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.7
  %19 = load i32, i32* %status, align 4, !tbaa !27
  %cmp11 = icmp ne i32 %19, -1
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %land.lhs.true
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 11
  %21 = load i8, i8* %modes, align 1, !tbaa !28
  %conv14 = zext i8 %21 to i32
  %and = and i32 %conv14, 2
  %cmp15 = icmp ne i32 %and, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.13
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %23 = load i32, i32* %status, align 4, !tbaa !27
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call18 = call i32 @handle_write_status(%struct.gs_context_state_s* %22, i32 %23, %struct.ref_s* %24, i32* null, i32 (%struct.gs_context_state_s*)* @zclosefile) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.13
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load i32, i32* %status, align 4, !tbaa !27
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call19 = call i32 @handle_read_status(%struct.gs_context_state_s* %25, i32 %26, %struct.ref_s* %27, i32* null, i32 (%struct.gs_context_state_s*)* @zclosefile) #4
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true, %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.else, %if.then.17
  %28 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %if.end
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p24, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %if.end.21, %cleanup, %if.then
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @sclose(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @handle_write_status(%struct.gs_context_state_s* %i_ctx_p, i32 %ch, %struct.ref_s* %fop, i32* %pindex, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ch.addr = alloca i32, align 4
  %fop.addr = alloca %struct.ref_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %index = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !27
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = load i32, i32* %ch.addr, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -3, label %sw.bb.1
    i32 -4, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %call = call i32 @copy_error_string(%struct.gs_context_state_s* %1, %struct.ref_s* %2) #4
  store i32 %call, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %3 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %4 = bitcast %struct.ref_s* %index to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !27
  %conv = zext i32 %6 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %index, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !29
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %index, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !30
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %9 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %10 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call2 = call i32 @s_handle_write_exception(%struct.gs_context_state_s* %7, i32 %8, %struct.ref_s* %9, %struct.ref_s* %index, i32 1, i32 (%struct.gs_context_state_s*)* %10) #4
  store i32 %call2, i32* %retval
  %11 = bitcast %struct.ref_s* %index to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  br label %return

if.else:                                          ; preds = %sw.bb.1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %14 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %15 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call3 = call i32 @s_handle_write_exception(%struct.gs_context_state_s* %12, i32 %13, %struct.ref_s* %14, %struct.ref_s* null, i32 0, i32 (%struct.gs_context_state_s*)* %15) #4
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then, %sw.bb, %sw.default
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_read_status(%struct.gs_context_state_s* %i_ctx_p, i32 %ch, %struct.ref_s* %fop, i32* %pindex, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ch.addr = alloca i32, align 4
  %fop.addr = alloca %struct.ref_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %index = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !27
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = load i32, i32* %ch.addr, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -3, label %sw.bb.1
    i32 -4, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %call = call i32 @copy_error_string(%struct.gs_context_state_s* %1, %struct.ref_s* %2) #4
  store i32 %call, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %3 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %4 = bitcast %struct.ref_s* %index to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !27
  %conv = zext i32 %6 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %index, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !29
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %index, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !30
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %9 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %10 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call2 = call i32 @s_handle_read_exception(%struct.gs_context_state_s* %7, i32 %8, %struct.ref_s* %9, %struct.ref_s* %index, i32 1, i32 (%struct.gs_context_state_s*)* %10) #4
  store i32 %call2, i32* %retval
  %11 = bitcast %struct.ref_s* %index to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  br label %return

if.else:                                          ; preds = %sw.bb.1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %14 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %15 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call3 = call i32 @s_handle_read_exception(%struct.gs_context_state_s* %12, i32 %13, %struct.ref_s* %14, %struct.ref_s* null, i32 0, i32 (%struct.gs_context_state_s*)* %15) #4
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then, %sw.bb, %sw.default
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zwrite(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 784
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv11 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %16
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %do.body.9
  %17 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %call18 = call i32 @file_switch_to_write(%struct.ref_s* %add.ptr17) #4
  store i32 %call18, i32* %fcode, align 4, !tbaa !27
  %19 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.16
  %20 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %21 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %23 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx28, align 1, !tbaa !19
  %conv29 = zext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 11
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %do.end.25
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call33 = call i32 @check_type_failed(%struct.ref_s* %25) #4
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.34:                                        ; preds = %do.end.25
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval = bitcast %union.v* %value35 to i64*
  %27 = load i64, i64* %intval, align 8, !tbaa !29
  %conv36 = trunc i64 %27 to i8
  store i8 %conv36, i8* %ch, align 1, !tbaa !19
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %29 = load i8*, i8** %ptr, align 8, !tbaa !31
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w38 = bitcast %union.stream_cursor_s* %cursor37 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w38, i32 0, i32 2
  %31 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp39 = icmp uge i8* %29, %31
  br i1 %cmp39, label %cond.false.48, label %cond.true.41

cond.true.41:                                     ; preds = %if.end.34
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w43 = bitcast %union.stream_cursor_s* %cursor42 to %struct.stream_cursor_write_s*
  %ptr44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w43, i32 0, i32 1
  %33 = load i8*, i8** %ptr44, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %ptr44, align 8, !tbaa !31
  %34 = load i8, i8* %ch, align 1, !tbaa !19
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w46 = bitcast %union.stream_cursor_s* %cursor45 to %struct.stream_cursor_write_s*
  %ptr47 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w46, i32 0, i32 1
  %36 = load i8*, i8** %ptr47, align 8, !tbaa !31
  store i8 %34, i8* %36, align 1, !tbaa !19
  br label %cond.end.50

cond.false.48:                                    ; preds = %if.end.34
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load i8, i8* %ch, align 1, !tbaa !19
  %call49 = call i32 @spputc(%struct.stream_s* %37, i8 zeroext %38) #4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.41
  %cond51 = phi i32 [ 0, %cond.true.41 ], [ %call49, %cond.false.48 ]
  store i32 %cond51, i32* %status, align 4, !tbaa !27
  %39 = load i32, i32* %status, align 4, !tbaa !27
  %cmp52 = icmp sge i32 %39, 0
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %cond.end.50
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 26
  %stack56 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !5
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -2
  store %struct.ref_s* %add.ptr58, %struct.ref_s** %p57, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.59:                                        ; preds = %cond.end.50
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load i32, i32* %status, align 4, !tbaa !27
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %call61 = call i32 @handle_write_status(%struct.gs_context_state_s* %42, i32 %43, %struct.ref_s* %add.ptr60, i32* null, i32 (%struct.gs_context_state_s*)* @zwrite) #4
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.59, %if.then.54, %if.then.32, %cleanup, %cond.end
  %45 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %46 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @file_switch_to_write(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 19
  %4 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv = zext i16 %4 to i32
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp = icmp ne i32 %conv, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 26
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !34
  %cmp2 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @sswitch(%struct.stream_s* %9, i32 1) #4
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id8, align 2, !tbaa !20
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  store i16 %11, i16* %write_id, align 2, !tbaa !25
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  store i16 0, i16* %read_id9, align 2, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i32 @zreadline_from(%struct.stream_s* %s, %struct.gs_string_s* %buf, %struct.gs_memory_s* %bufmem, i32* %pcount, i32* %pin_eol) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %buf.addr = alloca %struct.gs_string_s*, align 8
  %bufmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcount.addr = alloca i32*, align 8
  %pin_eol.addr = alloca i32*, align 8
  %readline = alloca i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %buf, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bufmem, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  store i32* %pin_eol, i32** %pin_eol.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)** %readline to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @zis_stdin(%struct.stream_s* %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)* @gp_readline, i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)** %readline, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)* @sreadline, i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)** %readline, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)*, i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)** %readline, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  %7 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  %call1 = call i32 %2(%struct.stream_s* %3, %struct.stream_s* null, i8* null, %struct.gs_const_string_s* null, %struct.gs_string_s* %4, %struct.gs_memory_s* %5, i32* %6, i32* %7, i32 (%struct.stream_s*)* @zis_stdin) #4
  %8 = bitcast i32 (%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*)** %readline to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %call1
}

declare i32 @zis_stdin(%struct.stream_s*) #2

declare i32 @gp_readline(%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*) #2

declare i32 @sreadline(%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*) #2

; Function Attrs: nounwind uwtable
define i32 @zflush(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %rstdout = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ref_s* %rstdout to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zget_stdout(%struct.gs_context_state_s* %4, %struct.stream_s** %s) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %5 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %rstdout, %struct.stream_s* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #4
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %9 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !35
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 %9(%struct.stream_s* %10) #4
  store i32 %call1, i32* %status, align 4, !tbaa !27
  %11 = load i32, i32* %status, align 4, !tbaa !27
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !tbaa !27
  %cmp3 = icmp eq i32 %12, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 11
  %14 = load i8, i8* %modes, align 1, !tbaa !28
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 2
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %16 = load i32, i32* %status, align 4, !tbaa !27
  %call8 = call i32 @handle_write_status(%struct.gs_context_state_s* %15, i32 %16, %struct.ref_s* %rstdout, i32* null, i32 (%struct.gs_context_state_s*)* @zflush) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load i32, i32* %status, align 4, !tbaa !27
  %call9 = call i32 @handle_read_status(%struct.gs_context_state_s* %17, i32 %18, %struct.ref_s* %rstdout, i32* null, i32 (%struct.gs_context_state_s*)* @zflush) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ %call9, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.ref_s* %rstdout to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @zget_stdout(%struct.gs_context_state_s*, %struct.stream_s**) #2

declare void @make_stream_file(%struct.ref_s*, %struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zbytesavailable(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %avail = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv8 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp10 = icmp ne i32 %conv8, %16
  br i1 %cmp10, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %do.body.7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id13, align 2, !tbaa !20
  %conv14 = zext i16 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.12
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 20
  %20 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv17 = zext i16 %20 to i32
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %22 = load i32, i32* %rsize19, align 4, !tbaa !26
  %cmp20 = icmp eq i32 %conv17, %22
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call23 = call i32 @file_switch_to_read(%struct.ref_s* %24) #4
  store i32 %call23, i32* %fcode, align 4, !tbaa !27
  %25 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %26 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.then.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 18
  %29 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %29, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call32 = call i32 @savailable(%struct.stream_s* %30, i64* %avail) #4
  switch i32 %call32, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.33
  ]

sw.default:                                       ; preds = %do.end.31
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

sw.bb:                                            ; preds = %do.end.31
  store i64 -1, i64* %avail, align 8, !tbaa !29
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %do.end.31, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.33
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %call34 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %33) #4
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %sw.epilog
  %34 = load i64, i64* %avail, align 8, !tbaa !29
  %conv36 = trunc i64 %34 to i32
  %conv37 = sext i32 %conv36 to i64
  store i64 %conv37, i64* %avail, align 8, !tbaa !29
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %sw.epilog
  %35 = load i64, i64* %avail, align 8, !tbaa !29
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %intval = bitcast %union.v* %value39 to i64*
  store i64 %35, i64* %intval, align 8, !tbaa !29
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  store i16 2816, i16* %type_attrs41, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %if.end.38, %sw.default, %cleanup, %cond.end
  %38 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @zecho(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p4, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @zfilename(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fname = alloca %struct.gs_const_string_s, align 8
  %str = alloca i8*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_const_string_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %11 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %11, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 19
  %13 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %13 to i32
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 20
  %15 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %15 to i32
  %or = or i32 %conv2, %conv3
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp ne i32 %or, %17
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @sfilename(%struct.stream_s* %18, %struct.gs_const_string_s* %fname) #4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %boolval = bitcast %union.v* %value13 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !38
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  store i16 256, i16* %type_attrs15, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.end
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %22 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !39
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp22 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.16
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.16
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !41
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !37
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 1
  %33 = load i32, i32* %size, align 4, !tbaa !44
  %call30 = call i8* %29(%struct.gs_memory_s* %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #4
  store i8* %call30, i8** %str, align 8, !tbaa !1
  %34 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %34, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.27
  %35 = load i8*, i8** %str, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 0
  %36 = load i8*, i8** %data, align 8, !tbaa !45
  %size35 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 1
  %37 = load i32, i32* %size35, align 4, !tbaa !44
  %conv36 = zext i32 %37 to i64
  %call37 = call i8* @memcpy(i8* %35, i8* %36, i64 %conv36) #5
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.34
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack40 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack39, i32 0, i32 0
  %top41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 2
  %40 = load %struct.ref_s*, %struct.ref_s** %top41, align 8, !tbaa !39
  %cmp42 = icmp ugt %struct.ref_s* %add.ptr, %40
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.body.38
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %requested47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 7
  store i32 1, i32* %requested47, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.38
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  store %struct.ref_s* %42, %struct.ref_s** %p50, align 8, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.else
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %44 = load i8*, i8** %str, align 8, !tbaa !1
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr54, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value55 to i8**
  store i8* %44, i8** %const_bytes, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !37
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = bitcast %struct.gs_memory_s* %48 to %struct.gs_ref_memory_s*
  %call58 = call i32 @imemory_space(%struct.gs_ref_memory_s* %49) #4
  %or59 = or i32 112, %call58
  %add = add i32 4608, %or59
  %conv60 = trunc i32 %add to i16
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  store i16 %conv60, i16* %type_attrs63, align 2, !tbaa !30
  %size64 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fname, i32 0, i32 1
  %51 = load i32, i32* %size64, align 4, !tbaa !44
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr65, i32 0, i32 0
  %rsize67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 2
  store i32 %51, i32* %rsize67, align 4, !tbaa !26
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %boolval69 = bitcast %union.v* %value68 to i16*
  store i16 1, i16* %boolval69, align 2, !tbaa !38
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 256, i16* %type_attrs71, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.53, %if.then.44, %if.then.33, %if.then.24, %if.then.12, %if.then.7, %if.then
  %55 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.gs_const_string_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @zxfileposition(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %11 to i32
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  %13 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %13 to i32
  %or = or i32 %conv2, %conv3
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp ne i32 %or, %15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i64 @stell(%struct.stream_s* %16) #4
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval = bitcast %union.v* %value10 to i64*
  store i64 %call9, i64* %intval, align 8, !tbaa !29
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 2816, i16* %type_attrs12, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %19 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zfileposition(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %11 to i32
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  %13 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %13 to i32
  %or = or i32 %conv2, %conv3
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp ne i32 %or, %15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 11
  %17 = load i8, i8* %modes, align 1, !tbaa !28
  %conv9 = zext i8 %17 to i32
  %and = and i32 %conv9, 4
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %do.end
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i64 @stell(%struct.stream_s* %18) #4
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval = bitcast %union.v* %value15 to i64*
  store i64 %call14, i64* %intval, align 8, !tbaa !29
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 2816, i16* %type_attrs17, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.7, %if.then
  %21 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zflushfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %10 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 19
  %12 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %12 to i32
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %14 to i32
  %or = or i32 %conv2, %conv3
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp ne i32 %or, %16
  br i1 %cmp5, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %18 = load i16, i16* %type_attrs9, align 2, !tbaa !30
  %conv10 = zext i16 %18 to i32
  %and = and i32 %conv10, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.7
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p15, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %22 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !35
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call17 = call i32 %22(%struct.stream_s* %23) #4
  store i32 %call17, i32* %status, align 4, !tbaa !27
  %24 = load i32, i32* %status, align 4, !tbaa !27
  %cmp18 = icmp eq i32 %24, 0
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %25 = load i32, i32* %status, align 4, !tbaa !27
  %cmp20 = icmp eq i32 %25, -1
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.16
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !5
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %p25, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 11
  %29 = load i8, i8* %modes, align 1, !tbaa !28
  %conv28 = zext i8 %29 to i32
  %and29 = and i32 %conv28, 2
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %31 = load i32, i32* %status, align 4, !tbaa !27
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call32 = call i32 @handle_write_status(%struct.gs_context_state_s* %30, i32 %31, %struct.ref_s* %32, i32* null, i32 (%struct.gs_context_state_s*)* @zflushfile) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load i32, i32* %status, align 4, !tbaa !27
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call33 = call i32 @handle_read_status(%struct.gs_context_state_s* %33, i32 %34, %struct.ref_s* %35, i32* null, i32 (%struct.gs_context_state_s*)* @zflushfile) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call32, %cond.true ], [ %call33, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.22, %if.end.12, %if.then.11, %if.then
  %36 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zisprocfilter(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %11 to i32
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  %13 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %13 to i32
  %or = or i32 %conv2, %conv3
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp ne i32 %or, %15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 15
  %17 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !46
  %cmp9 = icmp ne %struct.stream_s* %17, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 15
  %19 = load %struct.stream_s*, %struct.stream_s** %strm11, align 8, !tbaa !46
  store %struct.stream_s* %19, %struct.stream_s** %s, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @s_is_proc(%struct.stream_s* %20) #4
  %conv13 = trunc i32 %call12 to i16
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %boolval = bitcast %union.v* %value14 to i16*
  store i16 %conv13, i16* %boolval, align 2, !tbaa !38
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 256, i16* %type_attrs16, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.7, %if.then
  %23 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zpeekstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %len = alloca i32, align 4
  %rlen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %9 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %13 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %13, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 19
  %15 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv11 = zext i16 %15 to i32
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %17
  br i1 %cmp14, label %if.then.16, label %if.end.35

if.then.16:                                       ; preds = %do.body.9
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 19
  %19 = load i16, i16* %read_id17, align 2, !tbaa !20
  %conv18 = zext i16 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 20
  %21 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv21 = zext i16 %21 to i32
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %rsize24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %23 = load i32, i32* %rsize24, align 4, !tbaa !26
  %cmp25 = icmp eq i32 %conv21, %23
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %24 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %call29 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr28) #4
  store i32 %call29, i32* %fcode, align 4, !tbaa !27
  %26 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp30 = icmp slt i32 %26, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  %27 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %28 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.95 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 18
  %30 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %30, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %32 = load i16, i16* %type_attrs39, align 2, !tbaa !30
  %conv40 = zext i16 %32 to i32
  %and41 = and i32 %conv40, 16144
  %cmp42 = icmp eq i32 %and41, 4624
  br i1 %cmp42, label %if.end.56, label %if.then.44

if.then.44:                                       ; preds = %do.end.37
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %34 = bitcast i16* %type_attrs46 to i8*
  %arrayidx47 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx47, align 1, !tbaa !19
  %conv48 = zext i8 %35 to i32
  %cmp49 = icmp eq i32 %conv48, 18
  br i1 %cmp49, label %cond.false.53, label %cond.true.51

cond.true.51:                                     ; preds = %if.then.44
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call52 = call i32 @check_type_failed(%struct.ref_s* %36) #4
  br label %cond.end.54

cond.false.53:                                    ; preds = %if.then.44
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi i32 [ %call52, %cond.true.51 ], [ -7, %cond.false.53 ]
  store i32 %cond55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.56:                                        ; preds = %do.end.37
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %rsize58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  %38 = load i32, i32* %rsize58, align 4, !tbaa !26
  store i32 %38, i32* %len, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %cleanup.72, %if.end.56
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %40 = load i8*, i8** %limit, align 8, !tbaa !47
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %r60 = bitcast %union.stream_cursor_s* %cursor59 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r60, i32 0, i32 0
  %42 = load i8*, i8** %ptr, align 8, !tbaa !49
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv61 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv61, i32* %rlen, align 4, !tbaa !27
  %43 = load i32, i32* %len, align 4, !tbaa !27
  %cmp62 = icmp ult i32 %conv61, %43
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 9
  %46 = load i16, i16* %end_status, align 2, !tbaa !50
  %conv64 = sext i16 %46 to i32
  store i32 %conv64, i32* %status, align 4, !tbaa !27
  %47 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %47, label %sw.default [
    i32 -1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %48 = load i32, i32* %len, align 4, !tbaa !27
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 7
  %50 = load i32, i32* %bsize, align 4, !tbaa !51
  %cmp65 = icmp uge i32 %48, %50
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.68:                                        ; preds = %sw.bb
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call69 = call i32 @s_process_read_buf(%struct.stream_s* %51) #4
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.72

sw.default:                                       ; preds = %while.body
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %53 = load i32, i32* %status, align 4, !tbaa !27
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  %call71 = call i32 @handle_read_status(%struct.gs_context_state_s* %52, i32 %53, %struct.ref_s* %add.ptr70, i32* null, i32 (%struct.gs_context_state_s*)* @zpeekstring) #4
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

sw.epilog:                                        ; preds = %while.body
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %sw.epilog, %sw.default, %if.end.68, %if.then.67
  %55 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %cleanup.dest.73 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.73, label %cleanup.95 [
    i32 6, label %while.cond
    i32 7, label %while.end
  ]

while.end:                                        ; preds = %cleanup.72, %while.cond
  %56 = load i32, i32* %rlen, align 4, !tbaa !27
  %57 = load i32, i32* %len, align 4, !tbaa !27
  %cmp74 = icmp ugt i32 %56, %57
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.end
  %58 = load i32, i32* %len, align 4, !tbaa !27
  store i32 %58, i32* %rlen, align 4, !tbaa !27
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %while.end
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %bytes = bitcast %union.v* %value78 to i8**
  %60 = load i8*, i8** %bytes, align 8, !tbaa !1
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor79 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 5
  %r80 = bitcast %union.stream_cursor_s* %cursor79 to %struct.stream_cursor_read_s*
  %ptr81 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r80, i32 0, i32 0
  %62 = load i8*, i8** %ptr81, align 8, !tbaa !49
  %add.ptr82 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i32, i32* %rlen, align 4, !tbaa !27
  %conv83 = zext i32 %63 to i64
  %call84 = call i8* @memcpy(i8* %60, i8* %add.ptr82, i64 %conv83) #5
  %64 = load i32, i32* %rlen, align 4, !tbaa !27
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %rsize86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 2
  store i32 %64, i32* %rsize86, align 4, !tbaa !26
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -1
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %68 = bitcast %struct.ref_s* %arrayidx87 to i8*
  %69 = bitcast %struct.ref_s* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false), !tbaa.struct !52
  %70 = load i32, i32* %rlen, align 4, !tbaa !27
  %71 = load i32, i32* %len, align 4, !tbaa !27
  %cmp88 = icmp eq i32 %70, %71
  %cond90 = select i1 %cmp88, i32 1, i32 0
  %conv91 = trunc i32 %cond90 to i16
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  %boolval = bitcast %union.v* %value92 to i16*
  store i16 %conv91, i16* %boolval, align 2, !tbaa !38
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %type_attrs94 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas93, i32 0, i32 0
  store i16 256, i16* %type_attrs94, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.77, %cleanup.72, %cond.end.54, %cleanup, %cond.end
  %74 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @zprint(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %rstdout = alloca %struct.ref_s, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s* %rstdout to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %12) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @zget_stdout(%struct.gs_context_state_s* %13, %struct.stream_s** %s) #4
  store i32 %call7, i32* %code, align 4, !tbaa !27
  %14 = load i32, i32* %code, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @write_string(%struct.ref_s* %16, %struct.stream_s* %17) #4
  store i32 %call12, i32* %status, align 4, !tbaa !27
  %18 = load i32, i32* %status, align 4, !tbaa !27
  %cmp13 = icmp sge i32 %18, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.11
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p18, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.11
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @make_stream_file(%struct.ref_s* %rstdout, %struct.stream_s* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #4
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %23 = load i32, i32* %status, align 4, !tbaa !27
  %call20 = call i32 @handle_write_status(%struct.gs_context_state_s* %22, i32 %23, %struct.ref_s* %rstdout, i32* null, i32 (%struct.gs_context_state_s*)* @zwritestring) #4
  store i32 %call20, i32* %code, align 4, !tbaa !27
  %24 = load i32, i32* %code, align 4, !tbaa !27
  %cmp21 = icmp ne i32 %24, 5
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %25 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  store %struct.ref_s* %add.ptr25, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack27 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack26, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 2
  %28 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !39
  %cmp28 = icmp ugt %struct.ref_s* %add.ptr25, %28
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  store %struct.ref_s* %30, %struct.ref_s** %p35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.36
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %34 = bitcast %struct.ref_s* %32 to i8*
  %35 = bitcast %struct.ref_s* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !52
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %37 = bitcast %struct.ref_s* %arrayidx38 to i8*
  %38 = bitcast %struct.ref_s* %rstdout to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !52
  %39 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.30, %if.then.23, %if.then.15, %if.then.10, %cond.end
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.ref_s* %rstdout to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  %42 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @zread(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end:                                           ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv8 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp10 = icmp ne i32 %conv8, %16
  br i1 %cmp10, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %do.body.7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id13, align 2, !tbaa !20
  %conv14 = zext i16 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.12
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 20
  %20 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv17 = zext i16 %20 to i32
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %22 = load i32, i32* %rsize19, align 4, !tbaa !26
  %cmp20 = icmp eq i32 %conv17, %22
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call23 = call i32 @file_switch_to_read(%struct.ref_s* %24) #4
  store i32 %call23, i32* %fcode, align 4, !tbaa !27
  %25 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %26 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.92 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.then.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 18
  %29 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %29, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 2
  %32 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !39
  %cmp35 = icmp ugt %struct.ref_s* %add.ptr, %32
  br i1 %cmp35, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %do.body.32
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.else.40:                                       ; preds = %do.body.32
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 26
  %stack42 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  store %struct.ref_s* %34, %struct.ref_s** %p43, align 8, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.40
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %37 = load i8*, i8** %limit, align 8, !tbaa !47
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %r48 = bitcast %union.stream_cursor_s* %cursor47 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r48, i32 0, i32 0
  %39 = load i8*, i8** %ptr, align 8, !tbaa !49
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp49 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp49, label %cond.true.51, label %cond.false.59

cond.true.51:                                     ; preds = %do.end.46
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %r53 = bitcast %union.stream_cursor_s* %cursor52 to %struct.stream_cursor_read_s*
  %ptr54 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r53, i32 0, i32 0
  %41 = load i8*, i8** %ptr54, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %ptr54, align 8, !tbaa !49
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor55 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 5
  %r56 = bitcast %union.stream_cursor_s* %cursor55 to %struct.stream_cursor_read_s*
  %ptr57 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r56, i32 0, i32 0
  %43 = load i8*, i8** %ptr57, align 8, !tbaa !49
  %44 = load i8, i8* %43, align 1, !tbaa !19
  %conv58 = zext i8 %44 to i32
  br label %cond.end.61

cond.false.59:                                    ; preds = %do.end.46
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @spgetcc(%struct.stream_s* %45, i32 1) #4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.51
  %cond62 = phi i32 [ %conv58, %cond.true.51 ], [ %call60, %cond.false.59 ]
  store i32 %cond62, i32* %ch, align 4, !tbaa !27
  %46 = load i32, i32* %ch, align 4, !tbaa !27
  %cmp63 = icmp sge i32 %46, 0
  br i1 %cmp63, label %if.then.65, label %if.else.75

if.then.65:                                       ; preds = %cond.end.61
  %47 = load i32, i32* %ch, align 4, !tbaa !27
  %conv66 = sext i32 %47 to i64
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr67, i32 0, i32 1
  %intval = bitcast %union.v* %value68 to i64*
  store i64 %conv66, i64* %intval, align 8, !tbaa !29
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 2816, i16* %type_attrs71, align 2, !tbaa !30
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  %boolval = bitcast %union.v* %value72 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !38
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs74 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas73, i32 0, i32 0
  store i16 256, i16* %type_attrs74, align 2, !tbaa !30
  br label %if.end.91

if.else.75:                                       ; preds = %cond.end.61
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack77 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack76, i32 0, i32 0
  %p78 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack77, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p78, align 8, !tbaa !5
  %add.ptr79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  store %struct.ref_s* %add.ptr79, %struct.ref_s** %p78, align 8, !tbaa !5
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 -1
  store %struct.ref_s* %incdec.ptr80, %struct.ref_s** %op, align 8, !tbaa !1
  %55 = load i32, i32* %ch, align 4, !tbaa !27
  %cmp81 = icmp eq i32 %55, -1
  br i1 %cmp81, label %if.then.83, label %if.else.88

if.then.83:                                       ; preds = %if.else.75
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %boolval85 = bitcast %union.v* %value84 to i16*
  store i16 0, i16* %boolval85, align 2, !tbaa !38
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  store i16 256, i16* %type_attrs87, align 2, !tbaa !30
  br label %if.end.90

if.else.88:                                       ; preds = %if.else.75
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %59 = load i32, i32* %ch, align 4, !tbaa !27
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call89 = call i32 @handle_read_status(%struct.gs_context_state_s* %58, i32 %59, %struct.ref_s* %60, i32* null, i32 (%struct.gs_context_state_s*)* @zread) #4
  store i32 %call89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.90:                                        ; preds = %if.then.83
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.end.91, %if.else.88, %if.then.37, %cleanup, %cond.end
  %61 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadhexstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4624
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @zreadhexstring_at(%struct.gs_context_state_s* %9, %struct.ref_s* %10, i32 0, i32 -1) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %11 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadline(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zreadline_at(%struct.gs_context_state_s* %3, %struct.ref_s* %4, i32 0, i32 0) #4
  %5 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zreadstring_at(%struct.gs_context_state_s* %3, %struct.ref_s* %4, i32 0) #4
  %5 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zresetfile(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %9 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 19
  %11 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv2 = zext i16 %11 to i32
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  %13 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv3 = zext i16 %13 to i32
  %or = or i32 %conv2, %conv3
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp5 = icmp eq i32 %or, %15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 14
  %reset = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 2
  %17 = load void (%struct.stream_s*)*, void (%struct.stream_s*)** %reset, align 8, !tbaa !55
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void %17(%struct.stream_s* %18) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p11, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %21 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetfileposition(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
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
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %9 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %call10 = call i32 @check_type_failed(%struct.ref_s* %add.ptr9) #4
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %13 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %13, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 19
  %15 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv13 = zext i16 %15 to i32
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 20
  %17 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv14 = zext i16 %17 to i32
  %or = or i32 %conv13, %conv14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp17 = icmp ne i32 %or, %19
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval = bitcast %union.v* %value21 to i64*
  %22 = load i64, i64* %intval, align 8, !tbaa !29
  %call22 = call i32 @spseek(%struct.stream_s* %20, i64 %22) #4
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %do.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p29, align 8, !tbaa !5
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  store %struct.ref_s* %add.ptr30, %struct.ref_s** %p29, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.19, %if.then.8, %if.then
  %25 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zunread(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv11 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %16
  br i1 %cmp14, label %if.then.16, label %if.end.35

if.then.16:                                       ; preds = %do.body.9
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id17, align 2, !tbaa !20
  %conv18 = zext i16 %18 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 20
  %20 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv21 = zext i16 %20 to i32
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %rsize24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %22 = load i32, i32* %rsize24, align 4, !tbaa !26
  %cmp25 = icmp eq i32 %conv21, %22
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call29 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr28) #4
  store i32 %call29, i32* %fcode, align 4, !tbaa !27
  %25 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp30 = icmp slt i32 %25, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  %26 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 18
  %29 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %29, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %31 = bitcast i16* %type_attrs39 to i8*
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx40, align 1, !tbaa !19
  %conv41 = zext i8 %32 to i32
  %cmp42 = icmp eq i32 %conv41, 11
  br i1 %cmp42, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %do.end.37
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call45 = call i32 @check_type_failed(%struct.ref_s* %33) #4
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.46:                                        ; preds = %do.end.37
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %intval = bitcast %union.v* %value47 to i64*
  %35 = load i64, i64* %intval, align 8, !tbaa !29
  store i64 %35, i64* %ch, align 8, !tbaa !29
  %36 = load i64, i64* %ch, align 8, !tbaa !29
  %cmp48 = icmp ugt i64 %36, 255
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.51:                                        ; preds = %if.end.46
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load i64, i64* %ch, align 8, !tbaa !29
  %conv52 = trunc i64 %38 to i8
  %call53 = call i32 @sungetc(%struct.stream_s* %37, i8 zeroext %conv52) #4
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.51
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.57:                                        ; preds = %if.end.51
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 26
  %stack59 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack58, i32 0, i32 0
  %p60 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack59, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p60, align 8, !tbaa !5
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -2
  store %struct.ref_s* %add.ptr61, %struct.ref_s** %p60, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.57, %if.then.56, %if.then.50, %if.then.44, %cleanup, %cond.end
  %41 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritecvp(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %call = call i32 @zwritecvp_at(%struct.gs_context_state_s* %0, %struct.ref_s* %2, i32 0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritehexstring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zwritehexstring_at(%struct.gs_context_state_s* %3, %struct.ref_s* %4, i32 0) #4
  %5 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritestring(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 784
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  %14 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv11 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %16
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %do.body.9
  %17 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %call18 = call i32 @file_switch_to_write(%struct.ref_s* %add.ptr17) #4
  store i32 %call18, i32* %fcode, align 4, !tbaa !27
  %19 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.16
  %20 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %21 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.56 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %23 = load i16, i16* %type_attrs27, align 2, !tbaa !30
  %conv28 = zext i16 %23 to i32
  %and29 = and i32 %conv28, 16160
  %cmp30 = icmp eq i32 %and29, 4640
  br i1 %cmp30, label %if.end.44, label %if.then.32

if.then.32:                                       ; preds = %do.end.25
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %25 = bitcast i16* %type_attrs34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx35, align 1, !tbaa !19
  %conv36 = zext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 18
  br i1 %cmp37, label %cond.false.41, label %cond.true.39

cond.true.39:                                     ; preds = %if.then.32
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call40 = call i32 @check_type_failed(%struct.ref_s* %27) #4
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.then.32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i32 [ %call40, %cond.true.39 ], [ -7, %cond.false.41 ]
  store i32 %cond43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.44:                                        ; preds = %do.end.25
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call45 = call i32 @write_string(%struct.ref_s* %28, %struct.stream_s* %29) #4
  store i32 %call45, i32* %status, align 4, !tbaa !27
  %30 = load i32, i32* %status, align 4, !tbaa !27
  %cmp46 = icmp sge i32 %30, 0
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.44
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack50 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !5
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -2
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %p51, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.53:                                        ; preds = %if.end.44
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load i32, i32* %status, align 4, !tbaa !27
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  %call55 = call i32 @handle_write_status(%struct.gs_context_state_s* %33, i32 %34, %struct.ref_s* %add.ptr54, i32* null, i32 (%struct.gs_context_state_s*)* @zwritestring) #4
  store i32 %call55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

cleanup.56:                                       ; preds = %if.end.53, %if.then.48, %cond.end.42, %cleanup, %cond.end
  %36 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadhexstring_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %odd = alloca i32, align 4
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
  %4 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %odd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !29
  %and = and i64 %11, 16777215
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %length, align 4, !tbaa !27
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval4 = bitcast %union.v* %value3 to i64*
  %13 = load i64, i64* %intval4, align 8, !tbaa !29
  %shr = ashr i64 %13, 24
  %conv5 = trunc i64 %shr to i8
  %conv6 = sext i8 %conv5 to i32
  store i32 %conv6, i32* %odd, align 4, !tbaa !27
  %14 = load i32, i32* %length, align 4, !tbaa !27
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp8 = icmp ugt i32 %14, %16
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, i32* %odd, align 4, !tbaa !27
  %cmp10 = icmp slt i32 %17, -1
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %odd, align 4, !tbaa !27
  %cmp13 = icmp sgt i32 %18, 15
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %lor.lhs.false.12
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %20 = load i16, i16* %type_attrs19, align 2, !tbaa !30
  %conv20 = zext i16 %20 to i32
  %and21 = and i32 %conv20, 16144
  %cmp22 = icmp eq i32 %and21, 4624
  br i1 %cmp22, label %if.end.34, label %if.then.24

if.then.24:                                       ; preds = %if.end.16
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %22 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx28, align 1, !tbaa !19
  %conv29 = zext i8 %23 to i32
  %cmp30 = icmp eq i32 %conv29, 18
  br i1 %cmp30, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.24
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call33 = call i32 @check_type_failed(%struct.ref_s* %arrayidx32) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call33, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.16
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = load i32, i32* %length, align 4, !tbaa !27
  %28 = load i32, i32* %odd, align 4, !tbaa !27
  %call36 = call i32 @zreadhexstring_at(%struct.gs_context_state_s* %25, %struct.ref_s* %add.ptr35, i32 %27, i32 %28) #4
  store i32 %call36, i32* %code, align 4, !tbaa !27
  %29 = load i32, i32* %code, align 4, !tbaa !27
  %cmp37 = icmp sge i32 %29, 0
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.34
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack41 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !5
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %add.ptr43, %struct.ref_s** %p42, align 8, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.34
  %32 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %cond.end, %if.then.15, %if.then
  %33 = bitcast i32* %odd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadline_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %start = alloca i32, align 4
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
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !26
  store i32 %5, i32* %size, align 4, !tbaa !27
  %6 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %13 = load i64, i64* %intval, align 8, !tbaa !29
  %cmp3 = icmp slt i64 %13, 0
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval6 = bitcast %union.v* %value5 to i64*
  %15 = load i64, i64* %intval6, align 8, !tbaa !29
  %16 = load i32, i32* %size, align 4, !tbaa !27
  %conv7 = zext i32 %16 to i64
  %cmp8 = icmp sgt i64 %15, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval13 = bitcast %union.v* %value12 to i64*
  %18 = load i64, i64* %intval13, align 8, !tbaa !29
  %conv14 = trunc i64 %18 to i32
  store i32 %conv14, i32* %start, align 4, !tbaa !27
  %19 = load i32, i32* %start, align 4, !tbaa !27
  %cmp15 = icmp eq i32 %19, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %22 = load i32, i32* %size, align 4, !tbaa !27
  %call18 = call i32 @zreadline_at(%struct.gs_context_state_s* %20, %struct.ref_s* %add.ptr17, i32 %22, i32 1) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %25 = load i32, i32* %start, align 4, !tbaa !27
  %call20 = call i32 @zreadline_at(%struct.gs_context_state_s* %23, %struct.ref_s* %add.ptr19, i32 %25, i32 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call18, %cond.true ], [ %call20, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !27
  %26 = load i32, i32* %code, align 4, !tbaa !27
  %cmp21 = icmp sge i32 %26, 0
  br i1 %cmp21, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %cond.end
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !5
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  store %struct.ref_s* %add.ptr27, %struct.ref_s** %p26, align 8, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %cond.end
  %29 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.10, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadstring_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !29
  %cmp2 = icmp slt i64 %9, 0
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval5 = bitcast %union.v* %value4 to i64*
  %11 = load i64, i64* %intval5, align 8, !tbaa !29
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !26
  %conv7 = zext i32 %13 to i64
  %cmp8 = icmp sgt i64 %11, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %17 = load i64, i64* %intval14, align 8, !tbaa !29
  %conv15 = trunc i64 %17 to i32
  %call16 = call i32 @zreadstring_at(%struct.gs_context_state_s* %14, %struct.ref_s* %add.ptr12, i32 %conv15) #4
  store i32 %call16, i32* %code, align 4, !tbaa !27
  %18 = load i32, i32* %code, align 4, !tbaa !27
  %cmp17 = icmp sge i32 %18, 0
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.11
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack21 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !5
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr23, %struct.ref_s** %p22, align 8, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.end.11
  %21 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.10, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritecvp_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !29
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval3 = bitcast %union.v* %value2 to i64*
  %10 = load i64, i64* %intval3, align 8, !tbaa !29
  %conv4 = trunc i64 %10 to i32
  %conv5 = zext i32 %conv4 to i64
  %cmp6 = icmp ne i64 %8, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %14 = load i64, i64* %intval11, align 8, !tbaa !29
  %conv12 = trunc i64 %14 to i32
  %call13 = call i32 @zwritecvp_at(%struct.gs_context_state_s* %11, %struct.ref_s* %add.ptr, i32 %conv12, i32 0) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritehexstring_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !29
  %and = and i64 %9, -2
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval7 = bitcast %union.v* %value6 to i64*
  %13 = load i64, i64* %intval7, align 8, !tbaa !29
  %conv8 = trunc i64 %13 to i32
  %call9 = call i32 @zwritehexstring_at(%struct.gs_context_state_s* %10, %struct.ref_s* %add.ptr, i32 %conv8) #4
  store i32 %call9, i32* %code, align 4, !tbaa !27
  %14 = load i32, i32* %code, align 4, !tbaa !27
  %cmp10 = icmp sge i32 %14, 0
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.5
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr16, %struct.ref_s** %p15, align 8, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.5
  %17 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.4, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @file_switch_to_read(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 20
  %4 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv = zext i16 %4 to i32
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp = icmp ne i32 %conv, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 26
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !34
  %cmp2 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @sswitch(%struct.stream_s* %9, i32 0) #4
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 20
  %11 = load i16, i16* %write_id8, align 2, !tbaa !25
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 19
  store i16 %11, i16* %read_id, align 2, !tbaa !20
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 20
  store i16 0, i16* %write_id9, align 2, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @sswitch(%struct.stream_s*, i32) #2

declare i32 @savailable(%struct.stream_s*, i64*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare i32 @sfilename(%struct.stream_s*, %struct.gs_const_string_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare i64 @stell(%struct.stream_s*) #2

declare i32 @s_is_proc(%struct.stream_s*) #2

declare i32 @s_process_read_buf(%struct.stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_string(%struct.ref_s* %op, %struct.stream_s* %s) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %data = alloca i8*, align 8
  %len = alloca i32, align 4
  %wlen = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %2 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %2, i8** %data, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !26
  store i32 %5, i32* %len, align 4, !tbaa !27
  %6 = bitcast i32* %wlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %data, align 8, !tbaa !1
  %10 = load i32, i32* %len, align 4, !tbaa !27
  %call = call i32 @sputs(%struct.stream_s* %8, i8* %9, i32 %10, i32* %wlen) #4
  store i32 %call, i32* %status, align 4, !tbaa !27
  %11 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %11, label %sw.default [
    i32 -3, label %sw.bb
    i32 -4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %12 = load i8*, i8** %data, align 8, !tbaa !1
  %13 = load i32, i32* %wlen, align 4, !tbaa !27
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %const_bytes2 = bitcast %union.v* %value1 to i8**
  store i8* %add.ptr, i8** %const_bytes2, align 8, !tbaa !1
  %15 = load i32, i32* %len, align 4, !tbaa !27
  %16 = load i32, i32* %wlen, align 4, !tbaa !27
  %sub = sub i32 %15, %16
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 %sub, i32* %rsize4, align 4, !tbaa !26
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %18 = load i32, i32* %status, align 4, !tbaa !27
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %wlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 %18
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

declare i32 @spgetcc(%struct.stream_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zreadhexstring_at(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %start, i32 %odd) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %start.addr = alloca i32, align 4
  %odd.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %len = alloca i32, align 4
  %nread = alloca i32, align 4
  %str = alloca i8*, align 8
  %odd_byte = alloca i32, align 4
  %cw = alloca %struct.stream_cursor_write_s, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %start, i32* %start.addr, align 4, !tbaa !27
  store i32 %odd, i32* %odd.addr, align 4, !tbaa !27
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %odd_byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %odd.addr, align 4, !tbaa !27
  store i32 %5, i32* %odd_byte, align 4, !tbaa !27
  %6 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %11 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %15 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %15, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 19
  %17 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv11 = zext i16 %17 to i32
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %19
  br i1 %cmp14, label %if.then.16, label %if.end.35

if.then.16:                                       ; preds = %do.body.9
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 19
  %21 = load i16, i16* %read_id17, align 2, !tbaa !20
  %conv18 = zext i16 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 20
  %23 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv21 = zext i16 %23 to i32
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %rsize24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %25 = load i32, i32* %rsize24, align 4, !tbaa !26
  %cmp25 = icmp eq i32 %conv21, %25
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %26 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %call29 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr28) #4
  store i32 %call29, i32* %fcode, align 4, !tbaa !27
  %28 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp30 = icmp slt i32 %28, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  %29 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %30 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 18
  %32 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %32, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %bytes = bitcast %union.v* %value38 to i8**
  %34 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %34, i8** %str, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %rsize40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  %36 = load i32, i32* %rsize40, align 4, !tbaa !26
  store i32 %36, i32* %len, align 4, !tbaa !27
  %37 = load i8*, i8** %str, align 8, !tbaa !1
  %38 = load i32, i32* %start.addr, align 4, !tbaa !27
  %idx.ext = zext i32 %38 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  store i8* %add.ptr42, i8** %ptr, align 8, !tbaa !31
  %39 = load i8*, i8** %str, align 8, !tbaa !1
  %40 = load i32, i32* %len, align 4, !tbaa !27
  %idx.ext43 = zext i32 %40 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %39, i64 %idx.ext43
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  store i8* %add.ptr45, i8** %limit, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %if.end.64, %do.end.37
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %call46 = call i32 @s_hex_process(%struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %cw, i32* %odd_byte, i32 0) #4
  store i32 %call46, i32* %status, align 4, !tbaa !27
  %42 = load i32, i32* %status, align 4, !tbaa !27
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %for.cond
  %43 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %44 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %45 = bitcast %struct.ref_s* %add.ptr50 to i8*
  %46 = bitcast %struct.ref_s* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false), !tbaa.struct !52
  %47 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %boolval = bitcast %union.v* %value51 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !38
  %48 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  store i16 256, i16* %type_attrs53, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.else.54:                                       ; preds = %for.cond
  %49 = load i32, i32* %status, align 4, !tbaa !27
  %cmp55 = icmp ne i32 %49, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.54
  br label %for.end

if.end.58:                                        ; preds = %if.else.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @spgetcc(%struct.stream_s* %50, i32 1) #4
  store i32 %call60, i32* %status, align 4, !tbaa !27
  %51 = load i32, i32* %status, align 4, !tbaa !27
  %cmp61 = icmp slt i32 %51, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  br label %for.end

if.end.64:                                        ; preds = %if.end.59
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %r66 = bitcast %union.stream_cursor_s* %cursor65 to %struct.stream_cursor_read_s*
  %ptr67 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r66, i32 0, i32 0
  %53 = load i8*, i8** %ptr67, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr, i8** %ptr67, align 8, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %if.then.63, %if.then.57
  %ptr68 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %54 = load i8*, i8** %ptr68, align 8, !tbaa !31
  %add.ptr69 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8*, i8** %str, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv70 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv70, i32* %nread, align 4, !tbaa !27
  %56 = load i32, i32* %status, align 4, !tbaa !27
  %cmp71 = icmp ne i32 %56, -1
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %for.end
  %57 = load i32, i32* %odd_byte, align 4, !tbaa !27
  %shl = shl i32 %57, 24
  %58 = load i32, i32* %nread, align 4, !tbaa !27
  %or = or i32 %58, %shl
  store i32 %or, i32* %nread, align 4, !tbaa !27
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %60 = load i32, i32* %status, align 4, !tbaa !27
  %61 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %call75 = call i32 @handle_read_status(%struct.gs_context_state_s* %59, i32 %60, %struct.ref_s* %add.ptr74, i32* %nread, i32 (%struct.gs_context_state_s*)* @zreadhexstring_continue) #4
  store i32 %call75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.76:                                        ; preds = %for.end
  %62 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %63 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %add.ptr77 to i8*
  %65 = bitcast %struct.ref_s* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !52
  %66 = load i32, i32* %nread, align 4, !tbaa !27
  %67 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr78, i32 0, i32 0
  %rsize80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 2
  store i32 %66, i32* %rsize80, align 4, !tbaa !26
  %68 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  %boolval82 = bitcast %union.v* %value81 to i16*
  store i16 0, i16* %boolval82, align 2, !tbaa !38
  %69 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %type_attrs84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 0
  store i16 256, i16* %type_attrs84, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %if.end.76, %if.then.73, %if.then.49, %cleanup, %cond.end
  %70 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.end(i64 24, i8* %71) #1
  %72 = bitcast i32* %odd_byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @s_hex_process(%struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zreadline_at(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %count, i32 %in_eol) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %in_eol.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %str = alloca %struct.gs_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !27
  store i32 %in_eol, i32* %in_eol.addr, align 4, !tbaa !27
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4624
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %10 = load i16, i16* %type_attrs8, align 2, !tbaa !30
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, 16160
  %cmp11 = icmp eq i32 %and10, 800
  br i1 %cmp11, label %if.end.27, label %if.then.13

if.then.13:                                       ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %12 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 3
  br i1 %cmp19, label %cond.false.24, label %cond.true.21

cond.true.21:                                     ; preds = %if.then.13
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %call23 = call i32 @check_type_failed(%struct.ref_s* %add.ptr22) #4
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.13
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.21
  %cond26 = phi i32 [ %call23, %cond.true.21 ], [ -7, %cond.false.24 ]
  store i32 %cond26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.27:                                        ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %16 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %16, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv30 = zext i16 %18 to i32
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  %20 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp33 = icmp ne i32 %conv30, %20
  br i1 %cmp33, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %do.body.28
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 19
  %22 = load i16, i16* %read_id36, align 2, !tbaa !20
  %conv37 = zext i16 %22 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.35
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 20
  %24 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv40 = zext i16 %24 to i32
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %26 = load i32, i32* %rsize43, align 4, !tbaa !26
  %cmp44 = icmp eq i32 %conv40, %26
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %land.lhs.true
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %call48 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr47) #4
  store i32 %call48, i32* %fcode, align 4, !tbaa !27
  %29 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp49 = icmp slt i32 %29, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.46
  %30 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.51
  %31 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true, %if.then.35
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 18
  %33 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %33, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %do.body.28
  br label %do.cond

do.cond:                                          ; preds = %if.end.54
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.end
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %bytes = bitcast %union.v* %value57 to i8**
  %35 = load i8*, i8** %bytes, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  store i8* %35, i8** %data, align 8, !tbaa !56
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  %37 = load i32, i32* %rsize59, align 4, !tbaa !26
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 %37, i32* %size, align 4, !tbaa !57
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @zreadline_from(%struct.stream_s* %38, %struct.gs_string_s* %str, %struct.gs_memory_s* null, i32* %count.addr, i32* %in_eol.addr) #4
  store i32 %call60, i32* %status, align 4, !tbaa !27
  %39 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %do.end.56, %do.end.56
  br label %sw.epilog

sw.bb.61:                                         ; preds = %do.end.56
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

sw.default:                                       ; preds = %do.end.56
  %40 = load i32, i32* %count.addr, align 4, !tbaa !27
  %cmp62 = icmp eq i32 %40, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.68

land.lhs.true.64:                                 ; preds = %sw.default
  %41 = load i32, i32* %in_eol.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.else.68, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.64
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load i32, i32* %status, align 4, !tbaa !27
  %44 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %call67 = call i32 @handle_read_status(%struct.gs_context_state_s* %42, i32 %43, %struct.ref_s* %add.ptr66, i32* null, i32 (%struct.gs_context_state_s*)* @zreadline) #4
  store i32 %call67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.else.68:                                       ; preds = %land.lhs.true.64, %sw.default
  %45 = load i32, i32* %in_eol.addr, align 4, !tbaa !27
  %tobool69 = icmp ne i32 %45, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.else.68
  %46 = load i32, i32* %count.addr, align 4, !tbaa !27
  %47 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %rsize72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 2
  store i32 %46, i32* %rsize72, align 4, !tbaa !26
  store i32 0, i32* %count.addr, align 4, !tbaa !27
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.else.68
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %49 = load i32, i32* %status, align 4, !tbaa !27
  %50 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %call75 = call i32 @handle_read_status(%struct.gs_context_state_s* %48, i32 %49, %struct.ref_s* %add.ptr74, i32* %count.addr, i32 (%struct.gs_context_state_s*)* @zreadline_continue) #4
  store i32 %call75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

sw.epilog:                                        ; preds = %sw.bb
  %51 = load i32, i32* %count.addr, align 4, !tbaa !27
  %52 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %rsize77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 2
  store i32 %51, i32* %rsize77, align 4, !tbaa !26
  %53 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %54 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %55 = bitcast %struct.ref_s* %arrayidx78 to i8*
  %56 = bitcast %struct.ref_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false), !tbaa.struct !52
  %57 = load i32, i32* %status, align 4, !tbaa !27
  %cmp79 = icmp eq i32 %57, 0
  %conv80 = zext i1 %cmp79 to i32
  %conv81 = trunc i32 %conv80 to i16
  %58 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  %boolval = bitcast %union.v* %value82 to i16*
  store i16 %conv81, i16* %boolval, align 2, !tbaa !38
  %59 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %type_attrs84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 0
  store i16 256, i16* %type_attrs84, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %sw.epilog, %if.end.73, %if.then.65, %sw.bb.61, %cleanup, %cond.end.25, %cond.end
  %60 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadstring_at(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %start) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %start.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %len = alloca i32, align 4
  %rlen = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %start, i32* %start.addr, align 4, !tbaa !27
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 4624
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %11 = load i16, i16* %type_attrs8, align 2, !tbaa !30
  %conv9 = zext i16 %11 to i32
  %and10 = and i32 %conv9, 16160
  %cmp11 = icmp eq i32 %and10, 800
  br i1 %cmp11, label %if.end.27, label %if.then.13

if.then.13:                                       ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %13 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %14 to i32
  %cmp19 = icmp eq i32 %conv18, 3
  br i1 %cmp19, label %cond.false.24, label %cond.true.21

cond.true.21:                                     ; preds = %if.then.13
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %call23 = call i32 @check_type_failed(%struct.ref_s* %add.ptr22) #4
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.13
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.21
  %cond26 = phi i32 [ %call23, %cond.true.21 ], [ -7, %cond.false.24 ]
  store i32 %cond26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.27:                                        ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %17 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %17, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 19
  %19 = load i16, i16* %read_id, align 2, !tbaa !20
  %conv30 = zext i16 %19 to i32
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp33 = icmp ne i32 %conv30, %21
  br i1 %cmp33, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %do.body.28
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 19
  %23 = load i16, i16* %read_id36, align 2, !tbaa !20
  %conv37 = zext i16 %23 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.35
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 20
  %25 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv40 = zext i16 %25 to i32
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %27 = load i32, i32* %rsize43, align 4, !tbaa !26
  %cmp44 = icmp eq i32 %conv40, %27
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %land.lhs.true
  %28 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %call48 = call i32 @file_switch_to_read(%struct.ref_s* %add.ptr47) #4
  store i32 %call48, i32* %fcode, align 4, !tbaa !27
  %30 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp49 = icmp slt i32 %30, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.46
  %31 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.51
  %32 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true, %if.then.35
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 18
  %34 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !36
  store %struct.stream_s* %34, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %do.body.28
  br label %do.cond

do.cond:                                          ; preds = %if.end.54
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.end
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %rsize58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  %36 = load i32, i32* %rsize58, align 4, !tbaa !26
  store i32 %36, i32* %len, align 4, !tbaa !27
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %bytes = bitcast %union.v* %value59 to i8**
  %39 = load i8*, i8** %bytes, align 8, !tbaa !1
  %40 = load i32, i32* %start.addr, align 4, !tbaa !27
  %idx.ext = zext i32 %40 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load i32, i32* %len, align 4, !tbaa !27
  %42 = load i32, i32* %start.addr, align 4, !tbaa !27
  %sub = sub i32 %41, %42
  %call61 = call i32 @sgets(%struct.stream_s* %37, i8* %add.ptr60, i32 %sub, i32* %rlen) #4
  store i32 %call61, i32* %status, align 4, !tbaa !27
  %43 = load i32, i32* %start.addr, align 4, !tbaa !27
  %44 = load i32, i32* %rlen, align 4, !tbaa !27
  %add = add i32 %44, %43
  store i32 %add, i32* %rlen, align 4, !tbaa !27
  %45 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %45, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end.56, %do.end.56
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.56
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %47 = load i32, i32* %status, align 4, !tbaa !27
  %48 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %call63 = call i32 @handle_read_status(%struct.gs_context_state_s* %46, i32 %47, %struct.ref_s* %add.ptr62, i32* %rlen, i32 (%struct.gs_context_state_s*)* @zreadstring_continue) #4
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

sw.epilog:                                        ; preds = %sw.bb
  %49 = load i32, i32* %len, align 4, !tbaa !27
  %cmp64 = icmp eq i32 %49, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.epilog
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.67:                                        ; preds = %sw.epilog
  %50 = load i32, i32* %rlen, align 4, !tbaa !27
  %51 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %rsize69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 2
  store i32 %50, i32* %rsize69, align 4, !tbaa !26
  %52 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %53 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %54 = bitcast %struct.ref_s* %arrayidx70 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !tbaa.struct !52
  %56 = load i32, i32* %rlen, align 4, !tbaa !27
  %57 = load i32, i32* %len, align 4, !tbaa !27
  %cmp71 = icmp eq i32 %56, %57
  %cond73 = select i1 %cmp71, i32 1, i32 0
  %conv74 = trunc i32 %cond73 to i16
  %58 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  %boolval = bitcast %union.v* %value75 to i16*
  store i16 %conv74, i16* %boolval, align 2, !tbaa !38
  %59 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %type_attrs77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 0
  store i16 256, i16* %type_attrs77, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.67, %if.then.66, %sw.default, %cleanup, %cond.end.25, %cond.end
  %60 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

declare i32 @spseek(%struct.stream_s*, i64) #2

declare i32 @sungetc(%struct.stream_s*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @zwritecvp_at(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %start, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %start.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %str = alloca [100 x i8], align 16
  %rstr = alloca %struct.ref_s, align 8
  %data = alloca i8*, align 8
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %start, i32* %start.addr, align 4, !tbaa !27
  store i32 %first, i32* %first.addr, align 4, !tbaa !27
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [100 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 100, i8* %1) #1
  %2 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 784
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %10 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %14 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %14, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 20
  %16 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv11 = zext i16 %16 to i32
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %18
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %do.body.9
  %19 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %call18 = call i32 @file_switch_to_write(%struct.ref_s* %add.ptr17) #4
  store i32 %call18, i32* %fcode, align 4, !tbaa !27
  %21 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %21, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.16
  %22 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %23 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.147 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %25 = bitcast i16* %type_attrs27 to i8*
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx28, align 1, !tbaa !19
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 11
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %do.end.25
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call33 = call i32 @check_type_failed(%struct.ref_s* %27) #4
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.34:                                        ; preds = %do.end.25
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %arraydecay36 = getelementptr inbounds [100 x i8], [100 x i8]* %str, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %intval = bitcast %union.v* %value37 to i64*
  %30 = load i64, i64* %intval, align 8, !tbaa !29
  %conv38 = trunc i64 %30 to i32
  %31 = load i32, i32* %start.addr, align 4, !tbaa !27
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %call39 = call i32 @obj_cvp(%struct.ref_s* %add.ptr35, i8* %arraydecay36, i32 100, i32* %len, i32 %conv38, i32 %31, %struct.gs_memory_s* %34, i32 1) #4
  store i32 %call39, i32* %code, align 4, !tbaa !27
  %35 = load i32, i32* %code, align 4, !tbaa !27
  %cmp40 = icmp eq i32 %35, -15
  br i1 %cmp40, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %if.end.34
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current44 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory43, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current44, align 8, !tbaa !37
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %call46 = call i32 @obj_string_data(%struct.gs_memory_s* %38, %struct.ref_s* %add.ptr45, i8** %data, i32* %len) #4
  store i32 %call46, i32* %code, align 4, !tbaa !27
  %40 = load i32, i32* %len, align 4, !tbaa !27
  %41 = load i32, i32* %start.addr, align 4, !tbaa !27
  %cmp47 = icmp ult i32 %40, %41
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.42
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.50:                                        ; preds = %if.then.42
  %42 = load i32, i32* %start.addr, align 4, !tbaa !27
  %43 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = zext i32 %42 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr51, i8** %data, align 8, !tbaa !1
  %44 = load i32, i32* %start.addr, align 4, !tbaa !27
  %45 = load i32, i32* %len, align 4, !tbaa !27
  %sub = sub i32 %45, %44
  store i32 %sub, i32* %len, align 4, !tbaa !27
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %if.end.34
  %46 = load i32, i32* %code, align 4, !tbaa !27
  %cmp53 = icmp slt i32 %46, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %47 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.56:                                        ; preds = %if.end.52
  %48 = load i32, i32* %len, align 4, !tbaa !27
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  store i32 %48, i32* %rsize58, align 4, !tbaa !26
  %49 = load i8*, i8** %data, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value59 to i8**
  store i8* %49, i8** %const_bytes, align 8, !tbaa !1
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @write_string(%struct.ref_s* %rstr, %struct.stream_s* %50) #4
  store i32 %call60, i32* %status, align 4, !tbaa !27
  %51 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %51, label %sw.default [
    i32 0, label %sw.epilog
    i32 -3, label %sw.bb
    i32 -4, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end.56
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

sw.bb:                                            ; preds = %if.end.56, %if.end.56
  %52 = load i32, i32* %start.addr, align 4, !tbaa !27
  %53 = load i32, i32* %len, align 4, !tbaa !27
  %add = add i32 %52, %53
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 2
  %54 = load i32, i32* %rsize62, align 4, !tbaa !26
  %sub63 = sub i32 %add, %54
  store i32 %sub63, i32* %len, align 4, !tbaa !27
  %55 = load i32, i32* %first.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %sw.bb
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %sw.bb
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %59 = load i32, i32* %status, align 4, !tbaa !27
  %60 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -2
  %call67 = call i32 @handle_write_status(%struct.gs_context_state_s* %58, i32 %59, %struct.ref_s* %add.ptr66, i32* %len, i32 (%struct.gs_context_state_s*)* @zwritecvp_continue) #4
  store i32 %call67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

sw.epilog:                                        ; preds = %if.end.56
  %61 = load i32, i32* %code, align 4, !tbaa !27
  %cmp68 = icmp eq i32 %61, 1
  br i1 %cmp68, label %if.then.70, label %if.end.134

if.then.70:                                       ; preds = %sw.epilog
  %62 = load i32, i32* %first.addr, align 4, !tbaa !27
  %tobool71 = icmp ne i32 %62, 0
  br i1 %tobool71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %if.then.70
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack74 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack73, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack74, i32 0, i32 2
  %64 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !39
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 26
  %stack76 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack75, i32 0, i32 0
  %p77 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack76, i32 0, i32 0
  %66 = load %struct.ref_s*, %struct.ref_s** %p77, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %64 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp78 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.then.72
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 26
  %stack82 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack81, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack82, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.83:                                        ; preds = %if.then.72
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.70
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 25
  %stack85 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p86 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack85, i32 0, i32 0
  %69 = load %struct.ref_s*, %struct.ref_s** %p86, align 8, !tbaa !58
  %incdec.ptr87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 1
  store %struct.ref_s* %incdec.ptr87, %struct.ref_s** %p86, align 8, !tbaa !58
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %71 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !58
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %opproc = bitcast %union.v* %value91 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zwritecvp_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack92 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 25
  %stack93 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack92, i32 0, i32 0
  %p94 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack93, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p94, align 8, !tbaa !58
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %type_attrs96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 0
  store i16 3968, i16* %type_attrs96, align 2, !tbaa !30
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 25
  %stack98 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack97, i32 0, i32 0
  %p99 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack98, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p99, align 8, !tbaa !58
  %tas100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %rsize101 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas100, i32 0, i32 2
  store i32 0, i32* %rsize101, align 4, !tbaa !26
  %76 = load i32, i32* %first.addr, align 4, !tbaa !27
  %tobool102 = icmp ne i32 %76, 0
  br i1 %tobool102, label %if.then.103, label %if.end.121

if.then.103:                                      ; preds = %if.end.84
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %77 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 1
  store %struct.ref_s* %add.ptr105, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack106 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 26
  %stack107 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack106, i32 0, i32 0
  %top108 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack107, i32 0, i32 2
  %79 = load %struct.ref_s*, %struct.ref_s** %top108, align 8, !tbaa !39
  %cmp109 = icmp ugt %struct.ref_s* %add.ptr105, %79
  br i1 %cmp109, label %if.then.111, label %if.else

if.then.111:                                      ; preds = %do.body.104
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack112 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 26
  %stack113 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack112, i32 0, i32 0
  %requested114 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack113, i32 0, i32 7
  store i32 1, i32* %requested114, align 4, !tbaa !40
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.else:                                          ; preds = %do.body.104
  %81 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 26
  %stack116 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack115, i32 0, i32 0
  %p117 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack116, i32 0, i32 0
  store %struct.ref_s* %81, %struct.ref_s** %p117, align 8, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.else
  br label %do.cond.119

do.cond.119:                                      ; preds = %if.end.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %if.end.84
  %83 = load i32, i32* %start.addr, align 4, !tbaa !27
  %84 = load i32, i32* %len, align 4, !tbaa !27
  %add122 = add i32 %83, %84
  %conv123 = zext i32 %add122 to i64
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 26
  %stack125 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack124, i32 0, i32 0
  %p126 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack125, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p126, align 8, !tbaa !5
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 1
  %intval128 = bitcast %union.v* %value127 to i64*
  store i64 %conv123, i64* %intval128, align 8, !tbaa !29
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 26
  %stack130 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack129, i32 0, i32 0
  %p131 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack130, i32 0, i32 0
  %88 = load %struct.ref_s*, %struct.ref_s** %p131, align 8, !tbaa !5
  %tas132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %type_attrs133 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas132, i32 0, i32 0
  store i16 2816, i16* %type_attrs133, align 2, !tbaa !30
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.134:                                       ; preds = %sw.epilog
  %89 = load i32, i32* %first.addr, align 4, !tbaa !27
  %tobool135 = icmp ne i32 %89, 0
  br i1 %tobool135, label %if.then.136, label %if.else.141

if.then.136:                                      ; preds = %if.end.134
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack137 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 26
  %stack138 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack137, i32 0, i32 0
  %p139 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack138, i32 0, i32 0
  %91 = load %struct.ref_s*, %struct.ref_s** %p139, align 8, !tbaa !5
  %add.ptr140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 -3
  store %struct.ref_s* %add.ptr140, %struct.ref_s** %p139, align 8, !tbaa !5
  br label %if.end.146

if.else.141:                                      ; preds = %if.end.134
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 26
  %stack143 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack142, i32 0, i32 0
  %p144 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack143, i32 0, i32 0
  %93 = load %struct.ref_s*, %struct.ref_s** %p144, align 8, !tbaa !5
  %add.ptr145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 -4
  store %struct.ref_s* %add.ptr145, %struct.ref_s** %p144, align 8, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.141, %if.then.136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %if.end.146, %if.end.121, %if.then.111, %if.then.80, %if.end.65, %sw.default, %if.then.55, %if.then.49, %if.then.32, %cleanup, %cond.end
  %94 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %98) #1
  %99 = bitcast [100 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 100, i8* %99) #1
  %100 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i32 @obj_cvp(%struct.ref_s*, i8*, i32, i32*, i32, i32, %struct.gs_memory_s*, i32) #2

declare i32 @obj_string_data(%struct.gs_memory_s*, %struct.ref_s*, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zwritehexstring_at(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i32 %odd) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %odd.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i8, align 1
  %p = alloca i8*, align 8
  %hex_digits = alloca i8*, align 8
  %len = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %len1 = alloca i32, align 4
  %q = alloca i8*, align 8
  %count = alloca i32, align 4
  %rbuf = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32 %odd, i32* %odd.addr, align 4, !tbaa !27
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8** %hex_digits, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 16144
  %cmp = icmp eq i32 %and, 784
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %9 = bitcast i16* %type_attrs4 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %add.ptr8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end:                                           ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %13 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %13, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 20
  %15 = load i16, i16* %write_id, align 2, !tbaa !25
  %conv11 = zext i16 %15 to i32
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp14 = icmp ne i32 %conv11, %17
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %do.body.9
  %18 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %call18 = call i32 @file_switch_to_write(%struct.ref_s* %add.ptr17) #4
  store i32 %call18, i32* %fcode, align 4, !tbaa !27
  %20 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %20, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.16
  %21 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %22 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.98 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %24 = load i16, i16* %type_attrs27, align 2, !tbaa !30
  %conv28 = zext i16 %24 to i32
  %and29 = and i32 %conv28, 16160
  %cmp30 = icmp eq i32 %and29, 4640
  br i1 %cmp30, label %if.end.44, label %if.then.32

if.then.32:                                       ; preds = %do.end.25
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %26 = bitcast i16* %type_attrs34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx35, align 1, !tbaa !19
  %conv36 = zext i8 %27 to i32
  %cmp37 = icmp eq i32 %conv36, 18
  br i1 %cmp37, label %cond.false.41, label %cond.true.39

cond.true.39:                                     ; preds = %if.then.32
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call40 = call i32 @check_type_failed(%struct.ref_s* %28) #4
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.then.32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i32 [ %call40, %cond.true.39 ], [ -7, %cond.false.41 ]
  store i32 %cond43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.44:                                        ; preds = %do.end.25
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %bytes = bitcast %union.v* %value45 to i8**
  %30 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %30, i8** %p, align 8, !tbaa !1
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 2
  %32 = load i32, i32* %rsize47, align 4, !tbaa !26
  store i32 %32, i32* %len, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %cleanup.91, %if.end.44
  %33 = load i32, i32* %len, align 4, !tbaa !27
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = bitcast i32* %len1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %len, align 4, !tbaa !27
  %cmp48 = icmp ult i32 %35, 64
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %while.body
  %36 = load i32, i32* %len, align 4, !tbaa !27
  br label %cond.end.52

cond.false.51:                                    ; preds = %while.body
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %36, %cond.true.50 ], [ 64, %cond.false.51 ]
  store i32 %cond53, i32* %len1, align 4, !tbaa !27
  %37 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8, !tbaa !1
  %38 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %len1, align 4, !tbaa !27
  store i32 %39, i32* %count, align 4, !tbaa !27
  %40 = bitcast %struct.ref_s* %rbuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40) #1
  br label %do.body.54

do.body.54:                                       ; preds = %do.cond.63, %cond.end.52
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !19
  store i8 %42, i8* %ch, align 1, !tbaa !19
  %43 = load i8, i8* %ch, align 1, !tbaa !19
  %conv55 = zext i8 %43 to i32
  %shr = ashr i32 %conv55, 4
  %idxprom = sext i32 %shr to i64
  %44 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %44, i64 %idxprom
  %45 = load i8, i8* %arrayidx56, align 1, !tbaa !19
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr57, i8** %q, align 8, !tbaa !1
  store i8 %45, i8* %46, align 1, !tbaa !19
  %47 = load i8, i8* %ch, align 1, !tbaa !19
  %conv58 = zext i8 %47 to i32
  %and59 = and i32 %conv58, 15
  %idxprom60 = sext i32 %and59 to i64
  %48 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i64 %idxprom60
  %49 = load i8, i8* %arrayidx61, align 1, !tbaa !19
  %50 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr62, i8** %q, align 8, !tbaa !1
  store i8 %49, i8* %50, align 1, !tbaa !19
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.54
  %51 = load i32, i32* %count, align 4, !tbaa !27
  %dec = add i32 %51, -1
  store i32 %dec, i32* %count, align 4, !tbaa !27
  %tobool64 = icmp ne i32 %dec, 0
  br i1 %tobool64, label %do.body.54, label %do.end.65

do.end.65:                                        ; preds = %do.cond.63
  %52 = load i32, i32* %len1, align 4, !tbaa !27
  %shl = shl i32 %52, 1
  %53 = load i32, i32* %odd.addr, align 4, !tbaa !27
  %sub = sub i32 %shl, %53
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rbuf, i32 0, i32 0
  %rsize67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 2
  store i32 %sub, i32* %rsize67, align 4, !tbaa !26
  %arraydecay68 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %54 = load i32, i32* %odd.addr, align 4, !tbaa !27
  %idx.ext = zext i32 %54 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %arraydecay68, i64 %idx.ext
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rbuf, i32 0, i32 1
  %bytes71 = bitcast %union.v* %value70 to i8**
  store i8* %add.ptr69, i8** %bytes71, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call72 = call i32 @write_string(%struct.ref_s* %rbuf, %struct.stream_s* %55) #4
  store i32 %call72, i32* %status, align 4, !tbaa !27
  %56 = load i32, i32* %status, align 4, !tbaa !27
  switch i32 %56, label %sw.default [
    i32 0, label %sw.bb
    i32 -3, label %sw.bb.74
    i32 -4, label %sw.bb.74
  ]

sw.default:                                       ; preds = %do.end.65
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

sw.bb:                                            ; preds = %do.end.65
  %57 = load i32, i32* %len1, align 4, !tbaa !27
  %58 = load i32, i32* %len, align 4, !tbaa !27
  %sub73 = sub i32 %58, %57
  store i32 %sub73, i32* %len, align 4, !tbaa !27
  store i32 0, i32* %odd.addr, align 4, !tbaa !27
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.91

sw.bb.74:                                         ; preds = %do.end.65, %do.end.65
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rbuf, i32 0, i32 1
  %bytes76 = bitcast %union.v* %value75 to i8**
  %59 = load i8*, i8** %bytes76, align 8, !tbaa !1
  %arraydecay77 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv78 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv78, i32* %count, align 4, !tbaa !27
  %60 = load i32, i32* %count, align 4, !tbaa !27
  %shr79 = lshr i32 %60, 1
  %61 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %bytes81 = bitcast %union.v* %value80 to i8**
  %62 = load i8*, i8** %bytes81, align 8, !tbaa !1
  %idx.ext82 = zext i32 %shr79 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %62, i64 %idx.ext82
  store i8* %add.ptr83, i8** %bytes81, align 8, !tbaa !1
  %63 = load i32, i32* %len, align 4, !tbaa !27
  %64 = load i32, i32* %count, align 4, !tbaa !27
  %shr84 = lshr i32 %64, 1
  %sub85 = sub i32 %63, %shr84
  %65 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %rsize87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 2
  store i32 %sub85, i32* %rsize87, align 4, !tbaa !26
  %66 = load i32, i32* %count, align 4, !tbaa !27
  %and88 = and i32 %66, 1
  store i32 %and88, i32* %count, align 4, !tbaa !27
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %68 = load i32, i32* %status, align 4, !tbaa !27
  %69 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %call90 = call i32 @handle_write_status(%struct.gs_context_state_s* %67, i32 %68, %struct.ref_s* %add.ptr89, i32* %count, i32 (%struct.gs_context_state_s*)* @zwritehexstring_continue) #4
  store i32 %call90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %sw.bb.74, %sw.bb, %sw.default
  %70 = bitcast %struct.ref_s* %rbuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %70) #1
  %71 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %len1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %cleanup.dest.95 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.95, label %cleanup.98 [
    i32 6, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !5
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -2
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p96, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %while.end, %cleanup.91, %cond.end.42, %cleanup, %cond.end
  %76 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %76) #1
  %77 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %81 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_error_string(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %fop) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fop.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %fop, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %fop.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 15
  %4 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !46
  %cmp = icmp ne %struct.stream_s* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 18
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !59
  %error_string = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 15
  %10 = load %struct.stream_s*, %struct.stream_s** %strm3, align 8, !tbaa !46
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 18
  %12 = load %struct.stream_state_s*, %struct.stream_state_s** %state4, align 8, !tbaa !59
  %error_string5 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %12, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [80 x i8], [80 x i8]* %error_string5, i32 0, i64 0
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !19
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.end
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 18
  %17 = load %struct.stream_state_s*, %struct.stream_state_s** %state7, align 8, !tbaa !59
  %error_string8 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %17, i32 0, i32 4
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %error_string8, i32 0, i32 0
  %call = call i32 @gs_errorinfo_put_string(%struct.gs_context_state_s* %15, i8* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !27
  %18 = load i32, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %19 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 18
  %21 = load %struct.stream_state_s*, %struct.stream_state_s** %state12, align 8, !tbaa !59
  %error_string13 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %21, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [80 x i8], [80 x i8]* %error_string13, i32 0, i64 0
  store i8 0, i8* %arrayidx14, align 1, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.11
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %for.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %cleanup
  %23 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @s_handle_read_exception(%struct.gs_context_state_s*, i32, %struct.ref_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

declare i32 @gs_errorinfo_put_string(%struct.gs_context_state_s*, i8*) #2

declare i32 @s_handle_write_exception(%struct.gs_context_state_s*, i32, %struct.ref_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

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
!19 = !{!3, !3, i64 0}
!20 = !{!21, !12, i64 264}
!21 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !22, i64 160, !13, i64 176, !23, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !24, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!22 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!23 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!24 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!25 = !{!21, !12, i64 266}
!26 = !{!10, !9, i64 4}
!27 = !{!9, !9, i64 0}
!28 = !{!21, !3, i64 155}
!29 = !{!13, !13, i64 0}
!30 = !{!10, !12, i64 0}
!31 = !{!32, !2, i64 8}
!32 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!32, !2, i64 16}
!34 = !{!21, !2, i64 304}
!35 = !{!21, !2, i64 208}
!36 = !{!6, !2, i64 256}
!37 = !{!6, !2, i64 8}
!38 = !{!12, !12, i64 0}
!39 = !{!6, !2, i64 640}
!40 = !{!6, !9, i64 688}
!41 = !{!42, !2, i64 136}
!42 = !{!"gs_memory_s", !2, i64 0, !43, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!43 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!44 = !{!24, !9, i64 8}
!45 = !{!24, !2, i64 0}
!46 = !{!21, !2, i64 240}
!47 = !{!48, !2, i64 8}
!48 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!49 = !{!48, !2, i64 0}
!50 = !{!21, !12, i64 152}
!51 = !{!21, !9, i64 144}
!52 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 4, !27, i64 8, i64 8, !29, i64 8, i64 2, !38, i64 8, i64 4, !53, i64 8, i64 8, !29, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !29}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !3, i64 0}
!55 = !{!21, !2, i64 200}
!56 = !{!22, !2, i64 0}
!57 = !{!22, !9, i64 8}
!58 = !{!6, !2, i64 520}
!59 = !{!21, !2, i64 256}
