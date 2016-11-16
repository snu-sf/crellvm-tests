; ModuleID = './zcontext.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_condition_s = type { %struct.ctx_list_s }
%struct.ctx_list_s = type { i64, i64 }
%struct.gs_context_s = type { %struct.gs_context_state_s, %struct.gs_scheduler_s*, i32, i64, i32, i32, i32, i64, i64, %struct.gs_context_s* }
%struct.gs_scheduler_s = type { %struct.gs_context_s*, i64, %struct.ctx_list_s, void (%struct.vm_spaces_s*, i32)*, i64, [19 x %struct.gs_context_s*] }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gs_lock_s = type { %struct.ctx_list_s, i64, %struct.gs_scheduler_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"0condition\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0currentcontext\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"1detach\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"2.fork\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1join\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"4.localfork\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0lock\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"2monitor\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"1notify\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"2wait\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"0yield\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1
@zcontext1_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcondition }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentcontext }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdetach }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfork }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zjoin }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlocalfork }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zlock }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmonitor }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @znotify }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwait }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zyield }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zusertime_context }, %struct.op_def zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [12 x i8] c"0%fork_done\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"1%finish_join\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"0%monitor_cleanup\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"0%monitor_release\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"2%await_lock\00", align 1
@zcontext2_op_defs = constant [6 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @fork_done }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @finish_join }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @monitor_cleanup }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @monitor_release }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @await_lock }, %struct.op_def { i8* null, i32 (%struct.gs_context_state_s*)* @zcontext_init }], align 16
@st_condition = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"zcondition\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"conditiontype\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"./psi/zcontext.c\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"[']destroy %ld at 0x%lx, status = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"context_destroy\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"userdict\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"do_fork\00", align 1
@reschedule_interval = internal global i32 250, align 4
@st_context = internal constant %struct.gs_memory_struct_type_s { i32 792, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @context_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @context_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @context_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"context_create\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"TIME_SLICE_INTERVAL\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"[']create %ld at 0x%lx\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"gs_context_t\00", align 1
@st_context_state = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"No context to run!\00", align 1
@st_lock = internal constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @lock_reloc_ptrs to i8*) }, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"zlock\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"locktype\00", align 1
@lock_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @lock_enum_ptrs, i32 0, i32 0) }, align 8
@lock_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.31 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"restore not found in systemdict!\00", align 1
@st_scheduler = internal constant %struct.gs_memory_struct_type_s { i32 200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @scheduler_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @scheduler_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"gs_scheduler\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Can't create initial context!\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zcondition(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcond = alloca %struct.gs_condition_s*, align 8
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
  %3 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call = call i8* %7(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_condition, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0)) #5
  %11 = bitcast i8* %call to %struct.gs_condition_s*
  store %struct.gs_condition_s* %11, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %12 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_condition_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_condition_s, %struct.gs_condition_s* %13, i32 0, i32 0
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %waiting, i32 0, i32 1
  store i64 0, i64* %tail_index, align 8, !tbaa !23
  %14 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %waiting3 = getelementptr inbounds %struct.gs_condition_s, %struct.gs_condition_s* %14, i32 0, i32 0
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %waiting3, i32 0, i32 0
  store i64 0, i64* %head_index, align 8, !tbaa !26
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp6 = icmp ugt %struct.ref_s* %add.ptr, %17
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  store %struct.ref_s* %19, %struct.ref_s** %p12, align 8, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %22 = bitcast %struct.gs_condition_s* %21 to %struct.obj_header_s*
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %22, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 2
  %25 = load i32, i32* %current_space, align 4, !tbaa !29
  %or = or i32 112, %25
  %add = add i32 2048, %or
  %conv = trunc i32 %add to i16
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %27 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentcontext(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
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
  %3 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %current, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %12, i32 0, i32 3
  %13 = load i64, i64* %index, align 8, !tbaa !31
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %13, i64* %intval, align 8, !tbaa !33
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zdetach(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
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
  %3 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %5, i32 0, i32 1
  %6 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %6, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %7 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @context_param(%struct.gs_scheduler_s* %9, %struct.ref_s* %10, %struct.gs_context_s** %pctx) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %12, i32 0, i32 8
  %13 = load i64, i64* %joiner_index, align 8, !tbaa !36
  %cmp1 = icmp ne i64 %13, 0
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %detach = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 4
  %15 = load i32, i32* %detach, align 4, !tbaa !37
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %do.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %lor.lhs.false
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 2
  %17 = load i32, i32* %status, align 4, !tbaa !38
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.3
  %18 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %detach4 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %18, i32 0, i32 4
  store i32 1, i32* %detach4, align 4, !tbaa !37
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.3
  %19 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @context_destroy(%struct.gs_context_s* %19) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.5, %if.end.3, %sw.bb
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.2, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zfork(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mcount = alloca i32, align 4
  %rnull = alloca %struct.ref_s, align 8
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
  %3 = bitcast i32* %mcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack2) #5
  store i32 %call, i32* %mcount, align 4, !tbaa !35
  %5 = bitcast %struct.ref_s* %rnull to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load i32, i32* %mcount, align 4, !tbaa !35
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rnull, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !30
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load i32, i32* %mcount, align 4, !tbaa !35
  %call3 = call i32 @do_fork(%struct.gs_context_state_s* %7, %struct.ref_s* %8, %struct.ref_s* %rnull, %struct.ref_s* %rnull, i32 %9, i32 0) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.ref_s* %rnull to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #1
  %11 = bitcast i32* %mcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zjoin(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  %ostack = alloca %struct.ref_stack_s*, align 8
  %count = alloca i32, align 4
  %rp = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %current, align 8, !tbaa !1
  %6 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 1
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %8, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @context_param(%struct.gs_scheduler_s* %11, %struct.ref_s* %12, %struct.gs_context_s** %pctx) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 8
  %15 = load i64, i64* %joiner_index, align 8, !tbaa !36
  %cmp1 = icmp ne i64 %15, 0
  br i1 %cmp1, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %detach = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 4
  %17 = load i32, i32* %detach, align 4, !tbaa !37
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.32, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %18 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %19 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_context_s* %18, %19
  br i1 %cmp3, label %if.then.32, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %20 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %20, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !39
  %22 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state5 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %22, i32 0, i32 0
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state5, i32 0, i32 1
  %spaces7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 1
  %memories8 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces7, i32 0, i32 1
  %named9 = bitcast %union.anon* %memories8 to %struct._ssn*
  %global10 = getelementptr inbounds %struct._ssn, %struct._ssn* %named9, i32 0, i32 2
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global10, align 8, !tbaa !39
  %cmp11 = icmp ne %struct.gs_ref_memory_s* %21, %23
  br i1 %cmp11, label %if.then.32, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.4
  %24 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state13 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %24, i32 0, i32 0
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state13, i32 0, i32 1
  %spaces15 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 1
  %memories16 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces15, i32 0, i32 1
  %named17 = bitcast %union.anon* %memories16 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named17, i32 0, i32 3
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %26 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state18 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %26, i32 0, i32 0
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state18, i32 0, i32 1
  %spaces20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 1
  %memories21 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces20, i32 0, i32 1
  %named22 = bitcast %union.anon* %memories21 to %struct._ssn*
  %local23 = getelementptr inbounds %struct._ssn, %struct._ssn* %named22, i32 0, i32 3
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local23, align 8, !tbaa !41
  %cmp24 = icmp ne %struct.gs_ref_memory_s* %25, %27
  br i1 %cmp24, label %if.then.32, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %spaces27 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 1
  %memories28 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces27, i32 0, i32 1
  %named29 = bitcast %union.anon* %memories28 to %struct._ssn*
  %local30 = getelementptr inbounds %struct._ssn, %struct._ssn* %named29, i32 0, i32 3
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local30, align 8, !tbaa !41
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 19
  %30 = load i32, i32* %save_level, align 4, !tbaa !42
  %cmp31 = icmp ne i32 %30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.25, %lor.lhs.false.12, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %do.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end.33:                                        ; preds = %lor.lhs.false.25
  %31 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %31, i32 0, i32 2
  %32 = load i32, i32* %status, align 4, !tbaa !38
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %if.end.33
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !49
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 2
  %36 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  %cmp38 = icmp ugt %struct.ref_s* %34, %add.ptr
  br i1 %cmp38, label %if.then.39, label %if.end.46

if.then.39:                                       ; preds = %sw.bb
  %37 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack40, i32 0, i32 0
  %call42 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack41, i32 2) #5
  store i32 %call42, i32* %es_code_, align 4, !tbaa !35
  %39 = load i32, i32* %es_code_, align 4, !tbaa !35
  %cmp43 = icmp slt i32 %39, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.39
  %40 = load i32, i32* %es_code_, align 4, !tbaa !35
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %41 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.110 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %sw.bb
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack48 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack47, i32 0, i32 0
  %p49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack48, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p49, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p49, align 8, !tbaa !49
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !49
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @finish_join, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %47 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !49
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !30
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 25
  %stack57 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack56, i32 0, i32 0
  %p58 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack57, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p58, align 8, !tbaa !49
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 25
  %stack61 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack60, i32 0, i32 0
  %p62 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack61, i32 0, i32 0
  %51 = load %struct.ref_s*, %struct.ref_s** %p62, align 8, !tbaa !49
  %incdec.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 1
  store %struct.ref_s* %incdec.ptr63, %struct.ref_s** %p62, align 8, !tbaa !49
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 25
  %stack65 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack64, i32 0, i32 0
  %p66 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack65, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p66, align 8, !tbaa !49
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %opproc68 = bitcast %union.v* %value67 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @reschedule_now, i32 (%struct.gs_context_state_s*)** %opproc68, align 8, !tbaa !1
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack69 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack70 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack69, i32 0, i32 0
  %p71 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack70, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p71, align 8, !tbaa !49
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  store i16 3968, i16* %type_attrs73, align 2, !tbaa !30
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack75 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p76, align 8, !tbaa !49
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %rsize78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 2
  store i32 0, i32* %rsize78, align 4, !tbaa !51
  %58 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %58, i32 0, i32 3
  %59 = load i64, i64* %index, align 8, !tbaa !31
  %60 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index79 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %60, i32 0, i32 8
  store i64 %59, i64* %joiner_index79, align 8, !tbaa !36
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

sw.bb.80:                                         ; preds = %if.end.33
  %61 = bitcast %struct.ref_stack_s** %ostack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state81 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %62, i32 0, i32 0
  %op_stack82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state81, i32 0, i32 26
  %63 = bitcast %struct.op_stack_s* %op_stack82 to %struct.ref_stack_s*
  store %struct.ref_stack_s* %63, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %64 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.ref_stack_s*, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %call83 = call i32 @ref_stack_count(%struct.ref_stack_s* %65) #5
  store i32 %call83, i32* %count, align 4, !tbaa !35
  br label %do.body.84

do.body.84:                                       ; preds = %sw.bb.80
  %66 = load i32, i32* %count, align 4, !tbaa !35
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext = zext i32 %66 to i64
  %add.ptr85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 %idx.ext
  store %struct.ref_s* %add.ptr85, %struct.ref_s** %op, align 8, !tbaa !1
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 26
  %stack87 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack86, i32 0, i32 0
  %top88 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack87, i32 0, i32 2
  %69 = load %struct.ref_s*, %struct.ref_s** %top88, align 8, !tbaa !27
  %cmp89 = icmp ugt %struct.ref_s* %add.ptr85, %69
  br i1 %cmp89, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %do.body.84
  %70 = load i32, i32* %count, align 4, !tbaa !35
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack92 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack91, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack92, i32 0, i32 7
  store i32 %70, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.else:                                          ; preds = %do.body.84
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 26
  %stack94 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack93, i32 0, i32 0
  %p95 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack94, i32 0, i32 0
  store %struct.ref_s* %72, %struct.ref_s** %p95, align 8, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %if.else
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %74 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 26
  %stack100 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack99, i32 0, i32 0
  %76 = load i32, i32* %count, align 4, !tbaa !35
  %conv = zext i32 %76 to i64
  %call101 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack100, i64 %conv) #5
  store %struct.ref_s* %call101, %struct.ref_s** %rp, align 8, !tbaa !1
  %77 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %type_attrs103 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas102, i32 0, i32 0
  store i16 3072, i16* %type_attrs103, align 2, !tbaa !30
  %78 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 26
  %stack105 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack104, i32 0, i32 0
  %80 = load %struct.ref_stack_s*, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %81 = load i32, i32* %count, align 4, !tbaa !35
  call void @stack_copy(%struct.ref_stack_s* %stack105, %struct.ref_stack_s* %80, i32 %81, i32 0) #5
  %82 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @context_destroy(%struct.gs_context_s* %82) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %do.end.98, %if.then.90
  %83 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.ref_stack_s** %ostack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %cleanup.110 [
    i32 0, label %cleanup.cont.109
  ]

cleanup.cont.109:                                 ; preds = %cleanup.106
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont.109, %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

cleanup.110:                                      ; preds = %sw.epilog, %cleanup.106, %if.end.46, %cleanup, %if.then.32, %if.then
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @zlocalfork(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mcount = alloca i32, align 4
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
  %3 = bitcast i32* %mcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack2) #5
  store i32 %call, i32* %mcount, align 4, !tbaa !35
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %mcount, align 4, !tbaa !35
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %8 = load i32, i32* %mcount, align 4, !tbaa !35
  %sub = sub i32 %8, 1
  %call5 = call i32 @values_older_than(%struct.ref_stack_s* %stack4, i32 1, i32 %sub, i32 12) #5
  store i32 %call5, i32* %code, align 4, !tbaa !35
  %9 = load i32, i32* %code, align 4, !tbaa !35
  %cmp6 = icmp slt i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load i32, i32* %mcount, align 4, !tbaa !35
  %sub10 = sub i32 %15, 2
  %call11 = call i32 @do_fork(%struct.gs_context_state_s* %11, %struct.ref_s* %add.ptr, %struct.ref_s* %add.ptr9, %struct.ref_s* %14, i32 %sub10, i32 1) #5
  store i32 %call11, i32* %code, align 4, !tbaa !35
  %16 = load i32, i32* %code, align 4, !tbaa !35
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  %17 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack16 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !5
  store %struct.ref_s* %19, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = bitcast %struct.ref_s* %arrayidx to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !52
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !5
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  store %struct.ref_s* %add.ptr21, %struct.ref_s** %p20, align 8, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.7, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %mcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zlock(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %plock = alloca %struct.gs_lock_s*, align 8
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
  %3 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call = call i8* %7(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_lock, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %11 = bitcast i8* %call to %struct.gs_lock_s*
  store %struct.gs_lock_s* %11, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %12 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_lock_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %13, i32 0, i32 1
  store i64 0, i64* %holder_index, align 8, !tbaa !56
  %14 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %14, i32 0, i32 0
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %waiting, i32 0, i32 1
  store i64 0, i64* %tail_index, align 8, !tbaa !58
  %15 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %waiting3 = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %15, i32 0, i32 0
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %waiting3, i32 0, i32 0
  store i64 0, i64* %head_index, align 8, !tbaa !59
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 2
  %18 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp6 = icmp ugt %struct.ref_s* %add.ptr, %18
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  store %struct.ref_s* %20, %struct.ref_s** %p12, align 8, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %23 = bitcast %struct.gs_lock_s* %22 to %struct.obj_header_s*
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %23, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 2
  %26 = load i32, i32* %current_space, align 4, !tbaa !29
  %or = or i32 112, %26
  %add = add i32 2048, %or
  %conv = trunc i32 %add to i16
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %28 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zmonitor(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %plock = alloca %struct.gs_lock_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_context_state_s* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %current, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %5, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %14 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !60
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !19
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %20 = bitcast %struct.obj_header_s* %19 to i8*
  %call = call %struct.gs_memory_struct_type_s* %14(%struct.gs_memory_s* %17, i8* %20) #5
  %cmp6 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_lock
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %call9 = call i32 @check_type_failed(%struct.ref_s* %arrayidx8) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end:                                           ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %23 = load i16, i16* %type_attrs11, align 2, !tbaa !30
  %conv12 = zext i16 %23 to i32
  %and13 = and i32 %conv12, 15552
  %cmp14 = icmp eq i32 %and13, 1216
  br i1 %cmp14, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %do.body
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call17 = call i32 @check_proc_failed(%struct.ref_s* %24) #5
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.18:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct20 = bitcast %union.v* %value19 to %struct.obj_header_s**
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct20, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to %struct.gs_lock_s*
  store %struct.gs_lock_s* %27, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %28 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %28, i32 0, i32 1
  %29 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %30 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %30, i32 0, i32 1
  %31 = load i64, i64* %holder_index, align 8, !tbaa !56
  %call21 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %29, i64 %31) #5
  store %struct.gs_context_s* %call21, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %32 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.gs_context_s* %32, null
  br i1 %cmp25, label %if.then.27, label %if.end.49

if.then.27:                                       ; preds = %do.end.24
  %33 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %34 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp28 = icmp eq %struct.gs_context_s* %33, %34
  br i1 %cmp28, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.27
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 19
  %37 = load i32, i32* %save_level, align 4, !tbaa !42
  %cmp31 = icmp ne i32 %37, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.48

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %38 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %38, i32 0, i32 0
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state, i32 0, i32 1
  %spaces35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 1
  %memories36 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces35, i32 0, i32 1
  %named37 = bitcast %union.anon* %memories36 to %struct._ssn*
  %local38 = getelementptr inbounds %struct._ssn, %struct._ssn* %named37, i32 0, i32 3
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local38, align 8, !tbaa !41
  %40 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state39 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %40, i32 0, i32 0
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state39, i32 0, i32 1
  %spaces41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 1
  %memories42 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces41, i32 0, i32 1
  %named43 = bitcast %union.anon* %memories42 to %struct._ssn*
  %local44 = getelementptr inbounds %struct._ssn, %struct._ssn* %named43, i32 0, i32 3
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local44, align 8, !tbaa !41
  %cmp45 = icmp eq %struct.gs_ref_memory_s* %39, %41
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.33, %if.then.27
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.48:                                        ; preds = %land.lhs.true.33, %lor.lhs.false
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.end.24
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !49
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack53 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack53, i32 0, i32 2
  %45 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -4
  %cmp55 = icmp ugt %struct.ref_s* %43, %add.ptr54
  br i1 %cmp55, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %if.end.49
  %46 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack59 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack58, i32 0, i32 0
  %call60 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack59, i32 4) #5
  store i32 %call60, i32* %es_code_, align 4, !tbaa !35
  %48 = load i32, i32* %es_code_, align 4, !tbaa !35
  %cmp61 = icmp slt i32 %48, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.57
  %49 = load i32, i32* %es_code_, align 4, !tbaa !35
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.then.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.63
  %50 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.139 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.65

if.end.65:                                        ; preds = %cleanup.cont, %if.end.49
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -1
  %52 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %call67 = call i32 @lock_acquire(%struct.ref_s* %add.ptr66, %struct.gs_context_s* %52) #5
  store i32 %call67, i32* %code, align 4, !tbaa !35
  %53 = load i32, i32* %code, align 4, !tbaa !35
  %cmp68 = icmp ne i32 %53, 0
  br i1 %cmp68, label %if.then.70, label %if.end.87

if.then.70:                                       ; preds = %if.end.65
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack72 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack71, i32 0, i32 0
  %p73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p73, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p73, align 8, !tbaa !49
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack75 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p76, align 8, !tbaa !49
  %value77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %opproc = bitcast %union.v* %value77 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zmonitor, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 25
  %stack79 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack78, i32 0, i32 0
  %p80 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack79, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p80, align 8, !tbaa !49
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  store i16 3968, i16* %type_attrs82, align 2, !tbaa !30
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack84 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack83, i32 0, i32 0
  %p85 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack84, i32 0, i32 0
  %61 = load %struct.ref_s*, %struct.ref_s** %p85, align 8, !tbaa !49
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %62 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.87:                                        ; preds = %if.end.65
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !49
  %incdec.ptr91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 1
  store %struct.ref_s* %incdec.ptr91, %struct.ref_s** %p90, align 8, !tbaa !49
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -1
  %66 = bitcast %struct.ref_s* %incdec.ptr91 to i8*
  %67 = bitcast %struct.ref_s* %arrayidx92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !tbaa.struct !52
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 25
  %stack94 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack93, i32 0, i32 0
  %p95 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack94, i32 0, i32 0
  %69 = load %struct.ref_s*, %struct.ref_s** %p95, align 8, !tbaa !49
  %incdec.ptr96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 1
  store %struct.ref_s* %incdec.ptr96, %struct.ref_s** %p95, align 8, !tbaa !49
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 25
  %stack98 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack97, i32 0, i32 0
  %p99 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack98, i32 0, i32 0
  %71 = load %struct.ref_s*, %struct.ref_s** %p99, align 8, !tbaa !49
  %value100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %opproc101 = bitcast %union.v* %value100 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @monitor_cleanup, i32 (%struct.gs_context_state_s*)** %opproc101, align 8, !tbaa !1
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 25
  %stack103 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack102, i32 0, i32 0
  %p104 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack103, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p104, align 8, !tbaa !49
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %type_attrs106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 0
  store i16 3712, i16* %type_attrs106, align 2, !tbaa !30
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 25
  %stack108 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack107, i32 0, i32 0
  %p109 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack108, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p109, align 8, !tbaa !49
  %tas110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %rsize111 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas110, i32 0, i32 2
  store i32 0, i32* %rsize111, align 4, !tbaa !51
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack112 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 25
  %stack113 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack112, i32 0, i32 0
  %p114 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack113, i32 0, i32 0
  %77 = load %struct.ref_s*, %struct.ref_s** %p114, align 8, !tbaa !49
  %incdec.ptr115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 1
  store %struct.ref_s* %incdec.ptr115, %struct.ref_s** %p114, align 8, !tbaa !49
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack116 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 25
  %stack117 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack116, i32 0, i32 0
  %p118 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack117, i32 0, i32 0
  %79 = load %struct.ref_s*, %struct.ref_s** %p118, align 8, !tbaa !49
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %opproc120 = bitcast %union.v* %value119 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @monitor_release, i32 (%struct.gs_context_state_s*)** %opproc120, align 8, !tbaa !1
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 25
  %stack122 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack121, i32 0, i32 0
  %p123 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack122, i32 0, i32 0
  %81 = load %struct.ref_s*, %struct.ref_s** %p123, align 8, !tbaa !49
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %type_attrs125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 0
  store i16 3968, i16* %type_attrs125, align 2, !tbaa !30
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 25
  %stack127 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack126, i32 0, i32 0
  %p128 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack127, i32 0, i32 0
  %83 = load %struct.ref_s*, %struct.ref_s** %p128, align 8, !tbaa !49
  %tas129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %rsize130 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas129, i32 0, i32 2
  store i32 0, i32* %rsize130, align 4, !tbaa !51
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack131 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 25
  %stack132 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack131, i32 0, i32 0
  %p133 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack132, i32 0, i32 0
  %85 = load %struct.ref_s*, %struct.ref_s** %p133, align 8, !tbaa !49
  %incdec.ptr134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 1
  store %struct.ref_s* %incdec.ptr134, %struct.ref_s** %p133, align 8, !tbaa !49
  %86 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %87 = bitcast %struct.ref_s* %incdec.ptr134 to i8*
  %88 = bitcast %struct.ref_s* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 16, i32 8, i1 false), !tbaa.struct !52
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 26
  %stack136 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack135, i32 0, i32 0
  %p137 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack136, i32 0, i32 0
  %90 = load %struct.ref_s*, %struct.ref_s** %p137, align 8, !tbaa !5
  %add.ptr138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -2
  store %struct.ref_s* %add.ptr138, %struct.ref_s** %p137, align 8, !tbaa !5
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.87, %if.then.70, %cleanup, %if.then.47, %if.then.16, %if.then
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @znotify(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %pcond = alloca %struct.gs_condition_s*, align 8
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
  %3 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %current, align 8, !tbaa !1
  %6 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %12 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !60
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !19
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %18 = bitcast %struct.obj_header_s* %17 to i8*
  %call = call %struct.gs_memory_struct_type_s* %12(%struct.gs_memory_s* %15, i8* %18) #5
  %cmp5 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_condition
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %19) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %pstruct9 = bitcast %union.v* %value8 to %struct.obj_header_s**
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct9, align 8, !tbaa !1
  %22 = bitcast %struct.obj_header_s* %21 to %struct.gs_condition_s*
  store %struct.gs_condition_s* %22, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p12, align 8, !tbaa !5
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_condition_s, %struct.gs_condition_s* %26, i32 0, i32 0
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %waiting, i32 0, i32 0
  %27 = load i64, i64* %head_index, align 8, !tbaa !26
  %cmp13 = icmp eq i64 %27, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.end
  %28 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %28, i32 0, i32 1
  %29 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %30 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %waiting17 = getelementptr inbounds %struct.gs_condition_s, %struct.gs_condition_s* %30, i32 0, i32 0
  call void @activate_waiting(%struct.gs_scheduler_s* %29, %struct.ctx_list_s* %waiting17) #5
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call18 = call i32 @zyield(%struct.gs_context_state_s* %31) #5
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then
  %32 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @zwait(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %plock = alloca %struct.gs_lock_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %pcond = alloca %struct.gs_condition_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %current, align 8, !tbaa !1
  %6 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 1
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %8, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !19
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %17 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !60
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !19
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %23 = bitcast %struct.obj_header_s* %22 to i8*
  %call = call %struct.gs_memory_struct_type_s* %17(%struct.gs_memory_s* %20, i8* %23) #5
  %cmp6 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_lock
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call9 = call i32 @check_type_failed(%struct.ref_s* %arrayidx8) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

if.end:                                           ; preds = %land.lhs.true
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct11 = bitcast %union.v* %value10 to %struct.obj_header_s**
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct11, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to %struct.gs_lock_s*
  store %struct.gs_lock_s* %27, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %29 = load i16, i16* %type_attrs13, align 2, !tbaa !30
  %conv14 = zext i16 %29 to i32
  %and15 = and i32 %conv14, 15872
  %cmp16 = icmp eq i32 %and15, 2048
  br i1 %cmp16, label %land.lhs.true.18, label %if.then.30

land.lhs.true.18:                                 ; preds = %if.end
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !19
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %object_type22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 15
  %33 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type22, align 8, !tbaa !60
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current24 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory23, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current24, align 8, !tbaa !19
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %pstruct26 = bitcast %union.v* %value25 to %struct.obj_header_s**
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct26, align 8, !tbaa !1
  %39 = bitcast %struct.obj_header_s* %38 to i8*
  %call27 = call %struct.gs_memory_struct_type_s* %33(%struct.gs_memory_s* %36, i8* %39) #5
  %cmp28 = icmp eq %struct.gs_memory_struct_type_s* %call27, @st_condition
  br i1 %cmp28, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.18, %if.end
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %40) #5
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

if.end.32:                                        ; preds = %land.lhs.true.18
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %pstruct34 = bitcast %union.v* %value33 to %struct.obj_header_s**
  %42 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct34, align 8, !tbaa !1
  %43 = bitcast %struct.obj_header_s* %42 to %struct.gs_condition_s*
  store %struct.gs_condition_s* %43, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %45 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %45, i32 0, i32 1
  %46 = load i64, i64* %holder_index, align 8, !tbaa !56
  %call35 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %44, i64 %46) #5
  store %struct.gs_context_s* %call35, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %47 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp36 = icmp eq %struct.gs_context_s* %47, null
  br i1 %cmp36, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %48 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %49 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current38 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %49, i32 0, i32 0
  %50 = load %struct.gs_context_s*, %struct.gs_context_s** %current38, align 8, !tbaa !61
  %cmp39 = icmp ne %struct.gs_context_s* %48, %50
  br i1 %cmp39, label %if.then.60, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory42, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %52, i32 0, i32 19
  %53 = load i32, i32* %save_level, align 4, !tbaa !42
  %cmp43 = icmp ne i32 %53, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.61

