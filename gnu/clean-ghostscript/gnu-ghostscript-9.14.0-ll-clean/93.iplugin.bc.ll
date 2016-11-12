; ModuleID = './iplugin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i_plugin_client_memory_s = type { i8*, i8* (%struct.i_plugin_client_memory_s*, i32, i8*)*, void (%struct.i_plugin_client_memory_s*, i8*, i8*)* }
%struct.i_plugin_instance_s = type { %struct.i_plugin_descriptor_s* }
%struct.i_plugin_descriptor_s = type { i8*, i8*, void (%struct.i_plugin_instance_s*, %struct.i_plugin_client_memory_s*)* }
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
%struct.alloc_change_s = type opaque
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
%struct.i_plugin_holder_s = type { %struct.i_plugin_holder_s*, %struct.i_plugin_instance_s* }

@i_plugin_table = external constant [0 x i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*], align 8
@.str = private unnamed_addr constant [14 x i8] c"plugin_holder\00", align 1

; Function Attrs: nounwind uwtable
define void @i_plugin_make_memory(%struct.i_plugin_client_memory_s* %mem, %struct.gs_memory_s* %mem_raw) #0 {
entry:
  %mem.addr = alloca %struct.i_plugin_client_memory_s*, align 8
  %mem_raw.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.i_plugin_client_memory_s* %mem, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem_raw, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_s* %0 to i8*
  %2 = load %struct.i_plugin_client_memory_s*, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.i_plugin_client_memory_s, %struct.i_plugin_client_memory_s* %2, i32 0, i32 0
  store i8* %1, i8** %client_data, align 8, !tbaa !5
  %3 = load %struct.i_plugin_client_memory_s*, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  %alloc = getelementptr inbounds %struct.i_plugin_client_memory_s, %struct.i_plugin_client_memory_s* %3, i32 0, i32 1
  store i8* (%struct.i_plugin_client_memory_s*, i32, i8*)* @i_plugin_mem_alloc, i8* (%struct.i_plugin_client_memory_s*, i32, i8*)** %alloc, align 8, !tbaa !7
  %4 = load %struct.i_plugin_client_memory_s*, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.i_plugin_client_memory_s, %struct.i_plugin_client_memory_s* %4, i32 0, i32 2
  store void (%struct.i_plugin_client_memory_s*, i8*, i8*)* @i_plugin_mem_free, void (%struct.i_plugin_client_memory_s*, i8*, i8*)** %free, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @i_plugin_mem_alloc(%struct.i_plugin_client_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.i_plugin_client_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %mem_raw = alloca %struct.gs_memory_s*, align 8
  store %struct.i_plugin_client_memory_s* %mem, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !9
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.i_plugin_client_memory_s*, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.i_plugin_client_memory_s, %struct.i_plugin_client_memory_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %client_data, align 8, !tbaa !5
  %3 = bitcast i8* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !11
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %7 = load i32, i32* %nbytes.addr, align 4, !tbaa !9
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, i32 %7, i8* %8) #3
  %9 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @i_plugin_mem_free(%struct.i_plugin_client_memory_s* %mem, i8* %data, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.i_plugin_client_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %mem_raw = alloca %struct.gs_memory_s*, align 8
  store %struct.i_plugin_client_memory_s* %mem, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.i_plugin_client_memory_s*, %struct.i_plugin_client_memory_s** %mem.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.i_plugin_client_memory_s, %struct.i_plugin_client_memory_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %client_data, align 8, !tbaa !5
  %3 = bitcast i8* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %5(%struct.gs_memory_s* %6, i8* %7, i8* %8) #3
  %9 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @i_plugin_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %mem_raw = alloca %struct.gs_memory_s*, align 8
  %p = alloca i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)**, align 8
  %h = alloca %struct.i_plugin_holder_s*, align 8
  %code = alloca i32, align 4
  %client_mem = alloca %struct.i_plugin_client_memory_s, align 8
  %instance = alloca %struct.i_plugin_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !15
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !28
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %4 = bitcast i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)** getelementptr inbounds ([0 x i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*], [0 x i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*]* @i_plugin_table, i32 0, i32 0), i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p, align 8, !tbaa !1
  %5 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.i_plugin_client_memory_s* %client_mem to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  call void @i_plugin_make_memory(%struct.i_plugin_client_memory_s* %client_mem, %struct.gs_memory_s* %8) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)**, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p, align 8, !tbaa !1
  %10 = load i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)** %9, align 8, !tbaa !1
  %cmp = icmp ne i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct.i_plugin_instance_s** %instance to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.i_plugin_instance_s* null, %struct.i_plugin_instance_s** %instance, align 8, !tbaa !1
  %12 = load i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)**, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p, align 8, !tbaa !1
  %13 = load i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)** %12, align 8, !tbaa !1
  %call = call i32 %13(%struct.i_plugin_client_memory_s* %client_mem, %struct.i_plugin_instance_s** %instance) #3
  store i32 %call, i32* %code, align 4, !tbaa !9
  %14 = load i32, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp ne i32 %14, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %17 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !11
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %call2 = call i8* %17(%struct.gs_memory_s* %18, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #3
  %19 = bitcast i8* %call2 to %struct.i_plugin_holder_s*
  store %struct.i_plugin_holder_s* %19, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %20 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.i_plugin_holder_s* %20, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %21 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %instance, align 8, !tbaa !1
  %22 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %I = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %22, i32 0, i32 1
  store %struct.i_plugin_instance_s* %21, %struct.i_plugin_instance_s** %I, align 8, !tbaa !35
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %plugin_list = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 27
  %24 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %plugin_list, align 8, !tbaa !37
  %25 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %25, i32 0, i32 0
  store %struct.i_plugin_holder_s* %24, %struct.i_plugin_holder_s** %next, align 8, !tbaa !38
  %26 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %plugin_list6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 27
  store %struct.i_plugin_holder_s* %26, %struct.i_plugin_holder_s** %plugin_list6, align 8, !tbaa !37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %28 = bitcast %struct.i_plugin_instance_s** %instance to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)**, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)** %29, i32 1
  store i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)** %incdec.ptr, i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %for.end, %cleanup
  %30 = bitcast %struct.i_plugin_client_memory_s* %client_mem to i8*
  call void @llvm.lifetime.end(i64 24, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32 (%struct.i_plugin_client_memory_s*, %struct.i_plugin_instance_s**)*** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @i_plugin_finit(%struct.gs_memory_s* %mem_raw, %struct.i_plugin_holder_s* %list) #0 {
entry:
  %mem_raw.addr = alloca %struct.gs_memory_s*, align 8
  %list.addr = alloca %struct.i_plugin_holder_s*, align 8
  %client_mem = alloca %struct.i_plugin_client_memory_s, align 8
  %h = alloca %struct.i_plugin_holder_s*, align 8
  store %struct.gs_memory_s* %mem_raw, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  store %struct.i_plugin_holder_s* %list, %struct.i_plugin_holder_s** %list.addr, align 8, !tbaa !1
  %0 = bitcast %struct.i_plugin_client_memory_s* %client_mem to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  call void @i_plugin_make_memory(%struct.i_plugin_client_memory_s* %client_mem, %struct.gs_memory_s* %1) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %list.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.i_plugin_holder_s* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %list.addr, align 8, !tbaa !1
  store %struct.i_plugin_holder_s* %4, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %5 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %5, i32 0, i32 0
  %6 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %next, align 8, !tbaa !38
  store %struct.i_plugin_holder_s* %6, %struct.i_plugin_holder_s** %list.addr, align 8, !tbaa !1
  %7 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %I = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %7, i32 0, i32 1
  %8 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I, align 8, !tbaa !35
  %d = getelementptr inbounds %struct.i_plugin_instance_s, %struct.i_plugin_instance_s* %8, i32 0, i32 0
  %9 = load %struct.i_plugin_descriptor_s*, %struct.i_plugin_descriptor_s** %d, align 8, !tbaa !39
  %finit = getelementptr inbounds %struct.i_plugin_descriptor_s, %struct.i_plugin_descriptor_s* %9, i32 0, i32 2
  %10 = load void (%struct.i_plugin_instance_s*, %struct.i_plugin_client_memory_s*)*, void (%struct.i_plugin_instance_s*, %struct.i_plugin_client_memory_s*)** %finit, align 8, !tbaa !41
  %11 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %I1 = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %11, i32 0, i32 1
  %12 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I1, align 8, !tbaa !35
  call void %10(%struct.i_plugin_instance_s* %12, %struct.i_plugin_client_memory_s* %client_mem) #3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw.addr, align 8, !tbaa !1
  %16 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %17 = bitcast %struct.i_plugin_holder_s* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #3
  %18 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = bitcast %struct.i_plugin_client_memory_s* %client_mem to i8*
  call void @llvm.lifetime.end(i64 24, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.i_plugin_holder_s* @i_plugin_get_list(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %plugin_list = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 27
  %1 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %plugin_list, align 8, !tbaa !37
  ret %struct.i_plugin_holder_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.i_plugin_instance_s* @i_plugin_find(%struct.gs_context_state_s* %i_ctx_p, i8* %type, i8* %subtype) #0 {
entry:
  %retval = alloca %struct.i_plugin_instance_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %type.addr = alloca i8*, align 8
  %subtype.addr = alloca i8*, align 8
  %h = alloca %struct.i_plugin_holder_s*, align 8
  %I = alloca %struct.i_plugin_instance_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1_len4 = alloca i64, align 8
  %__s2_len6 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %type, i8** %type.addr, align 8, !tbaa !1
  store i8* %subtype, i8** %subtype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %plugin_list = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 27
  %2 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %plugin_list, align 8, !tbaa !37
  store %struct.i_plugin_holder_s* %2, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %cmp = icmp ne %struct.i_plugin_holder_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.i_plugin_instance_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %I1 = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %5, i32 0, i32 1
  %6 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I1, align 8, !tbaa !35
  store %struct.i_plugin_instance_s* %6, %struct.i_plugin_instance_s** %I, align 8, !tbaa !1
  %7 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.i_plugin_instance_s, %struct.i_plugin_instance_s* %9, i32 0, i32 0
  %10 = load %struct.i_plugin_descriptor_s*, %struct.i_plugin_descriptor_s** %d, align 8, !tbaa !39
  %type2 = getelementptr inbounds %struct.i_plugin_descriptor_s, %struct.i_plugin_descriptor_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %type2, align 8, !tbaa !43
  %12 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %11, i8* %12) #4
  store i32 %call, i32* %tmp, !tbaa !9
  %13 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %tmp, !tbaa !9
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %16 = bitcast i64* %__s1_len4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %__s2_len6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I, align 8, !tbaa !1
  %d8 = getelementptr inbounds %struct.i_plugin_instance_s, %struct.i_plugin_instance_s* %18, i32 0, i32 0
  %19 = load %struct.i_plugin_descriptor_s*, %struct.i_plugin_descriptor_s** %d8, align 8, !tbaa !39
  %subtype9 = getelementptr inbounds %struct.i_plugin_descriptor_s, %struct.i_plugin_descriptor_s* %19, i32 0, i32 1
  %20 = load i8*, i8** %subtype9, align 8, !tbaa !44
  %21 = load i8*, i8** %subtype.addr, align 8, !tbaa !1
  %call10 = call i32 @strcmp(i8* %20, i8* %21) #4
  store i32 %call10, i32* %tmp7, !tbaa !9
  %22 = bitcast i64* %__s2_len6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64* %__s1_len4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %tmp7, !tbaa !9
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %I, align 8, !tbaa !1
  store %struct.i_plugin_instance_s* %25, %struct.i_plugin_instance_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast %struct.i_plugin_instance_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.i_plugin_holder_s, %struct.i_plugin_holder_s* %27, i32 0, i32 0
  %28 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %next, align 8, !tbaa !38
  store %struct.i_plugin_holder_s* %28, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.i_plugin_instance_s* null, %struct.i_plugin_instance_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %for.end, %cleanup
  %29 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load %struct.i_plugin_instance_s*, %struct.i_plugin_instance_s** %retval
  ret %struct.i_plugin_instance_s* %30
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"i_plugin_client_memory_s", !2, i64 0, !2, i64 8, !2, i64 16}
!7 = !{!6, !2, i64 8}
!8 = !{!6, !2, i64 16}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !2, i64 8}
!12 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!12, !2, i64 24}
!15 = !{!16, !2, i64 8}
!16 = !{!"gs_context_state_s", !2, i64 0, !17, i64 8, !10, i64 80, !19, i64 88, !19, i64 104, !22, i64 120, !22, i64 128, !22, i64 136, !10, i64 144, !10, i64 148, !19, i64 152, !19, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !23, i64 264, !23, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !24, i64 368, !26, i64 520, !27, i64 624, !2, i64 720}
!17 = !{!"gs_dual_memory_s", !2, i64 0, !18, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!18 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!19 = !{!"ref_s", !20, i64 0, !3, i64 8}
!20 = !{!"tas_s", !21, i64 0, !21, i64 2, !10, i64 4}
!21 = !{!"short", !3, i64 0}
!22 = !{!"long", !3, i64 0}
!23 = !{!"op_array_table_s", !19, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!24 = !{!"dict_stack_s", !25, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !19, i64 136}
!25 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !19, i64 24, !10, i64 40, !10, i64 44, !19, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!26 = !{!"exec_stack_s", !25, i64 0, !2, i64 96}
!27 = !{!"op_stack_s", !25, i64 0}
!28 = !{!29, !2, i64 200}
!29 = !{!"gs_ref_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !30, i64 232, !10, i64 272, !22, i64 280, !2, i64 288, !2, i64 296, !31, i64 304, !2, i64 488, !32, i64 496, !22, i64 512, !22, i64 520, !33, i64 528, !10, i64 552, !10, i64 556, !10, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !10, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !22, i64 624, !22, i64 632, !2, i64 640, !34, i64 648, !10, i64 672, !3, i64 680}
!30 = !{!"gs_memory_gc_status_s", !22, i64 0, !22, i64 8, !2, i64 16, !10, i64 24, !10, i64 28, !22, i64 32}
!31 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !10, i64 100, !2, i64 104, !10, i64 112, !2, i64 120, !2, i64 128, !10, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!33 = !{!"lost_", !22, i64 0, !22, i64 8, !22, i64 16}
!34 = !{!"gs_memory_status_s", !22, i64 0, !22, i64 8, !10, i64 16}
!35 = !{!36, !2, i64 8}
!36 = !{!"i_plugin_holder_s", !2, i64 0, !2, i64 8}
!37 = !{!16, !2, i64 720}
!38 = !{!36, !2, i64 0}
!39 = !{!40, !2, i64 0}
!40 = !{!"i_plugin_instance_s", !2, i64 0}
!41 = !{!42, !2, i64 16}
!42 = !{!"i_plugin_descriptor_s", !2, i64 0, !2, i64 8, !2, i64 16}
!43 = !{!42, !2, i64 0}
!44 = !{!42, !2, i64 8}
