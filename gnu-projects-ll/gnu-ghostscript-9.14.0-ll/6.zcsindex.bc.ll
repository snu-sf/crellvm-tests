; ModuleID = './zcsindex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_font_dir_s = type opaque
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
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.0, i8*, i32, float* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%union.anon.0 = type { i32 (%struct.gs_color_space_s*, i32, float*)* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.1 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gsicc_link_s = type opaque
%struct.client_color_space_data_s = type opaque
%struct.cmm_profile_s = type opaque
%union.anon.1 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [22 x i8] c"setcolorspace(mapped)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcs_begin_map(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_indexed_map_s** %pmap, %struct.ref_s* %pproc, i32 %num_entries, %struct.gs_color_space_s* %base_space, i32 (%struct.gs_context_state_s*)* %map1) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pmap.addr = alloca %struct.gs_indexed_map_s**, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %num_entries.addr = alloca i32, align 4
  %base_space.addr = alloca %struct.gs_color_space_s*, align 8
  %map1.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %space = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_values = alloca i32, align 4
  %map = alloca %struct.gs_indexed_map_s*, align 8
  %code = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_indexed_map_s** %pmap, %struct.gs_indexed_map_s*** %pmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store i32 %num_entries, i32* %num_entries.addr, align 4, !tbaa !5
  store %struct.gs_color_space_s* %base_space, %struct.gs_color_space_s** %base_space.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %map1, i32 (%struct.gs_context_state_s*)** %map1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %2) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %5 = bitcast %struct.gs_memory_s* %4 to %struct.gs_ref_memory_s*
  %call1 = call i32 @imemory_space(%struct.gs_ref_memory_s* %5) #3
  store i32 %call1, i32* %space, align 4, !tbaa !5
  %6 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 0
  %8 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !20
  %num_components2 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %8, i32 0, i32 4
  %9 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components2, align 8, !tbaa !23
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space.addr, align 8, !tbaa !1
  %call3 = call i32 %9(%struct.gs_color_space_s* %10) #3
  store i32 %call3, i32* %num_components, align 4, !tbaa !5
  %11 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %13 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  store i32 %mul, i32* %num_values, align 4, !tbaa !5
  %14 = bitcast %struct.gs_indexed_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %num_values, align 4, !tbaa !5
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call4 = call i32 @alloc_indexed_map(%struct.gs_indexed_map_s** %map, i32 %16, %struct.gs_memory_s* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %18 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end:                                           ; preds = %entry
  %21 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %22 = load %struct.gs_indexed_map_s**, %struct.gs_indexed_map_s*** %pmap.addr, align 8, !tbaa !1
  store %struct.gs_indexed_map_s* %21, %struct.gs_indexed_map_s** %22, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !25
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 2
  %26 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !26
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -6
  %cmp7 = icmp ugt %struct.ref_s* %24, %add.ptr
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %27 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %call11 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack10, i32 6) #3
  store i32 %call11, i32* %es_code_, align 4, !tbaa !5
  %29 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %29, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  %30 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %31 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %if.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !25
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 5
  store %struct.ref_s* %add.ptr19, %struct.ref_s** %p18, align 8, !tbaa !25
  store %struct.ref_s* %add.ptr19, %struct.ref_s** %ep, align 8, !tbaa !1
  %34 = load i32, i32* %num_components, align 4, !tbaa !5
  %conv = sext i32 %34 to i64
  %35 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !27
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !28
  %37 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %38 = bitcast %struct.gs_indexed_map_s* %37 to %struct.obj_header_s*
  %39 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -3
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 1
  %pstruct = bitcast %union.v* %value23 to %struct.obj_header_s**
  store %struct.obj_header_s* %38, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %40 = load i32, i32* %space, align 4, !tbaa !5
  %add = add nsw i32 2048, %40
  %conv24 = trunc i32 %add to i16
  %41 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -3
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 %conv24, i16* %type_attrs27, align 2, !tbaa !28
  %42 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -2
  %43 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %44 = bitcast %struct.ref_s* %arrayidx to i8*
  %45 = bitcast %struct.ref_s* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !29
  %46 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %46, 1
  %conv28 = sext i32 %sub to i64
  %47 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  store i64 %conv28, i64* %intval31, align 8, !tbaa !27
  %48 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr32, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  store i16 2816, i16* %type_attrs34, align 2, !tbaa !28
  %49 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 0
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i32 0, i32 1
  %intval37 = bitcast %union.v* %value36 to i64*
  store i64 -1, i64* %intval37, align 8, !tbaa !27
  %50 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 0
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 2816, i16* %type_attrs40, align 2, !tbaa !28
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack42 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack41, i32 0, i32 0
  %p43 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack42, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p43, align 8, !tbaa !25
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p43, align 8, !tbaa !25
  %53 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %map1.addr, align 8, !tbaa !1
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack45 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack44, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack45, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p46, align 8, !tbaa !25
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 1
  %opproc = bitcast %union.v* %value47 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %53, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !25
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 3968, i16* %type_attrs52, align 2, !tbaa !28
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !25
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !33
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.15, %cleanup, %if.then
  %60 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_indexed_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare i32 @alloc_indexed_map(%struct.gs_indexed_map_s**, i32, %struct.gs_memory_s*, i8*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
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
!20 = !{!21, !2, i64 0}
!21 = !{!"gs_color_space_s", !2, i64 0, !22, i64 8, !14, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!22 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!24, !2, i64 24}
!24 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!25 = !{!8, !2, i64 520}
!26 = !{!8, !2, i64 536}
!27 = !{!14, !14, i64 0}
!28 = !{!11, !13, i64 0}
!29 = !{i64 0, i64 2, !30, i64 2, i64 2, !30, i64 4, i64 4, !5, i64 8, i64 8, !27, i64 8, i64 2, !30, i64 8, i64 4, !31, i64 8, i64 8, !27, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !27}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !3, i64 0}
!33 = !{!11, !6, i64 4}