land.lhs.true.45:                                 ; preds = %lor.lhs.false.41
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  %55 = load i16, i16* %type_attrs48, align 2, !tbaa !30
  %conv49 = zext i16 %55 to i32
  %and50 = and i32 %conv49, 12
  %cmp51 = icmp eq i32 %and50, 12
  br i1 %cmp51, label %if.then.60, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.45
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %type_attrs55 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas54, i32 0, i32 0
  %57 = load i16, i16* %type_attrs55, align 2, !tbaa !30
  %conv56 = zext i16 %57 to i32
  %and57 = and i32 %conv56, 12
  %cmp58 = icmp eq i32 %and57, 12
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.53, %land.lhs.true.45, %lor.lhs.false, %do.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

if.end.61:                                        ; preds = %lor.lhs.false.53, %lor.lhs.false.41
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 25
  %stack62 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p63 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack62, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p63, align 8, !tbaa !49
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 25
  %stack65 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack64, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack65, i32 0, i32 2
  %61 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %cmp67 = icmp ugt %struct.ref_s* %59, %add.ptr66
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %if.end.61
  %62 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack71 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack70, i32 0, i32 0
  %call72 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack71, i32 1) #5
  store i32 %call72, i32* %es_code_, align 4, !tbaa !35
  %64 = load i32, i32* %es_code_, align 4, !tbaa !35
  %cmp73 = icmp slt i32 %64, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.69
  %65 = load i32, i32* %es_code_, align 4, !tbaa !35
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.then.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.75
  %66 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.96 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.77

if.end.77:                                        ; preds = %cleanup.cont, %if.end.61
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %call79 = call i32 @lock_release(%struct.ref_s* %add.ptr78) #5
  %68 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %69 = load %struct.gs_condition_s*, %struct.gs_condition_s** %pcond, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_condition_s, %struct.gs_condition_s* %69, i32 0, i32 0
  %70 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %68, %struct.ctx_list_s* %waiting, %struct.gs_context_s* %70) #5
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 25
  %stack81 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p82, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p82, align 8, !tbaa !49
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 25
  %stack84 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack83, i32 0, i32 0
  %p85 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack84, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p85, align 8, !tbaa !49
  %value86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %opproc = bitcast %union.v* %value86 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @await_lock, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 25
  %stack88 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack87, i32 0, i32 0
  %p89 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack88, i32 0, i32 0
  %76 = load %struct.ref_s*, %struct.ref_s** %p89, align 8, !tbaa !49
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %type_attrs91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 0
  store i16 3968, i16* %type_attrs91, align 2, !tbaa !30
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack92 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 25
  %stack93 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack92, i32 0, i32 0
  %p94 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack93, i32 0, i32 0
  %78 = load %struct.ref_s*, %struct.ref_s** %p94, align 8, !tbaa !49
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  store i32 22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

cleanup.96:                                       ; preds = %if.end.77, %cleanup, %if.then.60, %if.then.30, %if.then
  %79 = bitcast %struct.gs_condition_s** %pcond to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @zyield(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_context_state_s* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %current, align 8, !tbaa !1
  %3 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %4, i32 0, i32 1
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %5, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %6 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %6, i32 0, i32 2
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active, i32 0, i32 0
  %7 = load i64, i64* %head_index, align 8, !tbaa !63
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active1 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %9, i32 0, i32 2
  %10 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %8, %struct.ctx_list_s* %active1, %struct.gs_context_s* %10) #5
  store i32 22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %11 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zusertime_context(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %utime = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_context_state_s* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %current, align 8, !tbaa !1
  %3 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %4, i32 0, i32 1
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %5, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %8, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %call = call i64 @context_usertime() #5
  store i64 %call, i64* %utime, align 8, !tbaa !33
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %14, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 0
  %keep_usertime = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state, i32 0, i32 8
  %17 = load i32, i32* %keep_usertime, align 4, !tbaa !64
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.end
  %18 = load i64, i64* %utime, align 8, !tbaa !33
  %19 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %usertime_initial = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %19, i32 0, i32 1
  store i64 %18, i64* %usertime_initial, align 8, !tbaa !65
  %20 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state9 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %20, i32 0, i32 0
  %keep_usertime10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state9, i32 0, i32 8
  store i32 1, i32* %keep_usertime10, align 4, !tbaa !64
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.end
  %21 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %21, i32 0, i32 0
  %usertime_total = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state12, i32 0, i32 7
  %22 = load i64, i64* %usertime_total, align 8, !tbaa !66
  %23 = load i64, i64* %utime, align 8, !tbaa !33
  %add = add nsw i64 %22, %23
  %24 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %usertime_initial13 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %24, i32 0, i32 1
  %25 = load i64, i64* %usertime_initial13, align 8, !tbaa !65
  %sub = sub nsw i64 %add, %25
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %sub, i64* %intval, align 8, !tbaa !33
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %28 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @fork_done(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcur = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %prestore = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pctx = alloca %struct.gs_context_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_s** %pcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %6 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 1
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %8, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 24
  %stack1 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 24
  %stack3 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack2, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack3) #5
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack4, i32 0, i32 1
  %12 = load i32, i32* %min_size, align 4, !tbaa !67
  %sub = sub i32 %call, %12
  call void @ref_stack_pop(%struct.ref_stack_s* %stack1, i32 %sub) #5
  %13 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %13, i32 0, i32 0
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %call6 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack5) #5
  %sub7 = sub i32 %call6, 1
  call void @pop_estack(%struct.gs_context_state_s* %state, i32 %sub7) #5
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !68
  %call8 = call i32 @gs_grestoreall(%struct.gs_state_s* %16) #5
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 19
  %19 = load i32, i32* %save_level, align 4, !tbaa !42
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.64

