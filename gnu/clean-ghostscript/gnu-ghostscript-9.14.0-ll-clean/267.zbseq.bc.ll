; ModuleID = './zbseq.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
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
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
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
%struct.names_array_ref_s = type { %struct.ref_s }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@st_names_array_ref = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @ref_struct_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"1.installsystemnames\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0currentobjectformat\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1setobjectformat\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"4.bosobject\00", align 1
@zbseq_l2_op_defs = constant [6 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinstallsystemnames }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentobjectformat }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetobjectformat }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbosobject }, %struct.op_def { i8* null, i32 (%struct.gs_context_state_s*)* @zbseq_init }], align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"names_array_ref_t\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c".installsystemnames\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"setobjectformat\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"zbseq_init(system_names)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @create_names_array(%struct.ref_s** %ppnames, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %ppnames.addr = alloca %struct.ref_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pnames = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s** %ppnames, %struct.ref_s*** %ppnames.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pnames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %2 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %2(%struct.gs_memory_s* %3) #3
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %stable3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 3
  %6 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable3, align 8, !tbaa !5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_memory_s* %6(%struct.gs_memory_s* %7) #3
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call5 = call i8* %4(%struct.gs_memory_s* %call4, %struct.gs_memory_struct_type_s* @st_names_array_ref, i8* %8) #3
  %9 = bitcast i8* %call5 to %struct.names_array_ref_s*
  %10 = bitcast %struct.names_array_ref_s* %9 to %struct.ref_s*
  store %struct.ref_s* %10, %struct.ref_s** %pnames, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pnames, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %pnames, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pnames, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1120, i16* %type_attrs, align 2, !tbaa !9
  %14 = load %struct.ref_s*, %struct.ref_s** %pnames, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !14
  %15 = load %struct.ref_s*, %struct.ref_s** %pnames, align 8, !tbaa !1
  %16 = load %struct.ref_s**, %struct.ref_s*** %ppnames.addr, align 8, !tbaa !1
  store %struct.ref_s* %15, %struct.ref_s** %16, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.ref_s** %pnames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zinstallsystemnames(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !9
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 12
  %cmp = icmp ne i32 %and, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !25
  %call = call i32 @imemory_save_level(%struct.gs_ref_memory_s* %6) #3
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %8 = load i16, i16* %type_attrs5, align 2, !tbaa !9
  %conv6 = zext i16 %8 to i32
  %and7 = and i32 %conv6, 16160
  %cmp8 = icmp eq i32 %and7, 1568
  br i1 %cmp8, label %if.end.17, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %10 = bitcast i16* %type_attrs12 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 6
  br i1 %cmp14, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.10
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call16 = call i32 @check_type_failed(%struct.ref_s* %12) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call16, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %spaces19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 1
  %memories20 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces19, i32 0, i32 1
  %named21 = bitcast %union.anon* %memories20 to %struct._ssn*
  %global22 = getelementptr inbounds %struct._ssn, %struct._ssn* %named21, i32 0, i32 2
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global22, align 8, !tbaa !25
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 23
  %15 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !28
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %16 = load i16, i16* %type_attrs24, align 2, !tbaa !9
  %conv25 = zext i16 %16 to i32
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 4
  %18 = load i32, i32* %test_mask, align 4, !tbaa !35
  %and27 = and i32 %conv25, %18
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.39

cond.true.30:                                     ; preds = %if.end.17
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %spaces33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 1
  %memories34 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces33, i32 0, i32 1
  %named35 = bitcast %union.anon* %memories34 to %struct._ssn*
  %global36 = getelementptr inbounds %struct._ssn, %struct._ssn* %named35, i32 0, i32 2
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global36, align 8, !tbaa !25
  %names_array37 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 23
  %22 = load %struct.ref_s*, %struct.ref_s** %names_array37, align 8, !tbaa !28
  %23 = bitcast %struct.ref_s* %22 to i16*
  %call38 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory31, %struct.ref_s* null, i16* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.end.17
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.30
  %cond41 = phi i32 [ %call38, %cond.true.30 ], [ 0, %cond.false.39 ]
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %spaces43 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory42, i32 0, i32 1
  %memories44 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces43, i32 0, i32 1
  %named45 = bitcast %union.anon* %memories44 to %struct._ssn*
  %global46 = getelementptr inbounds %struct._ssn, %struct._ssn* %named45, i32 0, i32 2
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global46, align 8, !tbaa !25
  %names_array47 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 23
  %26 = load %struct.ref_s*, %struct.ref_s** %names_array47, align 8, !tbaa !28
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !36
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory48, i32 0, i32 5
  %31 = load i32, i32* %new_mask, align 4, !tbaa !42
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %spaces50 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory49, i32 0, i32 1
  %memories51 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces50, i32 0, i32 1
  %named52 = bitcast %union.anon* %memories51 to %struct._ssn*
  %global53 = getelementptr inbounds %struct._ssn, %struct._ssn* %named52, i32 0, i32 2
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global53, align 8, !tbaa !25
  %names_array54 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 23
  %34 = load %struct.ref_s*, %struct.ref_s** %names_array54, align 8, !tbaa !28
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %35 = load i16, i16* %type_attrs56, align 2, !tbaa !9
  %conv57 = zext i16 %35 to i32
  %or = or i32 %conv57, %31
  %conv58 = trunc i32 %or to i16
  store i16 %conv58, i16* %type_attrs56, align 2, !tbaa !9
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack60 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p61, align 8, !tbaa !15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.40, %cond.end, %if.then
  %38 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentobjectformat(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !43
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !44
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 4
  %11 = bitcast %struct.ref_s* %9 to i8*
  %12 = bitcast %struct.ref_s* %binary_object_format to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetobjectformat(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cont = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %cont to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !39
  %cmp2 = icmp slt i64 %9, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval5 = bitcast %union.v* %value4 to i64*
  %11 = load i64, i64* %intval5, align 8, !tbaa !39
  %cmp6 = icmp sgt i64 %11, 4
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_context_state_s* %12 to %struct.obj_header_s*
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cont, i32 0, i32 1
  %pstruct = bitcast %union.v* %value10 to %struct.obj_header_s**
  store %struct.obj_header_s* %13, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cont, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 2060, i16* %type_attrs12, align 2, !tbaa !9
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 4
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %15 = load i16, i16* %type_attrs14, align 2, !tbaa !9
  %conv15 = zext i16 %15 to i32
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 4
  %17 = load i32, i32* %test_mask, align 4, !tbaa !35
  %and = and i32 %conv15, %17
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 4
  %20 = bitcast %struct.ref_s* %binary_object_format19 to i16*
  %call20 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory18, %struct.ref_s* %cont, i16* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ 0, %cond.false ]
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 4
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %binary_object_format21 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !36
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory22, i32 0, i32 5
  %26 = load i32, i32* %new_mask, align 4, !tbaa !42
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %binary_object_format23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 4
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %binary_object_format23, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %28 = load i16, i16* %type_attrs25, align 2, !tbaa !9
  %conv26 = zext i16 %28 to i32
  %or = or i32 %conv26, %26
  %conv27 = trunc i32 %or to i16
  store i16 %conv27, i16* %type_attrs25, align 2, !tbaa !9
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack29 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p30, align 8, !tbaa !15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.8, %if.then
  %31 = bitcast %struct.ref_s* %cont to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  %32 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @zbosobject(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !27
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %9 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !27
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  %call13 = call i32 @check_type_failed(%struct.ref_s* %arrayidx12) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %13 = load i16, i16* %type_attrs16, align 2, !tbaa !9
  %conv17 = zext i16 %13 to i32
  %and = and i32 %conv17, 16144
  %cmp18 = icmp eq i32 %and, 4624
  br i1 %cmp18, label %if.end.28, label %if.then.20

if.then.20:                                       ; preds = %if.end.14
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %15 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx23, align 1, !tbaa !27
  %conv24 = zext i8 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 18
  br i1 %cmp25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call27 = call i32 @check_type_failed(%struct.ref_s* %17) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call27, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.14
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  %19 = load i32, i32* %rsize, align 4, !tbaa !14
  %cmp30 = icmp ult i32 %19, 8
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.28
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx35, i32 0, i32 1
  %intval37 = bitcast %union.v* %value36 to i64*
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %bytes = bitcast %union.v* %value38 to i8**
  %25 = load i8*, i8** %bytes, align 8, !tbaa !1
  %call39 = call i32 @encode_binary_token(%struct.gs_context_state_s* %20, %struct.ref_s* %add.ptr, i64* %intval, i64* %intval37, i8* %25) #3
  store i32 %call39, i32* %code, align 4, !tbaa !38
  %26 = load i32, i32* %code, align 4, !tbaa !38
  %cmp40 = icmp slt i32 %26, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.33
  %27 = load i32, i32* %code, align 4, !tbaa !38
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.33
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = bitcast %struct.ref_s* %arrayidx44 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !36
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %rsize47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 2
  store i32 8, i32* %rsize47, align 4, !tbaa !14
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !15
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  store %struct.ref_s* %add.ptr51, %struct.ref_s** %p50, align 8, !tbaa !15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42, %if.then.32, %cond.end, %if.then.11, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zbseq_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %psystem_names = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %psystem_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.ref_s* null, %struct.ref_s** %psystem_names, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !25
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %call = call i32 @create_names_array(%struct.ref_s** %psystem_names, %struct.gs_memory_s* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !38
  %5 = load i32, i32* %code, align 4, !tbaa !38
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !38
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %psystem_names, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %global5 = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 2
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global5, align 8, !tbaa !25
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 23
  store %struct.ref_s* %7, %struct.ref_s** %names_array, align 8, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s** %psystem_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @ref_struct_clear_marks(%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*) #2

declare %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @ref_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @imemory_save_level(%struct.gs_ref_memory_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @encode_binary_token(%struct.gs_context_state_s*, %struct.ref_s*, i64*, i64*, i8*) #2

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
!5 = !{!6, !2, i64 32}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!6, !2, i64 72}
!9 = !{!10, !12, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !13, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"int", !3, i64 0}
!14 = !{!10, !13, i64 4}
!15 = !{!16, !2, i64 624}
!16 = !{!"gs_context_state_s", !2, i64 0, !17, i64 8, !13, i64 80, !10, i64 88, !10, i64 104, !19, i64 120, !19, i64 128, !19, i64 136, !13, i64 144, !13, i64 148, !10, i64 152, !10, i64 168, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !20, i64 264, !20, i64 304, !2, i64 344, !13, i64 352, !2, i64 360, !21, i64 368, !23, i64 520, !24, i64 624, !2, i64 720}
!17 = !{!"gs_dual_memory_s", !2, i64 0, !18, i64 8, !13, i64 48, !2, i64 56, !13, i64 64, !13, i64 68}
!18 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!19 = !{!"long", !3, i64 0}
!20 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!21 = !{!"dict_stack_s", !22, i64 0, !13, i64 96, !13, i64 100, !13, i64 104, !2, i64 112, !13, i64 120, !2, i64 128, !10, i64 136}
!22 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !2, i64 80, !2, i64 88}
!23 = !{!"exec_stack_s", !22, i64 0, !2, i64 96}
!24 = !{!"op_stack_s", !22, i64 0}
!25 = !{!26, !2, i64 16}
!26 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!27 = !{!3, !3, i64 0}
!28 = !{!29, !2, i64 576}
!29 = !{!"gs_ref_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !13, i64 216, !13, i64 220, !13, i64 224, !30, i64 232, !13, i64 272, !19, i64 280, !2, i64 288, !2, i64 296, !31, i64 304, !2, i64 488, !32, i64 496, !19, i64 512, !19, i64 520, !33, i64 528, !13, i64 552, !13, i64 556, !13, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !13, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !19, i64 624, !19, i64 632, !2, i64 640, !34, i64 648, !13, i64 672, !3, i64 680}
!30 = !{!"gs_memory_gc_status_s", !19, i64 0, !19, i64 8, !2, i64 16, !13, i64 24, !13, i64 28, !19, i64 32}
!31 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !13, i64 96, !13, i64 100, !2, i64 104, !13, i64 112, !2, i64 120, !2, i64 128, !13, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!33 = !{!"lost_", !19, i64 0, !19, i64 8, !19, i64 16}
!34 = !{!"gs_memory_status_s", !19, i64 0, !19, i64 8, !13, i64 16}
!35 = !{!17, !13, i64 64}
!36 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 4, i64 4, !38, i64 8, i64 8, !39, i64 8, i64 2, !37, i64 8, i64 4, !40, i64 8, i64 8, !39, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !39}
!37 = !{!12, !12, i64 0}
!38 = !{!13, !13, i64 0}
!39 = !{!19, !19, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !3, i64 0}
!42 = !{!17, !13, i64 68}
!43 = !{!16, !2, i64 640}
!44 = !{!16, !13, i64 688}