if.then:                                          ; preds = %do.end
  %20 = bitcast %struct.ref_s** %prestore to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack9, i32 0, i32 7
  %call10 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct.ref_s** %prestore) #5
  %cmp = icmp sle i32 %call10, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %call12 = call i8* @gs_program_name() #5
  %call13 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call12, i64 %call13) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 796) #5
  %call14 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #5
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %22 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %detach = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %22, i32 0, i32 4
  %23 = load i32, i32* %detach, align 4, !tbaa !37
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %call21 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack20) #5
  call void @ref_stack_pop(%struct.ref_stack_s* %stack18, i32 %call21) #5
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  store %struct.ref_s* %27, %struct.ref_s** %op, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.16, %if.end
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 2
  %30 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !27
  %cmp29 = icmp ugt %struct.ref_s* %add.ptr, %30
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body.26
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack32 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack31, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !28
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.26
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  store %struct.ref_s* %32, %struct.ref_s** %p35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %call40 = call i64 @alloc_save_current_id(%struct.gs_dual_memory_s* %memory39) #5
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %saveid = bitcast %union.v* %value to i64*
  store i64 %call40, i64* %saveid, align 8, !tbaa !33
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4352, i16* %type_attrs, align 2, !tbaa !30
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p43, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p43, align 8, !tbaa !49
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack45 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p46, align 8, !tbaa !49
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %opproc = bitcast %union.v* %value47 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @fork_done, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !49
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 3968, i16* %type_attrs52, align 2, !tbaa !30
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !49
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack58 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !49
  %incdec.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 1
  store %struct.ref_s* %incdec.ptr60, %struct.ref_s** %p59, align 8, !tbaa !49
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack62 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack61, i32 0, i32 0
  %p63 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack62, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p63, align 8, !tbaa !49
  %49 = load %struct.ref_s*, %struct.ref_s** %prestore, align 8, !tbaa !1
  %50 = bitcast %struct.ref_s* %48 to i8*
  %51 = bitcast %struct.ref_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false), !tbaa.struct !52
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.38, %if.then.30, %if.then.11
  %52 = bitcast %struct.ref_s** %prestore to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %cleanup.80

if.end.64:                                        ; preds = %do.end
  %53 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %detach65 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %53, i32 0, i32 4
  %54 = load i32, i32* %detach65, align 4, !tbaa !37
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.then.67, label %if.else.74

if.then.67:                                       ; preds = %if.end.64
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 26
  %stack69 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack68, i32 0, i32 0
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %call72 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack71) #5
  call void @ref_stack_pop(%struct.ref_stack_s* %stack69, i32 %call72) #5
  %57 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %58 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  call void @context_store(%struct.gs_scheduler_s* %57, %struct.gs_context_s* %58) #5
  %59 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %59, i32 0, i32 4
  %60 = load i64, i64* %dead_index, align 8, !tbaa !69
  %61 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %61, i32 0, i32 7
  store i64 %60, i64* %next_index, align 8, !tbaa !70
  %62 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %62, i32 0, i32 3
  %63 = load i64, i64* %index, align 8, !tbaa !31
  %64 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index73 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %64, i32 0, i32 4
  store i64 %63, i64* %dead_index73, align 8, !tbaa !69
  %65 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %65, i32 0, i32 0
  store %struct.gs_context_s* null, %struct.gs_context_s** %current, align 8, !tbaa !61
  br label %if.end.79

if.else.74:                                       ; preds = %if.end.64
  %66 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %68 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %joiner_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %68, i32 0, i32 8
  %69 = load i64, i64* %joiner_index, align 8, !tbaa !36
  %call75 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %67, i64 %69) #5
  store %struct.gs_context_s* %call75, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %70 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %70, i32 0, i32 2
  store i32 1, i32* %status, align 4, !tbaa !38
  %71 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp76 = icmp ne %struct.gs_context_s* %71, null
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else.74
  %72 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %73 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %73, i32 0, i32 2
  %74 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %72, %struct.ctx_list_s* %active, %struct.gs_context_s* %74) #5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.else.74
  %75 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  store i32 22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %if.end.79, %cleanup
  %76 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gs_context_s** %pcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @finish_join(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
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
  %3 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_context_state_s* %4 to %struct.gs_context_s*
  store %struct.gs_context_s* %5, %struct.gs_context_s** %current, align 8, !tbaa !1
  %6 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 1
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %8, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @context_param(%struct.gs_scheduler_s* %11, %struct.ref_s* %12, %struct.gs_context_s** %pctx) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 8
  %15 = load i64, i64* %joiner_index, align 8, !tbaa !36
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 3
  %17 = load i64, i64* %index, align 8, !tbaa !31
  %cmp1 = icmp ne i64 %15, %17
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %do.end
  %18 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index4 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %18, i32 0, i32 8
  store i64 0, i64* %joiner_index4, align 8, !tbaa !36
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @zjoin(%struct.gs_context_state_s* %19) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @monitor_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  %call = call i32 @lock_release(%struct.ref_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %3 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p3, align 8, !tbaa !49
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @monitor_release(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %call = call i32 @lock_release(%struct.ref_s* %add.ptr) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %3 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !49
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %p3, align 8, !tbaa !49
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @await_lock(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_context_state_s* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %current, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %5, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %8 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %call = call i32 @lock_acquire(%struct.ref_s* %add.ptr, %struct.gs_context_s* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !35
  %9 = load i32, i32* %code, align 4, !tbaa !35
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %p3, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p6, align 8, !tbaa !49
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !49
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @await_lock, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !49
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !30
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !49
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !51
  %20 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zcontext_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %reschedule_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 23
  store i32 (%struct.gs_context_state_s**)* @ctx_initialize, i32 (%struct.gs_context_state_s**)** %reschedule_proc, align 8, !tbaa !71
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %time_slice_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 21
  store i32 (%struct.gs_context_state_s**)* @ctx_initialize, i32 (%struct.gs_context_state_s**)** %time_slice_proc, align 8, !tbaa !72
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %time_slice_ticks = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 22
  store i32 0, i32* %time_slice_ticks, align 4, !tbaa !73
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @context_param(%struct.gs_scheduler_s* %psched, %struct.ref_s* %op, %struct.gs_context_s** %ppctx) #0 {
entry:
  %retval = alloca i32, align 4
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppctx.addr = alloca %struct.gs_context_s**, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_context_s** %ppctx, %struct.gs_context_s*** %ppctx.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !74
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %4) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %7 = load i64, i64* %intval, align 8, !tbaa !33
  %call2 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %5, i64 %7) #5
  store %struct.gs_context_s* %call2, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %8 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_context_s* %8, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %10 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %9, %struct.gs_context_s** %10, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %11 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @context_destroy(%struct.gs_context_s* %pctx) #0 {
entry:
  %pctx.addr = alloca %struct.gs_context_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %ppctx = alloca %struct.gs_context_s**, align 8
  store %struct.gs_context_s* %pctx, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %1, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %4, i32 0, i32 1
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %5, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %6 = bitcast %struct.gs_context_s*** %ppctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 3
  %8 = load i64, i64* %index, align 8, !tbaa !31
  %rem = srem i64 %8, 19
  %9 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %9, i32 0, i32 5
  %arrayidx = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %rem
  store %struct.gs_context_s** %arrayidx, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %10, align 8, !tbaa !1
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_context_s* %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %13, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 9
  store %struct.gs_context_s** %table_next, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %15, align 8, !tbaa !1
  %table_next1 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 9
  %17 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next1, align 8, !tbaa !75
  %18 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  store %struct.gs_context_s* %17, %struct.gs_context_s** %18, align 8, !tbaa !1
  %call = call i32 @gs_debug_c(i32 39) #5
  %call2 = call i32 @gs_debug_c(i32 34) #5
  %or = or i32 %call, %call2
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 1253) #5
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %23 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %index3 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %23, i32 0, i32 3
  %24 = load i64, i64* %index3, align 8, !tbaa !31
  %25 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %26 = ptrtoint %struct.gs_context_s* %25 to i64
  %27 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %27, i32 0, i32 2
  %28 = load i32, i32* %status, align 4, !tbaa !38
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i64 %24, i64 %26, i32 %28) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %29 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state5 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %29, i32 0, i32 0
  %call6 = call i32 @context_state_free(%struct.gs_context_state_s* %state5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %35 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_context_s* %35 to i8*
  call void %32(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %37 = bitcast %struct.gs_context_s*** %ppctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %psched, i64 %index) #0 {
entry:
  %retval = alloca %struct.gs_context_s*, align 8
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %index.addr = alloca i64, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store i64 %index, i64* %index.addr, align 8, !tbaa !33
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %index.addr, align 8, !tbaa !33
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_context_s* null, %struct.gs_context_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %index.addr, align 8, !tbaa !33
  %rem = srem i64 %2, 19
  %3 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %3, i32 0, i32 5
  %arrayidx = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %rem
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_context_s* %4, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_context_s* %5, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %6, i32 0, i32 3
  %7 = load i64, i64* %index2, align 8, !tbaa !31
  %8 = load i64, i64* %index.addr, align 8, !tbaa !33
  %cmp3 = icmp ne i64 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %10, i32 0, i32 9
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next, align 8, !tbaa !75
  store %struct.gs_context_s* %11, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  store %struct.gs_context_s* %12, %struct.gs_context_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %13 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %retval
  ret %struct.gs_context_s* %14
}

declare i32 @gs_debug_c(i32) #2

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @context_state_free(%struct.gs_context_state_s*) #2

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_fork(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.ref_s* %pstdin, %struct.ref_s* %pstdout, i32 %mcount, i32 %local) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pstdin.addr = alloca %struct.ref_s*, align 8
  %pstdout.addr = alloca %struct.ref_s*, align 8
  %mcount.addr = alloca i32, align 4
  %local.addr = alloca i32, align 4
  %pcur = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %dmem = alloca %struct.gs_dual_memory_s, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %old_userdict = alloca %struct.ref_s, align 8
  %new_userdict = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %interval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %fcode119 = alloca i32, align 4
  %puserdict = alloca %struct.ref_s*, align 8
  %userdict_size = alloca i32, align 4
  %parent = alloca %struct.gs_memory_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %lmem_stable = alloca %struct.gs_ref_memory_s*, align 8
  %n = alloca i32, align 4
  %old = alloca %struct.gs_state_s*, align 8
  %new = alloca %struct.gs_state_s*, align 8
  %dstack = alloca %struct.ref_stack_s*, align 8
  %count = alloca i32, align 4
  %copy = alloca i32, align 4
  %i = alloca i64, align 8
  %pdref = alloca %struct.ref_s*, align 8
  %estack = alloca %struct.ref_stack_s*, align 8
  %ostack = alloca %struct.ref_stack_s*, align 8
  %count353 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstdin, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  store %struct.ref_s* %pstdout, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  store i32 %mcount, i32* %mcount.addr, align 4, !tbaa !35
  store i32 %local, i32* %local.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gs_context_s** %pcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_context_state_s* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %3 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %4, i32 0, i32 1
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %5, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_dual_memory_s* %dmem to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.ref_s* %old_userdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.ref_s* %new_userdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %interval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %15) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local2 = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local2, align 8, !tbaa !41
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 19
  %18 = load i32, i32* %save_level, align 4, !tbaa !42
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.4:                                         ; preds = %do.end
  %19 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %20 = bitcast i16* %type_attrs6 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !74
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv7, 14
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.4
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call11 = call i32 @zget_stdout(%struct.gs_context_state_s* %22, %struct.stream_s** %s) #5
  store i32 %call11, i32* %code, align 4, !tbaa !35
  %23 = load i32, i32* %code, align 4, !tbaa !35
  %cmp12 = icmp slt i32 %23, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %24 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.15:                                        ; preds = %if.then.10
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio, i32 0, i64 1
  store %struct.ref_s* %arrayidx16, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  br label %if.end.61

if.else:                                          ; preds = %if.end.4
  br label %do.body.17

do.body.17:                                       ; preds = %if.else
  %26 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %27 = load i16, i16* %type_attrs19, align 2, !tbaa !30
  %conv20 = zext i16 %27 to i32
  %and21 = and i32 %conv20, 16160
  %cmp22 = icmp eq i32 %and21, 800
  br i1 %cmp22, label %if.end.32, label %if.then.24

if.then.24:                                       ; preds = %do.body.17
  %28 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %29 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx27, align 1, !tbaa !74
  %conv28 = zext i8 %30 to i32
  %cmp29 = icmp eq i32 %conv28, 3
  br i1 %cmp29, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.24
  %31 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %call31 = call i32 @check_type_failed(%struct.ref_s* %31) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call31, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.32:                                        ; preds = %do.body.17
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  %32 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %33 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %33, %struct.stream_s** %s, align 8, !tbaa !1
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 19
  %35 = load i16, i16* %read_id, align 2, !tbaa !77
  %conv34 = zext i16 %35 to i32
  %36 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %37 = load i32, i32* %rsize, align 4, !tbaa !51
  %cmp36 = icmp ne i32 %conv34, %37
  br i1 %cmp36, label %if.then.38, label %if.end.56

if.then.38:                                       ; preds = %do.body.33
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 19
  %39 = load i16, i16* %read_id39, align 2, !tbaa !77
  %conv40 = zext i16 %39 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %if.then.38
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 20
  %41 = load i16, i16* %write_id, align 2, !tbaa !82
  %conv43 = zext i16 %41 to i32
  %42 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %rsize45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  %43 = load i32, i32* %rsize45, align 4, !tbaa !51
  %cmp46 = icmp eq i32 %conv43, %43
  br i1 %cmp46, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %land.lhs.true
  %44 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %call49 = call i32 @file_switch_to_read(%struct.ref_s* %45) #5
  store i32 %call49, i32* %fcode, align 4, !tbaa !35
  %46 = load i32, i32* %fcode, align 4, !tbaa !35
  %cmp50 = icmp slt i32 %46, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  %47 = load i32, i32* %fcode, align 4, !tbaa !35
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52
  %48 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.376 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.55

if.else.54:                                       ; preds = %land.lhs.true, %if.then.38
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 18
  %50 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !83
  store %struct.stream_s* %50, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %cleanup.cont
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.body.33
  br label %do.cond.57

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.end.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.end.15
  %51 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %52 = bitcast i16* %type_attrs63 to i8*
  %arrayidx64 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx64, align 1, !tbaa !74
  %conv65 = zext i8 %53 to i32
  %cmp66 = icmp eq i32 %conv65, 14
  br i1 %cmp66, label %if.then.68, label %if.else.76

if.then.68:                                       ; preds = %if.end.61
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call69 = call i32 @zget_stdin(%struct.gs_context_state_s* %54, %struct.stream_s** %s) #5
  store i32 %call69, i32* %code, align 4, !tbaa !35
  %55 = load i32, i32* %code, align 4, !tbaa !35
  %cmp70 = icmp slt i32 %55, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.68
  %56 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.73:                                        ; preds = %if.then.68
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %stdio74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 17
  %arrayidx75 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio74, i32 0, i64 0
  store %struct.ref_s* %arrayidx75, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  br label %if.end.136

if.else.76:                                       ; preds = %if.end.61
  br label %do.body.77

do.body.77:                                       ; preds = %if.else.76
  %58 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %59 = load i16, i16* %type_attrs79, align 2, !tbaa !30
  %conv80 = zext i16 %59 to i32
  %and81 = and i32 %conv80, 16160
  %cmp82 = icmp eq i32 %and81, 800
  br i1 %cmp82, label %if.end.96, label %if.then.84

if.then.84:                                       ; preds = %do.body.77
  %60 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %tas85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %type_attrs86 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas85, i32 0, i32 0
  %61 = bitcast i16* %type_attrs86 to i8*
  %arrayidx87 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx87, align 1, !tbaa !74
  %conv88 = zext i8 %62 to i32
  %cmp89 = icmp eq i32 %conv88, 3
  br i1 %cmp89, label %cond.false.93, label %cond.true.91

cond.true.91:                                     ; preds = %if.then.84
  %63 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %call92 = call i32 @check_type_failed(%struct.ref_s* %63) #5
  br label %cond.end.94

cond.false.93:                                    ; preds = %if.then.84
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.91
  %cond95 = phi i32 [ %call92, %cond.true.91 ], [ -7, %cond.false.93 ]
  store i32 %cond95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.96:                                        ; preds = %do.body.77
  br label %do.body.97

do.body.97:                                       ; preds = %if.end.96
  %64 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %pfile99 = bitcast %union.v* %value98 to %struct.stream_s**
  %65 = load %struct.stream_s*, %struct.stream_s** %pfile99, align 8, !tbaa !1
  store %struct.stream_s* %65, %struct.stream_s** %s, align 8, !tbaa !1
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id100 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 19
  %67 = load i16, i16* %read_id100, align 2, !tbaa !77
  %conv101 = zext i16 %67 to i32
  %68 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %tas102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %rsize103 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas102, i32 0, i32 2
  %69 = load i32, i32* %rsize103, align 4, !tbaa !51
  %cmp104 = icmp ne i32 %conv101, %69
  br i1 %cmp104, label %if.then.106, label %if.end.131

if.then.106:                                      ; preds = %do.body.97
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id107 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %70, i32 0, i32 19
  %71 = load i16, i16* %read_id107, align 2, !tbaa !77
  %conv108 = zext i16 %71 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.128

land.lhs.true.111:                                ; preds = %if.then.106
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id112 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 20
  %73 = load i16, i16* %write_id112, align 2, !tbaa !82
  %conv113 = zext i16 %73 to i32
  %74 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %tas114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize115 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas114, i32 0, i32 2
  %75 = load i32, i32* %rsize115, align 4, !tbaa !51
  %cmp116 = icmp eq i32 %conv113, %75
  br i1 %cmp116, label %if.then.118, label %if.else.128

if.then.118:                                      ; preds = %land.lhs.true.111
  %76 = bitcast i32* %fcode119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %call120 = call i32 @file_switch_to_read(%struct.ref_s* %77) #5
  store i32 %call120, i32* %fcode119, align 4, !tbaa !35
  %78 = load i32, i32* %fcode119, align 4, !tbaa !35
  %cmp121 = icmp slt i32 %78, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.118
  %79 = load i32, i32* %fcode119, align 4, !tbaa !35
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.124:                                       ; preds = %if.then.118
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %if.then.123
  %80 = bitcast i32* %fcode119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %cleanup.dest.126 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.126, label %cleanup.376 [
    i32 0, label %cleanup.cont.127
  ]

cleanup.cont.127:                                 ; preds = %cleanup.125
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.111, %if.then.106
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream129 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 18
  %82 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream129, align 8, !tbaa !83
  store %struct.stream_s* %82, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %cleanup.cont.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %do.body.97
  br label %do.cond.132

do.cond.132:                                      ; preds = %if.end.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  br label %do.cond.134

do.cond.134:                                      ; preds = %do.end.133
  br label %do.end.135

do.end.135:                                       ; preds = %do.cond.134
  br label %if.end.136

if.end.136:                                       ; preds = %do.end.135, %if.end.73
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 1
  %84 = bitcast %struct.gs_dual_memory_s* %dmem to i8*
  %85 = bitcast %struct.gs_dual_memory_s* %memory137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 72, i32 8, i1 false), !tbaa.struct !84
  %86 = load i32, i32* %local.addr, align 4, !tbaa !35
  %tobool138 = icmp ne i32 %86, 0
  br i1 %tobool138, label %if.then.139, label %if.else.201

if.then.139:                                      ; preds = %if.end.136
  %87 = bitcast %struct.ref_s** %puserdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = bitcast i32* %userdict_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %spaces141 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory140, i32 0, i32 1
  %memories142 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces141, i32 0, i32 1
  %named143 = bitcast %union.anon* %memories142 to %struct._ssn*
  %local144 = getelementptr inbounds %struct._ssn, %struct._ssn* %named143, i32 0, i32 3
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local144, align 8, !tbaa !41
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !85
  store %struct.gs_memory_s* %92, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %93 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_ref_memory_s** %lmem_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call145 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct.ref_s** %puserdict) #5
  %cmp146 = icmp sle i32 %call145, 0
  br i1 %cmp146, label %if.then.154, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.139
  %96 = load %struct.ref_s*, %struct.ref_s** %puserdict, align 8, !tbaa !1
  %tas148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %type_attrs149 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas148, i32 0, i32 0
  %97 = bitcast i16* %type_attrs149 to i8*
  %arrayidx150 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx150, align 1, !tbaa !74
  %conv151 = zext i8 %98 to i32
  %cmp152 = icmp eq i32 %conv151, 2
  br i1 %cmp152, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %lor.lhs.false, %if.then.139
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.155:                                       ; preds = %lor.lhs.false
  %99 = load %struct.ref_s*, %struct.ref_s** %puserdict, align 8, !tbaa !1
  %100 = bitcast %struct.ref_s* %old_userdict to i8*
  %101 = bitcast %struct.ref_s* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false), !tbaa.struct !52
  %call156 = call i32 @dict_maxlength(%struct.ref_s* %old_userdict) #5
  store i32 %call156, i32* %userdict_size, align 4, !tbaa !35
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %spaces158 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory157, i32 0, i32 1
  %memories159 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces158, i32 0, i32 1
  %named160 = bitcast %union.anon* %memories159 to %struct._ssn*
  %local161 = getelementptr inbounds %struct._ssn, %struct._ssn* %named160, i32 0, i32 3
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local161, align 8, !tbaa !41
  %chunk_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %104, i32 0, i32 5
  %105 = load i32, i32* %chunk_size, align 4, !tbaa !86
  %call162 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %102, i32 %105) #5
  store %struct.gs_ref_memory_s* %call162, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 1
  %spaces164 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory163, i32 0, i32 1
  %memories165 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces164, i32 0, i32 1
  %named166 = bitcast %union.anon* %memories165 to %struct._ssn*
  %local167 = getelementptr inbounds %struct._ssn, %struct._ssn* %named166, i32 0, i32 3
  %108 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local167, align 8, !tbaa !41
  %chunk_size168 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %108, i32 0, i32 5
  %109 = load i32, i32* %chunk_size168, align 4, !tbaa !86
  %call169 = call %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %106, i32 %109) #5
  store %struct.gs_ref_memory_s* %call169, %struct.gs_ref_memory_s** %lmem_stable, align 8, !tbaa !1
  %110 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp170 = icmp eq %struct.gs_ref_memory_s* %110, null
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %if.end.155
  %111 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem_stable, align 8, !tbaa !1
  %cmp173 = icmp eq %struct.gs_ref_memory_s* %111, null
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %lor.lhs.false.172, %if.end.155
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %113 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %115 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem_stable, align 8, !tbaa !1
  %116 = bitcast %struct.gs_ref_memory_s* %115 to i8*
  call void %113(%struct.gs_memory_s* %114, i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #5
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs176 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %free_object177 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs176, i32 0, i32 2
  %118 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object177, align 8, !tbaa !76
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %120 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %121 = bitcast %struct.gs_ref_memory_s* %120 to i8*
  call void %118(%struct.gs_memory_s* %119, i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.178:                                       ; preds = %lor.lhs.false.172
  %122 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %122, i32 0, i32 7
  store i32 12, i32* %space, align 4, !tbaa !87
  %123 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem_stable, align 8, !tbaa !1
  %space179 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %123, i32 0, i32 7
  store i32 12, i32* %space179, align 4, !tbaa !87
  %124 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem_stable, align 8, !tbaa !1
  %125 = bitcast %struct.gs_ref_memory_s* %124 to %struct.gs_memory_s*
  %126 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %126, i32 0, i32 0
  store %struct.gs_memory_s* %125, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !88
  %127 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %spaces180 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %dmem, i32 0, i32 1
  %memories181 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces180, i32 0, i32 1
  %named182 = bitcast %union.anon* %memories181 to %struct._ssn*
  %local183 = getelementptr inbounds %struct._ssn, %struct._ssn* %named182, i32 0, i32 3
  store %struct.gs_ref_memory_s* %127, %struct.gs_ref_memory_s** %local183, align 8, !tbaa !41
  %128 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %129 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %129, i32 0, i32 0
  %call184 = call i32 @context_create(%struct.gs_scheduler_s* %128, %struct.gs_context_s** %pctx, %struct.gs_dual_memory_s* %dmem, %struct.gs_context_state_s* %state, i32 0) #5
  store i32 %call184, i32* %code, align 4, !tbaa !35
  %130 = load i32, i32* %code, align 4, !tbaa !35
  %cmp185 = icmp slt i32 %130, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.178
  %131 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %131, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.188:                                       ; preds = %if.end.178
  %132 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %133 = load i32, i32* %userdict_size, align 4, !tbaa !35
  %call189 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %132, i32 %133, %struct.ref_s* %new_userdict) #5
  store i32 %call189, i32* %code, align 4, !tbaa !35
  %134 = load i32, i32* %code, align 4, !tbaa !35
  %cmp190 = icmp slt i32 %134, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.188
  %135 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @context_destroy(%struct.gs_context_s* %135) #5
  %136 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.193:                                       ; preds = %if.end.188
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.194

cleanup.194:                                      ; preds = %if.end.193, %if.then.192, %if.then.187, %if.then.175, %if.then.154
  %137 = bitcast %struct.gs_ref_memory_s** %lmem_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i32* %userdict_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast %struct.ref_s** %puserdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %cleanup.dest.199 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.199, label %cleanup.376 [
    i32 0, label %cleanup.cont.200
  ]

cleanup.cont.200:                                 ; preds = %cleanup.194
  br label %if.end.261

if.else.201:                                      ; preds = %if.end.136
  %142 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %143 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %state202 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %143, i32 0, i32 0
  %call203 = call i32 @context_create(%struct.gs_scheduler_s* %142, %struct.gs_context_s** %pctx, %struct.gs_dual_memory_s* %dmem, %struct.gs_context_state_s* %state202, i32 0) #5
  store i32 %call203, i32* %code, align 4, !tbaa !35
  %144 = load i32, i32* %code, align 4, !tbaa !35
  %cmp204 = icmp slt i32 %144, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.else.201
  %145 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.207:                                       ; preds = %if.else.201
  %146 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = bitcast %struct.gs_state_s** %old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  %148 = bitcast %struct.gs_state_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  store i32 0, i32* %n, align 4, !tbaa !35
  %149 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %149, i32 0, i32 0
  %150 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !68
  store %struct.gs_state_s* %150, %struct.gs_state_s** %old, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.207
  %151 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %cmp208 = icmp ne %struct.gs_state_s* %151, null
  br i1 %cmp208, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %152 = load i32, i32* %n, align 4, !tbaa !35
  %inc = add nsw i32 %152, 1
  store i32 %inc, i32* %n, align 4, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %153 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %call210 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %153) #5
  store %struct.gs_state_s* %call210, %struct.gs_state_s** %old, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %154 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state211 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %154, i32 0, i32 0
  %pgs212 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state211, i32 0, i32 0
  %155 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs212, align 8, !tbaa !89
  store %struct.gs_state_s* %155, %struct.gs_state_s** %old, align 8, !tbaa !1
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.217, %for.end
  %156 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %cmp214 = icmp ne %struct.gs_state_s* %156, null
  br i1 %cmp214, label %for.body.216, label %for.end.219

for.body.216:                                     ; preds = %for.cond.213
  %157 = load i32, i32* %n, align 4, !tbaa !35
  %dec = add nsw i32 %157, -1
  store i32 %dec, i32* %n, align 4, !tbaa !35
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.216
  %158 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %call218 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %158) #5
  store %struct.gs_state_s* %call218, %struct.gs_state_s** %old, align 8, !tbaa !1
  br label %for.cond.213

for.end.219:                                      ; preds = %for.cond.213
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.229, %for.end.219
  %159 = load i32, i32* %n, align 4, !tbaa !35
  %cmp221 = icmp sgt i32 %159, 0
  br i1 %cmp221, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.220
  %160 = load i32, i32* %code, align 4, !tbaa !35
  %cmp223 = icmp sge i32 %160, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.220
  %161 = phi i1 [ false, %for.cond.220 ], [ %cmp223, %land.rhs ]
  br i1 %161, label %for.body.225, label %for.end.231

for.body.225:                                     ; preds = %land.end
  %162 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state226 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %162, i32 0, i32 0
  %pgs227 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state226, i32 0, i32 0
  %163 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs227, align 8, !tbaa !89
  %call228 = call i32 @gs_gsave(%struct.gs_state_s* %163) #5
  store i32 %call228, i32* %code, align 4, !tbaa !35
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.225
  %164 = load i32, i32* %n, align 4, !tbaa !35
  %dec230 = add nsw i32 %164, -1
  store i32 %dec230, i32* %n, align 4, !tbaa !35
  br label %for.cond.220

for.end.231:                                      ; preds = %land.end
  %165 = load i32, i32* %code, align 4, !tbaa !35
  %cmp232 = icmp slt i32 %165, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %for.end.231
  %166 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.235:                                       ; preds = %for.end.231
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs236 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %167, i32 0, i32 0
  %168 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs236, align 8, !tbaa !68
  store %struct.gs_state_s* %168, %struct.gs_state_s** %old, align 8, !tbaa !1
  %169 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state237 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %169, i32 0, i32 0
  %pgs238 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state237, i32 0, i32 0
  %170 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs238, align 8, !tbaa !89
  store %struct.gs_state_s* %170, %struct.gs_state_s** %new, align 8, !tbaa !1
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.248, %if.end.235
  %171 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %cmp240 = icmp ne %struct.gs_state_s* %171, null
  br i1 %cmp240, label %land.rhs.242, label %land.end.245

land.rhs.242:                                     ; preds = %for.cond.239
  %172 = load i32, i32* %code, align 4, !tbaa !35
  %cmp243 = icmp sge i32 %172, 0
  br label %land.end.245

land.end.245:                                     ; preds = %land.rhs.242, %for.cond.239
  %173 = phi i1 [ false, %for.cond.239 ], [ %cmp243, %land.rhs.242 ]
  br i1 %173, label %for.body.246, label %for.end.251

for.body.246:                                     ; preds = %land.end.245
  %174 = load %struct.gs_state_s*, %struct.gs_state_s** %new, align 8, !tbaa !1
  %175 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %call247 = call i32 @gs_setgstate(%struct.gs_state_s* %174, %struct.gs_state_s* %175) #5
  store i32 %call247, i32* %code, align 4, !tbaa !35
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.246
  %176 = load %struct.gs_state_s*, %struct.gs_state_s** %old, align 8, !tbaa !1
  %call249 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %176) #5
  store %struct.gs_state_s* %call249, %struct.gs_state_s** %old, align 8, !tbaa !1
  %177 = load %struct.gs_state_s*, %struct.gs_state_s** %new, align 8, !tbaa !1
  %call250 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %177) #5
  store %struct.gs_state_s* %call250, %struct.gs_state_s** %new, align 8, !tbaa !1
  br label %for.cond.239

for.end.251:                                      ; preds = %land.end.245
  %178 = load i32, i32* %code, align 4, !tbaa !35
  %cmp252 = icmp slt i32 %178, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %for.end.251
  %179 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %179, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.255:                                       ; preds = %for.end.251
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.256

cleanup.256:                                      ; preds = %if.end.255, %if.then.254, %if.then.234
  %180 = bitcast %struct.gs_state_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gs_state_s** %old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %cleanup.dest.259 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.259, label %cleanup.376 [
    i32 0, label %cleanup.cont.260
  ]

cleanup.cont.260:                                 ; preds = %cleanup.256
  br label %if.end.261

if.end.261:                                       ; preds = %cleanup.cont.260, %cleanup.cont.200
  %183 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state262 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %183, i32 0, i32 0
  %call263 = call i32 @zcontext_init(%struct.gs_context_state_s* %state262) #5
  %184 = load i32, i32* @reschedule_interval, align 4, !tbaa !35
  store i32 %184, i32* %interval, align 4, !tbaa !35
  %185 = load i32, i32* %interval, align 4, !tbaa !35
  %cmp264 = icmp slt i32 %185, 100
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.261
  store i32 250, i32* %interval, align 4, !tbaa !35
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.end.261
  %186 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state268 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %186, i32 0, i32 0
  %reschedule_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state268, i32 0, i32 23
  store i32 (%struct.gs_context_state_s**)* @ctx_reschedule, i32 (%struct.gs_context_state_s**)** %reschedule_proc, align 8, !tbaa !90
  %187 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state269 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %187, i32 0, i32 0
  %time_slice_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state269, i32 0, i32 21
  store i32 (%struct.gs_context_state_s**)* @ctx_time_slice, i32 (%struct.gs_context_state_s**)** %time_slice_proc, align 8, !tbaa !91
  %188 = load i32, i32* %interval, align 4, !tbaa !35
  %189 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state270 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %189, i32 0, i32 0
  %time_slice_ticks = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state270, i32 0, i32 22
  store i32 %188, i32* %time_slice_ticks, align 4, !tbaa !92
  %190 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state271 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %190, i32 0, i32 0
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state271, i32 0, i32 19
  %191 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_global272 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %191, i32 0, i32 19
  %192 = bitcast %struct.op_array_table_s* %op_array_table_global to i8*
  %193 = bitcast %struct.op_array_table_s* %op_array_table_global272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 40, i32 8, i1 false), !tbaa.struct !93
  %194 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state273 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %194, i32 0, i32 0
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state273, i32 0, i32 20
  %195 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_array_table_local274 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %195, i32 0, i32 20
  %196 = bitcast %struct.op_array_table_s* %op_array_table_local to i8*
  %197 = bitcast %struct.op_array_table_s* %op_array_table_local274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* %197, i64 40, i32 8, i1 false), !tbaa.struct !93
  %198 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %198, i32 0, i32 2
  %199 = load i32, i32* %language_level, align 4, !tbaa !94
  %200 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state275 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %200, i32 0, i32 0
  %language_level276 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state275, i32 0, i32 2
  store i32 %199, i32* %language_level276, align 4, !tbaa !95
  %201 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack277 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %201, i32 0, i32 24
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack277, i32 0, i32 1
  %202 = load i32, i32* %min_size, align 4, !tbaa !67
  %203 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state278 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %203, i32 0, i32 0
  %dict_stack279 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state278, i32 0, i32 24
  %min_size280 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack279, i32 0, i32 1
  store i32 %202, i32* %min_size280, align 4, !tbaa !96
  %204 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack281 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %204, i32 0, i32 24
  %userdict_index = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack281, i32 0, i32 2
  %205 = load i32, i32* %userdict_index, align 4, !tbaa !97
  %206 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state282 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %206, i32 0, i32 0
  %dict_stack283 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state282, i32 0, i32 24
  %userdict_index284 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack283, i32 0, i32 2
  store i32 %205, i32* %userdict_index284, align 4, !tbaa !98
  %207 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state285 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %207, i32 0, i32 0
  %stdio286 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state285, i32 0, i32 17
  %arrayidx287 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio286, i32 0, i64 0
  %208 = load %struct.ref_s*, %struct.ref_s** %pstdin.addr, align 8, !tbaa !1
  %209 = bitcast %struct.ref_s* %arrayidx287 to i8*
  %210 = bitcast %struct.ref_s* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %210, i64 16, i32 8, i1 false), !tbaa.struct !52
  %211 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state288 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %211, i32 0, i32 0
  %stdio289 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state288, i32 0, i32 17
  %arrayidx290 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio289, i32 0, i64 1
  %212 = load %struct.ref_s*, %struct.ref_s** %pstdout.addr, align 8, !tbaa !1
  %213 = bitcast %struct.ref_s* %arrayidx290 to i8*
  %214 = bitcast %struct.ref_s* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 16, i32 8, i1 false), !tbaa.struct !52
  %215 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state291 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %215, i32 0, i32 0
  %stdio292 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state291, i32 0, i32 17
  %arrayidx293 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio292, i32 0, i64 2
  %216 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %state294 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %216, i32 0, i32 0
  %stdio295 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state294, i32 0, i32 17
  %arrayidx296 = getelementptr inbounds [3 x %struct.ref_s], [3 x %struct.ref_s]* %stdio295, i32 0, i64 2
  %217 = bitcast %struct.ref_s* %arrayidx293 to i8*
  %218 = bitcast %struct.ref_s* %arrayidx296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 16, i32 8, i1 false), !tbaa.struct !52
  %219 = bitcast %struct.ref_stack_s** %dstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  %220 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state297 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %220, i32 0, i32 0
  %dict_stack298 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state297, i32 0, i32 24
  %221 = bitcast %struct.dict_stack_s* %dict_stack298 to %struct.ref_stack_s*
  store %struct.ref_stack_s* %221, %struct.ref_stack_s** %dstack, align 8, !tbaa !1
  %222 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  %223 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack299 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %223, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack299, i32 0, i32 0
  %call300 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack) #5
  store i32 %call300, i32* %count, align 4, !tbaa !35
  %224 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = load i32, i32* %local.addr, align 4, !tbaa !35
  %tobool301 = icmp ne i32 %225, 0
  br i1 %tobool301, label %cond.true.302, label %cond.false.305

cond.true.302:                                    ; preds = %if.end.267
  %226 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack303 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %226, i32 0, i32 24
  %min_size304 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack303, i32 0, i32 1
  %227 = load i32, i32* %min_size304, align 4, !tbaa !67
  br label %cond.end.306

cond.false.305:                                   ; preds = %if.end.267
  %228 = load i32, i32* %count, align 4, !tbaa !35
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.305, %cond.true.302
  %cond307 = phi i32 [ %227, %cond.true.302 ], [ %228, %cond.false.305 ]
  store i32 %cond307, i32* %copy, align 4, !tbaa !35
  %229 = load %struct.ref_stack_s*, %struct.ref_stack_s** %dstack, align 8, !tbaa !1
  %230 = load i32, i32* %copy, align 4, !tbaa !35
  %call308 = call i32 @ref_stack_push(%struct.ref_stack_s* %229, i32 %230) #5
  %231 = load %struct.ref_stack_s*, %struct.ref_stack_s** %dstack, align 8, !tbaa !1
  %232 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack309 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %232, i32 0, i32 24
  %stack310 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack309, i32 0, i32 0
  %233 = load i32, i32* %copy, align 4, !tbaa !35
  %234 = load i32, i32* %count, align 4, !tbaa !35
  %235 = load i32, i32* %copy, align 4, !tbaa !35
  %sub = sub i32 %234, %235
  call void @stack_copy(%struct.ref_stack_s* %231, %struct.ref_stack_s* %stack310, i32 %233, i32 %sub) #5
  %236 = load i32, i32* %local.addr, align 4, !tbaa !35
  %tobool311 = icmp ne i32 %236, 0
  br i1 %tobool311, label %if.then.312, label %if.end.327

if.then.312:                                      ; preds = %cond.end.306
  %237 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %237) #1
  store i64 0, i64* %i, align 8, !tbaa !33
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.324, %if.then.312
  %238 = load i64, i64* %i, align 8, !tbaa !33
  %239 = load i32, i32* %copy, align 4, !tbaa !35
  %conv314 = zext i32 %239 to i64
  %cmp315 = icmp slt i64 %238, %conv314
  br i1 %cmp315, label %for.body.317, label %for.end.326

for.body.317:                                     ; preds = %for.cond.313
  %240 = bitcast %struct.ref_s** %pdref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  %241 = load %struct.ref_stack_s*, %struct.ref_stack_s** %dstack, align 8, !tbaa !1
  %242 = load i64, i64* %i, align 8, !tbaa !33
  %call318 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %241, i64 %242) #5
  store %struct.ref_s* %call318, %struct.ref_s** %pdref, align 8, !tbaa !1
  %243 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory319 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %243, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory319, i32 0, i32 0
  %244 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %245 = bitcast %struct.gs_ref_memory_s* %244 to %struct.gs_memory_s*
  %246 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8, !tbaa !1
  %call320 = call i32 @obj_eq(%struct.gs_memory_s* %245, %struct.ref_s* %246, %struct.ref_s* %old_userdict) #5
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %for.body.317
  %247 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8, !tbaa !1
  %248 = bitcast %struct.ref_s* %247 to i8*
  %249 = bitcast %struct.ref_s* %new_userdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* %249, i64 16, i32 8, i1 false), !tbaa.struct !52
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %for.body.317
  %250 = bitcast %struct.ref_s** %pdref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  br label %for.inc.324

for.inc.324:                                      ; preds = %if.end.323
  %251 = load i64, i64* %i, align 8, !tbaa !33
  %inc325 = add nsw i64 %251, 1
  store i64 %inc325, i64* %i, align 8, !tbaa !33
  br label %for.cond.313

for.end.326:                                      ; preds = %for.cond.313
  %252 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  br label %if.end.327

if.end.327:                                       ; preds = %for.end.326, %cond.end.306
  %253 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast %struct.ref_stack_s** %dstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast %struct.ref_stack_s** %estack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  %257 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state328 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %257, i32 0, i32 0
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state328, i32 0, i32 25
  %258 = bitcast %struct.exec_stack_s* %exec_stack to %struct.ref_stack_s*
  store %struct.ref_stack_s* %258, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %259 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %call329 = call i32 @ref_stack_push(%struct.ref_stack_s* %259, i32 3) #5
  %260 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %260, i32 0, i32 0
  %261 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !99
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %261, i64 -2
  %value330 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %opproc = bitcast %union.v* %value330 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @fork_done_with_error, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %262 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p331 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %262, i32 0, i32 0
  %263 = load %struct.ref_s*, %struct.ref_s** %p331, align 8, !tbaa !99
  %add.ptr332 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %263, i64 -2
  %tas333 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr332, i32 0, i32 0
  %type_attrs334 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas333, i32 0, i32 0
  store i16 3712, i16* %type_attrs334, align 2, !tbaa !30
  %264 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p335 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %264, i32 0, i32 0
  %265 = load %struct.ref_s*, %struct.ref_s** %p335, align 8, !tbaa !99
  %add.ptr336 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %265, i64 -2
  %tas337 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr336, i32 0, i32 0
  %rsize338 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas337, i32 0, i32 2
  store i32 0, i32* %rsize338, align 4, !tbaa !51
  %266 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p339 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %266, i32 0, i32 0
  %267 = load %struct.ref_s*, %struct.ref_s** %p339, align 8, !tbaa !99
  %add.ptr340 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %267, i64 -1
  %value341 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr340, i32 0, i32 1
  %opproc342 = bitcast %union.v* %value341 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @fork_done, i32 (%struct.gs_context_state_s*)** %opproc342, align 8, !tbaa !1
  %268 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p343 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %268, i32 0, i32 0
  %269 = load %struct.ref_s*, %struct.ref_s** %p343, align 8, !tbaa !99
  %add.ptr344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %269, i64 -1
  %tas345 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr344, i32 0, i32 0
  %type_attrs346 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas345, i32 0, i32 0
  store i16 3968, i16* %type_attrs346, align 2, !tbaa !30
  %270 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p347 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %270, i32 0, i32 0
  %271 = load %struct.ref_s*, %struct.ref_s** %p347, align 8, !tbaa !99
  %add.ptr348 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %271, i64 -1
  %tas349 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr348, i32 0, i32 0
  %rsize350 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas349, i32 0, i32 2
  store i32 0, i32* %rsize350, align 4, !tbaa !51
  %272 = load %struct.ref_stack_s*, %struct.ref_stack_s** %estack, align 8, !tbaa !1
  %p351 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %272, i32 0, i32 0
  %273 = load %struct.ref_s*, %struct.ref_s** %p351, align 8, !tbaa !99
  %274 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %275 = bitcast %struct.ref_s* %273 to i8*
  %276 = bitcast %struct.ref_s* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %275, i8* %276, i64 16, i32 8, i1 false), !tbaa.struct !52
  %277 = bitcast %struct.ref_stack_s** %estack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast %struct.ref_stack_s** %ostack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  %279 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state352 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %279, i32 0, i32 0
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state352, i32 0, i32 26
  %280 = bitcast %struct.op_stack_s* %op_stack to %struct.ref_stack_s*
  store %struct.ref_stack_s* %280, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %281 = bitcast i32* %count353 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  %282 = load i32, i32* %mcount.addr, align 4, !tbaa !35
  %sub354 = sub i32 %282, 2
  store i32 %sub354, i32* %count353, align 4, !tbaa !35
  %283 = load %struct.ref_stack_s*, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %284 = load i32, i32* %count353, align 4, !tbaa !35
  %call355 = call i32 @ref_stack_push(%struct.ref_stack_s* %283, i32 %284) #5
  %285 = load %struct.ref_stack_s*, %struct.ref_stack_s** %ostack, align 8, !tbaa !1
  %286 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack356 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %286, i32 0, i32 26
  %stack357 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack356, i32 0, i32 0
  %287 = load i32, i32* %count353, align 4, !tbaa !35
  %288 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack358 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %288, i32 0, i32 26
  %stack359 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack358, i32 0, i32 0
  %p360 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack359, i32 0, i32 0
  %289 = load %struct.ref_s*, %struct.ref_s** %p360, align 8, !tbaa !5
  %290 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %289 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %290 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %conv361 = trunc i64 %add to i32
  call void @stack_copy(%struct.ref_stack_s* %285, %struct.ref_stack_s* %stack357, i32 %287, i32 %conv361) #5
  %291 = bitcast i32* %count353 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast %struct.ref_stack_s** %ostack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state362 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %293, i32 0, i32 0
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state362, i32 0, i32 4
  %294 = load %struct.gs_context_s*, %struct.gs_context_s** %pcur, align 8, !tbaa !1
  %state363 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %294, i32 0, i32 0
  %binary_object_format364 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state363, i32 0, i32 4
  %295 = bitcast %struct.ref_s* %binary_object_format to i8*
  %296 = bitcast %struct.ref_s* %binary_object_format364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %295, i8* %296, i64 16, i32 8, i1 false), !tbaa.struct !52
  %297 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %298 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %298, i32 0, i32 2
  %299 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %297, %struct.ctx_list_s* %active, %struct.gs_context_s* %299) #5
  %300 = load i32, i32* %mcount.addr, align 4, !tbaa !35
  %sub365 = sub i32 %300, 1
  %301 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack366 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %301, i32 0, i32 26
  %stack367 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack366, i32 0, i32 0
  %p368 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack367, i32 0, i32 0
  %302 = load %struct.ref_s*, %struct.ref_s** %p368, align 8, !tbaa !5
  %idx.ext = zext i32 %sub365 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr369 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %302, i64 %idx.neg
  store %struct.ref_s* %add.ptr369, %struct.ref_s** %p368, align 8, !tbaa !5
  %303 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack370 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %303, i32 0, i32 26
  %stack371 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack370, i32 0, i32 0
  %p372 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack371, i32 0, i32 0
  %304 = load %struct.ref_s*, %struct.ref_s** %p372, align 8, !tbaa !5
  store %struct.ref_s* %304, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %305 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %305, i32 0, i32 3
  %306 = load i64, i64* %index, align 8, !tbaa !31
  %307 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value373 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %307, i32 0, i32 1
  %intval = bitcast %union.v* %value373 to i64*
  store i64 %306, i64* %intval, align 8, !tbaa !33
  %308 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas374 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %308, i32 0, i32 0
  %type_attrs375 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas374, i32 0, i32 0
  store i16 2816, i16* %type_attrs375, align 2, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

cleanup.376:                                      ; preds = %if.end.327, %cleanup.256, %if.then.206, %cleanup.194, %cleanup.125, %cond.end.94, %if.then.72, %cleanup, %cond.end, %if.then.14, %if.then.3, %if.then
  %309 = bitcast i32* %interval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast %struct.ref_s* %new_userdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %311) #1
  %312 = bitcast %struct.ref_s* %old_userdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %312) #1
  %313 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast %struct.gs_dual_memory_s* %dmem to i8*
  call void @llvm.lifetime.end(i64 72, i8* %314) #1
  %315 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast %struct.gs_context_s** %pcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = load i32, i32* %retval
  ret i32 %318
}

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @zget_stdout(%struct.gs_context_state_s*, %struct.stream_s**) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

declare i32 @zget_stdin(%struct.gs_context_state_s*, %struct.stream_s**) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_maxlength(%struct.ref_s*) #2

declare %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @context_create(%struct.gs_scheduler_s* %psched, %struct.gs_context_s** %ppctx, %struct.gs_dual_memory_s* %dmem, %struct.gs_context_state_s* %i_ctx_p, i32 %copy_state) #0 {
entry:
  %retval = alloca i32, align 4
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %ppctx.addr = alloca %struct.gs_context_s**, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %copy_state.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %code = alloca i32, align 4
  %ctx_index = alloca i64, align 8
  %pte = alloca %struct.gs_context_s**, align 8
  %slice_ref = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pctx_st = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.gs_context_s** %ppctx, %struct.gs_context_s*** %ppctx.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %copy_state, i32* %copy_state.addr, align 4, !tbaa !35
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %4 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !100
  %5 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %5, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %local4 = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 3
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local4, align 8, !tbaa !41
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call %struct.gs_memory_s* %4(%struct.gs_memory_s* %7) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i64* %ctx_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_context_s*** %pte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.ref_s** %slice_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !20
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call6 = call i8* %14(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_context, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #5
  %16 = bitcast i8* %call6 to %struct.gs_context_s*
  store %struct.gs_context_s* %16, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %17 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_context_s* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %copy_state.addr, align 4, !tbaa !35
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %19, i32 0, i32 0
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_context_state_s* %state to i8*
  %22 = bitcast %struct.gs_context_state_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 728, i32 8, i1 false), !tbaa.struct !101
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %23 = bitcast %struct.gs_context_state_s** %pctx_st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state8 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %24, i32 0, i32 0
  store %struct.gs_context_state_s* %state8, %struct.gs_context_state_s** %pctx_st, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %26 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %call9 = call i32 @context_state_alloc(%struct.gs_context_state_s** %pctx_st, %struct.ref_s* %system_dict, %struct.gs_dual_memory_s* %26) #5
  store i32 %call9, i32* %code, align 4, !tbaa !35
  %27 = load i32, i32* %code, align 4, !tbaa !35
  %cmp10 = icmp slt i32 %27, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %31 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %32 = bitcast %struct.gs_context_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #5
  %33 = load i32, i32* %code, align 4, !tbaa !35
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11
  %34 = bitcast %struct.gs_context_state_s** %pctx_st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %if.then.7
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 24
  %system_dict16 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack15, i32 0, i32 7
  %call17 = call i32 @dict_find_string(%struct.ref_s* %system_dict16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %slice_ref) #5
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  %36 = load %struct.ref_s*, %struct.ref_s** %slice_ref, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %37 = load i64, i64* %intval, align 8, !tbaa !33
  %conv = trunc i64 %37 to i32
  store i32 %conv, i32* @reschedule_interval, align 4, !tbaa !35
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.14
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call21 = call i64 @gs_next_ids(%struct.gs_memory_s* %38, i32 1) #5
  store i64 %call21, i64* %ctx_index, align 8, !tbaa !33
  %39 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %40 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %40, i32 0, i32 1
  store %struct.gs_scheduler_s* %39, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %41 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %41, i32 0, i32 2
  store i32 0, i32* %status, align 4, !tbaa !38
  %42 = load i64, i64* %ctx_index, align 8, !tbaa !33
  %43 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %43, i32 0, i32 3
  store i64 %42, i64* %index, align 8, !tbaa !31
  %44 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %detach = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %44, i32 0, i32 4
  store i32 0, i32* %detach, align 4, !tbaa !37
  %45 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %saved_local_vm = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %45, i32 0, i32 5
  store i32 0, i32* %saved_local_vm, align 4, !tbaa !102
  %46 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %46, i32 0, i32 6
  store i32 1, i32* %visible, align 4, !tbaa !103
  %47 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %47, i32 0, i32 7
  store i64 0, i64* %next_index, align 8, !tbaa !70
  %48 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %joiner_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %48, i32 0, i32 8
  store i64 0, i64* %joiner_index, align 8, !tbaa !36
  %49 = load i64, i64* %ctx_index, align 8, !tbaa !33
  %rem = srem i64 %49, 19
  %50 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %50, i32 0, i32 5
  %arrayidx = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %rem
  store %struct.gs_context_s** %arrayidx, %struct.gs_context_s*** %pte, align 8, !tbaa !1
  %51 = load %struct.gs_context_s**, %struct.gs_context_s*** %pte, align 8, !tbaa !1
  %52 = load %struct.gs_context_s*, %struct.gs_context_s** %51, align 8, !tbaa !1
  %53 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %53, i32 0, i32 9
  store %struct.gs_context_s* %52, %struct.gs_context_s** %table_next, align 8, !tbaa !75
  %54 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %55 = load %struct.gs_context_s**, %struct.gs_context_s*** %pte, align 8, !tbaa !1
  store %struct.gs_context_s* %54, %struct.gs_context_s** %55, align 8, !tbaa !1
  %56 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %57 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %56, %struct.gs_context_s** %57, align 8, !tbaa !1
  %call22 = call i32 @gs_debug_c(i32 39) #5
  %call23 = call i32 @gs_debug_c(i32 34) #5
  %or = or i32 %call22, %call23
  %tobool24 = icmp ne i32 %or, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.20
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 1211) #5
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 1
  %current27 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 0
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current27, align 8, !tbaa !19
  %63 = bitcast %struct.gs_ref_memory_s* %62 to %struct.gs_memory_s*
  %64 = load i64, i64* %ctx_index, align 8, !tbaa !33
  %65 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %66 = ptrtoint %struct.gs_context_s* %65 to i64
  %call28 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i64 %64, i64 %66) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %cleanup, %if.then
  %67 = bitcast %struct.ref_s** %slice_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_context_s*** %pte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i64* %ctx_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #2

declare %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s*) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setgstate(%struct.gs_state_s*, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ctx_reschedule(%struct.gs_context_state_s** %pi_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %current = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %dead = alloca %struct.gs_context_s*, align 8
  %next_index = alloca i64, align 8
  %prev = alloca %struct.gs_context_s*, align 8
  %ready = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  %next_index35 = alloca i64, align 8
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_state_s* %2 to %struct.gs_context_s*
  store %struct.gs_context_s* %3, %struct.gs_context_s** %current, align 8, !tbaa !1
  %4 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %5, i32 0, i32 1
  %6 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %6, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %7 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %7, i32 0, i32 4
  %8 = load i64, i64* %dead_index, align 8, !tbaa !69
  %cmp = icmp ne i64 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast %struct.gs_context_s** %dead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %11 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index1 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %11, i32 0, i32 4
  %12 = load i64, i64* %dead_index1, align 8, !tbaa !69
  %call = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %10, i64 %12) #5
  store %struct.gs_context_s* %call, %struct.gs_context_s** %dead, align 8, !tbaa !1
  %13 = bitcast i64* %next_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %dead, align 8, !tbaa !1
  %next_index2 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 7
  %15 = load i64, i64* %next_index2, align 8, !tbaa !70
  store i64 %15, i64* %next_index, align 8, !tbaa !33
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %17 = load %struct.gs_context_s*, %struct.gs_context_s** %dead, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_context_s* %16, %17
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %18, i32 0, i32 0
  %call4 = call i32 @context_state_store(%struct.gs_context_state_s* %state) #5
  store %struct.gs_context_s* null, %struct.gs_context_s** %current, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body
  %19 = load %struct.gs_context_s*, %struct.gs_context_s** %dead, align 8, !tbaa !1
  call void @context_destroy(%struct.gs_context_s* %19) #5
  %20 = load i64, i64* %next_index, align 8, !tbaa !33
  %21 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index5 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %21, i32 0, i32 4
  store i64 %20, i64* %dead_index5, align 8, !tbaa !69
  %22 = bitcast i64* %next_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_context_s** %dead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_context_s* %24, null
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %while.end
  %25 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %state8 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %25, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state8, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !41
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 28
  %27 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !104
  %cmp9 = icmp ne %struct.alloc_save_s* %27, null
  %conv = zext i1 %cmp9 to i32
  %28 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %saved_local_vm = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %28, i32 0, i32 5
  store i32 %conv, i32* %saved_local_vm, align 4, !tbaa !102
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %while.end
  %29 = bitcast %struct.gs_context_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store %struct.gs_context_s* null, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %30 = bitcast %struct.gs_context_s** %ready to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %32 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %32, i32 0, i32 2
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active, i32 0, i32 0
  %33 = load i64, i64* %head_index, align 8, !tbaa !63
  %call11 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %31, i64 %33) #5
  store %struct.gs_context_s* %call11, %struct.gs_context_s** %ready, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %34 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gs_context_s* %34, null
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %for.cond
  %35 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.gs_context_s* %35, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %36 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %37 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  call void @context_store(%struct.gs_scheduler_s* %36, %struct.gs_context_s* %37) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.14
  %call19 = call i8* @gs_program_name() #5
  %call20 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call19, i64 %call20) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 440) #5
  %call21 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #5
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.cond
  %38 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %state23 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %38, i32 0, i32 0
  %memory24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state23, i32 0, i32 1
  %spaces25 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory24, i32 0, i32 1
  %memories26 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces25, i32 0, i32 1
  %named27 = bitcast %union.anon* %memories26 to %struct._ssn*
  %local28 = getelementptr inbounds %struct._ssn, %struct._ssn* %named27, i32 0, i32 3
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local28, align 8, !tbaa !41
  %saved29 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %39, i32 0, i32 28
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved29, align 8, !tbaa !104
  %cmp30 = icmp ne %struct.alloc_save_s* %40, null
  br i1 %cmp30, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.22
  %41 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %saved_local_vm32 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %41, i32 0, i32 5
  %42 = load i32, i32* %saved_local_vm32, align 4, !tbaa !102
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.34:                                        ; preds = %land.lhs.true, %if.end.22
  %43 = bitcast i64* %next_index35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %next_index36 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %44, i32 0, i32 7
  %45 = load i64, i64* %next_index36, align 8, !tbaa !70
  store i64 %45, i64* %next_index35, align 8, !tbaa !33
  %46 = load %struct.gs_context_s*, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %tobool37 = icmp ne %struct.gs_context_s* %46, null
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  %47 = load i64, i64* %next_index35, align 8, !tbaa !33
  %48 = load %struct.gs_context_s*, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %next_index39 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %48, i32 0, i32 7
  store i64 %47, i64* %next_index39, align 8, !tbaa !70
  br label %if.end.42

if.else:                                          ; preds = %if.end.34
  %49 = load i64, i64* %next_index35, align 8, !tbaa !33
  %50 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active40 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %50, i32 0, i32 2
  %head_index41 = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active40, i32 0, i32 0
  store i64 %49, i64* %head_index41, align 8, !tbaa !63
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.38
  %51 = load i64, i64* %next_index35, align 8, !tbaa !33
  %tobool43 = icmp ne i64 %51, 0
  br i1 %tobool43, label %if.end.47, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %52 = load %struct.gs_context_s*, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %tobool45 = icmp ne %struct.gs_context_s* %52, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.44
  %53 = load %struct.gs_context_s*, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %53, i32 0, i32 3
  %54 = load i64, i64* %index, align 8, !tbaa !31
  br label %cond.end

cond.false:                                       ; preds = %if.then.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %54, %cond.true ], [ 0, %cond.false ]
  %55 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active46 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %55, i32 0, i32 2
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active46, i32 0, i32 1
  store i64 %cond, i64* %tail_index, align 8, !tbaa !105
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %if.end.42
  %56 = bitcast i64* %next_index35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  br label %for.end

for.inc:                                          ; preds = %if.then.33
  %57 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  store %struct.gs_context_s* %57, %struct.gs_context_s** %prev, align 8, !tbaa !1
  %58 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %59 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %next_index48 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %59, i32 0, i32 7
  %60 = load i64, i64* %next_index48, align 8, !tbaa !70
  %call49 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %58, i64 %60) #5
  store %struct.gs_context_s* %call49, %struct.gs_context_s** %ready, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.end.47
  %61 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %62 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp50 = icmp eq %struct.gs_context_s* %61, %62
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %for.end
  %63 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  %cmp54 = icmp ne %struct.gs_context_s* %63, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %64 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %65 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !1
  call void @context_store(%struct.gs_scheduler_s* %64, %struct.gs_context_s* %65) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %66 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %67 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current58 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %67, i32 0, i32 0
  store %struct.gs_context_s* %66, %struct.gs_context_s** %current58, align 8, !tbaa !61
  %68 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %69 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  call void @context_load(%struct.gs_scheduler_s* %68, %struct.gs_context_s* %69) #5
  %70 = load %struct.gs_context_s*, %struct.gs_context_s** %ready, align 8, !tbaa !1
  %state59 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %70, i32 0, i32 0
  %71 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %state59, %struct.gs_context_state_s** %71, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.52, %if.end.18
  %72 = bitcast %struct.gs_context_s** %ready to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_context_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %cleanup.cont, %cleanup
  %74 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_context_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @ctx_time_slice(%struct.gs_context_state_s** %pi_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %1, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_state_s* %2 to %struct.gs_context_s*
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %3, i32 0, i32 1
  %4 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %4, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %5, i32 0, i32 2
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active, i32 0, i32 0
  %6 = load i64, i64* %head_index, align 8, !tbaa !63
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* @reschedule_interval, align 4, !tbaa !35
  %cmp1 = icmp slt i32 %7, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active2 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %9, i32 0, i32 2
  %10 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %10, i32 0, i32 0
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !61
  call void @add_last(%struct.gs_scheduler_s* %8, %struct.ctx_list_s* %active2, %struct.gs_context_s* %11) #5
  %12 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @ctx_reschedule(%struct.gs_context_state_s** %12) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @stack_copy(%struct.ref_stack_s* %to, %struct.ref_stack_s* %from, i32 %count, i32 %from_index) #0 {
entry:
  %to.addr = alloca %struct.ref_stack_s*, align 8
  %from.addr = alloca %struct.ref_stack_s*, align 8
  %count.addr = alloca i32, align 4
  %from_index.addr = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.ref_stack_s* %to, %struct.ref_stack_s** %to.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %from, %struct.ref_stack_s** %from.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !35
  store i32 %from_index, i32* %from_index.addr, align 4, !tbaa !35
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !35
  %conv = zext i32 %1 to i64
  %sub = sub nsw i64 %conv, 1
  store i64 %sub, i64* %i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !tbaa !33
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %to.addr, align 8, !tbaa !1
  %4 = load i64, i64* %i, align 8, !tbaa !33
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %3, i64 %4) #5
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %from.addr, align 8, !tbaa !1
  %6 = load i64, i64* %i, align 8, !tbaa !33
  %7 = load i32, i32* %from_index.addr, align 4, !tbaa !35
  %conv2 = zext i32 %7 to i64
  %add = add nsw i64 %6, %conv2
  %call3 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %5, i64 %add) #5
  %8 = bitcast %struct.ref_s* %call to i8*
  %9 = bitcast %struct.ref_s* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !tbaa.struct !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8, !tbaa !33
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @fork_done_with_error(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @fork_done(%struct.gs_context_state_s* %0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @add_last(%struct.gs_scheduler_s* %psched, %struct.ctx_list_s* %pl, %struct.gs_context_s* %pc) #0 {
entry:
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %pl.addr = alloca %struct.ctx_list_s*, align 8
  %pc.addr = alloca %struct.gs_context_s*, align 8
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.ctx_list_s* %pl, %struct.ctx_list_s** %pl.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %pc, %struct.gs_context_s** %pc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_s*, %struct.gs_context_s** %pc.addr, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %0, i32 0, i32 7
  store i64 0, i64* %next_index, align 8, !tbaa !70
  %1 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pl.addr, align 8, !tbaa !1
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %1, i32 0, i32 0
  %2 = load i64, i64* %head_index, align 8, !tbaa !106
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_context_s*, %struct.gs_context_s** %pc.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %3, i32 0, i32 3
  %4 = load i64, i64* %index, align 8, !tbaa !31
  %5 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pl.addr, align 8, !tbaa !1
  %head_index1 = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %5, i32 0, i32 0
  store i64 %4, i64* %head_index1, align 8, !tbaa !106
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_context_s*, %struct.gs_context_s** %pc.addr, align 8, !tbaa !1
  %index2 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %6, i32 0, i32 3
  %7 = load i64, i64* %index2, align 8, !tbaa !31
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %9 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pl.addr, align 8, !tbaa !1
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %9, i32 0, i32 1
  %10 = load i64, i64* %tail_index, align 8, !tbaa !107
  %call = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %8, i64 %10) #5
  %next_index3 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %call, i32 0, i32 7
  store i64 %7, i64* %next_index3, align 8, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pc.addr, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %11, i32 0, i32 3
  %12 = load i64, i64* %index4, align 8, !tbaa !31
  %13 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pl.addr, align 8, !tbaa !1
  %tail_index5 = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %13, i32 0, i32 1
  store i64 %12, i64* %tail_index5, align 8, !tbaa !107
  ret void
}

declare i32 @context_state_alloc(%struct.gs_context_state_s**, %struct.ref_s*, %struct.gs_dual_memory_s*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @context_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %3 = load void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_context_state, i32 0, i32 3), align 8, !tbaa !108
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %5, i32 0, i32 0
  %6 = bitcast %struct.gs_context_state_s* %state to i8*
  call void %3(%struct.gs_memory_s* %4, i8* %6, i32 728, %struct.gs_memory_struct_type_s* @st_context_state) #5
  %7 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @context_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  %next = alloca %struct.gs_context_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store i32 %index, i32* %index.addr, align 4, !tbaa !35
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !35
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_context_state, i32 0, i32 4), align 8, !tbaa !110
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !35
  %8 = load i32, i32* %index.addr, align 4, !tbaa !35
  %sub = sub nsw i32 %8, 2
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_context_state, %struct.gc_state_s* %10) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %11, i32 0, i32 1
  %12 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %13 = bitcast %struct.gs_scheduler_s* %12 to i8*
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %13, i8** %ptr, align 8, !tbaa !111
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %15 = bitcast %struct.gs_context_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 9
  %17 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next, align 8, !tbaa !75
  store %struct.gs_context_s* %17, %struct.gs_context_s** %next, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.1
  %18 = load %struct.gs_context_s*, %struct.gs_context_s** %next, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_context_s* %18, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load %struct.gs_context_s*, %struct.gs_context_s** %next, align 8, !tbaa !1
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %19, i32 0, i32 6
  %20 = load i32, i32* %visible, align 4, !tbaa !103
  %tobool2 = icmp ne i32 %20, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct.gs_context_s*, %struct.gs_context_s** %next, align 8, !tbaa !1
  %table_next3 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %22, i32 0, i32 9
  %23 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next3, align 8, !tbaa !75
  store %struct.gs_context_s* %23, %struct.gs_context_s** %next, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load %struct.gs_context_s*, %struct.gs_context_s** %next, align 8, !tbaa !1
  %25 = bitcast %struct.gs_context_s* %24 to i8*
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %26, i32 0, i32 0
  store i8* %25, i8** %ptr4, align 8, !tbaa !111
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %27 = bitcast %struct.gs_context_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.bb, %sw.default
  %28 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %29
}

; Function Attrs: nounwind uwtable
define internal void @context_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_context_s*
  store %struct.gs_context_s* %2, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_context_state, i32 0, i32 5), align 8, !tbaa !113
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !35
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_context_state, %struct.gc_state_s* %6) #5
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_with_refs_s**
  %9 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !114
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %11, i32 0, i32 1
  %12 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %13 = bitcast %struct.gs_scheduler_s* %12 to i8*
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %13, %struct.gc_state_s* %14) #5
  %15 = bitcast i8* %call to %struct.gs_scheduler_s*
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %scheduler1 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %16, i32 0, i32 1
  store %struct.gs_scheduler_s* %15, %struct.gs_scheduler_s** %scheduler1, align 8, !tbaa !34
  %17 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

declare i32 @context_state_store(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @context_store(%struct.gs_scheduler_s* %psched, %struct.gs_context_s* %pctx) #0 {
entry:
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %pctx.addr = alloca %struct.gs_context_s*, align 8
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %pctx, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %0, i32 0, i32 0
  %call = call i32 @context_state_store(%struct.gs_context_state_s* %state) #5
  %1 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %1, i32 0, i32 0
  %keep_usertime = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state1, i32 0, i32 8
  %2 = load i32, i32* %keep_usertime, align 4, !tbaa !64
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call2 = call i64 @context_usertime() #5
  %3 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %usertime_initial = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %3, i32 0, i32 1
  %4 = load i64, i64* %usertime_initial, align 8, !tbaa !65
  %sub = sub nsw i64 %call2, %4
  %5 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state3 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %5, i32 0, i32 0
  %usertime_total = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state3, i32 0, i32 7
  %6 = load i64, i64* %usertime_total, align 8, !tbaa !66
  %add = add nsw i64 %6, %sub
  store i64 %add, i64* %usertime_total, align 8, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @lprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @context_load(%struct.gs_scheduler_s* %psched, %struct.gs_context_s* %pctx) #0 {
entry:
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %pctx.addr = alloca %struct.gs_context_s*, align 8
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %pctx, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %0, i32 0, i32 0
  %keep_usertime = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state, i32 0, i32 8
  %1 = load i32, i32* %keep_usertime, align 4, !tbaa !64
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call = call i64 @context_usertime() #5
  %2 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %usertime_initial = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %2, i32 0, i32 1
  store i64 %call, i64* %usertime_initial, align 8, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %3, i32 0, i32 0
  %call2 = call i32 @context_state_load(%struct.gs_context_state_s* %state1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @context_usertime() #0 {
entry:
  %secs_ns = alloca [2 x i64], align 16
  %0 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i32 0
  call void @gp_get_usertime(i64* %arraydecay) #5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !33
  %mul = mul nsw i64 %1, 1000
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %secs_ns, i32 0, i64 1
  %2 = load i64, i64* %arrayidx1, align 8, !tbaa !33
  %div = sdiv i64 %2, 1000000
  %add = add nsw i64 %mul, %div
  %3 = bitcast [2 x i64]* %secs_ns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %3) #1
  ret i64 %add
}

declare void @gp_get_usertime(i64*) #2

declare i32 @context_state_load(%struct.gs_context_state_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @reschedule_now(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 22
}

; Function Attrs: nounwind uwtable
define internal i32 @values_older_than(%struct.ref_stack_s* %pstack, i32 %first, i32 %last, i32 %next_space) #0 {
entry:
  %retval = alloca i32, align 4
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %next_space.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %first, i32* %first.addr, align 4, !tbaa !35
  store i32 %last, i32* %last.addr, align 4, !tbaa !35
  store i32 %next_space, i32* %next_space.addr, align 4, !tbaa !35
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %first.addr, align 4, !tbaa !35
  store i32 %1, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !35
  %3 = load i32, i32* %last.addr, align 4, !tbaa !35
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !35
  %conv = zext i32 %5 to i64
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %4, i64 %conv) #5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !30
  %conv1 = zext i16 %6 to i32
  %and = and i32 %conv1, 12
  %7 = load i32, i32* %next_space.addr, align 4, !tbaa !35
  %cmp2 = icmp uge i32 %and, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @lock_acquire(%struct.ref_s* %op, %struct.gs_context_s* %pctx) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pctx.addr = alloca %struct.gs_context_s*, align 8
  %plock = alloca %struct.gs_lock_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_context_s* %pctx, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %2 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s* %2 to %struct.gs_lock_s*
  store %struct.gs_lock_s* %3, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %4 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %4, i32 0, i32 1
  %5 = load i64, i64* %holder_index, align 8, !tbaa !56
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %6, i32 0, i32 3
  %7 = load i64, i64* %index, align 8, !tbaa !31
  %8 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index1 = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %8, i32 0, i32 1
  store i64 %7, i64* %holder_index1, align 8, !tbaa !56
  %9 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %9, i32 0, i32 1
  %10 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %11 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %scheduler2 = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %11, i32 0, i32 2
  store %struct.gs_scheduler_s* %10, %struct.gs_scheduler_s** %scheduler2, align 8, !tbaa !116
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %scheduler3 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %12, i32 0, i32 1
  %13 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler3, align 8, !tbaa !34
  %14 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %14, i32 0, i32 0
  %15 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %13, %struct.ctx_list_s* %waiting, %struct.gs_context_s* %15) #5
  store i32 22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @activate_waiting(%struct.gs_scheduler_s* %psched, %struct.ctx_list_s* %pcl) #0 {
entry:
  %psched.addr = alloca %struct.gs_scheduler_s*, align 8
  %pcl.addr = alloca %struct.ctx_list_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %next = alloca %struct.gs_context_s*, align 8
  store %struct.gs_scheduler_s* %psched, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  store %struct.ctx_list_s* %pcl, %struct.ctx_list_s** %pcl.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %2 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pcl.addr, align 8, !tbaa !1
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %2, i32 0, i32 0
  %3 = load i64, i64* %head_index, align 8, !tbaa !106
  %call = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %1, i64 %3) #5
  store %struct.gs_context_s* %call, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %4 = bitcast %struct.gs_context_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_context_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %7, i32 0, i32 7
  %8 = load i64, i64* %next_index, align 8, !tbaa !70
  %call1 = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %6, i64 %8) #5
  store %struct.gs_context_s* %call1, %struct.gs_context_s** %next, align 8, !tbaa !1
  %9 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %10 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched.addr, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %10, i32 0, i32 2
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  call void @add_last(%struct.gs_scheduler_s* %9, %struct.ctx_list_s* %active, %struct.gs_context_s* %11) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %next, align 8, !tbaa !1
  store %struct.gs_context_s* %12, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pcl.addr, align 8, !tbaa !1
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %13, i32 0, i32 1
  store i64 0, i64* %tail_index, align 8, !tbaa !107
  %14 = load %struct.ctx_list_s*, %struct.ctx_list_s** %pcl.addr, align 8, !tbaa !1
  %head_index2 = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %14, i32 0, i32 0
  store i64 0, i64* %head_index2, align 8, !tbaa !106
  %15 = bitcast %struct.gs_context_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lock_release(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %plock = alloca %struct.gs_lock_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %2 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s* %2 to %struct.gs_lock_s*
  store %struct.gs_lock_s* %3, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %4 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %5, i32 0, i32 2
  %6 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !116
  store %struct.gs_scheduler_s* %6, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %7 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %9 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %9, i32 0, i32 1
  %10 = load i64, i64* %holder_index, align 8, !tbaa !56
  %call = call %struct.gs_context_s* @index_context(%struct.gs_scheduler_s* %8, i64 %10) #5
  store %struct.gs_context_s* %call, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_context_s* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %13 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %13, i32 0, i32 0
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !61
  %cmp1 = icmp eq %struct.gs_context_s* %12, %14
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %holder_index2 = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %15, i32 0, i32 1
  store i64 0, i64* %holder_index2, align 8, !tbaa !56
  %16 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %17 = load %struct.gs_lock_s*, %struct.gs_lock_s** %plock, align 8, !tbaa !1
  %waiting = getelementptr inbounds %struct.gs_lock_s, %struct.gs_lock_s* %17, i32 0, i32 0
  call void @activate_waiting(%struct.gs_scheduler_s* %16, %struct.ctx_list_s* %waiting) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.gs_lock_s** %plock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare void @pop_estack(%struct.gs_context_state_s*, i32) #2

declare i32 @gs_grestoreall(%struct.gs_state_s*) #2

declare i64 @alloc_save_current_id(%struct.gs_dual_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ctx_initialize(%struct.gs_context_state_s** %pi_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %pi_ctx_p.addr = alloca %struct.gs_context_state_s**, align 8
  %interval = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s** %pi_ctx_p, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %interval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* @reschedule_interval, align 4, !tbaa !35
  store i32 %1, i32* %interval, align 4, !tbaa !35
  %2 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %3, align 8, !tbaa !1
  store %struct.gs_context_state_s* %4, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %5 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !117
  store %struct.gs_ref_memory_s* %7, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !118
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %call = call i8* %11(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* @st_scheduler, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)) #5
  %14 = bitcast i8* %call to %struct.gs_scheduler_s*
  store %struct.gs_scheduler_s* %14, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %15 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_scheduler_s* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %16, i32 0, i32 0
  store %struct.gs_context_s* null, %struct.gs_context_s** %current, align 8, !tbaa !61
  %17 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %17, i32 0, i32 2
  %tail_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active, i32 0, i32 1
  store i64 0, i64* %tail_index, align 8, !tbaa !105
  %18 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %active1 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %18, i32 0, i32 2
  %head_index = getelementptr inbounds %struct.ctx_list_s, %struct.ctx_list_s* %active1, i32 0, i32 0
  store i64 0, i64* %head_index, align 8, !tbaa !63
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %spaces3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 1
  %vm_reclaim = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces3, i32 0, i32 0
  %20 = load void (%struct.vm_spaces_s*, i32)*, void (%struct.vm_spaces_s*, i32)** %vm_reclaim, align 8, !tbaa !119
  %21 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %save_vm_reclaim = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %21, i32 0, i32 3
  store void (%struct.vm_spaces_s*, i32)* %20, void (%struct.vm_spaces_s*, i32)** %save_vm_reclaim, align 8, !tbaa !120
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %spaces5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 1
  %vm_reclaim6 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces5, i32 0, i32 0
  store void (%struct.vm_spaces_s*, i32)* @context_reclaim, void (%struct.vm_spaces_s*, i32)** %vm_reclaim6, align 8, !tbaa !119
  %23 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %dead_index = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %23, i32 0, i32 4
  store i64 0, i64* %dead_index, align 8, !tbaa !69
  %24 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %24, i32 0, i32 5
  %arraydecay = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i32 0
  %25 = bitcast %struct.gs_context_s** %arraydecay to i8*
  %call7 = call i8* @memset(i8* %25, i32 0, i64 152) #6
  %26 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %27 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current8 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %27, i32 0, i32 0
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %29 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %29, align 8, !tbaa !1
  %call10 = call i32 @context_create(%struct.gs_scheduler_s* %26, %struct.gs_context_s** %current8, %struct.gs_dual_memory_s* %memory9, %struct.gs_context_state_s* %30, i32 1) #5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end
  %call13 = call i8* @gs_program_name() #5
  %call14 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call13, i64 %call14) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 379) #5
  %call15 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0)) #5
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !19
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  call void @gs_abort(%struct.gs_memory_s* %33) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end
  %34 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %35 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current19 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %35, i32 0, i32 0
  %36 = load %struct.gs_context_s*, %struct.gs_context_s** %current19, align 8, !tbaa !61
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %36, i32 0, i32 1
  store %struct.gs_scheduler_s* %34, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  %37 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current20 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %37, i32 0, i32 0
  %38 = load %struct.gs_context_s*, %struct.gs_context_s** %current20, align 8, !tbaa !61
  %state = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %38, i32 0, i32 0
  %39 = load %struct.gs_context_state_s**, %struct.gs_context_state_s*** %pi_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %state, %struct.gs_context_state_s** %39, align 8, !tbaa !1
  %40 = load i32, i32* %interval, align 4, !tbaa !35
  %cmp21 = icmp slt i32 %40, 100
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 100, i32* %interval, align 4, !tbaa !35
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  %41 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current24 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %41, i32 0, i32 0
  %42 = load %struct.gs_context_s*, %struct.gs_context_s** %current24, align 8, !tbaa !61
  %state25 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %42, i32 0, i32 0
  %reschedule_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state25, i32 0, i32 23
  store i32 (%struct.gs_context_state_s**)* @ctx_reschedule, i32 (%struct.gs_context_state_s**)** %reschedule_proc, align 8, !tbaa !90
  %43 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current26 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %43, i32 0, i32 0
  %44 = load %struct.gs_context_s*, %struct.gs_context_s** %current26, align 8, !tbaa !61
  %state27 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %44, i32 0, i32 0
  %time_slice_proc = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state27, i32 0, i32 21
  store i32 (%struct.gs_context_state_s**)* @ctx_time_slice, i32 (%struct.gs_context_state_s**)** %time_slice_proc, align 8, !tbaa !91
  %45 = load i32, i32* %interval, align 4, !tbaa !35
  %46 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current28 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %46, i32 0, i32 0
  %47 = load %struct.gs_context_s*, %struct.gs_context_s** %current28, align 8, !tbaa !61
  %state29 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %47, i32 0, i32 0
  %time_slice_ticks = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %state29, i32 0, i32 22
  store i32 %45, i32* %time_slice_ticks, align 4, !tbaa !92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %48 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %interval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal void @context_reclaim(%struct.vm_spaces_s* %pspaces, i32 %global) #0 {
entry:
  %pspaces.addr = alloca %struct.vm_spaces_s*, align 8
  %global.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pctx = alloca %struct.gs_context_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %loc = alloca %struct.chunk_locator_s, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %root = alloca %struct.gs_gc_root_s*, align 8
  store %struct.vm_spaces_s* %pspaces, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !35
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_context_s* null, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %2 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.gs_scheduler_s* null, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %4 = bitcast %struct.chunk_locator_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  store i32 3, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %5 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_scheduler_s* %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !35
  %cmp1 = icmp sgt i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end.7

for.body:                                         ; preds = %land.end
  %8 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.vm_spaces_s*, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %10, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %11, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %12 = bitcast %struct.gs_gc_root_s** %root to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %roots = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 24
  %14 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %roots, align 8, !tbaa !121
  store %struct.gs_gc_root_s* %14, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_gc_root_s* %15, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %18 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !60
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %21, i32 0, i32 2
  %22 = load i8**, i8*** %p, align 8, !tbaa !122
  %23 = load i8*, i8** %22, align 8, !tbaa !1
  %call = call %struct.gs_memory_struct_type_s* %18(%struct.gs_memory_s* %20, i8* %23) #5
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_context
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %24 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %24, i32 0, i32 2
  %25 = load i8**, i8*** %p5, align 8, !tbaa !122
  %26 = load i8*, i8** %25, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_context_s*
  store %struct.gs_context_s* %27, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %28 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %scheduler = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %28, i32 0, i32 1
  %29 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %scheduler, align 8, !tbaa !34
  store %struct.gs_scheduler_s* %29, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %30, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %31, i32 0, i32 0
  %32 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %next, align 8, !tbaa !124
  store %struct.gs_gc_root_s* %32, %struct.gs_gc_root_s** %root, align 8, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %33 = bitcast %struct.gs_gc_root_s** %root to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !35
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end.7:                                        ; preds = %land.end
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 3
  %38 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !100
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %40 = bitcast %struct.gs_ref_memory_s* %39 to %struct.gs_memory_s*
  %call9 = call %struct.gs_memory_s* %38(%struct.gs_memory_s* %40) #5
  %41 = bitcast %struct.gs_memory_s* %call9 to %struct.gs_ref_memory_s*
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc, i32 0, i32 0
  store %struct.gs_ref_memory_s* %41, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !125
  %cp = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %loc, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp, align 8, !tbaa !126
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.end.7
  %42 = load i32, i32* %i, align 4, !tbaa !35
  %cmp11 = icmp slt i32 %42, 19
  br i1 %cmp11, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.10
  %43 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom13 = sext i32 %43 to i64
  %44 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %44, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %idxprom13
  %45 = load %struct.gs_context_s*, %struct.gs_context_s** %arrayidx14, align 8, !tbaa !1
  store %struct.gs_context_s* %45, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.19, %for.body.12
  %46 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.gs_context_s* %46, null
  br i1 %tobool16, label %for.body.17, label %for.end.20

for.body.17:                                      ; preds = %for.cond.15
  %47 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %48 = bitcast %struct.gs_context_s* %47 to i8*
  %call18 = call i32 @chunk_locate_ptr(i8* %48, %struct.chunk_locator_s* %loc) #5
  %49 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %49, i32 0, i32 6
  store i32 %call18, i32* %visible, align 4, !tbaa !103
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.17
  %50 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %50, i32 0, i32 9
  %51 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next, align 8, !tbaa !75
  store %struct.gs_context_s* %51, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %for.cond.15

for.end.20:                                       ; preds = %for.cond.15
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %52 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  %53 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %save_vm_reclaim = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %53, i32 0, i32 3
  %54 = load void (%struct.vm_spaces_s*, i32)*, void (%struct.vm_spaces_s*, i32)** %save_vm_reclaim, align 8, !tbaa !120
  %55 = load %struct.vm_spaces_s*, %struct.vm_spaces_s** %pspaces.addr, align 8, !tbaa !1
  %56 = load i32, i32* %global.addr, align 4, !tbaa !35
  call void %54(%struct.vm_spaces_s* %55, i32 %56) #5
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %for.end.22
  %57 = load i32, i32* %i, align 4, !tbaa !35
  %cmp24 = icmp slt i32 %57, 19
  br i1 %cmp24, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.23
  %58 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom26 = sext i32 %58 to i64
  %59 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table27 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %59, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table27, i32 0, i64 %idxprom26
  %60 = load %struct.gs_context_s*, %struct.gs_context_s** %arrayidx28, align 8, !tbaa !1
  store %struct.gs_context_s* %60, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.33, %for.body.25
  %61 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %tobool30 = icmp ne %struct.gs_context_s* %61, null
  br i1 %tobool30, label %for.body.31, label %for.end.35

for.body.31:                                      ; preds = %for.cond.29
  %62 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %visible32 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %62, i32 0, i32 6
  store i32 1, i32* %visible32, align 4, !tbaa !103
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.31
  %63 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next34 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %63, i32 0, i32 9
  %64 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next34, align 8, !tbaa !75
  store %struct.gs_context_s* %64, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %for.cond.29

for.end.35:                                       ; preds = %for.cond.29
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %65 = load i32, i32* %i, align 4, !tbaa !35
  %inc37 = add nsw i32 %65, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !35
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  %66 = bitcast %struct.chunk_locator_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %66) #1
  %67 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @gs_abort(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @scheduler_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %pctx = alloca %struct.gs_context_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store i32 %index, i32* %index.addr, align 4, !tbaa !35
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_scheduler_s*
  store %struct.gs_scheduler_s* %2, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !35
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !35
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %index.addr, align 4, !tbaa !35
  %5 = load i32, i32* %index.addr, align 4, !tbaa !35
  %cmp = icmp slt i32 %5, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !35
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %8, i32 0, i32 5
  %arrayidx = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %idxprom
  %9 = load %struct.gs_context_s*, %struct.gs_context_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_context_s* %9, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_context_s* %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %11, i32 0, i32 6
  %12 = load i32, i32* %visible, align 4, !tbaa !103
  %tobool1 = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %14, i32 0, i32 9
  %15 = load %struct.gs_context_s*, %struct.gs_context_s** %table_next, align 8, !tbaa !75
  store %struct.gs_context_s* %15, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx, align 8, !tbaa !1
  %17 = bitcast %struct.gs_context_s* %16 to i8*
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 0
  store i8* %17, i8** %ptr, align 8, !tbaa !111
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %19 = bitcast %struct.gs_context_s** %pctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %20 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %20, i32 0, i32 0
  %21 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !61
  %call = call %struct.gs_context_s* @visible_context(%struct.gs_context_s* %21) #5
  %22 = bitcast %struct.gs_context_s* %call to i8*
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* %22, i8** %ptr2, align 8, !tbaa !111
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end, %while.end
  %24 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %25
}

; Function Attrs: nounwind uwtable
define internal void @scheduler_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psched = alloca %struct.gs_scheduler_s*, align 8
  %i = alloca i32, align 4
  %ppctx = alloca %struct.gs_context_s**, align 8
  %pnext = alloca %struct.gs_context_s**, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !35
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_scheduler_s*
  store %struct.gs_scheduler_s* %2, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %3 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %3, i32 0, i32 0
  %4 = load %struct.gs_context_s*, %struct.gs_context_s** %current, align 8, !tbaa !61
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %4, i32 0, i32 6
  %5 = load i32, i32* %visible, align 4, !tbaa !103
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gc_state_s* %6 to %struct.gc_procs_with_refs_s**
  %8 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %7, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %8, i32 0, i32 0
  %9 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !114
  %10 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current1 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %10, i32 0, i32 0
  %11 = load %struct.gs_context_s*, %struct.gs_context_s** %current1, align 8, !tbaa !61
  %12 = bitcast %struct.gs_context_s* %11 to i8*
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %9(i8* %12, %struct.gc_state_s* %13) #5
  %14 = bitcast i8* %call to %struct.gs_context_s*
  %15 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %current2 = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %15, i32 0, i32 0
  store %struct.gs_context_s* %14, %struct.gs_context_s** %current2, align 8, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !35
  %cmp = icmp slt i32 %17, 19
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %18 = bitcast %struct.gs_context_s*** %ppctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %i, align 4, !tbaa !35
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.gs_scheduler_s*, %struct.gs_scheduler_s** %psched, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gs_scheduler_s, %struct.gs_scheduler_s* %20, i32 0, i32 5
  %arrayidx = getelementptr inbounds [19 x %struct.gs_context_s*], [19 x %struct.gs_context_s*]* %table, i32 0, i64 %idxprom
  store %struct.gs_context_s** %arrayidx, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %21 = bitcast %struct.gs_context_s*** %pnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %22 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %23 = load %struct.gs_context_s*, %struct.gs_context_s** %22, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.gs_context_s* %23, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %24 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %25 = load %struct.gs_context_s*, %struct.gs_context_s** %24, align 8, !tbaa !1
  %table_next = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %25, i32 0, i32 9
  store %struct.gs_context_s** %table_next, %struct.gs_context_s*** %pnext, align 8, !tbaa !1
  %26 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %27 = load %struct.gs_context_s*, %struct.gs_context_s** %26, align 8, !tbaa !1
  %visible6 = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %27, i32 0, i32 6
  %28 = load i32, i32* %visible6, align 4, !tbaa !103
  %tobool7 = icmp ne i32 %28, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.body.5
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gc_state_s* %29 to %struct.gc_procs_with_refs_s**
  %31 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %30, align 8, !tbaa !1
  %reloc_struct_ptr9 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %31, i32 0, i32 0
  %32 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr9, align 8, !tbaa !114
  %33 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  %34 = load %struct.gs_context_s*, %struct.gs_context_s** %33, align 8, !tbaa !1
  %35 = bitcast %struct.gs_context_s* %34 to i8*
  %36 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call10 = call i8* %32(i8* %35, %struct.gc_state_s* %36) #5
  %37 = bitcast i8* %call10 to %struct.gs_context_s*
  %38 = load %struct.gs_context_s**, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  store %struct.gs_context_s* %37, %struct.gs_context_s** %38, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %39 = load %struct.gs_context_s**, %struct.gs_context_s*** %pnext, align 8, !tbaa !1
  store %struct.gs_context_s** %39, %struct.gs_context_s*** %ppctx, align 8, !tbaa !1
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %40 = bitcast %struct.gs_context_s*** %pnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_context_s*** %ppctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4, !tbaa !35
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !35
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.gs_scheduler_s** %psched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gs_context_s* @visible_context(%struct.gs_context_s* %pctx) #4 {
entry:
  %pctx.addr = alloca %struct.gs_context_s*, align 8
  store %struct.gs_context_s* %pctx, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_context_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  %visible = getelementptr inbounds %struct.gs_context_s, %struct.gs_context_s* %1, i32 0, i32 6
  %2 = load i32, i32* %visible, align 4, !tbaa !103
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.gs_context_s*, %struct.gs_context_s** %pctx.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_context_s* [ %3, %cond.true ], [ null, %cond.false ]
  ret %struct.gs_context_s* %cond
}

declare i32 @chunk_locate_ptr(i8*, %struct.chunk_locator_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

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
!19 = !{!6, !2, i64 8}
!20 = !{!21, !2, i64 72}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!24, !13, i64 8}
!24 = !{!"gs_condition_s", !25, i64 0}
!25 = !{!"ctx_list_s", !13, i64 0, !13, i64 8}
!26 = !{!24, !13, i64 0}
!27 = !{!6, !2, i64 640}
!28 = !{!6, !9, i64 688}
!29 = !{!7, !9, i64 48}
!30 = !{!10, !12, i64 0}
!31 = !{!32, !13, i64 744}
!32 = !{!"gs_context_s", !6, i64 0, !2, i64 728, !3, i64 736, !13, i64 744, !9, i64 752, !9, i64 756, !9, i64 760, !13, i64 768, !13, i64 776, !2, i64 784}
!33 = !{!13, !13, i64 0}
!34 = !{!32, !2, i64 728}
!35 = !{!9, !9, i64 0}
!36 = !{!32, !13, i64 776}
!37 = !{!32, !9, i64 752}
!38 = !{!32, !3, i64 736}
!39 = !{!40, !2, i64 16}
!40 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!41 = !{!40, !2, i64 24}
!42 = !{!43, !9, i64 552}
!43 = !{!"gs_ref_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !44, i64 232, !9, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !45, i64 304, !2, i64 488, !46, i64 496, !13, i64 512, !13, i64 520, !47, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !48, i64 648, !9, i64 672, !3, i64 680}
!44 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!45 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!47 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!48 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!49 = !{!6, !2, i64 520}
!50 = !{!6, !2, i64 536}
!51 = !{!10, !9, i64 4}
!52 = !{i64 0, i64 2, !53, i64 2, i64 2, !53, i64 4, i64 4, !35, i64 8, i64 8, !33, i64 8, i64 2, !53, i64 8, i64 4, !54, i64 8, i64 8, !33, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !33}
!53 = !{!12, !12, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !3, i64 0}
!56 = !{!57, !13, i64 16}
!57 = !{!"gs_lock_s", !25, i64 0, !13, i64 16, !2, i64 24}
!58 = !{!57, !13, i64 8}
!59 = !{!57, !13, i64 0}
!60 = !{!21, !2, i64 128}
!61 = !{!62, !2, i64 0}
!62 = !{!"gs_scheduler_s", !2, i64 0, !13, i64 8, !25, i64 16, !2, i64 32, !13, i64 40, !3, i64 48}
!63 = !{!62, !13, i64 16}
!64 = !{!32, !9, i64 144}
!65 = !{!62, !13, i64 8}
!66 = !{!32, !13, i64 136}
!67 = !{!6, !9, i64 464}
!68 = !{!6, !2, i64 0}
!69 = !{!62, !13, i64 40}
!70 = !{!32, !13, i64 768}
!71 = !{!6, !2, i64 360}
!72 = !{!6, !2, i64 344}
!73 = !{!6, !9, i64 352}
!74 = !{!3, !3, i64 0}
!75 = !{!32, !2, i64 784}
!76 = !{!21, !2, i64 24}
!77 = !{!78, !12, i64 264}
!78 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !79, i64 160, !13, i64 176, !80, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !81, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!79 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!80 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!81 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!82 = !{!78, !12, i64 266}
!83 = !{!6, !2, i64 256}
!84 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 32, !74, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !35, i64 56, i64 8, !1, i64 64, i64 4, !35, i64 68, i64 4, !35}
!85 = !{!43, !2, i64 200}
!86 = !{!43, !9, i64 216}
!87 = !{!43, !9, i64 224}
!88 = !{!43, !2, i64 0}
!89 = !{!32, !2, i64 0}
!90 = !{!32, !2, i64 360}
!91 = !{!32, !2, i64 344}
!92 = !{!32, !9, i64 352}
!93 = !{i64 0, i64 2, !53, i64 2, i64 2, !53, i64 4, i64 4, !35, i64 8, i64 8, !33, i64 8, i64 2, !53, i64 8, i64 4, !54, i64 8, i64 8, !33, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !33, i64 16, i64 8, !1, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 4, !35}
!94 = !{!6, !9, i64 80}
!95 = !{!32, !9, i64 80}
!96 = !{!32, !9, i64 464}
!97 = !{!6, !9, i64 468}
!98 = !{!32, !9, i64 468}
!99 = !{!16, !2, i64 0}
!100 = !{!21, !2, i64 32}
!101 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 32, !74, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 4, !35, i64 64, i64 8, !1, i64 72, i64 4, !35, i64 76, i64 4, !35, i64 80, i64 4, !35, i64 88, i64 2, !53, i64 90, i64 2, !53, i64 92, i64 4, !35, i64 96, i64 8, !33, i64 96, i64 2, !53, i64 96, i64 4, !54, i64 96, i64 8, !33, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !1, i64 96, i64 8, !33, i64 104, i64 2, !53, i64 106, i64 2, !53, i64 108, i64 4, !35, i64 112, i64 8, !33, i64 112, i64 2, !53, i64 112, i64 4, !54, i64 112, i64 8, !33, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !1, i64 112, i64 8, !33, i64 120, i64 8, !33, i64 128, i64 8, !33, i64 136, i64 8, !33, i64 144, i64 4, !35, i64 148, i64 4, !35, i64 152, i64 2, !53, i64 154, i64 2, !53, i64 156, i64 4, !35, i64 160, i64 8, !33, i64 160, i64 2, !53, i64 160, i64 4, !54, i64 160, i64 8, !33, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !1, i64 160, i64 8, !33, i64 168, i64 2, !53, i64 170, i64 2, !53, i64 172, i64 4, !35, i64 176, i64 8, !33, i64 176, i64 2, !53, i64 176, i64 4, !54, i64 176, i64 8, !33, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !1, i64 176, i64 8, !33, i64 184, i64 4, !35, i64 188, i64 4, !35, i64 192, i64 4, !35, i64 196, i64 4, !35, i64 200, i64 8, !1, i64 208, i64 48, !74, i64 256, i64 8, !1, i64 264, i64 2, !53, i64 266, i64 2, !53, i64 268, i64 4, !35, i64 272, i64 8, !33, i64 272, i64 2, !53, i64 272, i64 4, !54, i64 272, i64 8, !33, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !1, i64 272, i64 8, !33, i64 280, i64 8, !1, i64 288, i64 4, !35, i64 292, i64 4, !35, i64 296, i64 4, !35, i64 304, i64 2, !53, i64 306, i64 2, !53, i64 308, i64 4, !35, i64 312, i64 8, !33, i64 312, i64 2, !53, i64 312, i64 4, !54, i64 312, i64 8, !33, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !1, i64 312, i64 8, !33, i64 320, i64 8, !1, i64 328, i64 4, !35, i64 332, i64 4, !35, i64 336, i64 4, !35, i64 344, i64 8, !1, i64 352, i64 4, !35, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 2, !53, i64 394, i64 2, !53, i64 396, i64 4, !35, i64 400, i64 8, !33, i64 400, i64 2, !53, i64 400, i64 4, !54, i64 400, i64 8, !33, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !1, i64 400, i64 8, !33, i64 408, i64 4, !35, i64 412, i64 4, !35, i64 416, i64 2, !53, i64 418, i64 2, !53, i64 420, i64 4, !35, i64 424, i64 8, !33, i64 424, i64 2, !53, i64 424, i64 4, !54, i64 424, i64 8, !33, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !1, i64 424, i64 8, !33, i64 432, i64 4, !35, i64 436, i64 4, !35, i64 440, i64 4, !35, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 4, !35, i64 468, i64 4, !35, i64 472, i64 4, !35, i64 480, i64 8, !1, i64 488, i64 4, !35, i64 496, i64 8, !1, i64 504, i64 2, !53, i64 506, i64 2, !53, i64 508, i64 4, !35, i64 512, i64 8, !33, i64 512, i64 2, !53, i64 512, i64 4, !54, i64 512, i64 8, !33, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !1, i64 512, i64 8, !33, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 2, !53, i64 546, i64 2, !53, i64 548, i64 4, !35, i64 552, i64 8, !33, i64 552, i64 2, !53, i64 552, i64 4, !54, i64 552, i64 8, !33, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !1, i64 552, i64 8, !33, i64 560, i64 4, !35, i64 564, i64 4, !35, i64 568, i64 2, !53, i64 570, i64 2, !53, i64 572, i64 4, !35, i64 576, i64 8, !33, i64 576, i64 2, !53, i64 576, i64 4, !54, i64 576, i64 8, !33, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !1, i64 576, i64 8, !33, i64 584, i64 4, !35, i64 588, i64 4, !35, i64 592, i64 4, !35, i64 600, i64 8, !1, i64 608, i64 8, !1, i64 616, i64 8, !1, i64 624, i64 8, !1, i64 632, i64 8, !1, i64 640, i64 8, !1, i64 648, i64 2, !53, i64 650, i64 2, !53, i64 652, i64 4, !35, i64 656, i64 8, !33, i64 656, i64 2, !53, i64 656, i64 4, !54, i64 656, i64 8, !33, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !1, i64 656, i64 8, !33, i64 664, i64 4, !35, i64 668, i64 4, !35, i64 672, i64 2, !53, i64 674, i64 2, !53, i64 676, i64 4, !35, i64 680, i64 8, !33, i64 680, i64 2, !53, i64 680, i64 4, !54, i64 680, i64 8, !33, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !1, i64 680, i64 8, !33, i64 688, i64 4, !35, i64 692, i64 4, !35, i64 696, i64 4, !35, i64 704, i64 8, !1, i64 712, i64 8, !1, i64 720, i64 8, !1}
!102 = !{!32, !9, i64 756}
!103 = !{!32, !9, i64 760}
!104 = !{!43, !2, i64 616}
!105 = !{!62, !13, i64 24}
!106 = !{!25, !13, i64 0}
!107 = !{!25, !13, i64 8}
!108 = !{!109, !2, i64 24}
!109 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!110 = !{!109, !2, i64 32}
!111 = !{!112, !2, i64 0}
!112 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!113 = !{!109, !2, i64 40}
!114 = !{!115, !2, i64 0}
!115 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!116 = !{!57, !2, i64 24}
!117 = !{!40, !2, i64 8}
!118 = !{!21, !2, i64 80}
!119 = !{!6, !2, i64 16}
!120 = !{!62, !2, i64 32}
!121 = !{!43, !2, i64 584}
!122 = !{!123, !2, i64 16}
!123 = !{!"gs_gc_root_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24}
!124 = !{!123, !2, i64 0}
!125 = !{!46, !2, i64 0}
!126 = !{!46, !2, i64 8}
